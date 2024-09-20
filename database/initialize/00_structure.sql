create schema if not exists library;



create table if not exists library."Author" (
    id serial primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    born date not null
);


create table if not exists library."Genre" (
    name varchar(255) not null,
    primary key (name)
);


create table if not exists library."Book" (
    id serial primary key,
    title varchar(255) not null,
    release_date date not null,
    author_id int not null,
    genre_name varchar(255) not null,
    description varchar(1000),

    foreign key (author_id) references library."Author"(id),
    foreign key (genre_name) references library."Genre"(name)
);


create table if not exists library."User" (
    id serial primary key,
    email varchar(255) not null,
    password varchar(255) not null
);


create table if not exists library."OrderState" (
    name varchar(255) not null,
    primary key (name)
);


-- Could be divided into different states tables
create table if not exists library."Order" (
    book_id int not null,
    user_id int not null,
    count int not null,
    state_name varchar(255) not null,
    primary key (book_id, user_id),
    foreign key (state_name) references library."OrderState"(name)
);
