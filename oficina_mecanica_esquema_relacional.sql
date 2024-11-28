-- criação do banco de dados para o cenário de uma Oficina mecânica
-- drop database oficina_mecanica;
create database oficina_mecanica;
use oficina_mecanica;

-- criar tabela Clientes
CREATE TABLE Clientes (
    idcliente INT AUTO_INCREMENT PRIMARY KEY,
    Fnome VARCHAR(10) NOT NULL,
    Mnome VARCHAR(10),
    Lnome VARCHAR(20),
    endereco VARCHAR(200),
    telefone CHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf CHAR(11) NOT NULL,
    CONSTRAINT unique_cpf_client UNIQUE (CPF)
);

-- criar tabela Veículos
CREATE TABLE Veiculos (
    idveiculo INT AUTO_INCREMENT PRIMARY KEY,
    idcliente INT,
    modelo VARCHAR(45),
    marca VARCHAR(45),
    placa VARCHAR(10) NOT NULL UNIQUE,
    ano INT,
    tipo VARCHAR(50),  -- Ex: Sedan, SUV, Esportivo, Minivan, Pick-up, carro de passeio, caminhão, etc.
    FOREIGN KEY (idcliente) REFERENCES Clientes(idcliente)
);

-- criar tabela Mecânicos
CREATE TABLE Mecanicos (
    idmecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    email VARCHAR(100) NOT NULL
);

-- criar tabela Serviços
CREATE TABLE Servicos (
    idservico INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(100) NOT NULL,
    numeroOS VARCHAR(10) NOT NULL,
    descricao TEXT,
    preco FLOAT NOT NULL
);

-- criar tabela Ordem de Serviço (OS)
CREATE TABLE Ordem_Servico (
	idOS INT AUTO_INCREMENT PRIMARY KEY,
    numeroOS VARCHAR(10) NOT NULL,
    idservico INT NOT NULL, 
    idcliente INT NOT NULL,
    idmecanico INT NOT NULL,
    idveiculo INT NOT NULL, 
    data_abertura DATE NOT NULL,
    data_fechamento DATE, 
    statusOS ENUM('Aberta', 'Em andamento', 'Fechada'),
    FOREIGN KEY (idservico) REFERENCES Servicos(idservico),
    FOREIGN KEY (idcliente) REFERENCES Clientes(idcliente),
    FOREIGN KEY (idmecanico) REFERENCES Mecanicos(idmecanico),
    FOREIGN KEY (idveiculo) REFERENCES Veiculos(idveiculo) 
);

-- criar tabela Mão de obra (manutenção)
CREATE TABLE MaodeObra (
    idmao_de_obra INT AUTO_INCREMENT PRIMARY KEY,
    idservico INT,
    idmecanico INT,
    idOS INT,
    idveiculo INT,
    nome_servico VARCHAR(255) NOT NULL,
    descricao TEXT,
    tempo_estimado TIME,
    status_manutencao ENUM('Pendente', 'Em andamento', 'Concluída')  DEFAULT 'Pendente',
    preco FLOAT NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (idservico) REFERENCES Servicos(idservico),
    FOREIGN KEY (idmecanico) REFERENCES Mecanicos(idmecanico),
    FOREIGN KEY (idveiculo) REFERENCES Veiculos(idveiculo)
);

-- criar tabela Pagamentos
CREATE TABLE Pagamentos (
    idpagamento INT AUTO_INCREMENT PRIMARY KEY,
    idOS INT,
    numeroOS VARCHAR(10) NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_total FLOAT NOT NULL,
    metodo_pagamento ENUM('Dinheiro', 'Cartão de Crédito', 'Pix') NOT NULL,
    status_pagamento ENUM('Pendente', 'Pago', 'Cancelado') NOT NULL,
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS)
);

-- criar tabela Itens da Ordem de Serviço
CREATE TABLE Itens_Ordem_Servico (
    iditem INT AUTO_INCREMENT PRIMARY KEY,
    idOS INT,
    descricao_item VARCHAR(100),
    quantidade INT NOT NULL,
    preco_unitario FLOAT NOT NULL,
    FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS)
);

-------------- cardinalidade n:n ------------------------
-- criar tabela Serviços/OS
CREATE TABLE OS_Servico (
    idos INT,
    idservico INT,
    quantidade INT,  
    PRIMARY KEY (idos, idservico),
    CONSTRAINT fk_OS_Servico FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS) ON DELETE CASCADE,
    CONSTRAINT fk_Servicos_Servico FOREIGN KEY (idservico) REFERENCES Servicos(idservico) ON DELETE CASCADE
);

-- criar tabela OS/Mecânicos
CREATE TABLE OS_Mecanicos (
    idOS INT,
    idmecanico INT,
    PRIMARY KEY (idos, idmecanico),
    CONSTRAINT fk_OS_Mecanicos FOREIGN KEY (idOS) REFERENCES Ordem_Servico(idOS) ON DELETE CASCADE,
    CONSTRAINT fk_Mecanicos_Servico FOREIGN KEY (idmecanico) REFERENCES Mecanicos(idmecanico) ON DELETE CASCADE
);

desc OS_Mecanicos;
show tables;
show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'oficina_mecanica';