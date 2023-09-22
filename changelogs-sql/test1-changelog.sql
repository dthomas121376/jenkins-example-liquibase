--liquibase formatted sql

--changeset dthomas:1
create table test1 (
    id int primary key,
    name varchar(255)
);
--rollback drop table test1;

--changeset dthomas:2
insert into test1 (id, name) values (1, 'Damion');
insert into test1 (id, name) values (2, 'Damaris');
