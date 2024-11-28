-- inserção de dados e quaries
use oficina_mecanica;

show tables;

-- Clientes:  idcliente, Fnome, Mnome, Lnome, endereco, telefone, email, cpf
INSERT INTO Clientes (Fnome, Mnome, Lnome, endereco, telefone, email, cpf) VALUES
	('Ana', 'Carolina', 'Silva', 'Rua das Flores, 123, Centro, São Paulo', '11987654321', 'ana.silva@email.com', '12345678901'),
	('Carlos', 'Eduardo', 'Pereira', 'Avenida Brasil, 234, Jardim das Acácias, Rio de Janeiro', '2134567890', 'carlos.pereira@email.com', '98765432100'),
	('João', '', 'Oliveira', 'Rua do Comércio, 345, São Bento, Belo Horizonte', '31987654321', 'joao.oliveira@email.com', '12309876543'),
	('Maria', 'Fernanda', 'Costa', 'Praça da Sé, 456, Centro, Salvador', '71987654321', 'maria.costa@email.com', '34567890123'),
	('Ricardo', 'Luiz', 'Almeida', 'Rua Santa Clara, 789, Barra da Tijuca, Rio de Janeiro', '21987654321', 'ricardo.almeida@email.com', '23456789012'),
	('Juliana', 'Santos', 'Rodrigues', 'Avenida Getúlio Vargas, 321, Copacabana, Rio de Janeiro', '21965432109', 'juliana.rodrigues@email.com', '87654321098'),
	('Patrícia', '', 'Martins', 'Rua das Palmeiras, 543, Jardim Paulista, São Paulo', '11876543210', 'patricia.martins@email.com', '45678901234'),
	('Felipe', 'Augusto', 'Souza', 'Rua 25 de Março, 678, São Paulo', '1122334455', 'felipe.souza@email.com', '56789012345'),
	('Carla', 'Mariana', 'Ferreira', 'Rua do Sol, 987, Campo Grande, MS', '67987654321', 'carla.ferreira@email.com', '78901234567'),
	('Eduardo', 'José', 'Nunes', 'Avenida Rio Branco, 135, Centro, Rio de Janeiro', '2134567890', 'eduardo.nunes@email.com', '89012345678');

-- Veículos: idveiculo, idcliente, modelo, marca, placa, ano, tipo (Sedan, SUV, Esportivo, Minivan, Pick-up, carro de passeio, caminhão, etc)  
INSERT INTO Veiculos (idveiculo, modelo, marca, placa, ano, tipo, idcliente) VALUES
    (1, 'Fusca', 'Volkswagen', 'ABC1234', 1980, 'Carro de passeio', 1),
    (2, 'Civic', 'Honda', 'XYZ5678', 2020, 'Sedan', 2),
    (3, 'Gol', 'Volkswagen', 'DEF2345', 2015, 'Carro de passeio', 3),
    (4, 'Hilux', 'Toyota', 'GHI6789', 2021, 'Pick-up', 4),
    (5, 'Corolla', 'Toyota', 'JKL3456', 2022, 'Sedan', 5),
    (6, 'Mitsubishi L200', 'Mitsubishi', 'LMN8901', 2019, 'Pick-up', 6),
    (7, 'Santa Fé', 'Hyundai', 'OPQ5678', 2018, 'SUV', 7),
    (8, 'Kicks', 'Nissan', 'RST1234', 2023, 'SUV', 8),
    (9, 'F-150', 'Ford', 'UVW2345', 2020, 'Caminhão', 9),
    (10, 'Civic', 'Honda', 'XYZ9876', 2019, 'Sedan', 10);

