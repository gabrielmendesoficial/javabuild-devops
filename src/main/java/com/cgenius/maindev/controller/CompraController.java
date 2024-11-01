package com.cgenius.maindev.controller;

import com.cgenius.maindev.model.Compra;
import com.cgenius.maindev.service.CompraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/compras")
public class CompraController {
    @Autowired
    private CompraService compraService;

    @GetMapping
    public List<Compra> getAllCompras() {
        return compraService.findAll();
    }

    @GetMapping("/{id}")
    public Compra getCompraById(@PathVariable Long id) {
        return compraService.findById(id);
    }

    @PostMapping
    public Compra createCompra(@RequestBody Compra compra) {
        return compraService.save(compra);
    }

    @PutMapping("/{id}")
    public Compra updateCompra(@PathVariable Long id, @RequestBody Compra compra) {
        compra.setCompraId(id);
        return compraService.save(compra);
    }

    @DeleteMapping("/{id}")
    public void deleteCompra(@PathVariable Long id) {
        compraService.delete(id);
    }
}
