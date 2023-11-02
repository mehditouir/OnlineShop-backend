
--liquibase formatted sql

--changeset mehdi.touir:1
insert into client(name) values ('VTSA')
--rollback delete from client where id = 1

--changeset mehdi.touir:2
insert into client(name) values ('Brazil Rig')
--rollback delete from client where id = 2

--changeset mehdi.touir:3
insert into pipe(valId, ippn, clientId, description, createdOn) values ('abcd', 'azze', 2, 'my pipe description', current_date);
--rollback delete from pipe where id = 1

--changeset mehdi.touir:4
update pipe set clientId = 1 where id = 1;
--rollback update person set clientId = 2 where id = 1