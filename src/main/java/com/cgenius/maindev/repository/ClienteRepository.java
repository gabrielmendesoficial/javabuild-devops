package com.cgenius.maindev.repository;

import com.cgenius.maindev.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
}