-- Mecânicos: idmecanico, nome, especialidade, telefone, endereço, email
INSERT INTO Mecanicos (idmecanico, nome, especialidade, telefone, endereco, email) VALUES
    (101, 'Carlos Oliveira', 'Motor', '11987654321', 'Rua dos Motores, 321, Centro, São Paulo', 'carlos.oliveira@email.com'),
    (102, 'Maria Souza', 'Suspensão', '21987654321', 'Avenida Paulista, 789, Bela Vista, São Paulo', 'maria.souza@email.com'),
    (103, 'José Pereira', 'Elétrica', '31987654321', 'Rua das Árvores, 654, Jardim América, Belo Horizonte', 'jose.pereira@email.com'),
    (104, 'Fernanda Costa', 'Freios', '41987654321', 'Rua das Palmeiras, 234, Centro, Curitiba', 'fernanda.costa@email.com'),
    (105, 'Ricardo Lima', 'Motor', '51987654321', 'Avenida Rio Branco, 456, Centro, Porto Alegre', 'ricardo.lima@email.com'),
    (106, 'Ana Santos', 'Suspensão', '61987654321', 'Rua do Sol, 789, Campo Grande, MS', 'ana.santos@email.com'),
    (107, 'Paulo Mendes', 'Elétrica', '71987654321', 'Rua do Comércio, 123, Salvador', 'paulo.mendes@email.com'),
    (108, 'Juliana Ferreira', 'Freios', '81987654321', 'Avenida Brasil, 654, Rio de Janeiro', 'juliana.ferreira@email.com'),
    (109, 'Felipe Almeida', 'Motor', '91987654321', 'Rua 25 de Março, 345, São Paulo', 'felipe.almeida@email.com'),
    (110, 'Eduardo Martins', 'Suspensão', '11912345678', 'Rua Santa Catarina, 987, Zona Norte, São Paulo', 'eduardo.martins@email.com');

-- Serviços: idservico, nome_servico, descricao, preco
INSERT INTO Servicos (numeroOS, nome_servico, descricao, preco) VALUES
	('OS1001', 'Troca de óleo', 'Troca de óleo do motor, incluindo filtro de óleo e vedação.', 150.00),
	('OS1002', 'Alinhamento e balanceamento', 'Alinhamento da suspensão e balanceamento das rodas.', 120.00),
	('OS1003', 'Troca de pastilhas de freio', 'Substituição das pastilhas de freio dianteiras e traseiras.', 200.00),
	('OS1004', 'Revisão completa de motor', 'Revisão geral do motor, incluindo verificação de peças e componentes essenciais.', 800.00),
	('OS1005', 'Troca de filtros de ar e combustível', 'Substituição dos filtros de ar e combustível do veículo.', 100.00),
	('OS1006', 'Troca de amortecedores', 'Substituição dos amortecedores dianteiros e traseiros do veículo.', 350.00),
	('OS1007', 'Troca de correia dentada', 'Substituição da correia dentada, alinhamento e ajustes necessários.', 500.00),
	('OS1008', 'Troca de bateria', 'Substituição da bateria do veículo, com verificação do sistema elétrico.', 250.00),
	('OS1009', 'Lavagem e polimento', 'Lavagem completa do veículo, incluindo polimento da pintura e limpeza interna.', 80.00),
	('OS1010', 'Instalação de faróis de LED', 'Instalação de faróis de LED para maior visibilidade e estética.', 180.00);

-- Ordem de Serviço (OS): idOS, numeroOS, idcliente, idmecanico, idveiculo, idservico, data_abertura, data_fechamento, status ('Aberta', 'Em andamento', 'Fechada')
INSERT INTO Ordem_Servico (numeroOS, idservico, idcliente, idmecanico, idveiculo, data_abertura, data_fechamento, statusOS) VALUES
    ('OS1001', 1, 1, 1, 1, '2024-11-01', '2024-11-05', 'Fechada'),
    ('OS1002', 2, 2, 2, 2, '2024-11-02', '2024-11-06', 'Fechada'),
    ('OS1003', 3, 3, 3, 3, '2024-11-03', '2024-11-07', 'Fechada'),
    ('OS1004', 4, 4, 4, 4, '2024-11-04', '2024-11-08', 'Fechada'),
    ('OS1005', 5, 5, 5, 5, '2024-11-05', '2024-11-10', 'Fechada'),
    ('OS1006', 6, 6, 6, 6, '2024-11-06', NULL, 'Em andamento'),
    ('OS1007', 7, 7, 7, 7, '2024-11-07', NULL, 'Em andamento'),
    ('OS1008', 8, 8, 8, 8, '2024-11-08', NULL, 'Em andamento'),
    ('OS1009', 9, 9, 9, 9, '2024-11-09', NULL, 'Em andamento'),
    ('OS1010', 10, 10, 10, 10, '2024-11-10', NULL, 'Aberta');
   
