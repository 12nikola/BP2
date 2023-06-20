select *from Student;
select *from Predmet;
select *from Profesor;
select *from Ispit;
select *from Ispitni_rokovi;
select *from Zaposleni;
select *from Smer;
select *from Katedra;

create table Student (
    Bri integer identity (1, 1) NOT NULL,
    Imes varchar(20) NOT NULL,
    Przs varchar (20) NOT NULL,
    Jmbgs integer,
    Ems varchar (30) NOT NULL,
    Tel integer,
    Adr varchar (50) NOT NULL,
    Prosek float,
    Brespb integer,
    Sstatus char(30),
    CONSTRAINT STUD_PK PRIMARY KEY (Bri)
);

create table Budzet (
    Bri integer primary key foreign key references Student (Bri),
    Imeb varchar (20) NOT NULL,
    Prezb varchar (20) NOT NULL
);

create table Samofinansiranje (
    Bri integer primary key foreign key references Student (Bri),
    Imesa varchar (20) NOT NULL,
    Presa varchar (20) NOT NULL
);

create table Predmet (
    Pid integer identity (1, 1) NOT NULL,
    Nazp varchar (40),
    Izna varchar (40),
    Sem integer,
    God integer,
    CONSTRAINT PRED_PK PRIMARY KEY (Pid)
);

create table Profesor (
    Jmbgp integer identity (1, 1) NOT NULL,
    Imep varchar (20),
    Przp varchar (20),
    Emp varchar (20),
    CONSTRAINT PROF_PK PRIMARY KEY (Jmbgp),
);

create table Ispit (
    Iid integer identity (1, 1) NOT NULL,
    Nazivi varchar (20),
    Prof varchar (20),
    Datum Date,
    Poen integer,
    Ocena integer,
    Status char (30),
    CONSTRAINT ISPIT_PK PRIMARY KEY (Iid)
);

create table Smer (
    Sids integer identity (1, 1) NOT NULL,
    Gak integer,
    CONSTRAINT SMER_PK PRIMARY KEY (Sids)
);

create table Katedra (
    Idk integer identity (1, 1) NOT NULL,
    Sef varchar (20),
    CONSTRAINT KATED_PK PRIMARY KEY (Idk)
);

create table Zaposleni (
    Idz integer identity (1, 1) NOT NULL,
    Imez varchar (20),
    Przz varchar (20),
    Nrm varchar (20),
    Zstatus varchar (20),
    CONSTRAINT ZAP_PK PRIMARY KEY (Idz)
);

create table Referent (
    Idz integer primary key foreign key references Zaposleni (Idz),
    Telr integer,
    Emr varchar (20)
);

create table Administrator (
    Idz integer primary key foreign key references Zaposleni (Idz),
    Tela integer,
    Ema varchar (20) 
);

create table Ispitni_rokovi (
    Isid integer identity (1, 1) NOT NULL,
    Nir integer,
    Datp Date,
    Datz Date,
    CONSTRAINT ISPITN_PK PRIMARY KEY (Isid)
);
