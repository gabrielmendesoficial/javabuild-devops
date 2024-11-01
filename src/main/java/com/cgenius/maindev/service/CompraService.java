package com.cgenius.maindev.service;

import com.cgenius.maindev.model.Compra;
import com.cgenius.maindev.repository.CompraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompraService {
    @Autowired
    private CompraRepository compraRepository;

    public List<Compra> findAll() {
        return compraRepository.findAll();
    }

    public Compra findById(Long id) {
        return compraRepository.findById(id).orElse(null);
    }

    public Compra save(Compra compra) {
        return compraRepository.save(compra);
    }

    public void delete(Long id) {
        compraRepository.deleteById(id);
    }
}
