
--liquibase formatted sql

--changeset mehdi.touir:1
--comment: create table pipe
create table pipe (
    id serial primary key,
    valId varchar(50),
    ippn varchar(50),
    createdOn date not null,
    updatedOn date
)
--rollback DROP TABLE pipe;