
--liquibase formatted sql

--changeset mehdi.touir:1
--comment: add constraint fk_pipe_clientId_client_id
ALTER TABLE pipe
ADD CONSTRAINT fk_pipe_clientId_client_id
FOREIGN KEY (clientId) REFERENCES client(id);
--rollback ALTER TABLE pipe DROP CONSTRAINT fk_pipe_clientId_client_id;