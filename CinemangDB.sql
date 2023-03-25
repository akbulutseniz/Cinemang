/*CREATE TABLE Cinema (
	c_id int NOT NULL IDENTITY(1,1),
	cName varchar(255) NOT NULL,
	cAddress varchar(255) NOT NULL,
	cLocation varchar(255) NOT NULL ,
	CONSTRAINT PK_Cinema PRIMARY KEY (c_id)
);

CREATE TABLE Staff (
	s_id int NOT NULL IDENTITY(1,1),
	sUsername varchar(255) NOT NULL,
	sPassword varchar(255) NOT NULL,
	sName varchar(255) NOT NULL,
	sSurname varchar(255) NOT NULL,
	sPhone varchar(15) NOT NULL,
	sAddress varchar(255) NOT NULL,
	sEmail varchar(255) NOT NULL,
	c_id int,
	FOREIGN KEY(c_id) REFERENCES Cinema(c_id),
	CONSTRAINT PK_Staff PRIMARY KEY (s_id)
);
 
CREATE TABLE Users (
	u_id int NOT NULL IDENTITY(1,1),
	uUsername varchar(255) NOT NULL,
	uPassword varchar(255) NOT NULL,
	uName varchar(255) NOT NULL,
	uSurname varchar(255) NOT NULL,
	uPhone varchar(15) NOT NULL,
	uAddress varchar(255) NOT NULL,
	uEmail varchar(255) NOT NULL,
	CONSTRAINT PK_Users PRIMARY KEY (u_id)
);

CREATE TABLE Movie(
	m_id int NOT NULL IDENTITY(1,1),
	mName varchar(255) NOT NULL,
	mReleaseDate date NOT NULL,
	mTime int NOT NULL,
	mDirectors varchar(255) ,
	mWritters varchar(255) ,
	mCast varchar(255) ,
	mCountry varchar(255) ,
	mLanguage varchar(255) ,
	mGenre varchar(255) ,
	mInformation varchar(255),
	mImageUrl varchar(255) NOT NULL,
	CONSTRAINT PK_Movie PRIMARY KEY (m_id)
);

CREATE TABLE Theatre(
	t_id int NOT NULL IDENTITY(1,1),
	tType varchar(255) NOT NULL,
	tInformation varchar(255) NOT NULL,
	tName varchar(255) NOT NULL,
	tTotalSeat int NOT NULL,
	tRating int NOT NULL,
	c_id int NOT NULL,
	FOREIGN KEY(c_id) REFERENCES Cinema(c_id),
	CONSTRAINT PK_Theatre PRIMARY KEY (t_id)
);

CREATE TABLE Seat(
	se_id int NOT NULL IDENTITY(1,1),
	isEmpty BIT NOT NULL,
	t_id int NOT NULL,
	FOREIGN KEY(t_id) REFERENCES Theatre(t_id),
	CONSTRAINT PK_Seat PRIMARY KEY (se_id)
);

CREATE TABLE Seans(
	seans_id int NOT NULL IDENTITY(1,1),
	seansStartTime time NOT NULL,
	seansEndTime time NOT NULL,
	m_id int NOT NULL,
	FOREIGN KEY(m_id) REFERENCES Movie(m_id),
	CONSTRAINT PK_Seans PRIMARY KEY (seans_id)
);

CREATE TABLE Ticket(
	tic_id int NOT NULL IDENTITY(1,1),
	ticPrice int NOT NULL,
	u_id int NOT NULL,
	se_id int NOT NULL,
	seans_id int NOT NULL,
	FOREIGN KEY(u_id) REFERENCES Users(u_id),
	FOREIGN KEY(se_id ) REFERENCES Seat(se_id),
	FOREIGN KEY(seans_id) REFERENCES Seans(seans_id),
	CONSTRAINT PK_Ticket PRIMARY KEY (tic_id)
);

CREATE TABLE Comments(
	com_id int NOT NULL IDENTITY(1,1),
	comComment varchar(255) NOT NULL,
	m_id int NOT NULL,
	u_id int NOT NULL,
	FOREIGN KEY(m_id) REFERENCES Movie(m_id),
	FOREIGN KEY(u_id) REFERENCES Users(u_id),
	CONSTRAINT PK_Comments PRIMARY KEY (com_id)
);

CREATE TABLE Rating(
	r_id int NOT NULL IDENTITY(1,1),
	rRating int NOT NULL,
	m_id int NOT NULL,
	u_id int NOT NULL,
	FOREIGN KEY(m_id) REFERENCES Movie(m_id),
	FOREIGN KEY(u_id) REFERENCES Users(u_id),
	CONSTRAINT PK_Rating PRIMARY KEY (r_id )
);*/

