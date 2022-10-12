insert into pacienti values
('1230073900','Yll','Ilir','Lumi','M','2000-2-2','45123123',null,'yll@gmail.com','0-',null),
('1334560006','Venera','Shefki','Krasniqi','F','2000-7-4','49563254',null,'venera.k@gmail.com','A+',null),
('4646152521','Minire','Gjemil','Zeka','F','2003-2-5','44513527','1532343','Filan@email.com','A-',null),
('4433008981','Rinor','Halil','Mehmeti','M','2000-12-13','45661234',null,'mehmetirinor@gmail.com','0-',null),
('1162899330','Detin','Fisnik','Qipa','M','1999-9-9','44848484','29223268','qipa.detin@gmail.com','AB-','Polen'),
('1173509541','Qendrim','Gjon','Hyseni','M','2000-10-20','49251220','39435260','Qendrim@email.com','0+',null),
('1240568218','Fatmir','Flamur','Hysaj','M','1998-2-12','43445687','29264597','hysaj_fatmir@outlook.com','B+','Antibiotika'),
('1240558217','Hasan','Flakron','Mustafa','M','1999-11-14','45568792','338444321','Hasan.M@icloud.com','AB-','Dielli'),
('1240578219','Hatixhe','Festim','Hymeraj','F','1993-08-12','49659812','382154659','hymeraj.hatixhe93@hotmail.com','0+','Polen'),
('1240598212','Lirim','Masar','Arifaj','M','2000-01-01','45667984',null,'lirim.islami@gmail.com','A+','Qenve'),
('1241568219','Hilmi','Artan','Beqiraj','M','1952-3-2','49445467','29245245','hilmi52@hotmail.com','A-','Polen'),
('1244572213','Altion','Besmir','Gashi','M','1994-5-4','43657894','38456789','altinbossi@gmail.com','B-','Polen'),
('1348946132','Alban','Valmir','Salihaj','M','1997-9-6','43787456',null,'AlbaniSali@gmail.com','0+',null),
('1407899131','Fatime','Hajdar','Haxheraj','F','1988-8-8','49693169','383496548','fatimeblossom@gmail.com','AB+','Polen'),
('1234465918','Greta','John','Hunter','F','1989-7-9','44565982','29456327','hunter_greta68@gmail.com','B+','Antibiotika');

insert into pacient_adresa values
('1230073900',	'Negovani',			'Prishtinë',	'Kosovë',	'10000'),
('1334560006',	'Hasan Prishtina',	'Obiliq',		'Kosovë',	'15000'),
('4646152521',	'Fehmi Agani',		'Prishtinë',	'Kosovë',	'10000'),
('4433008981',	'Prenk Jakova',		'Ferizaj',		'Kosovë',	'70000'),
('1162899330',	'Bedri Pejani',		'Prizren',		'Kosovë',	'20000'),
('1173509541',	'Sali Çeku',		'Prishtinë',	'Kosovë',	'10000'),
('1240568218',	'Kulla',			'Gjilan',		'Kosovë',	'60000'),
('1240558217',	'Agim Ramadani',	'Gjilan',		'Kosovë',	'60000'),
('1240578219',	'Haxhi Zeka',		'Pejë',			'Kosovë',	'30000'),
('1240598212',	'Lumi Iber',		'Mitrovicë',	'Kosovë',	'40000'),
('1241568219',	'Azem Galica ',		'Mitrovicë',	'Kosovë',	'40000'),
('1244572213',	'Gjergj Krasniqi',	'Pejë',			'Kosovë',	'30000'),
('1348946132',	'12 Qershori',		'Gjakovë',		'Kosovë',	'50000'),
('1407899131',	'Adem Jashari',		'Prishtinë',	'Kosovë',	'10000'),
('1234465918',	'Domenik Bekaj',	'Klinë',		'Kosovë',	'32000');

insert into Rroga values
('Kirurg',		'1000'),
('Gjinekolog',	'1800'),
('Ortoped',		'1300'),
('Radiolog',	'600'),
('Urolog',		'750'),
('Pediatre',	'1200'),
('Fizioterapeute','600'),
('Psikiater',	'800'),
('Stomatolog',	'850'),
('Kardiolog',	'1800');


