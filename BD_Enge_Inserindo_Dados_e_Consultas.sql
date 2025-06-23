-- insert cliente
insert into sh_enge.cliente values
(1, 'maria@enge.com', 7896352417, 'Maria Socorro', 'Arací','Centro','Das Flores',25)
(2, 'pedrojorge@enge.com', 7856823695, 'Pedro Jorge Aureci', 'Barra','Couto','Alegre',08);
(3, 'ana@enge.com', 7196352411, 'Ana Figueiredo', 'Salvador','Comércio','Porto',15),
(4, 'ricardo@enge.com', 7184523695, 'Ricardo Alves', 'Camaçari','Centro','Praia',22),
(5, 'juliana@enge.com', 7198563247, 'Juliana Costa', 'Feira de Santana','Aviário','Rua das Rosas',12),
(6, 'paulo@enge.com', 7132654879, 'Paulo Mendes', 'Alagoinhas','Jardins','Beija-Flor',10),
(7, 'fernanda@enge.com', 7125698741, 'Fernanda Silva', 'Ilhéus','Praia','Vista Mar',8),
(8, 'joao@enge.com', 7198745123, 'João Batista', 'Itabuna','Centro','América',30),
(9, 'luiza@enge.com', 7189652478, 'Luiza Matos', 'Jequié','São Judas','Principal',16),
(10, 'marcos@enge.com', 7186325471, 'Marcos Aurélio', 'Vitória da Conquista','Centro','Luz',5);


-- Inserindo faturas

insert into sh_enge.consumo_faturas 
values 
(222, '2025-05-06', 158, 'Casa', 333, '2025-05-01', '2025-06-01', 'Em Aberto');
(145, '2025-05-15', 250, 'Apartamento', 155, '2025-05-16', '2025-06-01', 'Pago');
(378, '2025-06-10', 190, 'Casa', 478, '2025-06-01', '2025-07-01', 'Em Aberto');
(189, '2025-04-25', 300, 'Loja', 205, '2025-04-01', '2025-05-01', 'Pago');
(501, '2025-03-10', 220, 'Escritório', 602, '2025-03-01', '2025-04-01', 'Vencida');


select * from consumir

insert into sh_enge.consumir values (1, 222, 333);
insert into sh_enge.consumir values (2, 145, 155);



-- Inserindo pagamentos
insert into sh_enge.pagamento values 
(005, '2025-06-01', 350.20, 'PIX', true,145,155);
(006, '2025-07-01', 420.00, 'Cartão', true, 378, 478);
(007, '2025-05-01', 500.50, 'Boleto', true, 189, 205);
(008, '2025-04-01', 310.75, 'PIX', false, 501, 602);

-- Inserindo colaboradores
insert into sh_enge.colaborador values (117, 'Carlos Oliveira', 7198524697);
insert into sh_enge.colaborador values (115, 'Maria Luiza Soares', 7189652438);
insert into sh_enge.colaborador values (111, 'Juan Perez', 7498654213);
insert into sh_enge.colaborador values (112, 'Margarida Medeiros', 7189652569);
insert into sh_enge.colaborador values (114, 'Pedro Maurai', 396524136);

--insert observação

insert into sh_enge.observar values (222, 333, 115);
insert into sh_enge.observar values (145, 155, 112);



-- Inserindo consumo
insert into sh_enge.consumir values 
(3, 378, 478),
(4, 189, 205),
(5, 501, 602);

-- Inserindo observação
insert into sh_enge.observar values 
(378, 478, 111),
(189, 205, 114),
(501, 602, 117);

-- visualizando os dados

select * from sh_enge.cliente;
select * from sh_enge.consumo_faturas;
select * from sh_enge.pagamento;
select * from sh_enge.colaborador;
select * from sh_enge.observar;


