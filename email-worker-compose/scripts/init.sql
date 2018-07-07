CREATE DATABASE email_sender;

\c email_sender

CREATE TABLE IF NOT EXISTS emails (
    id SERIAL NOT NULL,
    data TIMESTAMP NOT NULL default current_timestamp,
    assunto VARCHAR(100) NOT NULL,
    mensagem VARCHAR(250) NOT NULL
);