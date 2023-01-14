-- Table: public.Carte

-- DROP TABLE IF EXISTS public."Carte";

CREATE TABLE IF NOT EXISTS public."Carte"
(
    "ID_carte" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 0 MINVALUE 0 MAXVALUE 1000 CACHE 1 ),
    "Titlu" text COLLATE pg_catalog."default",
    "An" date,
    "Cota" text COLLATE pg_catalog."default",
    "ID_editura" integer NOT NULL,
    "ID_descriere fizica" integer NOT NULL,
    "ID_locatie" integer NOT NULL,
    CONSTRAINT "Carte_pkey" PRIMARY KEY ("ID_carte"),
    CONSTRAINT "ID_descriere fizica" FOREIGN KEY ("ID_descriere fizica")
        REFERENCES public."Descriere fizica" ("ID_descriere fizica") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_editura" FOREIGN KEY ("ID_editura")
        REFERENCES public."Editura" ("ID_editura") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_locatie" FOREIGN KEY ("ID_locatie")
        REFERENCES public."Locatie" ("ID_locatie") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Carte"
    OWNER to postgres;
-- Index: fki_ID_descriere fizica

-- DROP INDEX IF EXISTS public."fki_ID_descriere fizica";

CREATE INDEX IF NOT EXISTS "fki_ID_descriere fizica"
    ON public."Carte" USING btree
    ("ID_descriere fizica" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ID_editura

-- DROP INDEX IF EXISTS public."fki_ID_editura";

CREATE INDEX IF NOT EXISTS "fki_ID_editura"
    ON public."Carte" USING btree
    ("ID_editura" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ID_locatie

-- DROP INDEX IF EXISTS public."fki_ID_locatie";

CREATE INDEX IF NOT EXISTS "fki_ID_locatie"
    ON public."Carte" USING btree
    ("ID_locatie" ASC NULLS LAST)
    TABLESPACE pg_default;