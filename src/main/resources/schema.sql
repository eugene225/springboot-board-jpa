drop table if exists posts cascade;
drop table if exists users cascade;

create table posts (
                       create_at timestamp(6),
                       id bigint not null,
                       user_id bigint not null,
                       title varchar(50),
                       content clob,
                       primary key (id)
);

create table users (
                       age integer not null,
                       create_at timestamp(6),
                       id bigint not null,
                       name varchar(20) not null,
                       hobby varchar(255) not null check (hobby in ('SPORTS','MOVIE','BOOK')),
                       primary key (id)
);