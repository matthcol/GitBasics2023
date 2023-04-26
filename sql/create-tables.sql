-- table chanteur (Oracle DB format)

create table chanteur (
    id integer 
            GENERATED ALWAYS AS IDENTITY 
            constraint pk_chanteur primary key,
    nom varchar2(50) NOT NULL,
    birthdate date
);

create table chanson (
    id integer 
            GENERATED ALWAYS AS IDENTITY 
            constraint pk_chanson primary key,
    title varchar2(150) NOT NULL,
    id_chanteur integer
);

alter table chanson add constraint fk_chanson_chanteur 
    foreign key (id_chanteur)
    references chanteur(id);