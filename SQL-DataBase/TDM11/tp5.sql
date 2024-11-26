--Q1:
create table Categorie(
	numCategRec integer primary key,
	nomCat varchar(200) not null
	);
create unique index nomCat_Categorie on Categorie(lower(nomCat));


create table Recette( 
	numRecette integer primary key,
	numCategRec integer,
	constraint fk_categorie
		foreign key(numCategRec) references Categorie,
	nomRec varchar(200),
	nbProd integer,
	check (nbProd > 0),
	temps interval
	);

create table Ustensile(
	numUst integer primary key,
	nomUst varchar(200) not null
	);

create table Utiliser( 
	numRecette integer,
	numUst integer,
	primary key(numRecette, numUst),
	constraint fk_ustensile
		foreign key(numUst) references Ustensile,
	constraint fk_recette
		foreign key(numRecette) references Recette
		
	);
insert into Categorie(numCategRec, nomCat) values (3, 'divers');


create table Etape(  
	numEtape integer,
	check (numEtape >= 1),
	numRecette integer,
	primary key(numRecette, numEtape),
	constraint fk_recette
		foreign key(numRecette) references Recette,
	description varchar(1000)
	);

create table Produit(  
	numProd integer primary key,
	nomProd varchar(200) not null
	);

create table Ingredient(  
    numIngre integer,
    numEtape integer,
    numRecette integer,
    numProd integer,
    quantite integer,
    unite varchar(200),
    primary key(numIngre, numEtape, numRecette),
    constraint fk_etape foreign key(numEtape, numRecette) references Etape(numEtape, numRecette),
    constraint fk_produit foreign key(numProd) references Produit(numProd),
    check (quantite > 0)
);


-- Q2:Recette Cocktail

INSERT INTO Recette (numRecette, numCategRec, nomRec, temps, nbProd) 
VALUES (8, 3, 'Mojito', INTERVAL '2:0' HOUR TO MINUTE, 1);

insert into Categorie values(1,'Mojito');
insert into Produit values(1,'menthe');
insert into Produit values(2,'eau gazeuse');
insert into Produit values(3,'sucre');
insert into Produit values(4,'citron vert');
insert into Produit values(5,'glaçons');

insert into Ustensile values(375,'Cuillère à soupe');
insert into Ustensile values(233,'Coupe à Cocktail');
insert into Ustensile values(198,'Paille');
insert into Ustensile values(743,'Verre');

insert into Utiliser values(8,375);
insert into Utiliser values(8,233);
insert into Utiliser values(8,198);
insert into Utiliser values(8,743);

insert into Etape values(1,8,'Pilez la glace');
insert into Etape values(2,8,'Glace pilée');
insert into Etape values(3,8,'Versez les feuilles de menthe dans chaque verre');
insert into Etape values(4,8,'Coupez le citron');
insert into Etape values(5,8,'Ajoutez le citron dans chaque verre');
insert into Etape values(6,8,'Ajoutez le sirop de sucre de canne');
insert into Etape values(7,8,'Pilez');
insert into Etape values(8,8,'Ajoutez la glace pilée');
insert into Etape values(9,8,'Ajoutez le rhum');
insert into Etape values(10,8,'Ajoutez l eau gazeuse');
insert into Etape values(11,8,'Mélangez');
insert into Etape values(12,8,'Servez et dégustez');

-- Q3:

select nomUst from Ustensile join Utiliser on Ustensile.numUst = Utiliser.numUst;

select nomProd, quantite, unite from Ingredient join Produit on Ingredient.numProd = Produit.numProd;

select * from Etape;

select Categorie.numCategRec, Recette.* from Categorie natural join Recette;

--Q4:
--Requêtes d'insertion :

insert into Categorie(3)
--Ne fonctionne pas car la colonne nomCat doit être NOT NULL

