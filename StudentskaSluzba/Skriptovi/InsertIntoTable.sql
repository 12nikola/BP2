SET IDENTITY_INSERT Student ON;

insert into Student (Bri, Imes, Przs, Jmbgs, Ems, Tel, Adr, Prosek, Brespb, Sstatus) values  (123, 'Nikola', 'Nikolic', 1312, 'nikola.nikolic@gmail.com', 0624321543, 'Stanka Paunovic Veljka 8', 7.25, 51, 'Budzet'),
(13, 'Aleksandra', 'Radovic', 1106, 'aleksandra.radovic@gmail.com', 0658781145, 'Bulevar patrijarha Pavla 98', 8.20, 60, 'Budzet'),
 (12, 'Radoslav', 'Ignjatovic', 1612, 'radoslav.ignjatovic@yahoo.com', 0649783325, 'Milos Crnjanski 27', 6.78, 37, 'Samofinansiranje'), 
 (124, 'Jelena', 'Ilic', 2307, 'jecaa@gmail.com', 0641084101, 'Augusta Cesareca 81', 7.00, 44, 'Samofinansiranje'),
 (125, 'Lazar', 'Milicevic', 3003, 'lacika@yahoo.com', 063904497, 'Laze Lazarevica 12', 9.10, 60, 'Budzet');

 SET IDENTITY_INSERT Student OFF;

 SET IDENTITY_INSERT Predmet ON;

 insert into Predmet (Pid, Nazp, Izna, Sem, God) values (12, 'Metodi optimizacije', 'Goran Svenda', 1, 2),
(14, 'Modeliranje i simulacija sistema', 'Aleksandar Erdeljan', 1, 3),
(13, 'Baze podataka 2', 'Vladimir Ivancevic', 2, 4),
(15, 'Fluidi', 'Sinisa Bikic', 1, 3);

SET IDENTITY_INSERT Predmet OFF;

SET IDENTITY_INSERT Profesor ON;

insert into Profesor (Jmbgp, Imep, Przp, Emp) values (1207, 'Goran', 'Svenda', 'svenda@uns.ac.rs'), 
(2205, 'Imre', 'Lendak', 'lendak@uns.ac.rs'),
(1206, 'Vladimir', 'Ivancevic', 'dragoman@uns.ac.rs'),
(1308, 'Sinisa', 'Bikic', 'bikic@uns.ac.rs');

SET IDENTITY_INSERT Profesor OFF;

SET IDENTITY_INSERT Ispit ON;
insert into Ispit (Iid, Nazivi, Prof, Datum, Poen, Ocena, Status) values (1112, 'Metodi optimizacije', 'Goran Svenda', GETDATE(), 54, 6, 'Polozen');
SET IDENTITY_INSERT Ispit OFF;

SET IDENTITY_INSERT Smer ON;
insert into Smer (Sids, Gak) values (29, 2013),
(33, 2019),
(22, 2013),
(35, 2019),
(21, 2013);
SET IDENTITY_INSERT Smer OFF;

SET IDENTITY_INSERT Katedra ON;
insert into Katedra (Idk, Sef) values (1, 'Vladimir Strezorski'), 
(2, 'Aleksandar Kupusinac'),
(3, 'Bogdan Ostojic'),
(4, 'Milica Mileusnic'),
(5, 'Sofronije Ognjenovic');
SET IDENTITY_INSERT Katedra OFF;

SET IDENTITY_INSERT Zaposleni ON;
insert into Zaposleni (Idz, Imez, Przz, Nrm, Zstatus) values (21, 'Vladimir', 'Atanasijevic', 'Referent', 's'),
(22, 'Dancica', 'Bosiljcic', 'Referent', 's'),
(23, 'Bojana', 'Lukic', 'Administrator', 'm'),
(24, 'Djordje', 'Bozovic', 'Referent', 'z'),
(25, 'Dragana', 'Djuric', 'Referent', 'z');
SET IDENTITY_INSERT Zaposleni OFF;

SET IDENTITY_INSERT Ispitni_rokovi ON;
insert into Ispitni_rokovi (Isid, Nir, Datp, Datz) values (23, 30, GETDATE(), GETDATE()), (25, 32, GETDATE(), GETDATE());
SET IDENTITY_INSERT Ispitni_rokovi OFF;