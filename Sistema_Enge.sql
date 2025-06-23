--PostregreSQL version 16

	/* Lógico_Sistema_Enge: */

CREATE TABLE Cliente (
	cod_cliente INTEGER PRIMARY KEY,
	email VARCHAR(25),
    telefone BIGINT,
	nome VARCHAR(50),
    cidade VARCHAR(50),
    bairro VARCHAR(50),
	rua VARCHAR(50),
    num_casa INTEGER
       
);

CREATE TABLE Colaborador (
    cod_colaborador INTEGER PRIMARY KEY,
    nome VARCHAR(50),
    telefone BIGINT
);

CREATE TABLE Pagamento (
    cod_pagamento INTEGER PRIMARY KEY,
    data_pagamento DATE,
    valor_pago REAL,
    metodo_pagamento VARCHAR(50),
    status_pagamento BOOLEAN,
    cod_consumo INTEGER,
    cod_fatura INTEGER,
	foreign key (cod_consumo, cod_fatura) references Consumo_Faturas (cod_consumo, cod_fatura) 
	on delete cascade on update cascade	
);


CREATE TABLE Consumir (
    cod_cliente INTEGER,
    cod_consumo INTEGER,
    cod_fatura INTEGER,
    PRIMARY KEY (cod_cliente, cod_consumo, cod_fatura),
	FOREIGN KEY (cod_cliente)
    REFERENCES Cliente (cod_cliente)
    ON DELETE RESTRICT,
	 FOREIGN KEY (cod_consumo, cod_fatura)
    REFERENCES Consumo_Faturas (cod_consumo, cod_fatura)
    ON DELETE RESTRICT
);


CREATE TABLE Observar (
    cod_consumo INTEGER,
    cod_fatura INTEGER,
    cod_colaborador INTEGER,
    PRIMARY KEY (cod_consumo, cod_fatura, cod_colaborador),
	
	FOREIGN KEY (cod_consumo, cod_fatura)
	REFERENCES Consumo_Faturas (cod_consumo, cod_fatura)
    ON DELETE RESTRICT,
	FOREIGN KEY (cod_colaborador)
    REFERENCES Colaborador (cod_colaborador)
    ON DELETE RESTRICT
);

CREATE TABLE Consumo_Faturas (
    cod_consumo INTEGER,
    data_medicao DATE,
    kw INTEGER,
    localizacao VARCHAR(25),
    cod_fatura INTEGER,
    data_emissao DATE,
    data_venciemnto DATE,
    status_pagamento VARCHAR(15),
    PRIMARY KEY (cod_consumo, cod_fatura)
);

 

 
 
   