-- Mão de obra: idmao_de_obra, idOS, idmecanico, idveiculo, nome_servico, descricao, observacoes, preco, status_manutencao ('Pendente', 'Em andamento', 'Concluída') 
INSERT INTO MaodeObra (idOS, idmecanico, idveiculo, nome_servico, descricao, observacoes, preco, status_manutencao) VALUES
	(1, 101, 201, 'Troca de óleo', 'Troca de óleo do motor, incluindo filtro e vedação.', 'Verificar nível do óleo do motor antes e depois da troca.', 150.00, 'Concluída'),
	(2, 102, 202, 'Alinhamento e balanceamento', 'Alinhamento da suspensão e balanceamento das rodas.', 'Verificar se os pneus estão desgastados antes do alinhamento.', 120.00, 'Concluída'),
	(3, 103, 203, 'Troca de pastilhas de freio', 'Substituição das pastilhas de freio dianteiras e traseiras.', 'Recomenda-se a troca de discos de freio, se necessário.', 200.00, 'Em andamento'),
	(4, 104, 204, 'Revisão completa de motor', 'Revisão completa do motor, incluindo verificação de peças e componentes essenciais.', 'Recomendar a troca de peças que apresentem sinais de desgaste.', 800.00, 'Pendente'),
	(5, 105, 205, 'Troca de filtros de ar e combustível', 'Substituição dos filtros de ar e combustível do veículo.', 'Verificar o filtro de cabine se necessário.', 100.00, 'Concluída'),
	(6, 106, 206, 'Troca de amortecedores', 'Substituição dos amortecedores dianteiros e traseiros.', 'Verificar se os suportes dos amortecedores estão em bom estado.', 350.00, 'Em andamento'),
	(7, 107, 207, 'Troca de correia dentada', 'Substituição da correia dentada, alinhamento e ajustes necessários.', 'Importante verificar a tensão da correia para evitar danos ao motor.', 500.00, 'Pendente'),
	(8, 108, 208, 'Troca de bateria', 'Substituição da bateria do veículo, com verificação do sistema elétrico.', 'Verificar o sistema de carga da bateria para evitar falhas.', 250.00, 'Concluída'),
	(9, 109, 209, 'Lavagem e polimento', 'Lavagem completa do veículo, incluindo polimento da pintura e limpeza interna.', 'Pode incluir a higienização do sistema de ar-condicionado, se solicitado.', 80.00, 'Concluída'),
	(10, 110, 210, 'Instalação de faróis de LED', 'Instalação de faróis de LED para maior visibilidade e estética.', 'Verificar o ajuste adequado do ângulo dos faróis após a instalação.', 180.00, 'Em andamento');

 -- Pagamentos: idpagamento, idOS, data_pagamento, valor_total, metodo_pagamento ('Dinheiro', 'Cartão de Crédito', 'Pix'), status_pagamento ('Pendente', 'Pago', 'Cancelado')
