--Q1:
create table etapes (
	numero int primary key check(numero>=1),
	nom varchar(30)
);
drop table etapes;
select* from etapes;
INSERT INTO etapes (numero , nom) VALUES (1 , 'Étape 1');
INSERT INTO etapes (numero , nom) VALUES (2 , 'Étape 2');
INSERT INTO etapes (numero , nom) VALUES (3 , 'Étape 3');

--Q2:
create table temps (
	dossard int,
 	etape int ,
 	chrono interval hour,
 	id serial primary key
 );
 select * from temps;
drop table temps;
 
--Q3:
alter table temps 
add FOREIGN KEY (dossard) REFERENCES coureurs(dossard),
add FOREIGN KEY (etape) REFERENCES etapes(numero)

--Q4:
alter table temps 
add CHECK(chrono >= INTERVAL '0 hours' AND chrono <= INTERVAL '6 hours')

insert into temps(dossard,etape,chrono)
values(8,2,interval '4 hours' )
insert into temps(dossard,etape,chrono)
values(3,3,interval '-2 hours')
insert into temps(dossard,etape,chrono)
values(2,1,interval '8 hours')

--Q5:
insert into temps(dossard,etape,chrono)
values(8,2,interval '4 hours' );
insert into temps(dossard,etape,chrono)
values(3,1,interval '2 hours' );
insert into temps(dossard,etape,chrono)
values(2,3,interval '5 hours' );
insert into temps(dossard,etape,chrono)
values(7,2,interval '1 hours' );
insert into temps(dossard,etape,chrono)
values(5,2,interval '6 hours' );

--Q6.1:

create table copieEtapes as select * from etapes;
create table copieTemps as select * from temps;
--Q6.2:

delete from etapes;
-- Quand on execute cette comande ça nous affiche une erreur parce que la colonne 
-- numero est une clé étrangère de la table temps.
--Q6.3:
delete from temps;
insert into temps(dossard,etape,chrono)
values(8,2,interval '4 hours' )
--La valeur qui a été génerer pour son identifiant est 7.
--Q6.4:

delete from temps;
alter sequence temps_id_seq restart;
--Q6.5:
delete from etapes;

--Q6.6:
INSERT INTO etapes select * from  copieEtapes ;
INSERT INTO temps select * from  copieTemps ;

--Q7:
create view relevéEtape1 as
select dossard , chrono , rank() over(order by chrono) as "rang de classement"
from temps
where etape=1;
select * from relevéEtape1
left join temps on temps.dossard= relevéEtape1.dossard
where etape=1;

--Q8:






