-- table chanteur (Oracle DB format)

create table chanteur (
    id integer 
            GENERATED ALWAYS AS IDENTITY 
            constraint pk_chanteur primary key,
    nom varchar2(50) NOT NULL,
    birthdate date
);