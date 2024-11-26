select * from coureurs ;
select * from equipes ;
--Q1 a:

select nom, dossard  from coureurs;

--Q1 b:

select dossard, nom from coureurs
ORDER BY dossard;

--Q1 c:
select equipe, dossard, nom from coureurs 
order by equipe asc, nom asc;

--Q1 d:
select dossard, nom, taille from coureurs
order by taille;

--Q1 e:
select nom, dossard from coureurs
where equipe = 'LavePlusBlanc';

--Q1 f:
select nom, dossard from coureurs."dossard" ;

--Q1 g:
select nom, taille, equipe from coureurs
where taille < 180;

--Q1 h:
select nom, taille, equipe from coureurs
where taille < 180
order by taille asc;

--Q1 i:
select couleur from equipes;

--Q2 a:
select concat("nom",' appartient à l équipe ',"equipe")from coureurs;

--Q2 b:
select concat("nom",' appartient à l équipe ',"equipe")as "appartenance"from coureurs;

--Q2 c:
select upper(nom) as "nom maj", char_length(nom) as "lg"  from coureurs ;

--Q2 d:
select upper(nom) as "nom maj", char_length(nom) as "lg"  from coureurs 
order by nom asc;

--Q2 e:
select dossard , upper(nom) as nom, upper(substring("equipe",1,3)) as equipe  from coureurs;

--Q3 a:
select * from coureurs
where nom like 'a%';

--Q3 b:
select * from coureurs
where nom like '%er%';

--Q3 c:
select * from coureurs
where nom like '_____';

--Q3 d:
select * from coureurs
where nom like 'a__';

--Q3 e:
select * from coureurs
where nom like 'a__%';

--Q4 a:
select taille/100 from coureurs;

--Q4 b:
select taille/100.0 from coureurs;

--Q4 c:
select cast(taille/100.0 as float) from coureurs;

--Q4 d:
select trunc(taille/100.0 , 2) from coureurs; 

--Q5 a:
--La condition de jointure la plus pertinente pour obtenir des informations cohérentes est le innerjoin

--Q5 b:
select dossard , coureurs.nom , equipe , equipes.couleur from coureurs
join equipes on coureurs.equipe = equipes.nom ;

--Q5 c:
select coureurs.nom , equipes.directeur from coureurs
join equipes on coureurs.equipe=equipes.nom;

--Q5 d:
select coureurs.nom , equipes.directeur from coureurs
join equipes on coureurs.equipe=equipes.nom
where directeur='Ralph';

--Q5 e:
select coureurs.nom , equipes.directeur from coureurs
join equipes on coureurs.equipe=equipes.nom
where coureurs.nom = 'alphonse';

--Q6 a:
insert into equipes values ('Losc','Rouge','inconnu');

--Q6 b:
insert into coureurs values (8,'alexandre','Losc',180),(9,'timoleon','Losc',185);

--Q7:
insert into equipes (couleur,nom) values ('orange','Nouvelle Équipe')

--Q7 a:
select * from equipes
where directeur isnull;

--Q7 b:
select * from equipes
where directeur is not null;

--Q8 a:
update coureurs
set taille=taille-1
where equipe='PicsouBank';

--Q8 b:
update equipes 
set directeur = 'Tim'
where directeur isnull ;

--Q9 1:
select max(taille) as "taille maxi", avg(taille) as "taille moyenne" from coureurs;

--Q9 2:
select max(taille) as "taille maxi", avg(taille) as "taille moyenne" , count(*) as "nombre de coureurs"   from coureurs;

--Q9 3:
select count(*) as "nombre d'équipes" , count(distinct directeur) as "nombre d’équipes avec directeur" from equipes;

--Q10:
create table visites (
dossard int not null ,
quand date not null ,
primary key (dossard),
foreign key (dossard) references coureurs(dossard)
);

insert into visites (dossard ,quand)
values
(5, '2020-08-12'), (2,'2020-09-03');

--Q10 1:
select coureurs.dossard , coureurs.nom , visites.quand from coureurs
full join visites on coureurs.dossard = visites.dossard
order by dossard asc;

--Q10 2:
select coureurs.dossard , coureurs.nom from coureurs
full join visites on coureurs.dossard = visites.dossard
where quand isnull 
order by dossard asc;

