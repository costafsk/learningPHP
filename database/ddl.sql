CREATE DATABASE "cobaia";

CREATE TABLE "Cliente" (
    "id" SERIAL,
    "nome" VARCHAR (100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "cpf" VARCHAR(14) NOT NULL,

    CONSTRAINT "ClientePK" PRIMARY KEY ("id")
);

CREATE TABLE "Orcamento" (
    "id" SERIAL,
    "descricao" TEXT NOT NULL,
    "preco" NUMERIC (5, 2) NOT NULL,
    "data" DATE,
    "clienteFK" INT,

    CONSTRAINT "OrcamentoPK" PRIMARY KEY ("id"),
    CONSTRAINT "OrcamentoClienteFK" FOREIGN KEY ("clienteFK")
        REFERENCES "Cliente" ("id")
            ON DELETE CASCADE 
            ON UPDATE CASCADE
);
