CREATE OR REPLACE TABLE Clientes (
    Cliente_ID INT PRIMARY KEY IDENTITY(1,1),        -- Identificador único do cliente
    Nome NVARCHAR(100),                              -- Nome do cliente
    CPF CHAR(11) UNIQUE,                             -- CPF do cliente
    Segmento NVARCHAR(50),                           -- Segmento do cliente
    Interesses NVARCHAR(255),                        -- Interesses do cliente
    Gastos_Mensais DECIMAL(10, 2),                   -- Gastos mensais do cliente
    Salario DECIMAL(10, 2),                          -- Salário do cliente
    Tipo_Cartao_Credito NVARCHAR(50),                -- Tipo de cartão de crédito
    Gasto_Mensal_Cartao DECIMAL(10, 2),              -- Gasto mensal com o cartão de crédito
    Viaja_Frequentemente BIT,                        -- Indica se viaja frequentemente (0 = Não, 1 = Sim)
    Profissao NVARCHAR(100),                         -- Profissão do cliente
    Renda_Mensal DECIMAL(10, 2),                     -- Renda mensal do cliente
    Dependentes INT,                                 -- Número de dependentes
    Genero CHAR(1),                                  -- Gênero (M, F, etc.)
    Data_Nascimento DATE,                            -- Data de nascimento do cliente
    Idade INT                                        -- Idade calculada do cliente
);

CREATE OR REPLACE TABLE Compras (
    Compra_ID INT PRIMARY KEY IDENTITY(1,1),                         -- Identificador único da compra
    Cliente_ID INT,                                                  -- ID do cliente (chave estrangeira para a tabela Clientes)
    Produto NVARCHAR(100),                                           -- Nome do produto comprado
    Categoria NVARCHAR(50),                                          -- Categoria do produto
    Data_Compra DATE,                                                -- Data da compra
    Valor_Compra DECIMAL(10, 2),                                     -- Valor total da compra
    Quantidade_Parcelas INT,                                         -- Número de parcelas
    Data_Ultima_Compra DATE,                                         -- Data da última compra do cliente
    Produto_Indicado NVARCHAR(100),                                  -- Produto recomendado para o cliente
    Status_Indicacao NVARCHAR(50),                                   -- Status da indicação (Ex: Pendente, Aceito)
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID)         -- Relacionamento com a tabela Clientes
);

-- INSERE OS CLIENTES A TABELA.
INSERT INTO Clientes (Nome, CPF, Segmento, Interesses, Gastos_Mensais, Salario, Tipo_Cartao_Credito, Gasto_Mensal_Cartao, Viaja_Frequentemente, Profissao, Renda_Mensal, Dependentes, Genero, Data_Nascimento, Idade)
VALUES 
('João Silva', '12345678901', 'Varejo', 'Tecnologia', 500.00, 3000.00, 'Visa', 200.00, 1, 'Engenheiro', 4000.00, 2, 'M', '1990-05-15', DATEDIFF(YEAR, '1990-05-15', GETDATE())),
('Maria Oliveira', '23456789012', 'Serviços', 'Moda', 800.00, 5000.00, 'Mastercard', 400.00, 0, 'Designer', 5500.00, 1, 'F', '1985-07-22', DATEDIFF(YEAR, '1985-07-22', GETDATE())),
('Carlos Pereira', '34567890123', 'Varejo', 'Esportes', 1200.00, 4500.00, 'American Express', 600.00, 1, 'Administrador', 4800.00, 3, 'M', '1992-11-10', DATEDIFF(YEAR, '1992-11-10', GETDATE())),
('Ana Costa', '45678901234', 'Varejo', 'Viagens', 700.00, 3200.00, 'Visa', 350.00, 1, 'Professora', 3700.00, 0, 'F', '1995-03-05', DATEDIFF(YEAR, '1995-03-05', GETDATE()));

-- INSERE AS COMPRAS FEITAS PELO CLIENTE, INCLUINDO O SEU RELACIONAMENTO.
INSERT INTO Compras (Cliente_ID, Produto, Categoria, Data_Compra, Valor_Compra, Quantidade_Parcelas, Data_Ultima_Compra, Produto_Indicado, Status_Indicacao)
VALUES 
(1, 'Notebook', 'Eletrônicos', GETDATE(), 2500.00, 5, GETDATE(), 'Smartphone', 'Pendente'),
(1, 'Camiseta', 'Vestuário', GETDATE(), 100.00, 1, GETDATE(), 'Calça Jeans', 'Aceito'),
(2, 'Televisor', 'Eletrônicos', GETDATE(), 1500.00, 12, GETDATE(), 'Soundbar', 'Pendente'),
(3, 'Tênis', 'Esportes', GETDATE(), 300.00, 3, GETDATE(), 'Bermuda', 'Aceito'),
(4, 'Mala de Viagem', 'Acessórios', GETDATE(), 400.00, 2, GETDATE(), 'Necessaire', 'Pendente');
