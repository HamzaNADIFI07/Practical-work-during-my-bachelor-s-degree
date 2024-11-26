--Q1.1:
select insee , nom , superficie from communes 
order by superficie desc;

--Q1.2:
select insee , nom from communes 
where nom like '%Lille%';

--Q1.3:
select insee , substring(insee,1,2) as "département",nom from communes; 

--Q1.4:
select communes.insee , nom , recensement , pop_totale from communes
join population on communes.insee = population.insee 
order by nom desc , recensement asc;

--Q1.5:
select population.insee , communes.nom , pop_totale from population
join communes on population.insee = communes.insee
where recensement = 2016
order by pop_totale desc ;

--Q1.6:
select communes.insee , communes.nom , population.pop_mun , communes.superficie , round(population.pop_mun/communes.superficie , 2) as "densité" 
from communes 
join population on population.insee = communes.insee
where recensement = 2016
order by densité desc;

--Q2:
select insee , nom , pop_mun , superficie , round(pop_mun/ superficie , 2) as "densité" 
from communes 
join population using(insee)
where recensement = 2016
order by densité desc;

--Q3.1:
select nom , nom_station , lat , lon from stations
join communes using(insee)
order by nom asc;

--Q3.2:
select communes.nom , stations.nom_station , stations.lat , stations.lon from communes
left join stations on stations.insee= communes.insee
order by nom asc;

--Q4.1:
select count(*) from mesures_mensuelles;

--Q4.2:
select avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
where code_polluant= 7;

--Q4.3:
select count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
where code_polluant =7
group by code_station ;

--Q4.4:
select stations.nom_station ,count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
join stations using(code_station)
where code_polluant =7
group by nom_station  ;

--Q4.5:
select stations.nom_station ,count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
join stations using(code_station)
where code_polluant =6001
group by nom_station  ;

--Q4.6:
select stations.nom_station ,count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
join stations using(code_station)
where code_polluant =6001
group by nom_station  
having avg(valeur)>10;

--Q4.7:
select count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
group by code_station , code_polluant 
order by code_polluant;

--Q4.8:
select nom_station , count(*) as "nombre de mesures", avg(valeur) as "moyenne" , max(valeur) as maximum , min(valeur) as minimum
from mesures_mensuelles
join stations using(code_station)
group by nom_station  , code_polluant;

--Q5.1:
select stations.code_station , code_polluant  from mesures_mensuelles
cross join stations;

--Q5.2:
select code_station , code_polluant , count(*) from mesures_mensuelles
group by code_station , code_polluant;

select stations.code_station , code_polluant  from mesures_mensuelles
cross join stations;

select stations.code_station , code_polluant , count(*) as "mesures"  from mesures_mensuelles
cross join stations
group by stations.code_station , code_polluant
order by code_station , code_polluant ;








