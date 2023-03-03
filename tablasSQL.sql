-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "PRODUCTO" (
    "SUB_CATEGORIA" varchar   NOT NULL,
    "SKU" varchar   NOT NULL,
    "CODIGO_DE_BARRAS" varchar   NOT NULL,
    "PRODUCTO" varchar   NOT NULL,
    CONSTRAINT "pk_PRODUCTO" PRIMARY KEY (
        "SKU"
     )
);

CREATE TABLE "CANALES" (
    "CANAL" varchar   NOT NULL,
    "SUB_CATEGORIA" varchar   NOT NULL,
    "SKU" varchar   NOT NULL,
    CONSTRAINT "pk_CANALES" PRIMARY KEY (
        "CANAL"
     )
);

CREATE TABLE "VENTAS_MES" (
    "SKU" varchar   NOT NULL,
    "MES" date   NOT NULL,
    "YEAR" date   NOT NULL,
    "CANAL" varchar   NOT NULL,
    CONSTRAINT "pk_VENTAS_MES" PRIMARY KEY (
        "MES"
     )
);

ALTER TABLE "CANALES" ADD CONSTRAINT "fk_CANALES_SKU" FOREIGN KEY("SKU")
REFERENCES "PRODUCTO" ("SKU");

ALTER TABLE "VENTAS_MES" ADD CONSTRAINT "fk_VENTAS_MES_SKU" FOREIGN KEY("SKU")
REFERENCES "PRODUCTO" ("SKU");

ALTER TABLE "VENTAS_MES" ADD CONSTRAINT "fk_VENTAS_MES_CANAL" FOREIGN KEY("CANAL")
REFERENCES "CANALES" ("CANAL");

