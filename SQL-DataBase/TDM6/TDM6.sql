create table region (
	code_region text,
	nom_region text
);

create table departement (
	code_departement text ,
	nom_departement text
);

create table academie (
	code_academie text,
	nom_academie text
);
create table nature (
	code_nature text,
	nom_nature text
);

create  table commune (
	code_commune text ,
	nom_commune text,
	code_departement text,
	code_region text
);

create table etablissement(
	code_etablissement text primary key,
	nom_etablissement text,
	adresse text,
	code_nature text,
	nom_nature text,
	nom_academie text,
	code_commune text,
	latitude real,
	longitude real
);

insert into region(code_region, nom_region)
select importation.code_reg,region from scol.importation;


insert into departement (code_departement, nom_departement)
select code_dept , departement from scol.importation ;


insert into academie (code_academie, nom_academie)
select code_acad , academie from scol.importation ;

insert into nature (code_nature, nom_nature)
select code_nature , nature from scol.importation ;

insert into commune (code_commune, nom_commune,code_departement,code_region)
select code_commune, commune, code_dept , code_reg from scol.importation ;

insert into etablissement (code_etablissement, nom_etablissement, adresse, code_nature, nom_nature, nom_academie, code_commune , latitude, longitude)
select code_etab , appellation, adresse, code_nature, nature, academie, code_commune, latitude, longitude from scol.importation ;

