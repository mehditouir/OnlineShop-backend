
--liquibase formatted sql

--changeset mehdi.touir:1
--comment: add column description to pipe
alter table pipe add column description varchar(50)
--rollback ALTER TABLE pipe DROP COLUMN description;

--changeset mehdi.touir:2
--comment: add column clientId of pipe
alter table pipe add column clientId int
--rollback alter table pipe DROP COLUMN clientId;