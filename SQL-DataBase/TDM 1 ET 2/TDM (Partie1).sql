select * from coureurs ;
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
update coureurs 
cast(taille as int)
set taille / 100.0;