--INSERT INTO Cinema(cName, cAddress, cLocation) values ();
--INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ();
--INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values ();
--INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation,mImageUrl) values ();
--INSERT INTO Theatre (tType, tInformation, tName, tTotalSeat, tRating, c_id) values();
--INSERT INTO Seat (isEmpty, t_id) values();
--INSERT INTO Seans (seansStartTime, seansEndTime, m_id) values();
--INSERT INTO Comment (comComment, m_id, u_id) values();
--INSERT INTO Rating(rRating,m_id,u_id) values();
--INSERT INTO Ticket(ticPrice, u_id, se_id, seans_id) values();

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Forum Bornova','Forum Bornova AVM Kaz�m Dirik Mah. 372 Sok. F1 Blok BORNOVA/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('�zmir Park','G�ne�li Mah. E�ref Pa�a Cad. No:408 KONAK/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Kar��yaka Hilltown','Yal�, 6522. Sk. No:3, 35550 KAR�IYAKA/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Kipa Extra Bal�ova','Kipa AVM, Mithatpa�a Cad.No : 1462, BAL�OVA/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Konak Pier','Konak Pier AVM, Atat�rk Cd. No:19, 35260 KONAK/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Mavibah�e','Mavi�ehir Mah. Caher Dudayev Bulvar� A Blok 301 No:40 Mavibah�e AVM KAR�IYAKA/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Optimum �zmir','Optimum Outlet ve E�lence Merkezi Ak�ay Cad. No:101 35410 GAZ�EM�R/�ZM�R','�zmir/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Point Bornova','4174 Sokak No:4 Ba�burnu Mevkii, BORNOVA/�ZM�R','�zmir/T�RK�YE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Akbat�','Akbat� Al��veri� ve Ya�am Merkezi Sanayi mah. Esenkent mevkii 1655. Sok No:6, 34510 Esenyurt/�STANBUL','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Aqua Florya','�enlikk�y, Aqua Florya, Ye�ilk�y Halkal� Cd. No:93, 34153 Bak�rk�y/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Avlu 34','Avlu 34 Al��veri� ve Ya�am Merkezi. Merkez Mah, Eski Edirne Asfalt� cad. no: 1405 kat:zemin, Arnavutk�y/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Axis','Merkez Cendere Caddesi No:28 Kat:3 No:120 Ka��thane, AX�S AVM, 34410 K���thane','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Cevahir','B�y�kdere Cad. Cevahir Avm No: 22','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('City�s Ni�anta��','Te�vikiye, City�s Ni�anta��, Te�vikiye Cd. No:162, 34365 �i�li/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Forum �stanbul','Kocatepe, 34045 Bayrampa�a/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('�stinye Park','�stinye Bay�r� Cad, �stinye Park AVM No:11, 34460','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Kanyon','Esentepe Mahallesi B�y�kdere Caddesi, Kanyon AVM No:185, 34330, 34394 �i�li','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Vadi �stanbul','Ayaza�a, Vadi �stanbul AVM, Cendere Cd. No:109 Kat:3, 34396 Sar�yer/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Emaar','�nalan, Ayazma Cd. No:78, 34700 �sk�dar/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Maltepe Piazza','Cevizli, Tugay Yolu Cd. No:71, 34846 Maltepe/�stanbul','�stanbul/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Watergarden','Barbaros Mah Bat�, �ebboy Sk. No:2, 34746 Ata�ehir/�stanbul','�stanbul/T�RK�YE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('ANKAmall','Gazi, Akk�pr� 2/242, 06330 Yenimahalle/Ankara','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Antares','Ayval�, Ayval� Halil Sezai Erkut Caddesi, Antares AVM No:121, 06010 Ke�i�ren/Ankara','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Cepa','Eski�ehir Yolu S���t�z� Odt� Kar�isi CEPA AVM 7. Km','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Next Level','K�z�l�rmak, Dumlup�nar Blv. No:3, 06520 �ankaya/Ankara','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Atakule','K�z�l�rmak, Dumlup�nar Blv. No:3, 06520 �ankaya/Ankara','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Gordion','�ayyolu Eski�ehir Yolu 16 km, �a�layan Kav�a�� Gordion Avm, 06810 �ankaya','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Panora','Oran, Turan G�ne� Bulvari Panora Avm, D:No:182 / 212','Ankara/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Polatl� Kartaltepe','�stiklal, 06900 Polatl�/Ankara','Ankara/T�RK�YE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Antalya Migros','Arapsuyu, Meltem Migros AVM, 100 Y�l Blv No:155, 07070 Konyaalt�/Antalya','Antalya/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Manavgat','Sorgun, Nova Mall AVM i�i, 8096. Sokak No:5, 07600 Manavgat/Antalya','Antalya/T�RK�YE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('MarkAntalya','Tah�lpazar�, �arampol Cd. No:84 K:4 D:No:4, 07040 Muratpa�a/Antalya','Antalya/T�RK�YE');

--1
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('asudeagaya','12345','Asude','A�AYA','05347179393','Emniyet Mah. Alemdar Cad. No:3A Daire:2 Yenimahalle/Ankara','asude-agaya@hotmail.com',34);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('senizakbulut','67891','�eniz','AKBULUT','05452959627','T�naztepe/�zmir','seniz.akbulut@ceng.deu.edu.tr',2);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('beydoganturan','23456','Beydo�an �nsal','TURAN','05539898024','Buca/�zmir','beydogan.turan@ceng.deu.edu.tr',3);

INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('imatterdacei', 'WIZO9Yi', 'Ingeborg', 'Matterdace', '1772403616', 'Bornova/�ZM�R', 'imatterdacei@hotmail.com', 8);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'fverrierj', 'qq8M136BU', 'Sercan', 'A�k�n', '2942022346', 'Gaziemir/�ZM�R', 'fverrierj@gmail.com', 7);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('lfilmer1', 'sCck2b','Y�ld�z','Konak', '3698842283','KAR�IYAKA/�ZM�R', 'thornbuckle1@gmail.com',6);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('karran2', 'BAaFn0gufkk','Sezen','Kal�p', '2704603345','KONAK/�ZM�R', 'lchesswas2@gmail.com',5);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('ngately3', 'OoGZDWmY8O7m','Burak','Zengin', '7844895719','BAL�OVA/�ZM�R', 'spinel3@gmail.com',4);;
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('lfawcus6', 'rBEDFnjZVdB','Kenan','Kazan', '5168736053','BORNOVA/�ZM�R', 'pcatherine6@hotmail.com',1);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'mcorns3', 'WJeDM9AO', 'Moore', 'Corns', '1529024869', 'Konyaalt�/Antalya', 'mcorns3@hotmail.com', 38);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'rkelway4', 'RFYUNFbKktk2', 'Rhys', 'Kelway', '3336360438', 'Manavgat/Antalya', 'rkelway4@hotmail.com', 39);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'dvela5', '8g9ZElu', 'Dalton', 'Vela', '5706563809', 'Muratpa�a/Antalya', 'dvela5@gmail.com', 40);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'gwormstone6', 'XLwwHu', 'Onur', 'Keskin', '9911240128', 'Polatl�/Ankara', 'gwormstone6@hotmail.com', 31);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'ctimoney7', 'ckxp7RPe', 'Ege', 'Altay', '5832986289', '�ankaya/Ankara', 'ctimoney7@hotmail.com', 32);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'svaszoly8', '4wDeJA', 'S�meyye', 'Y�ld�z', '5182633432', 'Ke�i�ren/Ankara', 'svaszoly8@gmail.com', 33);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('trennicksb', '7AJUCXnQK','Kaya','At�lgan', '9853885688','�ankaya/Ankara', 'bbembrickb@hotmail.com',30);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('mdikd', '536G3Y','�brahim','Temel', '7571647163','K�z�lay/Ankara', 'kgrigautd@gmail.com',35);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('oyitshake', 'LEEZeiDBCKsM','Batuhan','Kor', '3009002117','�ankaya/Ankara', 'lstodee@gmail.com',36);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('vschimonekf', '5RtEFJYFzs','Aziz','Kartal', '7047680675','Ke�i�ren/Ankara', 'msimenelf@gmail.com',37);

INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'pcollcutt9', 'sj6shZr', 'Pepito', 'Y�ld�r�m', '4412040548', 'Ata�ehir/�stanbul', 'pcollcutt9@hotmail.com', 25);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'mnorthovera', 'wXe0nuT', 'Bet�l', 'Northover', '8954098520', 'Maltepe/�stanbul', 'mnorthovera@gmail.com', 24);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'lgroomb', 'MzKWdYK9mm1u', 'Lizzy', 'Gen�', '1398106934', '�sk�dar/�stanbul', 'lgroomb@gmail.com', 23);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'ebramc','t2fv4JVurM', '�rem', 'Bram', '3593872562', 'Sar�yer/�stanbul', 'ebramc@hotmail.com', 22);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'bstolzd', 'PUOwfOL', 'Barnard', 'Stolz', '1724325099', '�i�li/�stanbul', 'bstolzd@hotmail.com', 21);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'thavocke', 'ZzgvdrAubTEc', 'Yekta', 'Havock', '1497205300', 'K���thane/�stanbul', 'thavocke@hotmail.com', 20);
INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'tskingleyf', 'xY5YzCNTCB', 'Tar�k', 'Sinan', '4023816023', 'Arnavutk�y/�stanbul', 'tskingleyf@hotmail.com', 19);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'gtaylersong', '5EvITwtPSVZo', 'Zeynep', 'G�n', '6906764718', 'Esenyurt/�STANBUL', 'gtaylersong@hotmail.com', 17);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'fgoulstoneh', 'NCzpgME7', 'Faruk', 'G�ng�ren', '7828636466', 'Bak�rk�y/�stanbul', 'fgoulstoneh@gmail.com', 18);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('mferriman7', 'VyBTVtrtd','Enginhan','Tepes', '9952662716','Sar�yer/�stanbul', 'kcardall7@hotmail.com',26);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('cgoneau8', 'l908wHId7aQL','Yasin','Ku�an', '8214249042','�sk�dar/�stanbul', 'lsteeden8@hotmail.com',27);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('emaddicks9', 'J15vuV1YS','G�vercin','Han�m', '9284288408','Maltepe/�stanbul', 'cfilyukov9@hotmail.com',28);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('fbraceya', 'mCtCciEaq','Ramiz','Y�lmaz', '7478270933','Ata�ehir/�stanbul', 'gblackborowa@hotmail.com',29);

