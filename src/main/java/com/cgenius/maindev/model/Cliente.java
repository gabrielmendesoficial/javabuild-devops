package com.cgenius.maindev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDate;

@Entity
@Table(name = "Clientes")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cliente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long clienteId;
    private String nome;
    private String cpf;
    private String segmento;
    private String interesses;
    private Double gastosMensais;
    private Double salario;
    private String tipoCartaoCredito;
    private Double gastoMensalCartao;
    private Boolean viajaFrequentemente;
    private String profissao;
    private Double rendaMensal;
    private Integer dependentes;
    private String genero;
    private LocalDate dataNascimento;
    private Integer idade;
}
