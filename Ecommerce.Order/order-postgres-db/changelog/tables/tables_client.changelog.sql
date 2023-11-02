
--liquibase formatted sql

--changeset mehdi.touir:1
--comment: create table client
create table client (
    id serial primary key,
    name varchar(50) not null
)
--rollback DROP TABLE client;