insert into doktori values
('100',	'Leotrim ',	'Berisha',	'Kirurg',		'45284922',	'389456213',	'leoo.berisha@outlook.com',		'Kirurgji'),
('101',	'Qendrim ',	'Daci',		'Gjinekolog',	'49378542',	'383456289',	'qendrim@gmail.com',			'Gjinekologji'),
('102',	'Redon',	'Bojaj',	'Radiolog',		'44567984',	'383654527',	'redonbojaj@gmail.com',			'Radiologji'),
('103',	'Ermal ',	'Syla',		'Radiolog',		'43456329',	'383963248',	'ermal.syla@outlook.com',		'Radiologji'),
('104',	'Hatim',	'Restelica','Urolog',		'49456632',	'383498745',	'hatim_restelica@gmail.com',	'Urologji'),
('105',	'Valbona',	'Rama',		'Kardiolog',	'49553684',	'383952692',	'vrama@gmail.com',				'Kardiologji'),
('106',	'Rita',		'Lamaj',	'Fizioterapeute','44523617','29456897',		'lamaj.rita@gmail.com',			'Fizioterapi'),
('107',	'Lejla',	'Zekaj',	'Psikiater',	'45645645',	'384652513',	'Lejlazeka@gmail.com',			'Psikiatri'),
('108',	'Vanesa',	'Frashtana','Pediatre',		'49865449',	'383456925',	'vanesa.frashtana@hotmail.com',	'Pediatri'),
('109',	'Anton',	'Krasniqi',	'Stomatolog',	'49256845',	'38261856',		'flamurkrasniqi@gmail.com',		'Stomatologji');

insert into doktori_adressa values
('100',	'Hasan Prishtina',	'Obiliq',		'Kosovë',	'15000'),
('101',	'Haxhi zeka',		'Pejë',			'Kosovë',	'30000'),
('102',	'Kulla',			'Gjilan',		'Kosovë',	'60000'),
('103',	'Gjergj Krasniqi',	'Pejë',			'Kosovë',	'30000'),
('104',	'Negovani',			'Prishtinë',	'Kosovë',	'10000'),
('105',	'Rruga B',			'Prishtinë',	'Kosovë',	'10000'),
('106',	'Lumi Iber',		'Mitrovicë',	'Kosovë',	'40000'),
('107',	'Prek Jakova',		'Ferizaj',		'Kosovë',	'70000'),
('108',	'Bedri Pejani',		'Prizren',		'Kosovë',	'20000'),
('109',	'Bedri Pejani',		'Prizren',		'Kosovë',	'20000');

insert into infermier values
('200',	'Shanie',	'Gashi'),
('201',	'Gresa ',	'Jashari'),
('202',	'Fahrush',	'Hamdiu'),
('203',	'Drilon',	'Fazliu'),
('204',	'Genta',	'Shpenadia'),
('205',	'Blend',	'Shabani'),
('206',	'Hana',		'Mjekiqi');

insert into Terminet values
('1',	'1230073900',	'2020-12-24',	'15:00:00',	'Radiologji',	'FALSE'),
('2',	'1334560006',	'2020-12-14',	'18:00:00',	'Stomatologji',	'FALSE'),
('3',	'4646152521',	'2020-12-22',	'15:00:00',	'Urologji',		'FALSE'),
('4',	'4433008981',	'2020-12-15',	'12:00:00',	'Radiologji',	'TRUE'),
('5',	'1162899330',	'2020-12-17',	'13:30:00',	'Radiologji',	'FALSE'),
('6',	'1173509541',	'2020-12-21',	'14:00:00',	'Stomatologji',	'TRUE'),
('7',	'1240568218',	'2020-12-22',	'14:30:00',	'Psikiatri',	'FALSE'),
('8',	'1240558217',	'2020-12-22',	'15:20:00',	'Psikiatri',	'FALSE'),
('9',	'1240578219',	'2020-12-24',	'15:30:00',	'Radiologji',	'FALSE'),
('10',	'1240598212',	'2020-12-23',	'10:30:00',	'Kardiologji',	'FALSE'),
('11',	'1241568219',	'2020-12-27',	'16:15:00',	'Stomatologji',	'FALSE'),
('12',	'1244572213',	'2020-12-17',	'14:20:00',	'Stomatologji',	'TRUE'),
('13',	'1348946132',	'2020-12-15',	'10:00:00',	'Kardiologji',	'TRUE'),
('14',	'1407899131',	'2020-12-14',	'11:30:00',	'Kirurgji',		'FALSE'),
('15',	'1234465918',	'2020-12-24',	'12:20:00',	'Radiologji',	'FALSE'),
('16',	'1230073900',	'2020-12-16',	'12:45:00',	'Gjinekologji',	'FALSE'),
('17',	'1162899330',	'2020-12-15',	'13:55:00',	'Kirurgji',		'TRUE'),
('18',	'1241568219',	'2020-12-22',	'13:25:00',	'Urologji',		'FALSE'),
('19',	'1348946132',	'2020-12-12',	'14:45:00',	'Fizioterapi',	'FALSE'),
('20',	'1348946132',	'2020-12-12',	'7:30:00',	'Kirurgji',		'FALSE');