INSERT INTO Pagamentos (idOS, numeroOS, data_pagamento, valor_total, metodo_pagamento, status_pagamento) VALUES
    (1, 'OS1001', '2024-11-01', 150.00, 'Dinheiro', 'Pago'),
    (2, 'OS1002', '2024-11-02', 120.00, 'Cartão de Crédito', 'Pago'),
    (3, 'OS1003', '2024-11-03', 200.00, 'Pix', 'Pendente'),
    (4, 'OS1004', '2024-11-04', 800.00, 'Dinheiro', 'Pendente'),
    (5, 'OS1005', '2024-11-05', 100.00, 'Cartão de Crédito', 'Pago'),
    (6, 'OS1006', '2024-11-06', 350.00, 'Pix', 'Pendente'),
    (7, 'OS1007', '2024-11-07', 500.00, 'Dinheiro', 'Pendente'),
    (8, 'OS1008', '2024-11-08', 250.00, 'Cartão de Crédito', 'Pago'),
    (9, 'OS1009', '2024-11-09', 80.00, 'Pix', 'Pago'),
    (10, 'OS1010', '2024-11-10', 180.00, 'Dinheiro', 'Pendente');

-- Itens da Ordem de Serviço: iditem, idOS, descricao_item, quantidade, preco_unitario
  INSERT INTO Itens_Ordem_Servico (descricao_item, quantidade, preco_unitario) VALUES
	('Filtro de óleo', 1, 30.00),
	('Pastilhas de freio', 2, 60.00),
	('Óleo de motor 5W30', 5, 25.00),
	('Correia dentada', 1, 150.00),
	('Amortecedor dianteiro', 2, 180.00),
	('Bateria 60Ah', 1, 250.00),
	('Farois de LED', 2, 90.00),
	('Filtro de ar condicionado', 1, 40.00),
	('Vela de ignição', 4, 15.00),
	('Óleo para suspensão', 2, 40.00);

select * from Clientes;
select * from Veiculos;
select * from Mecanicos;
select * from Servicos;
select * from Ordem_Servico;
select * from MaodeObra;
select * from Pagamentos;
select * from Itens_Ordem_Servico;

----------------------------- Queries ---------------------------------
-- Secionar todos os clientes
SELECT * FROM Clientes;

-- Selecionar nome, especialidade e telefone de todos os mecânicos
SELECT nome, especialidade, telefone FROM Mecanicos;

-- Selecionar todos os veículos que são do modelo "Fusca"
SELECT * FROM Veiculos WHERE modelo = 'Fusca';

-- Selecionar clientes que têm o sobrenome 'Souza'
SELECT Fnome, Lnome, telefone, endereco FROM Clientes WHERE Lnome = 'Souza';

-- Selecionar todos os serviços que têm preço superior a 100
SELECT nome_servico, preco FROM Servicos WHERE preco > 100;

-- Calcular o total de preço por serviço (preço unitário x quantidade)
SELECT descricao_item, quantidade, preco_unitario,  (quantidade * preco_unitario) AS total FROM Itens_Ordem_Servico;

-- Calcular o tempo de duração de uma Ordem de Serviço (data de fechamento - data de abertura)
SELECT numeroOS, data_abertura, data_fechamento, DATEDIFF(data_fechamento, data_abertura) AS dias_duracao FROM Ordem_Servico WHERE statusOS = 'Fechada';

-- Ordenar os serviços pelo preço em ordem crescente
SELECT nome_servico, preco FROM Servicos ORDER BY preco ASC;

-- Ordenar os clientes pelo nome (alfabeticamente)
SELECT Fnome, Lnome, endereco, telefone FROM Clientes ORDER BY Fnome, Lnome;

-- Ordenar os mecânicos pela especialidade em ordem decrescente
SELECT nome, especialidade, telefone FROM Mecanicos ORDER BY especialidade DESC;

-- Contar o número de mecânicos por especialidade, mas mostrar apenas as especialidades com mais de 2 mecânicos
SELECT especialidade, COUNT(*) AS quantidade_mecanicos FROM Mecanicos GROUP BY especialidade HAVING COUNT(*) > 2;

-- Mostrar o total de pagamentos por método de pagamento e exibir apenas aqueles com total superior a 500
SELECT metodo_pagamento, SUM(valor_total) AS total_pago
	FROM Pagamentos
	GROUP BY metodo_pagamento
	HAVING SUM(valor_total) > 500;