--2
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Kelebek','98765','Bahar','Can','05445819370','�ankaya/Ankara','kelebek@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('TheBlack','12369','Mert','�o�kun','05524931615','Kad�k�y/�stanbul','mertcoskun@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Robin8','45698','Dilara','P�nar','05335762460','Konak/�zmir','dilarapinar@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Excalibur','78624','�ahap','Y�lmaz','05328759643','Merkez/Antalya','fistikcisahap@hotmail.com');
-----
INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values 
('The Shark', '7251', 'Kutay', 'Poyraz', '05336827131', 'Onur Cad. Gizem Sok. 79/4', 'kutaypoyraz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Ringmaster', '7940', 'Mustafa', 'Ceviz', '05445852865', 'Ekin Cad. 39/12', 'mustafaceviz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Darth Vader', '9083', 'Kemal', '�al��kan', '05335119370', 'Mevlana Cad. Mavi Sok. 8/20', 'kemalcaliskan@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Godzilla', '1801', 'Ruhi', 'Nalbant', '05422231615', 'Fikir Cad. 89/6', 'ruhinalbant@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Captain Jack', '5318', 'P�nar Eda', 'Y�lmaz', '05524937096', 'Ekin Cad. Ada Sok. 18/16', 'pinaryilmaz@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Mr. President', '3102', 'Adem', 'Y�lmaz', '05335358241', 'Izmir Cad. 63/1', 'ademyilmaz@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('krypt0', '7037', 'Mustafa', 'Ulusoy', '05335728487', 'Gazi Cad. Maden Sok. 87/11', 'mustafaulusoy@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Candy', '1320', 'Fatma', 'Tuna', '05359323021', 'Yaprak Cad. Portakal Sok. 82/12', 'fatmatuna@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Fearless', '9526', 'Esin', 'Parlak', '05353162460', 'Gazi Cad. 27/17', 'esinparlak@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Panther', '5189', 'Mine', 'Ilgaz', '05337802932', 'Cevizli Cad. 1/2', 'mineilgaz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('��lg�nSerseri', '4261', 'Y�ld�z', 'Hasano�lu', '05426356184', 'Usta Cad. 32/23', 'yildizhasanoglu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Y�r�yenU�ak', '4676', 'Beste', 'Do�an', '05532899664', 'Bostan Cad. Yakut Sok. 29/40', 'bestedogan@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Hebele', '9297', 'Elif Eda', 'Aksu', '05334976338', 'Kardelen Cad. Hekimler Sok. 2/34', 'elifaksu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('K�rm�z�Ba�l�kl�K�z', '7399', 'Feray', '�elik', '05533719623', 'Gazi Cad. Verimli Sok. 74/16', 'feraycelik@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Atmaca', '5471', 'Mustafa Kemal', 'Arslan', '05358602967', 'Takvim Cad. Limon Sok. 67/30', 'kemalarslan@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Kirazl�K�pe', '4170', 'Esra', '�en', '05322257119', 'Hayat Cad. Duyum Sok. 15/11', 'esrasen@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Bukalemun', '5450', 'Tutku', 'Alt�nba�', '05336437223', 'Bahar Cad. Kumru Sok. 67/25', 'tutkualt�nbas@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Karizmator', '9932', 'Nadir', 'Bilgili', '05539746955', 'Mimar Sinan Cad. 19/17', 'nadirbilgili@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Portakall��rdek', '8189', 'Eser', 'Karakaya', '05326384180', 'Esenyurt Cad. Ebru Sok. 28/29', 'eserkarakaya@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('SanatEseri', '5541', 'Levent', 'Egeli', '05343888499', 'Emek Cad. Funda Sok. 9/21', 'leventegeli@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Elma�ekeri', '8157', 'Damla', 'Naz�m', '05545958299', 'Niyet Cad. Tiyatro Sok. 65/16', 'damlanazim@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Ak�l�Araba', '1281', 'Lokman', 'Dereli', '05424116873', 'Alim Cad. Kafkas Sok. 47/30', 'lokmandereli@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('YamukPrenses', '5128', 'Deniz', 'Ko�', '05526525334', 'Deniz Cad. Kalem Sok. 46/29', 'denizkoc@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('�ekilinBenDoktorum', '7266', 'Halil', 'Hasano�lu', '05449742214', 'Anadolu Cad. Tiyatro Sok. 33/10', 'halilhasanoglu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('HeyGidiG�nler', '2448', 'Tuna', 'Limoncu', '05428339614', 'Akay Cad. Oya Sok. 69/38', 'tunalimoncu@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('CiciBebe�ocu�u', '9295', 'Necdet', 'Y�ld�r�m', '05424086427', 'Izmir Cad. Burcu Sok. 76/14', 'necdetyildirim@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Z�playanKaplumba�a', '3875', 'Furkan', 'Avc�', '05354303322', 'Cevizli Cad. 80/1', 'furkanavci@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('U�anTekmeAtanKibarc�k', '3948', 'Mehmet', 'Bilgili', '05534722715', 'Niyet Cad. Meltem Sok. 62/1', 'mehmetbilgili@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('AllahVar', '2736', 'Celil', 'Bolluk', '05424054743', 'Kitap Cad. Billur Sok. 4/19', 'celilbolluk@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Z�p�rBal�k', '1830', 'Naz', 'Gezgin', '05422011822', 'Yaren Cad. 35/5', 'nazgezgin@gmail.com');

--3
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Soul','2020-12-25',100,'Pete Docter & Kemp Powers','Mike Jones , Kemp Powers , Pete Docter',
'Jamie Foxx, Tina Fey, Graham Norton, Rachel House, Alice Braga, Richard Ayoade, Phylicia Rashad, Donnell Rawlings, Questlove, Angela Bassett ',
'ABD','�ngilizce','Animasyon | Macera | Komedi | Aile | Fantezi | M�zik','M�zi�e olan tutkusunu yitiren bir m�zisyen bedeninden ��kar ve kendini ��renen bir bebek ruhunun yard�m�yla geri d�n�� yolunu bulmas� gerekir.',
'https://m.media-amazon.com/images/M/MV5BZGE1MDg5M2MtNTkyZS00MTY5LTg1YzUtZTlhZmM1Y2EwNmFmXkEyXkFqcGdeQXVyNjA3OTI0MDc@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Wonder Woman 1984','2020-12-16',151,'Patty Jenkins','Patty Jenkins, Geoff Johns, Dave Callaham','Gal Gadot, Chris Pine, Kristen Wiig, Pedro Pascal, Robin Wright, Connie Nielsen, Lilly Aspell, Amr Waked, Kristoffer Polaha, Natasha Rothwell',
'ABD | �ngiltere | �spanya','�ngilizce','Aksiyon | Macera | Fantezi','Birinci D�nya Sava���nda insanlarla ileti�im kurmaya ba�layan Diana, gizli �ekilde Wonder Woman olmaya devam ederken kaybetti�i hayat�n�n a�k�n�n da yas�n� tutmaya devam ediyor.Diana, yepyeni iki d��manla kar�� kar��ya bulur: Max Lord ve The Cheetah.',
'https://m.media-amazon.com/images/M/MV5BNWY2NWE0NWEtZGUwMC00NWMwLTkyNzUtNmIxMmIyYzA0MjNiXkEyXkFqcGdeQXVyMTA2OTQ3MTUy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Tenet','2020-08-26',150,'Christopher Nolan','Christopher Nolan','Robert Pattinson, John David Washington, Elizabeth Debicki, Juhan Ulfsak, Jefferson Hall, Tom Nolan, Andrew Howard, Ivo Uukkivi, Cl�mence Po�sy,Martin Donovan',
'�ngiltere | ABD','�ngilizce | Rus�a | Ukraynaca | Estonca | Norve��e','Aksiyon | Bilim Kurgu | Gerilim','Tenet, d�nyay� b�y�k bir tehlikeden kurtarmak i�in sava�an bir kahraman�n hikayesini konu ediyor. Ger�ek zaman�n �tesinde bir yerde uluslararas� bir casusluk g�revini yerine getirmeye �al��an kahraman, d�nyay� kurtarabilmek i�in sava�mak zorunda kal�r.',
'https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Jumanji: Level One','2021-01-20',114,'Lance Kawas','Dylan Sides','Heather Fairbanks, Robert Laenen, Justin Mane, Walker Fairbanks, Aaron Matthew Atkisson, Aqeel Ash-Shakoor, Roe Dayzon, Adam DeFilippi, Ammar Nemo, Andrew Fairgrieve',
'ABD','�ngilizce','Aksiyon | Macera | Aile','Orijinal filmdeki olaylardan �nce 1869�da ge�er. Nihayet, lanetli oyunun nas�l ortaya ��kt���n� ve Jumanji oynayan ilk insanlar�n maceralar�n� ortaya ��karacak.',
'https://m.media-amazon.com/images/M/MV5BMWI0ZTM3ZmEtNmY2OS00NGFhLWFjYmYtMmNkMjMxNzBiZGIwXkEyXkFqcGdeQXVyMjI1MTU4OTM@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Hamilton','2020-07-03',160,'Thomas Kail','Lin-Manuel Miranda, Ron Chernow','Lin-Manuel Miranda, Phillipa Soo, Leslie Odom Jr., Daveed Diggs, Ren�e Elise Goldsberry, Jonathan Groff, Chris Jackson, Jasmine Cephas Jones, Okieriete Onaodowan, Anthony Ramos',
'ABD','�ngilizce','Biyografi | Dram | Tarih | M�zikal','Amerika�n�n en �nde gelen kurucu babalar�ndan biri ve ilk Hazine Bakan� Alexander Hamilton�un ger�ek hayat�. Orijinal Broadway oyuncular�yla Richard Rodgers Theatre dan Broadway de canl� olarak �ekildi.',
'https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Bir Kad�n�n Par�alar�','2021-01-07', 126,'Korn�l Mundrucz�','Kata W�ber','Vanessa Kirby, Shia LaBeouf, Ellen Burstyn, Iliza Shlesinger, Benny Safdie, Sarah Snook, Molly Parker, Steven McCarthy,Tyrone Benskin, Frank Schorpion',
'Kanada | Macaristan | ABD','�ngilizce','Dram','Gen� bir annenin evde do�umu ak�l almaz bir trajediyle sona erdi�inde, kayb�n�n yan�nda ya�amay� ��renen bir kad�n�n bu derin ki�isel �yk�s�nde sevdikleriyle ili�kilerini k�ran bir y�ll�k yas yolculu�una ba�lar.',
'https://m.media-amazon.com/images/M/MV5BYWYwM2VlNWItMWYyMC00MDljLWE1ZTUtY2E0YWIxMGE0NjA2XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Buluttaki G�lge', '2021-01-01', 83, 'Roseanne Liang', 'Max Landis, Roseanne Liang', 'Chlo� Grace Moretz, Nick Robinson, Beulah Koale, Taylor John Smith, Callan Mulvey, Benedict Wall, Byron Coll, Joe Witkowski, Liam Legge, Asher Bridle',
'Yeni Zellanda | ABD', '�ngilizce','Aksiyon | Korku | Sava�','Pilot Garreta�dan gizli belgeleri, m�rettebat�n tamam� erkeklerden olu�an bir sava� u�a��nda ta��mas� istenir.U�u� s�ras�nda di�er sava� u�aklar�yla m�cadeleye giri�en Garrett,u�a��n i�inde herkesin hayat�n� tehlikeye atabilecek k�t� bir varl�k ke�feder.',
'https://m.media-amazon.com/images/M/MV5BNWNiNGQyMzUtN2VmMi00NDI2LWI3NGUtMTEwZGQxYzFjZTNjXkEyXkFqcGdeQXVyMTEyNDk3MjY3._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Baba Paras�','2020-01-01',116,'Sel�uk Aydemir','Sel�uk Aydemir','Ahmet Kural, Murat Cemcir, Seher Devrim Yakut, Rasim �ztekin, Yagmur Tanrisevsin, �zg�r Emre Yildirim, Deniz Barut, Giray Altinok, Ayhan Tas, Osman Alkas',
'T�rkiye','T�rk�e | �ngilizce','Komedi','�lkenin en zengin insan�n�n gayri me�ru �ocuklar�, babalar�n�n �l�m� �zerine b�y�k bir servete konar.Farkl� karaktere, k�lt�re sahip olan karde�ler, kendilerine d��en pay� almak i�in harekete ge�tiklerinde beklenmedik bir durumla kar�� kar��ya kal�r.',
'https://m.media-amazon.com/images/M/MV5BNTE0MTU1NmEtMTFmZS00NzBjLWFiZGMtYTRiN2JjMzg4MDBmXkEyXkFqcGdeQXVyNDg4MjkzNDk@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Mulan','2020-09-04',115,'Niki Caro','Rick Jaffa, Amanda Silver, Lauren Hynek, Elizabeth Martin','Yifei Liu, Donnie Yen, Li Gong, Jet Li, Jason Scott Lee, Yoson An, Tzi Ma, Rosalind Chao, Pei-Pei Cheng, Xana Tang',
'ABD | Kanada | Hong Kong','�ngilizce','Aksiyon | Macera | Dram | Aile | Fantezi','�inli gen� bir kad�n�n hasta babas�n�n yerine onun g�revini yerine getirmek i�in erkek k�l���na girerek �mparatorluk Ordusu�na kat�lmas�n� ve kimsenin hayal edemeyece�i kadar ba�ar�l� olup bir efsane haline geli�ini anlat�yor.',
'https://m.media-amazon.com/images/M/MV5BZDBiY2RmOGQtN2NhZC00Mjg3LTk5NWUtNzExMGM2OGRmZGUwXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Parazit','2019-11-01',132,'Bong Joon Ho','Bong Joon Ho, Jin-won Han','	Song Kang-Ho, Lee Sun-kyun, Cho Yeo-jeong, Choi Woo-sik, Park So-dam, Lee Jeong-eun, Jang Hye-Jin, Park Myeong-hoon, Jung Ji-so, Jung Hyun-jun',
'G�ney Kore','Korece | �ngilizce','Komedi | Dram | Gerilim','Yoksul bir ailenin zengin bir ailenin evine hizmet�i olarak giri�i etraf�nda s�n�f farklar�n�, kapitalizmi ve aile ili�kilerini ele al�yor.Bir tarafta soyla gelen servetin tablosunu sergileyen Park ailesi, di�er tarafta ise fakir Kim ailesi var.',
'https://m.media-amazon.com/images/M/MV5BMTE5MGYwMWUtMWVmYi00MmYyLWI1OTYtNWUwZTZmOTY0MmIxXkEyXkFqcGdeQXVyMTAyOTE2ODg0._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Son �aka','2020-11-06',94,'Muhammet Erkam B�lb�l','Fatih Mutlu','Serdar G�kalp, Ege K�kenli, G�kay M�ft�oglu, Perihan �nl�can, Hikmet K�rm�k��, B�lent Alkis, �zer Arslan, Kemal Basar, Osman Dogan',
'T�rkiye','T�rk�e','Aksiyon | Komedi','Son �aka, radyo kanal�nda yapt��� telefon �akalar�yla bilinen Serdar��n, Ay�en�e evlilik teklifi s�ras�nda yapt��� �aka y�z�nden kendini affettirmeye �al��mas� sonras� ya�ananlar� konu ediniyor.',
'https://m.media-amazon.com/images/M/MV5BMTBhODFhNWQtN2Y4NC00ZmRiLTliM2UtNGI2NmMxNTRjODNlXkEyXkFqcGdeQXVyMTIwNDYzMjIz._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('�ki G�z�m Ahmet','2020-11-13',115,'Hakan G�rtop, Gani Savata','Ilker Baris, Gani Savata','Gani Savata, Ozgur Tuzer, Aleyna Solaker, Serdar Or�in, Ruhi Sari, Yelda Reynaud, Metin Yildiz, Ekin Akkas, 	Alev Oraloglu, Esref Bukan',
'T�rkiye','T�rk�e','Biyografi | Dram | M�zik | Romantik','T�rk ikonik sanat�� Ahmet Kaya, drama, �ocukluk, hayat� hakk�nda bir biyografi. B�l�c� etiketi, halk�n tam ortas�nda m�h�rlenen kahramanl��� sona erdirebilir mi?',
'https://m.media-amazon.com/images/M/MV5BOGM1NjFkMmQtOTg5Yy00YzcyLWFlOWYtOTI1NGQ5ZmFjZmRmXkEyXkFqcGdeQXVyMTExNDEyODU3._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('The Marksman','2021-01-21',108,'Robert Lorenz','Chris Charles, Danny Kravitz, Robert Lorenz','Jacob Perez, Katheryn Winnick, Liam Neeson, Teresa Ruiz, Harry Maldonado, Alfredo Quiroz, Sean A. Rosales, Jose Vasquez, Amber Midthunder, Jared Corum',
'ABD','English','Aksiyon | Gerilim','Arizona s�n�r�ndaki bir �iftlik sahibi, kendisini ABD�ye g�t�ren kartel suikast��lar�ndan �aresizce ka�an Meksikal� gen� bir �ocu�un beklenmedik savunucusu haline geliyor.',
'https://m.media-amazon.com/images/M/MV5BODdlNThhMTUtNmU1OS00ZjM3LWE1ZjMtOWViN2RhYWRiZTg5XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('A�k Seni Bulur','2020-11-06',90,'Hakan Y�cel','Hakan Y�cel','G�khan Daldik, F�rat Kaya, Asl� �imsek, Tolga �z, �evki �zcan',
'T�rkiye','T�rk�e','Romantik | Komedi','Kerem, �antac� Haydar��n o�ludur, �apk� Kerem fizik m�hendisi olmakla birlikte i�sizdir, i� aramak yerine k�z arkada�lar�n�n paras�n� yiyen tiptir.Tesad�fler sonucu mahallesine yeni ta��nan Melek ile kar��la��r.A�k�n kendisini buldu�u i�te o an fark eder.',
'https://m.media-amazon.com/images/M/MV5BY2NlNjgzZTMtYThjOC00OTJiLWE4MjYtM2E4M2Y5NmY4NTVhXkEyXkFqcGdeQXVyMTI0MjU5MzUw._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Raya ve Son Ejderha','2021-03-05',90,'Don Hall, Carlos L�pez Estrada, Paul Briggs, John Ripa','Adele Lim & Qui Nguyen','Kelly Marie Tran, Awkwafina',
'ABD','�ngilizce','Animasyon | Aksiyon | Macera | Komedi | Aile | Fantezi | M�zikal','Eski bir medeniyetin ya�ad���, yeniden tasarlanm�� bir D�nya olan Kumandra olarak bilinen bir diyarda, Raya adl� bir sava��� son ejderhay� bulmaya kararl�d�r.',
'https://m.media-amazon.com/images/M/MV5BN2UxNmIxYmItMDBlMi00MzRiLWE0MzEtNjBiOTA0MWE0NjZmXkEyXkFqcGdeQXVyNjU1NDM1MjQ@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Azap','2021-03-05',90,'Natalie Erika James','Natalie Erika James, Christian White','Robyn Nevin, Emily Mortimer, Bella Heathcote, Steve Rodgers, Chris Bunton, Robin Northover, Catherine Glavicic, Christina O Neill, John Browning, Jeremy Stanford',
'Avustralya | ABD','�ngilizce','Dram | Korku | Gizem | Gerilim','Edna, aniden ortadan kaybolur.Kay annesinin kayboldu�unu ��renince k�z�yla birlikte annesinin ya�ad��� eve gider.Birka� g�n�n ard�ndan Edna ortaya ��kar.Fakat Kay ve Sam, evde sinsi bir varl���n Edna�n�n kontrol�n� ele ge�irmeye �al��t���n� ke�feder.',
'https://m.media-amazon.com/images/M/MV5BOGY1MGM2ZjItZDJjMC00ZGM0LTg2MDctNmExNzcyYTcwMjM3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('�lmek ��in Zaman Yok','2021-04-02',163,'Cary Joji Fukunaga','Neal Purvis, Robert Wade, Cary Joji Fukunaga, Phoebe Waller-Bridge, Neal Purvis, Robert Wade, Cary Joji Fukunaga','Ana de Armas, Daniel Craig, L�a Seydoux, Ralph Fiennes, Rami Malek, Christoph Waltz, Naomie Harris, Billy Magnussen, Ben Whishaw, Jeffrey Wright',
'�ngiltere | ABD','�ngilizce','Aksiyon | Macera | Gerilim','James Bond aktif hizmetten ayr�ld�. CIA�den eski bir arkada� olan Felix Leiter, yard�m istemek i�in ortaya ��kt���nda, Bond�u tehlikeli yeni teknolojiyle donanm�� gizemli bir k�t� adam�n izine g�t�rd���nde, huzuru k�sa s�rer.',
'https://m.media-amazon.com/images/M/MV5BYmQ3MTY4NDUtOWExZi00OGQxLTgzNmQtODI1MTFkZjMyMDY0XkEyXkFqcGdeQXVyODk2NDQ3MTA@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('�nsanlar �kiye Ayr�l�r','2020-10-07',101,'Tun� �ahin','Tun� �ahin','Burcu Biricik, P�nar Deniz, Aras Ayd�n, Basak Dasman, Erdem Akak�e, Nezaket Erden, G�kay M�ft�oglu, Sabahattin Yakut, Esref Seyitoglu, Veli Kili�',
'T�rkiye','T�rk�e','Dram','Bor� tahsil eden bir �irketin �al��anlar�n�n hikayesini konu ediyor. Bir �irket, bankalar�n �e�itli nedenlerle pe�ine d��medi�i bor�lar� sat�n al�r. Bor�lar�n pe�ine d��en �irket, her ne pahas�na olursa olsun bor�lar� tahsil etmeye kararl�d�r.',
'https://m.media-amazon.com/images/M/MV5BNDg0OGUyZTEtZTZmNC00N2JkLWI5YTMtMGUzMDE2OTA5NGFmXkEyXkFqcGdeQXVyMTIwNDYzMjIz._V1_.jpg');
---

--4
-----------------------------------------------------------------------------------------------------------------------�
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --optimum
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.',
'Salon 1',15,9,7);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,7);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,7);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --forum bornova
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,6,1);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,6,1);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,6,1);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --izmir park
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,2);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,8,2);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,2);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --kar��yaka hill
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,3);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,8,3);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle d�nyan�n ilk �ok perdeli sinema teknolojisi ScreenX, sinemaseverlerle bulu�uyor.�� perdeden olu�an bu yarat�c� g�rsel fikir, d�nyada sadece ScreenX�e �zel.','Salon 3',10,9,3);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --kipa
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,4);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,4);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,4);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --konak pier
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,5);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,5);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,5);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --mavibah�e
values('Imax','IMAX salonlar�n�n e�siz geometrik yap�s�; ger�ek hayattakinden daha b�y�k kristal netli�indeki 3 boyutlu g�r�nt�ler ve IMAX�e �zel dijital ses sistemi ile birle�erek kendini adeta filmin i�inde hissetmeni sa�lar.',
'Salon 1',20,9,6);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,6);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,6);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --pointbornova
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,6,8);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,7,8);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlar�n�n e�siz geometrik yap�s�; ger�ek hayattakinden daha b�y�k kristal netli�indeki 3 boyutlu g�r�nt�ler ve IMAX�e �zel dijital ses sistemi ile birle�erek kendini adeta filmin i�inde hissetmeni sa�lar.',
'Salon 3',15,8,8);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --akbat�
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,8,17);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,17);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,17);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --aqua florya
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n',
'Salon 1',15,8,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,8,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle �ok perdeli sinema teknolojisi ScreenX, sinemaseverlerle bulu�uyor.','Salon 4',10,8,18);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --avlu 34
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n',
'Salon 1',15,9,19);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,19);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,19);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --axis
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,7,20);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,20);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,20);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --cevahir
values('Imax','IMAX salonlar�n�n e�siz geometrik yap�s�; ger�ek hayattakinden daha b�y�k kristal netli�indeki 3 boyutlu g�r�nt�ler ve IMAX�e �zel dijital ses sistemi ile birle�erek kendini adeta filmin i�inde hissetmeni sa�lar.',
'Salon 1',10,8,21);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,21);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,6,21);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --citys ni�anta��
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,6,22);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,22);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,22);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --forum istanbul
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,23);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,23);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,23);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --istinye park
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,8,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlar�n�n e�siz geometrik yap�s�; ger�ek hayattakinden daha b�y�k kristal netli�indeki 3 boyutlu g�r�nt�ler ve IMAX�e �zel dijital ses sistemi ile birle�erek kendini adeta filmin i�inde hissetmeni sa�lar.','Salon 2',10,9,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n','Salon 3',15,8,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 4',20,8,24);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --kanyon
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,8,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle �ok perdeli sinema teknolojisi ScreenX, sinemaseverlerle bulu�uyor.','Salon 4',10,9,25);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --vadi istanbul
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,9,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlar�n�n e�siz geometrik yap�s�; ger�ek hayattakinden daha b�y�k kristal netli�indeki 3 boyutlu g�r�nt�ler ve IMAX�e �zel dijital ses sistemi ile birle�erek kendini adeta filmin i�inde hissetmeni sa�lar.','Salon 3',10,9,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle �ok perdeli sinema teknolojisi ScreenX, sinemaseverlerle bulu�uyor.','Salon 4',10,9,26);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --emaar
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,8,27);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,27);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,27);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --maltepe pi
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,6,28);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n','Salon 2',15,8,28);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('4DX','Hareket, titre�im, su, ���k efektleri, koku ve di�er unsurlar� kullanarak sinema izleyicisini ger�ek anlamda filme dahil eden bir deneyim sunuyor.','Salon 3',20,6,28);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id)--watergarden 
values('ScreenX','270 derece perdesiyle �ok perdeli sinema teknolojisi ScreenX, sinemaseverlerle bulu�uyor.','Salon 1',10,9,29);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,8,29);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,6,29);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --ankamall
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,30);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,30);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,30);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --antares
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,8,31);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,31);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,31);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --cepa
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,32);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,32);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,32);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --next level
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 1',15,9,33);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.','Salon 2',15,9,33);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,33);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --atakule
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,34);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n',
'Salon 2',20,9,34);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,34);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --gordion
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,6,35);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,35);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,6,35);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --panora
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,36);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n',
'Salon 2',20,8,36);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,6,36);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --polatl� kartal
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,37);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,37);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,37);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --antalya migros
values('Gold Class','Geni� ve yatabilen koltuklar�yla bamba�ka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz i�in telefon �arj �nitesi bulunan salondaki rahat koltuklar konforda s�n�r� bir �st seviyeye ta��yor.',
'Salon 1',15,8,38);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,8,38);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,38);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --manavgat
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,7,39);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 2',20,7,39);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,7,39);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --markantalya
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 1',20,8,40);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini ��kar�n',
'Salon 2',20,9,40);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyas�na ��kar�n','Salon 3',20,8,40);