insert into Vizitat values
('1',	'1230073900',	'103',	null,	'Paracetamol',	'Këmba e djathtë ka një të çarë'),
('2',	'1334560006',	'109',	null,	'Brufen',		'Karies dhëmb 8she'),
('3',	'4646152521',	'104',	null,	'Cefalexin',	'Veshka plot me gurrëzi'),
('5',	'1162899330',	'103',	null,	'Apaurin',		'Probleme me depresion'),
('7',	'1240568218',	'107',	null,	'Benuron',		'Rupturë në vetull'),
('8',	'1240558217',	'107',	null,	'Buscopan',		'Depresion i thellë'),
('9',	'1240578219',	'103',	null,	'OKI',			'Shtatzane 2 muaj'),
('10',	'1240598212',	'105',	null,	'Antibiotika',	'Plagosje me armëzjarri'),
('11',	'1241568219',	'109',	null,	'Aspirin',		'Dhëmbë e thyer'),
('14',	'1407899131',	'100',	null,	'Sensivit',		'Zgjerimi i bebzave'),
('15',	'1234465918',	'103',	null,	'Dolofix Muscular',	'Dhimbje te krahëve'),
('16',	'1230073900',	'101',	null,	'Defalgan',		'Ftohje'),
('18',	'1241568219',	'104',	null,	'Nasalin',		'Alergji'),
('19',	'1348946132',	'106',	null,	'Ecje 2 orë/dite',	'Post operacion fizio'),
('20',	'1348946132',	'100',	null,	'Rhinostop',	'Dhimbje te dhëmbëve');

insert into fatura values
('1',	'1',	'100',	'18',	cmimi*tvsh/100+cmimi,	'1230073900',	'2020-12-24'),
('2',	'2',	'200',	'18',	cmimi*tvsh/100+cmimi,	'1334560006',	'2020-12-14'),
('3',	'3',	'65',	'18',	cmimi*tvsh/100+cmimi,	'4646152521',	'2020-12-22'),
('4',	'5',	'60',	'18',	cmimi*tvsh/100+cmimi,	'1162899330',	'2020-12-17'),
('5',	'7',	'55',	'18',	cmimi*tvsh/100+cmimi,	'1240568218',	'2020-12-22'),
('6',	'8',	'20',	'18',	cmimi*tvsh/100+cmimi,	'1240558217',	'2020-12-22'),
('7',	'9',	'130',	'18',	cmimi*tvsh/100+cmimi,	'1240578219',	'2020-12-24'),
('8',	'10',	'115',	'18',	cmimi*tvsh/100+cmimi,	'1240598212',	'2020-12-23'),
('9',	'11',	'98',	'18',	cmimi*tvsh/100+cmimi,	'1241568219',	'2020-12-27'),
('11',	'14',	'650',	'18',	cmimi*tvsh/100+cmimi,	'1407899131',	'2020-12-14'),
('12',	'15',	'112',	'18',	cmimi*tvsh/100+cmimi,	'1234465918',	'2020-12-24'),
('13',	'16',	'15',	'18',	cmimi*tvsh/100+cmimi,	'1230073900',	'2020-12-16'),
('14',	'18',	'75',	'18',	cmimi*tvsh/100+cmimi,	'1241568219',	'2020-12-22'),
('15',	'19',	'85',	'18',	cmimi*tvsh/100+cmimi,	'1348946132',	'2020-12-12'),
('16',	'20',	'800',	'18',	cmimi*tvsh/100+cmimi,	'1348946132',	'2020-12-12');

