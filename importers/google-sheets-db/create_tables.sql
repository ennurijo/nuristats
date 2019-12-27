-- DDL generated by Postico 1.5.8
-- Not all database features are supported. Do not use for backup.

-- Table Definition ----------------------------------------------

CREATE TABLE raw_data (
    id integer DEFAULT nextval('fxlifesheet_id_seq'::regclass) PRIMARY KEY,
    timestamp bigint,
    "YearMonth" smallint,
    "YearWeek" smallint,
    "Year" smallint,
    "Quarter" smallint,
    "Month" smallint,
    "Day" smallint,
    "Hour" smallint,
    "Minute" smallint,
    "Key" text,
    "Question" text,
    "type" text,
    "value" text
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX fxlifesheet_pkey ON data(id int4_ops);


-- DDL generated by Postico 1.5.8
-- Not all database features are supported. Do not use for backup.

-- Table Definition ----------------------------------------------

CREATE TABLE last_run (
    id SERIAL PRIMARY KEY,
    command text,
    last_run bigint,
    last_message bigint
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX last_run_pkey ON last_run(id int4_ops);