-- Junção entre Clientes e Veiculos (Clientes que têm veículos) 
SELECT Clientes.Fnome, Clientes.Lnome, Veiculos.modelo, Veiculos.placa
	FROM Clientes
	INNER JOIN Veiculos ON Clientes.idcliente = Veiculos.idcliente;

-- Junção entre Mecanicos e Ordem_Servico para mostrar qual mecânico trabalhou em cada ordem de serviço   
SELECT 
	Ordem_Servico.numeroOS, 
    Ordem_Servico.data_abertura, 
    Ordem_Servico.data_fechamento, 
    Ordem_Servico.statusOS, 
    Mecanicos.idmecanico, 
    Mecanicos.nome AS nome_mecanico, 
    Mecanicos.especialidade
		FROM Mecanicos
		INNER JOIN Ordem_Servico 
		ON Mecanicos.idmecanico = Ordem_Servico.idmecanico;

-- Junção com múltiplas tabelas para mostrar o pagamento total por serviço e o nome do cliente que o solicitou 
SELECT 
    Clientes.Fnome, 
    Clientes.Lnome, 
    Servicos.nome_servico, 
    SUM(Pagamentos.valor_total) AS total_pago
		FROM Pagamentos
		INNER JOIN Ordem_Servico ON Pagamentos.idOS = Ordem_Servico.idOS
		INNER JOIN Servicos ON Ordem_Servico.idservico = Servicos.idservico
		INNER JOIN Clientes ON Ordem_Servico.idcliente = Clientes.idcliente
		GROUP BY Clientes.Fnome, Clientes.Lnome, Servicos.nome_servico;

-- Mostrar os veículos que estão em uma ordem de serviço específica 
SELECT Veiculos.modelo, Veiculos.placa, Veiculos.ano, Veiculos.tipo
	FROM Veiculos
	INNER JOIN Ordem_Servico ON Veiculos.idveiculo = Ordem_Servico.idveiculo
	WHERE Ordem_Servico.numeroOS = 'OS1001';

--  Obter a lista de clientes que pagaram mais de um determinado valor total 
SELECT Clientes.Fnome, Clientes.Lnome, SUM(Pagamentos.valor_total) AS total_pago
	FROM Pagamentos
	INNER JOIN Ordem_Servico ON Pagamentos.numeroOS = Ordem_Servico.numeroOS
	INNER JOIN Clientes ON Ordem_Servico.idcliente = Clientes.idcliente
	GROUP BY Clientes.idcliente
	HAVING SUM(Pagamentos.valor_total) > 100;

-- Listar ordens de serviço que estão abertas e têm a data de abertura superior a 15 dias atrás 
SELECT numeroOS, data_abertura, statusOS
	FROM Ordem_Servico
	WHERE statusOS = 'Aberta' AND DATEDIFF(CURDATE(), data_abertura) > 15;

-- Exibir todos os serviços realizados em veículos de um cliente específico 
SELECT Servicos.nome_servico, Ordem_Servico.numeroOS, Ordem_Servico.data_abertura, Ordem_Servico.statusOS
	FROM Servicos
	INNER JOIN Ordem_Servico ON Servicos.idservico = Ordem_Servico.idservico
	INNER JOIN Veiculos ON Ordem_Servico.idveiculo = Veiculos.idveiculo
	INNER JOIN Clientes ON Veiculos.idcliente = Clientes.idcliente
	WHERE Clientes.Fnome = 'João' AND Clientes.Lnome = 'Oliveira';

-- Verificar o total de serviços por status (Aberta, Em andamento, Fechada) 
SELECT statusOS, COUNT(*) AS quantidade_servicos
	FROM Ordem_Servico
	GROUP BY statusOS;

-- Obter a quantidade de pagamentos realizados por método de pagamento 
SELECT metodo_pagamento, COUNT(*) AS quantidade_pagamentos
	FROM Pagamentos
	GROUP BY metodo_pagamento;