--5
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Seat (isEmpty, t_id) 
values(1,1),(1,2),(1,3);

INSERT INTO Seat (isEmpty, t_id) 
values(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19);

INSERT INTO Seat (isEmpty, t_id) 
values(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39);

INSERT INTO Seat (isEmpty, t_id) 
values(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59);

INSERT INTO Seat (isEmpty, t_id) 
values(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79);

INSERT INTO Seat (isEmpty, t_id) 
values(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101);

--6
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --bir kad�n�n par�alar� i�in
values('10:00:00.0000000','12:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('13:00:00.0000000','15:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('14:00:00.0000000','16:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('17:00:00.0000000','19:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('20:00:00.0000000','22:06:00.0000000',5);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --buluttaki g�lge i�in 
values('11:00:00.0000000','12:23:00.0000000',6);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('13:00:00.0000000','14:23:00.0000000',6);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)
values('15:00:00.0000000','16:23:00.0000000',6);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)
values('17:00:00.0000000','18:23:00.0000000',6);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)
values('19:00:00.0000000','20:23:00.0000000',6);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:23:00.0000000',6);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --Jumanji: Level One i�in
values('13:00:00.0000000','14:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('16:00:00.0000000','17:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('19:00:00.0000000','20:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:54:00.0000000',12);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --soul i�in
values('13:00:00.0000000','14:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('17:00:00.0000000','18:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('21:00:00.0000000','22:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('23:00:00.0000000','00:40:00.0000000',1);;

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --wonder woman i�in
values('10:00:00.0000000','12:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('13:00:00.0000000','15:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('17:00:00.0000000','19:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('21:00:00.0000000','23:31:00.0000000',2);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --iki g�z�m Ahmet i�in
values('12:00:00.0000000','13:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','19:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:55:00.0000000',11);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --marksman i�in
values('12:00:00.0000000','13:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','19:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:48:00.0000000',13); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --a�k seni bulur i�in
values('11:00:00.0000000','12:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('17:00:00.0000000','18:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('20:00:00.0000000','21:30:00.0000000',14); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --raya ve son ejderha i�in
values('11:00:00.0000000','12:30:00.0000000',15); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:30:00.0000000',15); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('17:00:00.0000000','18:30:00.0000000',15); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('20:00:00.0000000','21:30:00.0000000',15); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --azap
values('12:00:00.0000000','13:30:00.0000000',16); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('16:00:00.0000000','17:30:00.0000000',16); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','19:30:00.0000000',16); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:30:00.0000000',16); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --�lmek i�in zaman yok i�in
values('11:00:00.0000000','13:43:00.0000000',17); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','17:43:00.0000000',17); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','20:43:00.0000000',17); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','23:43:00.0000000',17); 

--7
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Comments (comComment, m_id, u_id) 
values('Ba�ka bir Pixar klasi�i olan Pete Docter, ba�ka bir Pixar klasi�ini masaya getirebiliyor. Bu film, Pixar �n filminin olmas� gereken standartlara ula��yor ve kesinlikle 2021 in en iyi animasyon filmi Oscar �n� kazanacak.',1,1);

INSERT INTO Comments (comComment, m_id, u_id) 
values('Pixar filmlerinin �o�u gibi inan�lmaz derecede yarat�c� ve en b�y�k filmleri gibi �iirsel.Animasyonu, g�r�nt�leri, d�nyalar�, karakterleri, kavramlar� yaratmay� �ylesine karma��k ve yarat�c�d�r ki, genellikle bi�imlerini yaln�zca zihinlerde bulabilir.',1,3);

INSERT INTO Comments (comComment, m_id, u_id) 
values('�ok uzun soluklu ve olduk�a s�r�ls�klam, kendimi olduk�a s�k�lm�� buldum. Bu filmin ne olmaya �al��t���ndan pek emin de�ilim, belki birka� aksiyon sahnesi olan bir drama a�k hikayesi. Hayal k�r�kl���na u�rad�m.',2,2);

INSERT INTO Comments (comComment, m_id, u_id) 
values('�lk filmi �ok sevdim ve eminim ki devam filminin her �eyi ba�ka bir d�zeye ta��d���n� s�yleyebilirim! Pedro Pascal ve Kristen Wiig onu Maxwell Lord ve Cheetah olarak kesinlikle �ld�rd�ler.',2,3);
-------------tenet
INSERT INTO Comments (comComment, m_id, u_id) 
values('Aksiyon sahnelerin �ok olmas� filmi takip etmeyi kolay hale getirmeye �al��sa da filmi tam anlam�yla anlamak i�in ikinci kez izlenmesi gerekiyor. Di�er beyin yakan filmler en sonunda bir �ekilde kendini a��klasa da bu film tamamen seyirciye b�rak�l�yor.',3,12);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Sinema salonunda oldu�unuzu unutmak, ben neredeyimi akl�n�za dahi getirmek istemiyorsan�z adres zaren Nolan d�. Tenet de bu hususta tam aderee teslim i� olmu�. Enfes!',3,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('�ok be�endim. Dede Paradoksu sahnesinde filmdeki olup biteni dahada iyi anl�yorsunuz. Klasik NOLAN filmi. Farkl� bir kafas� var bu adam�n. Beyin yakar.',3,28);
INSERT INTO Comments (comComment, m_id, u_id) 
values('M�zik ve ses aksiyon g�zeldi fakat bi yerlerde devreleriniz yanabilir. Anla��lmas� zor fakat g�zel bir filmdi.',3,35);
-------------jumanji
INSERT INTO Comments (comComment, m_id, u_id) 
values('15 Ki�ilik ��renci grubu ile izleyince �ocuklara y�nelik film oldu�unu anlad�m. Ama yinede e�lenceliydi. Dwayne Johnson filmin dominant oyuncusuydu. Karen Gillan��n oldu�u sahneler harikayd�. Robin Williams��n oynad��� filmi aratmad�.',4,29);
INSERT INTO Comments (comComment, m_id, u_id) 
values('harika bir film.. �ok e�lenceli, �ok g�zel bir film.. bir saniye bile s�k�lmad�m izlerken.. ',4,16);
INSERT INTO Comments (comComment, m_id, u_id) 
values('1990 larda yap�lan filmin devam� niteli�inde yapm��lar. 90 l� y�llar�n iyi filmini kullan�larak eski nesil izleyici ve hemde yeni nesil izleyiciyi ekrana �ekmek istemi�ler. G�zel g�rsel efektleri olan ve e�lendirici ve g�ld�r�c� bir film.',4,35);
INSERT INTO Comments (comComment, m_id, u_id) 
values('konusu, karakterleri, ak�c�l���, maceras�, son zamanlarda izledi�im en g�zel filmlerden birisiydi tavsiye ederim',4,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('daha �ok �ocuklara hitap eden, seyircisine pek bir �ey veremeyen oyalay�c� bir yap�m...',4,31);
INSERT INTO Comments (comComment, m_id, u_id) 
values('bu siteyi uzun zamand�r takip ediyorum ama �ye olmam��t�m s�rf bu filme yorum yapmak i�in �ye oldum d���n�n art�k ne kadar be�endi�imi :)',4,19);
-------------baba paras�
INSERT INTO Comments (comComment, m_id, u_id) 
values('Beklentilerin �ok alt�nda bir film olmu�. Kesinlikle tavsiye etmiyorum zaman�n�z� bo�una harcamay�n 5 ki�i gittik pi�man olduk',8,22);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Filmi izlerken resmen uyudum espri yapaca��m diye k�f�rler havada u�u�uyordu d���n dernek gibi �al��malardan sonra hi� bu film olmam��',8,1);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Genel olarak g�zel bir filmdi. Filme gitmeden �nce yorumlar� okudum �ok k�t�yd� lakin ben yorumlara g�re filme gitmeyen ba�kalar�n�n kafas�yla ya�ayan bir birey olmad���m i�in gidip g�rmek istedim.',8,13);
-------------mulan
INSERT INTO Comments (comComment, m_id, u_id) 
values('Mulan film be�endim ve �ok anlaml� anlam veriyor bazen d���n�yom bu senede degilde o senede ya�amay� tercih ederdim diyom film mi yapan ki�ilerin emeklerine sa�l�k',9,3);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Olduk�a etkili bir �ekilde ba�l�yor fakat s�radan bir �ekilde devam ederek maalesef k�t� bir �ekilde bitiyor. Gereksiz bir ger�ek�ilik kayg�s�yla �ekilen filmin bu sebeple giderek d��t���n� d���n�yorum. Ortalama bir fantastik film.',9,26);
-------------parazit
INSERT INTO Comments (comComment, m_id, u_id) 
values('Oscay adayl�klar�nda kazanmas�nda kesinlikle hakl� oldu�unu d���nd���m film. Genelde Oscar alan filmlerde hep bir sanat kayg�s� ve s�rekli mesaj verme iste�i i�erir. Ancak bu film, ger�ek bir hikayeyi ve ya�am� bizlere sunuyor. ',10,27);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Bu filmi be�enip,be�enmemek zevk meselesi de�il,ak�l meselesidir. Ald��� �d�lleri sonuna kadar hak eden bir film.',10,38);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Muhte�em. Ba�tan a�a�� bir ba�yap�t. Hem muhte�em bir komedi, hem muhte�em bir gerilim ve hepsinden daha �ok muhte�em bir drama. Filmin ikinci yar�s�nda filmin havas�n�n birden de�i�mesi... tek kelimeyle dahiyane.',10,9);
INSERT INTO Comments (comComment, m_id, u_id) 
values('son zamanlarda izledi�im en iyi film diyebilirim. basit bir konudan bu kadar iyi film yapmak maharet ister. oyunculuklar m�kemmele yak�n. herkesin izlemesi gereken m�thi� bir film.',10,11);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Ger�ekten �ok kaliteli bir film olmu�. �lk ba�ta s�k�c� gelecekmi� gibi oluyor ama ondan sonra filme kendinizi kapt�r�p gidiyorsunuz. KES�NL�KLE izlemelisiniz.',10,15);
INSERT INTO Comments (comComment, m_id, u_id) 
values('�ok iyi film diyemesem de s�n�fsal �eli�kileri ve bu minvalde para s�z konusu olunca insan�n i�indeki canavar� nas�l ortaya ��kt���n�,nas�l ac�mas�zla�abildi�ini ortaya d�ken bir film',10,3);
INSERT INTO Comments (comComment, m_id, u_id) 
values('�o�unluk gibi ben de filmi �ok be�endim film bitti�inde baya�� etkilenmi�tim Bence herkesin kesinlikle izlemesi gereken bir film insana bir�ok duyguyu ayn� anda ya�at�yor ilk ba�ta e�lenceli ve komik ba�layan film maalesef bir dramla son buluyor',10,33);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Sistemin iflas�na do�ru, gemi art�lk su al�yor, 3.mevki sel alt�nda. �ngilizce e�itimi ile ba�layan ili�kiler, kapitalizmin ba�lang�� noktas�na g�nderme.',10,36);
-------------son �aka
INSERT INTO Comments (comComment, m_id, u_id) 
values('ince espiri �yle komedi malesef yok. S�rf serdar g�kalp var diye gittik izlerken s�k�l�rs�n�z. �lk filmi buna veriyorum daha ba�ar�l� olursun in�allah',11,11);
-------------iki g�z�m ahmet
INSERT INTO Comments (comComment, m_id, u_id) 
values('Ahmet Kaya�n�n hayat� nas�l anlat�lmaz sorusuna verilebilecek cevap niteli�inde film. Benim bile �st�nk�r� bilgimle bu sanat�� i�in daha iyi bir film �ekilebilir, filme �ok �ok daha iyi bir son eklenebilirdi. Yetersiz.',12,13);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Filmin yeterli ve y�ksek bir b�t�e ile �ekilmedi�i a�ikar. Olduk�a profesyonel oyunculuklar, mekan kurgusu gibi ��eler �ok da filmde bulunmuyor. Ancak filmin ba�rol�ndeki oyuncu Ahmet Kaya�ya olduk�a benzerdi�i i�in filme inand�r�c�l�k katmaktad�r.',12,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Ben Ahmet Kaya hayran� olarak hayal k�r�kl���na u�rad�m.2 dk �ocukluk g�sterdiniz geri kalan lin� yedi�i g�nd�.Ahmet Kaya gibi birinin hayat� bu kadar es ge�ilemezdi. B�y�k bir projeydi ama bat�rm��s�n�z.Yine de eme�inize sa�l�k.',12,35);

--8
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Rating(rRating,m_id,u_id) values(10,1,1);
INSERT INTO Rating(rRating,m_id,u_id) values(9,1,3);
INSERT INTO Rating(rRating,m_id,u_id) values(3,2,2);
INSERT INTO Rating(rRating,m_id,u_id) values(8,2,3);
INSERT INTO Rating(rRating,m_id,u_id) values(9,1,4);
INSERT INTO Rating(rRating,m_id,u_id) values(8,7,4);
INSERT INTO Rating(rRating,m_id,u_id) values(8,8,1);

--user 5 6 7 8 yok 38 e kadar
INSERT INTO Rating(rRating,m_id,u_id) values(10,1,1);---1 2 3 5 6 7 8 9 10 11 12 14 18
INSERT INTO Rating(rRating,m_id,u_id) values(9,1,7);
INSERT INTO Rating(rRating,m_id,u_id) values(7,1,10);
INSERT INTO Rating(rRating,m_id,u_id) values(8,1,12);
INSERT INTO Rating(rRating,m_id,u_id) values(6,1,14);
INSERT INTO Rating(rRating,m_id,u_id) values(8,1,18);

INSERT INTO Rating(rRating,m_id,u_id) values(5,2,22);
INSERT INTO Rating(rRating,m_id,u_id) values(5,2,25);
INSERT INTO Rating(rRating,m_id,u_id) values(4,2,15);
INSERT INTO Rating(rRating,m_id,u_id) values(3,2,32);
INSERT INTO Rating(rRating,m_id,u_id) values(1,2,9);

INSERT INTO Rating(rRating,m_id,u_id) values(5,3,12);
INSERT INTO Rating(rRating,m_id,u_id) values(7,3,34);
INSERT INTO Rating(rRating,m_id,u_id) values(8,3,17);
INSERT INTO Rating(rRating,m_id,u_id) values(7,3,19);
INSERT INTO Rating(rRating,m_id,u_id) values(8,3,28);

INSERT INTO Rating(rRating,m_id,u_id) values(7,4,25);
INSERT INTO Rating(rRating,m_id,u_id) values(8,4,17);
INSERT INTO Rating(rRating,m_id,u_id) values(9,4,19);
INSERT INTO Rating(rRating,m_id,u_id) values(8,4,28);
INSERT INTO Rating(rRating,m_id,u_id) values(7,4,31);
INSERT INTO Rating(rRating,m_id,u_id) values(8,4,16);
INSERT INTO Rating(rRating,m_id,u_id) values(9,4,29);
INSERT INTO Rating(rRating,m_id,u_id) values(8,4,3);

INSERT INTO Rating(rRating,m_id,u_id) values(3,8,22);
INSERT INTO Rating(rRating,m_id,u_id) values(5,8,1);
INSERT INTO Rating(rRating,m_id,u_id) values(5,8,13);

INSERT INTO Rating(rRating,m_id,u_id) values(5,9,2);
INSERT INTO Rating(rRating,m_id,u_id) values(7,9,26);
INSERT INTO Rating(rRating,m_id,u_id) values(4,9,17);
INSERT INTO Rating(rRating,m_id,u_id) values(3,9,3);
INSERT INTO Rating(rRating,m_id,u_id) values(7,9,3);

INSERT INTO Rating(rRating,m_id,u_id) values(7,10,4);
INSERT INTO Rating(rRating,m_id,u_id) values(8,10,11);
INSERT INTO Rating(rRating,m_id,u_id) values(9,10,27);
INSERT INTO Rating(rRating,m_id,u_id) values(9,10,34);
INSERT INTO Rating(rRating,m_id,u_id) values(7,10,31);
INSERT INTO Rating(rRating,m_id,u_id) values(8,10,15);
INSERT INTO Rating(rRating,m_id,u_id) values(9,10,9);
INSERT INTO Rating(rRating,m_id,u_id) values(8,10,3);
INSERT INTO Rating(rRating,m_id,u_id) values(8,10,33);
INSERT INTO Rating(rRating,m_id,u_id) values(7,10,26);

INSERT INTO Rating(rRating,m_id,u_id) values(6,11,11);
INSERT INTO Rating(rRating,m_id,u_id) values(7,11,14);

INSERT INTO Rating(rRating,m_id,u_id) values(3,12,13);
INSERT INTO Rating(rRating,m_id,u_id) values(5,12,17);
INSERT INTO Rating(rRating,m_id,u_id) values(2,12,18);
INSERT INTO Rating(rRating,m_id,u_id) values(2,12,23);
INSERT INTO Rating(rRating,m_id,u_id) values(4,12,32);

INSERT INTO Rating(rRating,m_id,u_id) values(6,18,20);
INSERT INTO Rating(rRating,m_id,u_id) values(7,18,34);
INSERT INTO Rating(rRating,m_id,u_id) values(7,18,15);

--9
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Ticket(ticPrice, u_id, se_id, seans_id) values(20,1,3,12);
INSERT INTO Ticket(ticPrice, u_id, se_id, seans_id) values(20,2,2,1);



--10
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------