insert into pagesa values
('1230073900',	'1',	'FALSE',	'432268891487',	'2020-12-24', '12:00:00'),
('1334560006',	'2',	'FALSE',	'147224389614',	'2020-12-14', '12:20:00'),
('4646152521',	'3',	'TRUE',		'null',			'2020-12-13', '13:43:00'),
('1162899330',	'4',	'TRUE',		'null',			'2020-12-19', '14:10:00'),
('1240568218',	'5',	'TRUE',		'null',			'2020-12-25', '12:40:00'),
('1240578219',	'7',	'FALSE',	'432268891487',	'2020-12-24', '16:50:00'),
('1240598212',	'8',	'FALSE',	'384368322513',	'2020-12-23', '12:30:00'),
('1241568219',	'9',	'FALSE',	'956928119811',	'2020-12-27', '10:00:00'),
('1407899131',	'11',	'TRUE',		'null',			'2020-12-18', '9:00:00'),
('1234465918',	'12',	'TRUE',		'null',			'2020-12-13', '12:45:00'),
('1241568219',	'14',	'TRUE',		'null',			'2020-12-14', '12:00:00'),
('1348946132',	'15',	'FALSE',	'530547849181',	'2020-12-25', '12:35:00'),
('1348946132',	'16',	'FALSE',	'530547849181',	'2020-12-12', '11:20:00');

insert into Komente values
('1230073900',	'1',	'Shume te knaqur'),
('1334560006',	'2',	'Zero sherbim'),
('4646152521',	'3',	'Doktori i mire mduhet njo nshpi'),
('1162899330',	'5',	'Doktoret duhet te trajtojne pacientin me meiresjellje'),
('1240568218',	'7',	'Jo sherbim i mire'),
('1240558217',	'8',	'Tejet i kenaqur me gjithcka');

insert into Dhoma values
('4001',	'3 Persona',	'Ortopedi'),
('4002',	'4 Persona',	'Kirurgji'),
('4003',	'2 Persona',	'Urologji'),
('4004',	'1 Person',		'Psikiatri'),
('5001',	'3 Persona',	'Radiologji'),
('5002',	'4 Persona',	'Kirurgji'),
('5003',	'2 Persona',	'Gjinekologji'),
('5004',	'1 Person',		'Pediatri'),
('6001',	'3 Persona',	'Fizioterapi'),
('6002',	'4 Persona',	'Stomatologji'),
('6003',	'2 Persona',	'Kardiologji');

insert into Spitalizim values
('10',	'4001',	'1230073900',	'2020-12-24 15:00:00',	'2020-12-24 16:00:00'),
('11',	'4002',	'1334560006',	'2020-12-14 18:00:00',	null),
('12',	'4003',	'4646152521',	'2020-12-22 15:00:00',	'2020-12-22 17:00:00'),
('13',	'4004',	'1162899330',	'2020-12-17 13:30:00',	'2020-12-17 15:00:00'),
('14',	'5001',	'1240568218',	'2020-12-22 14:30:00',	'2020-12-22 14:50:00'),
('15',	'5002',	'1240558217',	'2020-12-22 15:20:00',	'2020-12-22 17:20:00'),
('16',	'5003',	'1240578219',	'2020-12-24 15:30:00',	'2020-12-24 15:55:00'),
('17',	'5004',	'1240598212',	'2020-12-23 10:30:00',	'2020-12-23 13:30:00'),
('18',	'6001',	'1241568219',	'2020-12-27 16:15:00',	null),
('19',	'6002',	'1407899131',	'2020-12-14 11:30:00',	null),
('20',	'6003',	'1234465918',	'2020-12-14 12:20:00',	'2020-12-14 14:20:00');
