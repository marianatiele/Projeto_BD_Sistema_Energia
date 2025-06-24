-- PostgreSQL version 16
/* Lógico_Enge: */
-- Criando o Banco de Dados
create database db_enge;

-- Criando o schema
create schema sm_enge;

-- Criando as tabelas 

create table sm_enge.Cliente (
    cpf CHAR(11),
    nome VARCHAR(50) not null,
    email VARCHAR(30) not null unique,
    telefone BIGINT not null,
    cidade VARCHAR(50) not null,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    num_residencia INTEGER not null,
    id_cliente INTEGER,
    primary key (cpf, id_cliente)
);


create table sm_enge.Funcionario (
    id_funcionario INTEGER primary key,
    nome VARCHAR(50) not null,
    cargo VARCHAR(20) not null,
    login VARCHAR(15) not null,
    senha VARCHAR(8) check(senha <> '') not null,
    tipo_login VARCHAR(10) not null
);



create table sm_enge.Medidor (
    id_medidor INTEGER primary key,
    data_instalacao DATE not null,
    tipo VARCHAR(10),
    num_serie INTEGER not null,
    kw BIGINT not null,
    cpf CHAR(11) not null,
    id_cliente INTEGER not null,

	constraint fk_cliente_medidor 
	foreign key (cpf, id_cliente) references sm_enge.Cliente(cpf, id_cliente)
);


create table sm_enge.Conta (
    id_conta INTEGER primary key,
    data_vencimento DATE not null,
    status VARCHAR(10) not null,
    valor_total MONEY not null,
    data_emissao DATE not null,
    id_medidor INTEGER not null,
    id_funcionario INTEGER not null,

	constraint fk_medidor_conta 
	foreign key (id_medidor) references sm_enge.Medidor(id_medidor)
	on delete cascade on update cascade,

	constraint fk_funcionario_conta
	foreign key (id_funcionario) references sm_enge.Funcionario(id_funcionario)
	on delete cascade on update cascade
);



create table sm_enge.Pagamento (
	id_pagamento INTEGER primary key,
    data_pagamento DATE not null,
    valor_pago MONEY not null,
    forma_pagamento VARCHAR(15) not null,
    id_conta INTEGER not null,
	
	constraint fk_pag_conta 
	foreign key (id_conta) references sm_enge.Conta(id_conta)
	on delete cascade on update cascade
);

    	










