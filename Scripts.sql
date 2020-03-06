
-- Database: Phone_db
-- DROP DATABASE "Phone_db";

CREATE DATABASE "Phone_db"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;



-- Table: public.phone_rating
-- DROP TABLE public.phone_rating;
 

CREATE TABLE public.phone_rating
(
    id character varying(30) COLLATE pg_catalog."default" NOT NULL,
    phone_brand character varying(30) COLLATE pg_catalog."default",
    phone_model character varying(250) COLLATE pg_catalog."default" NOT NULL,
    phone_price numeric NOT NULL,
    avg_rating numeric NOT NULL,
    CONSTRAINT phone_rating_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

 

ALTER TABLE public.phone_rating
    OWNER to postgres;