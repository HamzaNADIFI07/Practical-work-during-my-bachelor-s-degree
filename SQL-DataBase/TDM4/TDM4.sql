select * from communes;
--Exercice 1:
--Q1:
select * , trunc(superficie/5) as cat_sup from communes

--Q2:
select count(*) , avg(superficie) , trunc(superficie/5) as cat_sup from communes
group by cat_sup
order by cat_sup;

--Q3:
select *, trunc(communes.superficie/5) as cat_sup , trunc(population.pop_totale/1000)+1 as cat_pop , population.pop_totale  from communes
join population on population.insee=communes.insee
where recensement = 2016

--Q4 a :
select count(*) , min(superficie) , max(superficie) , round(avg(superficie),2) from communes
join population on population.insee=communes.insee
group by trunc(population.pop_totale/1000)+1
order by trunc(population.pop_totale/1000)+1;

--Q4 b :
select count(*) , min(superficie) , max(superficie) , round(avg(superficie),2) from communes
join population on population.insee=communes.insee
group by trunc(population.pop_totale/1000)+1
having count(*)>5
order by count(*) desc;

--Exercice 2:
select insee, nom, pop_totale as pop_2012
from communes
natural join population
where recensement=2012

create view comm_2012 as
select insee, nom, pop_totale as pop_2012
from communes
natural join population
where recensement=2012

select * from comm_2012
select * from comm_2016

--Q1:

create view exo2 as
select *, trunc(communes.superficie/5) as cat_sup , trunc(population.pop_totale/1000)+1 as cat_pop , population.pop_totale  from communes
join population on population.insee=communes.insee
where recensement = 2016;

select count(*) , min(superficie) , max(superficie) , round(avg(superficie),2) from communes
join population on population.insee=communes.insee
group by cat_pop
order by cat_pop;

select count(*) , min(superficie) , max(superficie) , round(avg(superficie),2) from communes
join population on population.insee=communes.insee
group by cat_pop
having count(*)>5
order by count(*) desc;


--Exercice3:
create view comm_2012 as
select insee, nom, pop_totale as pop_2012
from communes
natural join population
where recensement=2012

create view comm_2016 as
select insee, nom, pop_totale as pop_2016
from communes
natural join population
where recensement=2016

select communes.insee , communes.nom , comm_2012.pop_2012 , comm_2016.pop_2016 , 
comm_2016.pop_2016-comm_2012.pop_2012 as "progression" , 
((comm_2016.pop_2016*100)/comm_2012.pop_2012)-100 as "progression pourcentage"
from communes
join comm_2012 on comm_2012.insee=communes.insee 
join comm_2016 on comm_2016.insee=communes.insee
order by "progression pourcentage"

