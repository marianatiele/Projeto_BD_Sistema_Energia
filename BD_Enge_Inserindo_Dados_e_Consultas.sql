-- insert cliente

select * from sm_enge.Cliente;

insert into sm_enge.cliente values
('25634879253','Maria Socorro', 'maria@enge.com',7896352417, 'Camaçari', 'Gleba C', 'Rua Ipê',751, 1)
('35897412569','João Pereira', 'joao@enge.com', 71987456231, 'Salvador', 'Pituba', 'Rua das Flores', 120, 2),
('47856231985','Ana Clara', 'ana@enge.com', 71985476321, 'Lauro de Freitas', 'Vilas do Atlântico', 'Rua dos Coqueiros', 34, 3),
('12548796320','Carlos Souza', 'carlos@enge.com', 71987654321, 'Camaçari', 'Gleba A', 'Rua Jacarandá', 542, 4),
('78965412387','Fernanda Lima', 'fernanda@enge.com', 71986543217, 'Salvador', 'Stella Maris', 'Rua das Acácias', 99, 5),
('96325874120','Ricardo Alves', 'ricardo@enge.com', 71984321765, 'Simões Filho', 'Centro', 'Rua das Laranjeiras', 178, 6),
('74123658974','Juliana Martins', 'juliana@enge.com', 71981234567, 'Camaçari', 'Gleba B', 'Rua dos Pinheiros', 215, 7),
('85296314785','Marcelo Santos', 'marcelo@enge.com', 71988776655, 'Lauro de Freitas', 'Portão', 'Rua Primavera', 37, 8),
('36985214796','Patrícia Nunes', 'patricia@enge.com', 71987678900, 'Salvador', 'Boca do Rio', 'Rua das Palmeiras', 280, 9),
('14785236974','Eduardo Costa', 'eduardo@enge.com', 71989998877, 'Candeias', 'Vila de Abrantes', 'Rua Jacuípe', 64, 10),
('25896374185','Carla Dias', 'carla@enge.com', 71985554433, 'Salvador', 'Rio Vermelho', 'Rua das Orquídeas', 415, 11);



-- Inserirndo Medidor


select * from sm_enge.medidor;

insert into sm_enge.Medidor values
(101, '2002-01-01', 'analógico', 10001, 5.5, '25634879253', 1),
(102, '2003-01-01', 'analógico', 10002, 4.2, '35897412569', 2),
(103, '2004-01-01', 'analógico', 10003, 6.0, '47856231985', 3),
(104, '2005-01-01', 'digital', 10004, 5.0, '12548796320', 4),
(105, '2006-01-01', 'digital', 10005, 3.8, '78965412387', 5),
(106, '2007-01-01', 'digital', 10006, 7.1, '96325874120', 6),
(107, '2008-01-01', 'digital', 10007, 5.7, '74123658974', 7),
(108, '2009-01-01', 'digital', 10008, 4.9, '85296314785', 8),
(109, '2010-01-01', 'digital', 10009, 6.5, '36985214796', 9),
(110, '2011-01-01', 'digital', 10010, 5.3, '14785236974', 10),
(111, '2011-01-01', 'digital', 10010, 5.3, '25896374185', 11);

-- Inserindo Funcionarios
select * from sm_enge.Funcionario;

insert into sm_enge.Funcionario values
(1000, 'Carlos Menezes', 'gerente', 'ge_car.enge', 'Ca1234me', 'adm'),
(1001, 'Luciana Ribeiro', 'gerente', 'ge_luc.enge', 'Lu4567ri', 'adm'),
(1002, 'Fernando Lima', 'gerente', 'ge_fer.enge', 'Fe8901li', 'adm'),
(1003, 'Juliana Costa', 'gerente', 'ge_jul.enge', 'Ju6543co', 'adm'),
(1004, 'André Souza', 'eletricista', 'el_and.enge', 'An3215so', 'user'),
(1005, 'Paula Martins', 'eletricista', 'el_pau.enge', 'Pa8752ma', 'user'),
(1006, 'Roberto Silva', 'eletricista', 'el_rob.enge', 'Ro9988si', 'user'),
(1007, 'Tatiane Rocha', 'eletricista', 'el_tat.enge', 'Ta1223ro', 'user'),
(1008, 'Bruno Almeida', 'atendente', 'at_bru.enge', 'Br5432al', 'user'),
(1009, 'Mariana Lima', 'atendente', 'at_mar.enge', 'Mar678li', 'user'),
(1010, 'Ricardo Pires', 'atendente', 'at_ric.enge', 'Ri7654pi', 'user'),
(1011, 'Camila Teixeira', 'atendente', 'at_cam.enge', 'Ca1122te', 'user'),
(1012, 'Fábio Duarte', 'eletricista', 'el_fab.enge', 'Fa3344du', 'user'),
(1013, 'Larissa Melo', 'atendente', 'at_lar.enge', 'La5566me', 'user'),
(1014, 'Daniela Prado', 'eletricista', 'el_dan.enge', 'Da8899pr', 'user');




-- Inserindo Contas
select * from sm_enge.Conta;

insert into sm_enge.Conta 
values 
(501, '2025-07-10', 'pago', 350.75, '2025-06-10', 101, 1008),
(502, '2025-07-15', 'vencido', 420.00, '2025-06-15', 102, 1009),
(503, '2025-07-20', 'pago', 280.50, '2025-06-20', 103, 1010),
(504, '2025-07-25', 'vencido', 510.90, '2025-06-25', 104, 1011),
(505, '2025-07-30', 'pago', 300.00, '2025-06-30', 105, 1008),
(506, '2025-08-05', 'vencido', 415.20, '2025-07-05', 106, 1008),
(507, '2025-08-10', 'pago', 380.40, '2025-07-10', 107, 1011),
(508, '2025-08-15', 'vencido', 450.00, '2025-07-15', 108, 1011),
(509, '2025-08-20', 'pago', 290.00, '2025-07-20', 109, 1009),
(510, '2025-08-25', 'em aberto', 470.80, '2025-07-25', 110, 1009),
(511, '2025-08-25', 'em aberto', 470.80, '2025-07-25', 111, 1009);


-- Inserindo Pagamento 

select * from sm_enge.Pagamento;

insert into sm_enge.Pagamento values
(001, '2025-07-11', 350.75, 'pix', 501),
(002, '2025-07-17', 420.00, 'boleto', 502),
(003, '2025-07-21', 280.50, 'cartão', 503),
(004, '2025-07-28', 510.90, 'pix', 504),
(005, '2025-08-01', 300.00, 'cartão', 505),
(006, '2025-08-06', 415.20, 'pix', 506),
(007, '2025-08-11', 380.40, 'boleto', 507),
(008, '2025-08-16', 450.00, 'pix', 508),
(009, '2025-08-21', 290.00, 'cartão', 509),
(010, '2025-08-27', 470.80, 'boleto', 510),
(011, '2025-08-27', 470.80, 'pix', 511);



