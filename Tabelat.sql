CREATE DATABASE if not exists Projekti2020;
use Projekti2020;

/* Tabela e Pacientit */
create table if not exists Pacienti (
SSN bigint not null, 
Emrin varchar(255) not null,
Emri_i_Prindit varchar(255),
Mbiemri varchar(255) not null,
Gjinine enum('M','F') not null,
Datalindjes date not null,
NrTelefonit varchar(20) unique,
NrTelefonitFix varchar(20) unique,
Email varchar(40) unique,
Grupi_i_gjakut enum('AB-','AB+','A-','A+','B-','B+','0-','0+'),
Alergjite text,
 primary key(SSN));

/* Tabela e Adresave te Pacientave */

Create table if not exists Pacient_Adresa (
SSN bigint not null,
Rruga varchar(255),
Qyteti varchar(255),
Shteti varchar(255),
KodiPostal varchar(255),
foreign key (SSN) references Pacienti(SSN) on delete cascade
);

/* Tabela e Rroges per Doktorin */

create table if not exists Rroga(
Titullin enum('Kirurg',
'Gjinekolog',
'Ortoped',
'Radiolog',
'Urolog',
'Pediatre',
'Fizioterapeute',
'Psikiater',
'Stomatolog',
'Kardiolog') not null,
Pagen int not null,
primary key(titullin)
);


/* Tabela e Doktorit */

create table if not exists Doktori (
DID int not null, 
Emrin varchar(255) not null, 
Mbiemri varchar(255) not null,
Titullin enum('Kirurg',
'Gjinekolog',
'Ortoped',
'Radiolog',
'Urolog',
'Pediatre',
'Fizioterapeute',
'Psikiater',
'Stomatolog',
'Kardiolog') not null,
NrTelefon varchar(255) unique,
NrTelefonFix varchar(255) unique,
Email varchar(255) unique,
Reparti enum('Radiologji',
'Stomatologji',
'Urologji',
'Psikiatri',
'Kardiologji',
'Kirurgji',
'Gjinekologji',
'Fizioterapi',
'Ortopedi',
'Pediatri'),
primary key(DID),
foreign key (Titullin) references Rroga(titullin));

/* Tabela e Adresave te Doktorave */

Create table if not exists Doktori_Adressa (
DID int not null,
Rruga varchar(255),
Qyteti varchar(255),
Shteti varchar(255),
KodiPostal varchar(255),
foreign key (DID) references doktori(DID) on delete cascade
);


/* Tabela e Infermierit */

create table if not exists Infermier (
IID int not null,
Emrin varchar(255) not null,
Mbiemrin varchar(255) not null,
primary key(IID)
);


/* Tabela e Terminev */

Create table if not exists Terminet(
TerminID int not null,
SSN bigint not null,
TData date not null,
TKoha time not null,
Reparti enum('Radiologji',
'Stomatologji',
'Urologji',
'Psikiatri',
'Kardiologji',
'Kirurgji',
'Gjinekologji',
'Fizioterapi',
'Ortopedi',
'Pediatri'),
Anuluar enum('true','false'),
primary key(TerminID),
Foreign key(SSN) references pacienti(SSN) on delete cascade
);


/* Tabela e Vizitave */

create table if not exists vizitat(
TerminID int not null,
SSN bigint not null,
DID int not null,
IID int,
Terapine varchar(255),
Diagnozen varchar(255),
primary key (SSN, TerminID),
foreign key(SSN, TerminID) references terminet(SSN, TerminID) on delete cascade,
foreign key(DID) references doktori(DID),
foreign key(IID) references Infermier(IID));


/* Tabela e Faturave */

create table if not exists fatura(
FID bigint not null,
TerminID int not null,
cmimi real not null,
tvsh real not null,
cmim_me_tvsh real not null,
SSN bigint not null,
Data_e_faktures date not null,
primary key(FID, SSN),
foreign key(SSN, TerminID) references vizitat(SSN, TerminID)
);



/* Tabela e Pagesave*/

create table if not exists pagesa(
SSN bigint not null,
FID bigint not null,
Kesh enum('true','false'),
Fbanka varchar(30),
Data_e_Pageses date not null,
Ora_e_pageses time not null,
primary key(FID, SSN),
foreign key(FID, SSN) references fatura(FID, SSN)
);


/* Tabela per komente*/

create table if not exists Komente(
SSN bigint not null,
TerminID int not null,
feedback text,
foreign key(SSN, TerminID) references vizitat(SSN, TerminID)
);


/* Tabela per Dhoma*/

create table if not exists Dhoma(
DhomaID int not null,
lloji_dhomes enum('1 Person','2 Persona','3 Persona','4 Persona'),
reparti enum('Radiologji',
'Stomatologji',
'Urologji',
'Psikiatri',
'Kardiologji',
'Kirurgji',
'Gjinekologji',
'Fizioterapi',
'Ortopedi',
'Pediatri'),
primary key(DhomaID)
);


/* Tabela per Spitalizim*/

create table if not exists Spitalizim(
StayID int not null,
Dhoma int not null,
SSN bigint,
Koha_Hyrjes datetime not null,
Koha_Daljes datetime,
foreign key (SSN) references Pacienti(SSN),
foreign key(Dhoma) references Dhoma(Dhomaid)
);

