--PostregreSQL version 16
/* Lógico_Sistema_Enge: */

create database db_enge;
create schema sh_enge;


create table sh_enge.Cliente (
	cod_cliente INTEGER primary key,
	email VARCHAR(25),
    telefone BIGINT,
	nome VARCHAR(50),
    cidade VARCHAR(50),
    bairro VARCHAR(50),
	rua VARCHAR(50),
    num_casa INTEGER
       
);

create table sh_enge.Colaborador (
    cod_colaborador INTEGER primary key,
    nome VARCHAR(50),
    telefone BIGINT
);


create table sh_enge.Consumo_Faturas (
    cod_consumo INTEGER,
    data_medicao DATE,
    kw INTEGER,
    localizacao VARCHAR(25),
    cod_fatura INTEGER,
    data_emissao DATE,
    data_venciemnto DATE,
    status_pagamento VARCHAR(15),
    primary key (cod_consumo, cod_fatura)
);

create table sh_enge.Consumir (
    cod_cliente INTEGER,
    cod_consumo INTEGER,
    cod_fatura INTEGER,
    primary key (cod_cliente, cod_consumo, cod_fatura),
	foreign key (cod_cliente)
    references sh_enge.Cliente (cod_cliente)
    on delete cascade on update cascade	,
	 foreign key (cod_consumo, cod_fatura)
    references sh_enge.Consumo_Faturas (cod_consumo, cod_fatura)
    on delete cascade on update cascade	
);



create table sh_enge.Pagamento (
    cod_pagamento INTEGER primary key,
    data_pagamento DATE,
    valor_pago REAL,
    metodo_pagamento VARCHAR(50),
    status_pagamento BOOLEAN,
    cod_consumo INTEGER,
    cod_fatura INTEGER,
	foreign key (cod_consumo, cod_fatura) 
	references sh_enge.Consumo_Faturas (cod_consumo, cod_fatura) 
	on delete cascade on update cascade	
);


create table  sh_enge.Observar (
    cod_consumo INTEGER,
    cod_fatura INTEGER,
    cod_colaborador INTEGER,
    primary key (cod_consumo, cod_fatura, cod_colaborador),
	
	foreign key (cod_consumo, cod_fatura)
	references sh_enge.Consumo_Faturas (cod_consumo, cod_fatura)
    on delete cascade on update cascade	,
	foreign key (cod_colaborador)
    references sh_enge.Colaborador (cod_colaborador)
    on delete cascade on update cascade	
);





 
 
   
