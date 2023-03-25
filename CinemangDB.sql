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

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Forum Bornova','Forum Bornova AVM Kazým Dirik Mah. 372 Sok. F1 Blok BORNOVA/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Ýzmir Park','Güneþli Mah. Eþref Paþa Cad. No:408 KONAK/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Karþýyaka Hilltown','Yalý, 6522. Sk. No:3, 35550 KARÞIYAKA/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Kipa Extra Balçova','Kipa AVM, Mithatpaþa Cad.No : 1462, BALÇOVA/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Konak Pier','Konak Pier AVM, Atatürk Cd. No:19, 35260 KONAK/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Mavibahçe','Maviþehir Mah. Caher Dudayev Bulvarý A Blok 301 No:40 Mavibahçe AVM KARÞIYAKA/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Optimum Ýzmir','Optimum Outlet ve Eðlence Merkezi Akçay Cad. No:101 35410 GAZÝEMÝR/ÝZMÝR','Ýzmir/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Point Bornova','4174 Sokak No:4 Baðburnu Mevkii, BORNOVA/ÝZMÝR','Ýzmir/TÜRKÝYE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Akbatý','Akbatý Alýþveriþ ve Yaþam Merkezi Sanayi mah. Esenkent mevkii 1655. Sok No:6, 34510 Esenyurt/ÝSTANBUL','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Aqua Florya','Þenlikköy, Aqua Florya, Yeþilköy Halkalý Cd. No:93, 34153 Bakýrköy/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Avlu 34','Avlu 34 Alýþveriþ ve Yaþam Merkezi. Merkez Mah, Eski Edirne Asfaltý cad. no: 1405 kat:zemin, Arnavutköy/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Axis','Merkez Cendere Caddesi No:28 Kat:3 No:120 Kaðýthane, AXÝS AVM, 34410 Kâðýthane','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Cevahir','Büyükdere Cad. Cevahir Avm No: 22','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('City’s Niþantaþý','Teþvikiye, City’s Niþantaþý, Teþvikiye Cd. No:162, 34365 Þiþli/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Forum Ýstanbul','Kocatepe, 34045 Bayrampaþa/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Ýstinye Park','Ýstinye Bayýrý Cad, Ýstinye Park AVM No:11, 34460','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Kanyon','Esentepe Mahallesi Büyükdere Caddesi, Kanyon AVM No:185, 34330, 34394 Þiþli','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Vadi Ýstanbul','Ayazaða, Vadi Ýstanbul AVM, Cendere Cd. No:109 Kat:3, 34396 Sarýyer/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Emaar','Ünalan, Ayazma Cd. No:78, 34700 Üsküdar/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Maltepe Piazza','Cevizli, Tugay Yolu Cd. No:71, 34846 Maltepe/Ýstanbul','Ýstanbul/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Watergarden','Barbaros Mah Batý, Þebboy Sk. No:2, 34746 Ataþehir/Ýstanbul','Ýstanbul/TÜRKÝYE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('ANKAmall','Gazi, Akköprü 2/242, 06330 Yenimahalle/Ankara','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Antares','Ayvalý, Ayvalý Halil Sezai Erkut Caddesi, Antares AVM No:121, 06010 Keçiören/Ankara','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Cepa','Eskiþehir Yolu Söðütözü Odtü Karþisi CEPA AVM 7. Km','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Next Level','Kýzýlýrmak, Dumlupýnar Blv. No:3, 06520 Çankaya/Ankara','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Atakule','Kýzýlýrmak, Dumlupýnar Blv. No:3, 06520 Çankaya/Ankara','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Gordion','Çayyolu Eskiþehir Yolu 16 km, Çaðlayan Kavþaðý Gordion Avm, 06810 Çankaya','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Panora','Oran, Turan Güneþ Bulvari Panora Avm, D:No:182 / 212','Ankara/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Polatlý Kartaltepe','Ýstiklal, 06900 Polatlý/Ankara','Ankara/TÜRKÝYE');

INSERT INTO Cinema(cName, cAddress, cLocation) values ('Antalya Migros','Arapsuyu, Meltem Migros AVM, 100 Yýl Blv No:155, 07070 Konyaaltý/Antalya','Antalya/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('Manavgat','Sorgun, Nova Mall AVM içi, 8096. Sokak No:5, 07600 Manavgat/Antalya','Antalya/TÜRKÝYE');
INSERT INTO Cinema(cName, cAddress, cLocation) values ('MarkAntalya','Tahýlpazarý, Þarampol Cd. No:84 K:4 D:No:4, 07040 Muratpaþa/Antalya','Antalya/TÜRKÝYE');

--1
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('asudeagaya','12345','Asude','AÐAYA','05347179393','Emniyet Mah. Alemdar Cad. No:3A Daire:2 Yenimahalle/Ankara','asude-agaya@hotmail.com',34);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('senizakbulut','67891','Þeniz','AKBULUT','05452959627','Týnaztepe/Ýzmir','seniz.akbulut@ceng.deu.edu.tr',2);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) 
values ('beydoganturan','23456','Beydoðan Ünsal','TURAN','05539898024','Buca/Ýzmir','beydogan.turan@ceng.deu.edu.tr',3);

INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('imatterdacei', 'WIZO9Yi', 'Ingeborg', 'Matterdace', '1772403616', 'Bornova/ÝZMÝR', 'imatterdacei@hotmail.com', 8);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'fverrierj', 'qq8M136BU', 'Sercan', 'Aþkýn', '2942022346', 'Gaziemir/ÝZMÝR', 'fverrierj@gmail.com', 7);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('lfilmer1', 'sCck2b','Yýldýz','Konak', '3698842283','KARÞIYAKA/ÝZMÝR', 'thornbuckle1@gmail.com',6);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('karran2', 'BAaFn0gufkk','Sezen','Kalýp', '2704603345','KONAK/ÝZMÝR', 'lchesswas2@gmail.com',5);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('ngately3', 'OoGZDWmY8O7m','Burak','Zengin', '7844895719','BALÇOVA/ÝZMÝR', 'spinel3@gmail.com',4);;
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('lfawcus6', 'rBEDFnjZVdB','Kenan','Kazan', '5168736053','BORNOVA/ÝZMÝR', 'pcatherine6@hotmail.com',1);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'mcorns3', 'WJeDM9AO', 'Moore', 'Corns', '1529024869', 'Konyaaltý/Antalya', 'mcorns3@hotmail.com', 38);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'rkelway4', 'RFYUNFbKktk2', 'Rhys', 'Kelway', '3336360438', 'Manavgat/Antalya', 'rkelway4@hotmail.com', 39);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'dvela5', '8g9ZElu', 'Dalton', 'Vela', '5706563809', 'Muratpaþa/Antalya', 'dvela5@gmail.com', 40);

INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'gwormstone6', 'XLwwHu', 'Onur', 'Keskin', '9911240128', 'Polatlý/Ankara', 'gwormstone6@hotmail.com', 31);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'ctimoney7', 'ckxp7RPe', 'Ege', 'Altay', '5832986289', 'Çankaya/Ankara', 'ctimoney7@hotmail.com', 32);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'svaszoly8', '4wDeJA', 'Sümeyye', 'Yýldýz', '5182633432', 'Keçiören/Ankara', 'svaszoly8@gmail.com', 33);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('trennicksb', '7AJUCXnQK','Kaya','Atýlgan', '9853885688','Çankaya/Ankara', 'bbembrickb@hotmail.com',30);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('mdikd', '536G3Y','Ýbrahim','Temel', '7571647163','Kýzýlay/Ankara', 'kgrigautd@gmail.com',35);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('oyitshake', 'LEEZeiDBCKsM','Batuhan','Kor', '3009002117','Çankaya/Ankara', 'lstodee@gmail.com',36);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('vschimonekf', '5RtEFJYFzs','Aziz','Kartal', '7047680675','Keçiören/Ankara', 'msimenelf@gmail.com',37);

INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'pcollcutt9', 'sj6shZr', 'Pepito', 'Yýldýrým', '4412040548', 'Ataþehir/Ýstanbul', 'pcollcutt9@hotmail.com', 25);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'mnorthovera', 'wXe0nuT', 'Betül', 'Northover', '8954098520', 'Maltepe/Ýstanbul', 'mnorthovera@gmail.com', 24);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'lgroomb', 'MzKWdYK9mm1u', 'Lizzy', 'Genç', '1398106934', 'Üsküdar/Ýstanbul', 'lgroomb@gmail.com', 23);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'ebramc','t2fv4JVurM', 'Ýrem', 'Bram', '3593872562', 'Sarýyer/Ýstanbul', 'ebramc@hotmail.com', 22);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'bstolzd', 'PUOwfOL', 'Barnard', 'Stolz', '1724325099', 'Þiþli/Ýstanbul', 'bstolzd@hotmail.com', 21);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'thavocke', 'ZzgvdrAubTEc', 'Yekta', 'Havock', '1497205300', 'Kâðýthane/Ýstanbul', 'thavocke@hotmail.com', 20);
INSERT INTO Staff (sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'tskingleyf', 'xY5YzCNTCB', 'Tarýk', 'Sinan', '4023816023', 'Arnavutköy/Ýstanbul', 'tskingleyf@hotmail.com', 19);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'gtaylersong', '5EvITwtPSVZo', 'Zeynep', 'Gün', '6906764718', 'Esenyurt/ÝSTANBUL', 'gtaylersong@hotmail.com', 17);
INSERT INTO Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ( 'fgoulstoneh', 'NCzpgME7', 'Faruk', 'Güngören', '7828636466', 'Bakýrköy/Ýstanbul', 'fgoulstoneh@gmail.com', 18);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('mferriman7', 'VyBTVtrtd','Enginhan','Tepes', '9952662716','Sarýyer/Ýstanbul', 'kcardall7@hotmail.com',26);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('cgoneau8', 'l908wHId7aQL','Yasin','Kuþan', '8214249042','Üsküdar/Ýstanbul', 'lsteeden8@hotmail.com',27);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('emaddicks9', 'J15vuV1YS','Güvercin','Haným', '9284288408','Maltepe/Ýstanbul', 'cfilyukov9@hotmail.com',28);
insert into Staff ( sUsername, sPassword, sName, sSurname, sPhone, sAddress, sEmail, c_id) values ('fbraceya', 'mCtCciEaq','Ramiz','Yýlmaz', '7478270933','Ataþehir/Ýstanbul', 'gblackborowa@hotmail.com',29);

--2
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Kelebek','98765','Bahar','Can','05445819370','Çankaya/Ankara','kelebek@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('TheBlack','12369','Mert','Çoþkun','05524931615','Kadýköy/Ýstanbul','mertcoskun@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Robin8','45698','Dilara','Pýnar','05335762460','Konak/Ýzmir','dilarapinar@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) 
values ('Excalibur','78624','Þahap','Yýlmaz','05328759643','Merkez/Antalya','fistikcisahap@hotmail.com');
-----
INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values 
('The Shark', '7251', 'Kutay', 'Poyraz', '05336827131', 'Onur Cad. Gizem Sok. 79/4', 'kutaypoyraz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Ringmaster', '7940', 'Mustafa', 'Ceviz', '05445852865', 'Ekin Cad. 39/12', 'mustafaceviz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Darth Vader', '9083', 'Kemal', 'Çalýþkan', '05335119370', 'Mevlana Cad. Mavi Sok. 8/20', 'kemalcaliskan@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Godzilla', '1801', 'Ruhi', 'Nalbant', '05422231615', 'Fikir Cad. 89/6', 'ruhinalbant@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Captain Jack', '5318', 'Pýnar Eda', 'Yýlmaz', '05524937096', 'Ekin Cad. Ada Sok. 18/16', 'pinaryilmaz@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Mr. President', '3102', 'Adem', 'Yýlmaz', '05335358241', 'Izmir Cad. 63/1', 'ademyilmaz@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('krypt0', '7037', 'Mustafa', 'Ulusoy', '05335728487', 'Gazi Cad. Maden Sok. 87/11', 'mustafaulusoy@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Candy', '1320', 'Fatma', 'Tuna', '05359323021', 'Yaprak Cad. Portakal Sok. 82/12', 'fatmatuna@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Fearless', '9526', 'Esin', 'Parlak', '05353162460', 'Gazi Cad. 27/17', 'esinparlak@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Panther', '5189', 'Mine', 'Ilgaz', '05337802932', 'Cevizli Cad. 1/2', 'mineilgaz@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('ÇýlgýnSerseri', '4261', 'Yýldýz', 'Hasanoðlu', '05426356184', 'Usta Cad. 32/23', 'yildizhasanoglu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('YürüyenUçak', '4676', 'Beste', 'Doðan', '05532899664', 'Bostan Cad. Yakut Sok. 29/40', 'bestedogan@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Hebele', '9297', 'Elif Eda', 'Aksu', '05334976338', 'Kardelen Cad. Hekimler Sok. 2/34', 'elifaksu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('KýrmýzýBaþlýklýKýz', '7399', 'Feray', 'Çelik', '05533719623', 'Gazi Cad. Verimli Sok. 74/16', 'feraycelik@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Atmaca', '5471', 'Mustafa Kemal', 'Arslan', '05358602967', 'Takvim Cad. Limon Sok. 67/30', 'kemalarslan@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('KirazlýKüpe', '4170', 'Esra', 'Þen', '05322257119', 'Hayat Cad. Duyum Sok. 15/11', 'esrasen@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Bukalemun', '5450', 'Tutku', 'Altýnbaþ', '05336437223', 'Bahar Cad. Kumru Sok. 67/25', 'tutkualtýnbas@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('Karizmator', '9932', 'Nadir', 'Bilgili', '05539746955', 'Mimar Sinan Cad. 19/17', 'nadirbilgili@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('PortakallýÖrdek', '8189', 'Eser', 'Karakaya', '05326384180', 'Esenyurt Cad. Ebru Sok. 28/29', 'eserkarakaya@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('SanatEseri', '5541', 'Levent', 'Egeli', '05343888499', 'Emek Cad. Funda Sok. 9/21', 'leventegeli@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('ElmaÞekeri', '8157', 'Damla', 'Nazým', '05545958299', 'Niyet Cad. Tiyatro Sok. 65/16', 'damlanazim@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('AkülüAraba', '1281', 'Lokman', 'Dereli', '05424116873', 'Alim Cad. Kafkas Sok. 47/30', 'lokmandereli@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('YamukPrenses', '5128', 'Deniz', 'Koç', '05526525334', 'Deniz Cad. Kalem Sok. 46/29', 'denizkoc@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('ÇekilinBenDoktorum', '7266', 'Halil', 'Hasanoðlu', '05449742214', 'Anadolu Cad. Tiyatro Sok. 33/10', 'halilhasanoglu@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('HeyGidiGünler', '2448', 'Tuna', 'Limoncu', '05428339614', 'Akay Cad. Oya Sok. 69/38', 'tunalimoncu@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('CiciBebeÇocuðu', '9295', 'Necdet', 'Yýldýrým', '05424086427', 'Izmir Cad. Burcu Sok. 76/14', 'necdetyildirim@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('ZýplayanKaplumbaða', '3875', 'Furkan', 'Avcý', '05354303322', 'Cevizli Cad. 80/1', 'furkanavci@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('UçanTekmeAtanKibarcýk', '3948', 'Mehmet', 'Bilgili', '05534722715', 'Niyet Cad. Meltem Sok. 62/1', 'mehmetbilgili@hotmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('AllahVar', '2736', 'Celil', 'Bolluk', '05424054743', 'Kitap Cad. Billur Sok. 4/19', 'celilbolluk@gmail.com');

INSERT INTO Users (uUsername, uPassword, uName, uSurname, uPhone, uAddress, uEmail) values
('ZýpýrBalýk', '1830', 'Naz', 'Gezgin', '05422011822', 'Yaren Cad. 35/5', 'nazgezgin@gmail.com');

--3
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Soul','2020-12-25',100,'Pete Docter & Kemp Powers','Mike Jones , Kemp Powers , Pete Docter',
'Jamie Foxx, Tina Fey, Graham Norton, Rachel House, Alice Braga, Richard Ayoade, Phylicia Rashad, Donnell Rawlings, Questlove, Angela Bassett ',
'ABD','Ýngilizce','Animasyon | Macera | Komedi | Aile | Fantezi | Müzik','Müziðe olan tutkusunu yitiren bir müzisyen bedeninden çýkar ve kendini öðrenen bir bebek ruhunun yardýmýyla geri dönüþ yolunu bulmasý gerekir.',
'https://m.media-amazon.com/images/M/MV5BZGE1MDg5M2MtNTkyZS00MTY5LTg1YzUtZTlhZmM1Y2EwNmFmXkEyXkFqcGdeQXVyNjA3OTI0MDc@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Wonder Woman 1984','2020-12-16',151,'Patty Jenkins','Patty Jenkins, Geoff Johns, Dave Callaham','Gal Gadot, Chris Pine, Kristen Wiig, Pedro Pascal, Robin Wright, Connie Nielsen, Lilly Aspell, Amr Waked, Kristoffer Polaha, Natasha Rothwell',
'ABD | Ýngiltere | Ýspanya','Ýngilizce','Aksiyon | Macera | Fantezi','Birinci Dünya Savaþý’nda insanlarla iletiþim kurmaya baþlayan Diana, gizli þekilde Wonder Woman olmaya devam ederken kaybettiði hayatýnýn aþkýnýn da yasýný tutmaya devam ediyor.Diana, yepyeni iki düþmanla karþý karþýya bulur: Max Lord ve The Cheetah.',
'https://m.media-amazon.com/images/M/MV5BNWY2NWE0NWEtZGUwMC00NWMwLTkyNzUtNmIxMmIyYzA0MjNiXkEyXkFqcGdeQXVyMTA2OTQ3MTUy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Tenet','2020-08-26',150,'Christopher Nolan','Christopher Nolan','Robert Pattinson, John David Washington, Elizabeth Debicki, Juhan Ulfsak, Jefferson Hall, Tom Nolan, Andrew Howard, Ivo Uukkivi, Clémence Poésy,Martin Donovan',
'Ýngiltere | ABD','Ýngilizce | Rusça | Ukraynaca | Estonca | Norveççe','Aksiyon | Bilim Kurgu | Gerilim','Tenet, dünyayý büyük bir tehlikeden kurtarmak için savaþan bir kahramanýn hikayesini konu ediyor. Gerçek zamanýn ötesinde bir yerde uluslararasý bir casusluk görevini yerine getirmeye çalýþan kahraman, dünyayý kurtarabilmek için savaþmak zorunda kalýr.',
'https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Jumanji: Level One','2021-01-20',114,'Lance Kawas','Dylan Sides','Heather Fairbanks, Robert Laenen, Justin Mane, Walker Fairbanks, Aaron Matthew Atkisson, Aqeel Ash-Shakoor, Roe Dayzon, Adam DeFilippi, Ammar Nemo, Andrew Fairgrieve',
'ABD','Ýngilizce','Aksiyon | Macera | Aile','Orijinal filmdeki olaylardan önce 1869’da geçer. Nihayet, lanetli oyunun nasýl ortaya çýktýðýný ve Jumanji oynayan ilk insanlarýn maceralarýný ortaya çýkaracak.',
'https://m.media-amazon.com/images/M/MV5BMWI0ZTM3ZmEtNmY2OS00NGFhLWFjYmYtMmNkMjMxNzBiZGIwXkEyXkFqcGdeQXVyMjI1MTU4OTM@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Hamilton','2020-07-03',160,'Thomas Kail','Lin-Manuel Miranda, Ron Chernow','Lin-Manuel Miranda, Phillipa Soo, Leslie Odom Jr., Daveed Diggs, Renée Elise Goldsberry, Jonathan Groff, Chris Jackson, Jasmine Cephas Jones, Okieriete Onaodowan, Anthony Ramos',
'ABD','Ýngilizce','Biyografi | Dram | Tarih | Müzikal','Amerika’nýn en önde gelen kurucu babalarýndan biri ve ilk Hazine Bakaný Alexander Hamilton’un gerçek hayatý. Orijinal Broadway oyuncularýyla Richard Rodgers Theatre dan Broadway de canlý olarak çekildi.',
'https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Bir Kadýnýn Parçalarý','2021-01-07', 126,'Kornél Mundruczó','Kata Wéber','Vanessa Kirby, Shia LaBeouf, Ellen Burstyn, Iliza Shlesinger, Benny Safdie, Sarah Snook, Molly Parker, Steven McCarthy,Tyrone Benskin, Frank Schorpion',
'Kanada | Macaristan | ABD','Ýngilizce','Dram','Genç bir annenin evde doðumu akýl almaz bir trajediyle sona erdiðinde, kaybýnýn yanýnda yaþamayý öðrenen bir kadýnýn bu derin kiþisel öyküsünde sevdikleriyle iliþkilerini kýran bir yýllýk yas yolculuðuna baþlar.',
'https://m.media-amazon.com/images/M/MV5BYWYwM2VlNWItMWYyMC00MDljLWE1ZTUtY2E0YWIxMGE0NjA2XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Buluttaki Gölge', '2021-01-01', 83, 'Roseanne Liang', 'Max Landis, Roseanne Liang', 'Chloë Grace Moretz, Nick Robinson, Beulah Koale, Taylor John Smith, Callan Mulvey, Benedict Wall, Byron Coll, Joe Witkowski, Liam Legge, Asher Bridle',
'Yeni Zellanda | ABD', 'Ýngilizce','Aksiyon | Korku | Savaþ','Pilot Garreta’dan gizli belgeleri, mürettebatýn tamamý erkeklerden oluþan bir savaþ uçaðýnda taþýmasý istenir.Uçuþ sýrasýnda diðer savaþ uçaklarýyla mücadeleye giriþen Garrett,uçaðýn içinde herkesin hayatýný tehlikeye atabilecek kötü bir varlýk keþfeder.',
'https://m.media-amazon.com/images/M/MV5BNWNiNGQyMzUtN2VmMi00NDI2LWI3NGUtMTEwZGQxYzFjZTNjXkEyXkFqcGdeQXVyMTEyNDk3MjY3._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Baba Parasý','2020-01-01',116,'Selçuk Aydemir','Selçuk Aydemir','Ahmet Kural, Murat Cemcir, Seher Devrim Yakut, Rasim Öztekin, Yagmur Tanrisevsin, Özgür Emre Yildirim, Deniz Barut, Giray Altinok, Ayhan Tas, Osman Alkas',
'Türkiye','Türkçe | Ýngilizce','Komedi','Ülkenin en zengin insanýnýn gayri meþru çocuklarý, babalarýnýn ölümü üzerine büyük bir servete konar.Farklý karaktere, kültüre sahip olan kardeþler, kendilerine düþen payý almak için harekete geçtiklerinde beklenmedik bir durumla karþý karþýya kalýr.',
'https://m.media-amazon.com/images/M/MV5BNTE0MTU1NmEtMTFmZS00NzBjLWFiZGMtYTRiN2JjMzg4MDBmXkEyXkFqcGdeQXVyNDg4MjkzNDk@._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Mulan','2020-09-04',115,'Niki Caro','Rick Jaffa, Amanda Silver, Lauren Hynek, Elizabeth Martin','Yifei Liu, Donnie Yen, Li Gong, Jet Li, Jason Scott Lee, Yoson An, Tzi Ma, Rosalind Chao, Pei-Pei Cheng, Xana Tang',
'ABD | Kanada | Hong Kong','Ýngilizce','Aksiyon | Macera | Dram | Aile | Fantezi','Çinli genç bir kadýnýn hasta babasýnýn yerine onun görevini yerine getirmek için erkek kýlýðýna girerek Ýmparatorluk Ordusu’na katýlmasýný ve kimsenin hayal edemeyeceði kadar baþarýlý olup bir efsane haline geliþini anlatýyor.',
'https://m.media-amazon.com/images/M/MV5BZDBiY2RmOGQtN2NhZC00Mjg3LTk5NWUtNzExMGM2OGRmZGUwXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Parazit','2019-11-01',132,'Bong Joon Ho','Bong Joon Ho, Jin-won Han','	Song Kang-Ho, Lee Sun-kyun, Cho Yeo-jeong, Choi Woo-sik, Park So-dam, Lee Jeong-eun, Jang Hye-Jin, Park Myeong-hoon, Jung Ji-so, Jung Hyun-jun',
'Güney Kore','Korece | Ýngilizce','Komedi | Dram | Gerilim','Yoksul bir ailenin zengin bir ailenin evine hizmetçi olarak giriþi etrafýnda sýnýf farklarýný, kapitalizmi ve aile iliþkilerini ele alýyor.Bir tarafta soyla gelen servetin tablosunu sergileyen Park ailesi, diðer tarafta ise fakir Kim ailesi var.',
'https://m.media-amazon.com/images/M/MV5BMTE5MGYwMWUtMWVmYi00MmYyLWI1OTYtNWUwZTZmOTY0MmIxXkEyXkFqcGdeQXVyMTAyOTE2ODg0._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Son Þaka','2020-11-06',94,'Muhammet Erkam Bülbül','Fatih Mutlu','Serdar Gökalp, Ege Kökenli, Gökay Müftüoglu, Perihan Ünlücan, Hikmet Körmükçü, Bülent Alkis, Özer Arslan, Kemal Basar, Osman Dogan',
'Türkiye','Türkçe','Aksiyon | Komedi','Son Þaka, radyo kanalýnda yaptýðý telefon þakalarýyla bilinen Serdar’ýn, Ayþen’e evlilik teklifi sýrasýnda yaptýðý þaka yüzünden kendini affettirmeye çalýþmasý sonrasý yaþananlarý konu ediniyor.',
'https://m.media-amazon.com/images/M/MV5BMTBhODFhNWQtN2Y4NC00ZmRiLTliM2UtNGI2NmMxNTRjODNlXkEyXkFqcGdeQXVyMTIwNDYzMjIz._V1_.jpg');

INSERT INTO Movie (mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Ýki Gözüm Ahmet','2020-11-13',115,'Hakan Gürtop, Gani Savata','Ilker Baris, Gani Savata','Gani Savata, Ozgur Tuzer, Aleyna Solaker, Serdar Orçin, Ruhi Sari, Yelda Reynaud, Metin Yildiz, Ekin Akkas, 	Alev Oraloglu, Esref Bukan',
'Türkiye','Türkçe','Biyografi | Dram | Müzik | Romantik','Türk ikonik sanatçý Ahmet Kaya, drama, çocukluk, hayatý hakkýnda bir biyografi. Bölücü etiketi, halkýn tam ortasýnda mühürlenen kahramanlýðý sona erdirebilir mi?',
'https://m.media-amazon.com/images/M/MV5BOGM1NjFkMmQtOTg5Yy00YzcyLWFlOWYtOTI1NGQ5ZmFjZmRmXkEyXkFqcGdeQXVyMTExNDEyODU3._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('The Marksman','2021-01-21',108,'Robert Lorenz','Chris Charles, Danny Kravitz, Robert Lorenz','Jacob Perez, Katheryn Winnick, Liam Neeson, Teresa Ruiz, Harry Maldonado, Alfredo Quiroz, Sean A. Rosales, Jose Vasquez, Amber Midthunder, Jared Corum',
'ABD','English','Aksiyon | Gerilim','Arizona sýnýrýndaki bir çiftlik sahibi, kendisini ABD’ye götüren kartel suikastçýlarýndan çaresizce kaçan Meksikalý genç bir çocuðun beklenmedik savunucusu haline geliyor.',
'https://m.media-amazon.com/images/M/MV5BODdlNThhMTUtNmU1OS00ZjM3LWE1ZjMtOWViN2RhYWRiZTg5XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Aþk Seni Bulur','2020-11-06',90,'Hakan Yücel','Hakan Yücel','Gökhan Daldik, Fýrat Kaya, Aslý Þimsek, Tolga Öz, Þevki Özcan',
'Türkiye','Türkçe','Romantik | Komedi','Kerem, çantacý Haydar’ýn oðludur, çapký Kerem fizik mühendisi olmakla birlikte iþsizdir, iþ aramak yerine kýz arkadaþlarýnýn parasýný yiyen tiptir.Tesadüfler sonucu mahallesine yeni taþýnan Melek ile karþýlaþýr.Aþkýn kendisini bulduðu iþte o an fark eder.',
'https://m.media-amazon.com/images/M/MV5BY2NlNjgzZTMtYThjOC00OTJiLWE4MjYtM2E4M2Y5NmY4NTVhXkEyXkFqcGdeQXVyMTI0MjU5MzUw._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Raya ve Son Ejderha','2021-03-05',90,'Don Hall, Carlos López Estrada, Paul Briggs, John Ripa','Adele Lim & Qui Nguyen','Kelly Marie Tran, Awkwafina',
'ABD','Ýngilizce','Animasyon | Aksiyon | Macera | Komedi | Aile | Fantezi | Müzikal','Eski bir medeniyetin yaþadýðý, yeniden tasarlanmýþ bir Dünya olan Kumandra olarak bilinen bir diyarda, Raya adlý bir savaþçý son ejderhayý bulmaya kararlýdýr.',
'https://m.media-amazon.com/images/M/MV5BN2UxNmIxYmItMDBlMi00MzRiLWE0MzEtNjBiOTA0MWE0NjZmXkEyXkFqcGdeQXVyNjU1NDM1MjQ@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Azap','2021-03-05',90,'Natalie Erika James','Natalie Erika James, Christian White','Robyn Nevin, Emily Mortimer, Bella Heathcote, Steve Rodgers, Chris Bunton, Robin Northover, Catherine Glavicic, Christina O Neill, John Browning, Jeremy Stanford',
'Avustralya | ABD','Ýngilizce','Dram | Korku | Gizem | Gerilim','Edna, aniden ortadan kaybolur.Kay annesinin kaybolduðunu öðrenince kýzýyla birlikte annesinin yaþadýðý eve gider.Birkaç günün ardýndan Edna ortaya çýkar.Fakat Kay ve Sam, evde sinsi bir varlýðýn Edna’nýn kontrolünü ele geçirmeye çalýþtýðýný keþfeder.',
'https://m.media-amazon.com/images/M/MV5BOGY1MGM2ZjItZDJjMC00ZGM0LTg2MDctNmExNzcyYTcwMjM3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Ölmek Ýçin Zaman Yok','2021-04-02',163,'Cary Joji Fukunaga','Neal Purvis, Robert Wade, Cary Joji Fukunaga, Phoebe Waller-Bridge, Neal Purvis, Robert Wade, Cary Joji Fukunaga','Ana de Armas, Daniel Craig, Léa Seydoux, Ralph Fiennes, Rami Malek, Christoph Waltz, Naomie Harris, Billy Magnussen, Ben Whishaw, Jeffrey Wright',
'Ýngiltere | ABD','Ýngilizce','Aksiyon | Macera | Gerilim','James Bond aktif hizmetten ayrýldý. CIA’den eski bir arkadaþ olan Felix Leiter, yardým istemek için ortaya çýktýðýnda, Bond’u tehlikeli yeni teknolojiyle donanmýþ gizemli bir kötü adamýn izine götürdüðünde, huzuru kýsa sürer.',
'https://m.media-amazon.com/images/M/MV5BYmQ3MTY4NDUtOWExZi00OGQxLTgzNmQtODI1MTFkZjMyMDY0XkEyXkFqcGdeQXVyODk2NDQ3MTA@._V1_.jpg');

INSERT INTO Movie(mName, mReleaseDate, mTime, mDirectors, mWritters, mCast, mCountry, mLanguage, mGenre, mInformation, mImageUrl) 
values ('Ýnsanlar Ýkiye Ayrýlýr','2020-10-07',101,'Tunç Þahin','Tunç Þahin','Burcu Biricik, Pýnar Deniz, Aras Aydýn, Basak Dasman, Erdem Akakçe, Nezaket Erden, Gökay Müftüoglu, Sabahattin Yakut, Esref Seyitoglu, Veli Kiliç',
'Türkiye','Türkçe','Dram','Borç tahsil eden bir þirketin çalýþanlarýnýn hikayesini konu ediyor. Bir þirket, bankalarýn çeþitli nedenlerle peþine düþmediði borçlarý satýn alýr. Borçlarýn peþine düþen þirket, her ne pahasýna olursa olsun borçlarý tahsil etmeye kararlýdýr.',
'https://m.media-amazon.com/images/M/MV5BNDg0OGUyZTEtZTZmNC00N2JkLWI5YTMtMGUzMDE2OTA5NGFmXkEyXkFqcGdeQXVyMTIwNDYzMjIz._V1_.jpg');
---

--4
-----------------------------------------------------------------------------------------------------------------------’
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --optimum
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.',
'Salon 1',15,9,7);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,7);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,7);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --forum bornova
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,6,1);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,6,1);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,6,1);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --izmir park
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,2);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,8,2);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,2);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --karþýyaka hill
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,3);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,8,3);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle dünyanýn ilk çok perdeli sinema teknolojisi ScreenX, sinemaseverlerle buluþuyor.Üç perdeden oluþan bu yaratýcý görsel fikir, dünyada sadece ScreenX’e özel.','Salon 3',10,9,3);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --kipa
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,4);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,4);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,4);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --konak pier
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,5);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,5);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,5);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --mavibahçe
values('Imax','IMAX salonlarýnýn eþsiz geometrik yapýsý; gerçek hayattakinden daha büyük kristal netliðindeki 3 boyutlu görüntüler ve IMAX’e özel dijital ses sistemi ile birleþerek kendini adeta filmin içinde hissetmeni saðlar.',
'Salon 1',20,9,6);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,6);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,6);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --pointbornova
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,6,8);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,7,8);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlarýnýn eþsiz geometrik yapýsý; gerçek hayattakinden daha büyük kristal netliðindeki 3 boyutlu görüntüler ve IMAX’e özel dijital ses sistemi ile birleþerek kendini adeta filmin içinde hissetmeni saðlar.',
'Salon 3',15,8,8);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --akbatý
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,8,17);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,17);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,17);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --aqua florya
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn',
'Salon 1',15,8,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,8,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,18);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle çok perdeli sinema teknolojisi ScreenX, sinemaseverlerle buluþuyor.','Salon 4',10,8,18);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --avlu 34
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn',
'Salon 1',15,9,19);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,19);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,19);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --axis
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,7,20);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,20);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,20);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --cevahir
values('Imax','IMAX salonlarýnýn eþsiz geometrik yapýsý; gerçek hayattakinden daha büyük kristal netliðindeki 3 boyutlu görüntüler ve IMAX’e özel dijital ses sistemi ile birleþerek kendini adeta filmin içinde hissetmeni saðlar.',
'Salon 1',10,8,21);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,21);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,6,21);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --citys niþantaþý
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,6,22);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,22);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,22);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --forum istanbul
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,23);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,23);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,23);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --istinye park
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,8,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlarýnýn eþsiz geometrik yapýsý; gerçek hayattakinden daha büyük kristal netliðindeki 3 boyutlu görüntüler ve IMAX’e özel dijital ses sistemi ile birleþerek kendini adeta filmin içinde hissetmeni saðlar.','Salon 2',10,9,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn','Salon 3',15,8,24);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 4',20,8,24);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --kanyon
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,8,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,25);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle çok perdeli sinema teknolojisi ScreenX, sinemaseverlerle buluþuyor.','Salon 4',10,9,25);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --vadi istanbul
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,9,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Imax','IMAX salonlarýnýn eþsiz geometrik yapýsý; gerçek hayattakinden daha büyük kristal netliðindeki 3 boyutlu görüntüler ve IMAX’e özel dijital ses sistemi ile birleþerek kendini adeta filmin içinde hissetmeni saðlar.','Salon 3',10,9,26);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('ScreenX','270 derece perdesiyle çok perdeli sinema teknolojisi ScreenX, sinemaseverlerle buluþuyor.','Salon 4',10,9,26);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --emaar
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,8,27);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,27);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,27);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --maltepe pi
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,6,28);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn','Salon 2',15,8,28);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('4DX','Hareket, titreþim, su, ýþýk efektleri, koku ve diðer unsurlarý kullanarak sinema izleyicisini gerçek anlamda filme dahil eden bir deneyim sunuyor.','Salon 3',20,6,28);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id)--watergarden 
values('ScreenX','270 derece perdesiyle çok perdeli sinema teknolojisi ScreenX, sinemaseverlerle buluþuyor.','Salon 1',10,9,29);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,8,29);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,6,29);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --ankamall
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,30);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,30);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,30);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --antares
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,8,31);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,31);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,31);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --cepa
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,32);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,32);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,32);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --next level
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 1',15,9,33);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.','Salon 2',15,9,33);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,33);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --atakule
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,34);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn',
'Salon 2',20,9,34);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,34);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --gordion
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,6,35);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,35);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,6,35);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --panora
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,36);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn',
'Salon 2',20,8,36);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,6,36);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --polatlý kartal
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,37);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,37);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,37);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --antalya migros
values('Gold Class','Geniþ ve yatabilen koltuklarýyla bambaþka bir konfor sunan Gold Class, sinemaseverleri bekliyor. Dileyen misafirlerimiz için telefon þarj ünitesi bulunan salondaki rahat koltuklar konforda sýnýrý bir üst seviyeye taþýyor.',
'Salon 1',15,8,38);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,8,38);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,38);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --manavgat
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,7,39);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 2',20,7,39);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,7,39);

INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) --markantalya
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 1',20,8,40);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Premium Cinema','Sinemaseverlere deri koltuklarda konforlu ve rahat bir sinema deneyimi sunan Premium Cinema ile filmlerin keyfini çýkarýn',
'Salon 2',20,9,40);
INSERT INTO Theatre(tType, tInformation, tName, tTotalSeat, tRating, c_id) 
values('Standart','Konforlu koltuklar ile filmlerin keyfini doyasýna çýkarýn','Salon 3',20,8,40);

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

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --bir kadýnýn parçalarý için
values('10:00:00.0000000','12:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('13:00:00.0000000','15:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('14:00:00.0000000','16:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('17:00:00.0000000','19:06:00.0000000',5);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('20:00:00.0000000','22:06:00.0000000',5);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --buluttaki gölge için 
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

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --Jumanji: Level One için
values('13:00:00.0000000','14:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('16:00:00.0000000','17:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('19:00:00.0000000','20:54:00.0000000',12);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:54:00.0000000',12);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --soul için
values('13:00:00.0000000','14:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('17:00:00.0000000','18:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('21:00:00.0000000','22:40:00.0000000',1);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('23:00:00.0000000','00:40:00.0000000',1);;

INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  --wonder woman için
values('10:00:00.0000000','12:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('13:00:00.0000000','15:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('17:00:00.0000000','19:31:00.0000000',2);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id)  
values('21:00:00.0000000','23:31:00.0000000',2);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --iki gözüm Ahmet için
values('12:00:00.0000000','13:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','19:55:00.0000000',11);
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:55:00.0000000',11);

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --marksman için
values('12:00:00.0000000','13:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('18:00:00.0000000','19:48:00.0000000',13); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('21:00:00.0000000','22:48:00.0000000',13); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --aþk seni bulur için
values('11:00:00.0000000','12:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('15:00:00.0000000','16:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('17:00:00.0000000','18:30:00.0000000',14); 
INSERT INTO Seans (seansStartTime, seansEndTime, m_id) 
values('20:00:00.0000000','21:30:00.0000000',14); 

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --raya ve son ejderha için
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

INSERT INTO Seans (seansStartTime, seansEndTime, m_id) --ölmek için zaman yok için
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
values('Baþka bir Pixar klasiði olan Pete Docter, baþka bir Pixar klasiðini masaya getirebiliyor. Bu film, Pixar ýn filminin olmasý gereken standartlara ulaþýyor ve kesinlikle 2021 in en iyi animasyon filmi Oscar ýný kazanacak.',1,1);

INSERT INTO Comments (comComment, m_id, u_id) 
values('Pixar filmlerinin çoðu gibi inanýlmaz derecede yaratýcý ve en büyük filmleri gibi þiirsel.Animasyonu, görüntüleri, dünyalarý, karakterleri, kavramlarý yaratmayý öylesine karmaþýk ve yaratýcýdýr ki, genellikle biçimlerini yalnýzca zihinlerde bulabilir.',1,3);

INSERT INTO Comments (comComment, m_id, u_id) 
values('Çok uzun soluklu ve oldukça sýrýlsýklam, kendimi oldukça sýkýlmýþ buldum. Bu filmin ne olmaya çalýþtýðýndan pek emin deðilim, belki birkaç aksiyon sahnesi olan bir drama aþk hikayesi. Hayal kýrýklýðýna uðradým.',2,2);

INSERT INTO Comments (comComment, m_id, u_id) 
values('Ýlk filmi çok sevdim ve eminim ki devam filminin her þeyi baþka bir düzeye taþýdýðýný söyleyebilirim! Pedro Pascal ve Kristen Wiig onu Maxwell Lord ve Cheetah olarak kesinlikle öldürdüler.',2,3);
-------------tenet
INSERT INTO Comments (comComment, m_id, u_id) 
values('Aksiyon sahnelerin çok olmasý filmi takip etmeyi kolay hale getirmeye çalýþsa da filmi tam anlamýyla anlamak için ikinci kez izlenmesi gerekiyor. Diðer beyin yakan filmler en sonunda bir þekilde kendini açýklasa da bu film tamamen seyirciye býrakýlýyor.',3,12);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Sinema salonunda olduðunuzu unutmak, ben neredeyimi aklýnýza dahi getirmek istemiyorsanýz adres zaren Nolan dý. Tenet de bu hususta tam aderee teslim iþ olmuþ. Enfes!',3,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Çok beðendim. Dede Paradoksu sahnesinde filmdeki olup biteni dahada iyi anlýyorsunuz. Klasik NOLAN filmi. Farklý bir kafasý var bu adamýn. Beyin yakar.',3,28);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Müzik ve ses aksiyon güzeldi fakat bi yerlerde devreleriniz yanabilir. Anlaþýlmasý zor fakat güzel bir filmdi.',3,35);
-------------jumanji
INSERT INTO Comments (comComment, m_id, u_id) 
values('15 Kiþilik öðrenci grubu ile izleyince çocuklara yönelik film olduðunu anladým. Ama yinede eðlenceliydi. Dwayne Johnson filmin dominant oyuncusuydu. Karen Gillan’ýn olduðu sahneler harikaydý. Robin Williams’ýn oynadýðý filmi aratmadý.',4,29);
INSERT INTO Comments (comComment, m_id, u_id) 
values('harika bir film.. çok eðlenceli, çok güzel bir film.. bir saniye bile sýkýlmadým izlerken.. ',4,16);
INSERT INTO Comments (comComment, m_id, u_id) 
values('1990 larda yapýlan filmin devamý niteliðinde yapmýþlar. 90 lý yýllarýn iyi filmini kullanýlarak eski nesil izleyici ve hemde yeni nesil izleyiciyi ekrana çekmek istemiþler. Güzel görsel efektleri olan ve eðlendirici ve güldürücü bir film.',4,35);
INSERT INTO Comments (comComment, m_id, u_id) 
values('konusu, karakterleri, akýcýlýðý, macerasý, son zamanlarda izlediðim en güzel filmlerden birisiydi tavsiye ederim',4,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('daha çok çocuklara hitap eden, seyircisine pek bir þey veremeyen oyalayýcý bir yapým...',4,31);
INSERT INTO Comments (comComment, m_id, u_id) 
values('bu siteyi uzun zamandýr takip ediyorum ama üye olmamýþtým sýrf bu filme yorum yapmak için üye oldum düþünün artýk ne kadar beðendiðimi :)',4,19);
-------------baba parasý
INSERT INTO Comments (comComment, m_id, u_id) 
values('Beklentilerin çok altýnda bir film olmuþ. Kesinlikle tavsiye etmiyorum zamanýnýzý boþuna harcamayýn 5 kiþi gittik piþman olduk',8,22);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Filmi izlerken resmen uyudum espri yapacaðým diye küfürler havada uçuþuyordu düðün dernek gibi çalýþmalardan sonra hiç bu film olmamýþ',8,1);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Genel olarak güzel bir filmdi. Filme gitmeden önce yorumlarý okudum çok kötüydü lakin ben yorumlara göre filme gitmeyen baþkalarýnýn kafasýyla yaþayan bir birey olmadýðým için gidip görmek istedim.',8,13);
-------------mulan
INSERT INTO Comments (comComment, m_id, u_id) 
values('Mulan film beðendim ve çok anlamlý anlam veriyor bazen düþünüyom bu senede degilde o senede yaþamayý tercih ederdim diyom film mi yapan kiþilerin emeklerine saðlýk',9,3);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Oldukça etkili bir þekilde baþlýyor fakat sýradan bir þekilde devam ederek maalesef kötü bir þekilde bitiyor. Gereksiz bir gerçekçilik kaygýsýyla çekilen filmin bu sebeple giderek düþtüðünü düþünüyorum. Ortalama bir fantastik film.',9,26);
-------------parazit
INSERT INTO Comments (comComment, m_id, u_id) 
values('Oscay adaylýklarýnda kazanmasýnda kesinlikle haklý olduðunu düþündüðüm film. Genelde Oscar alan filmlerde hep bir sanat kaygýsý ve sürekli mesaj verme isteði içerir. Ancak bu film, gerçek bir hikayeyi ve yaþamý bizlere sunuyor. ',10,27);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Bu filmi beðenip,beðenmemek zevk meselesi deðil,akýl meselesidir. Aldýðý ödülleri sonuna kadar hak eden bir film.',10,38);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Muhteþem. Baþtan aþaðý bir baþyapýt. Hem muhteþem bir komedi, hem muhteþem bir gerilim ve hepsinden daha çok muhteþem bir drama. Filmin ikinci yarýsýnda filmin havasýnýn birden deðiþmesi... tek kelimeyle dahiyane.',10,9);
INSERT INTO Comments (comComment, m_id, u_id) 
values('son zamanlarda izlediðim en iyi film diyebilirim. basit bir konudan bu kadar iyi film yapmak maharet ister. oyunculuklar mükemmele yakýn. herkesin izlemesi gereken müthiþ bir film.',10,11);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Gerçekten çok kaliteli bir film olmuþ. Ýlk baþta sýkýcý gelecekmiþ gibi oluyor ama ondan sonra filme kendinizi kaptýrýp gidiyorsunuz. KESÝNLÝKLE izlemelisiniz.',10,15);
INSERT INTO Comments (comComment, m_id, u_id) 
values('çok iyi film diyemesem de sýnýfsal çeliþkileri ve bu minvalde para söz konusu olunca insanýn içindeki canavarý nasýl ortaya çýktýðýný,nasýl acýmasýzlaþabildiðini ortaya döken bir film',10,3);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Çoðunluk gibi ben de filmi çok beðendim film bittiðinde bayaðý etkilenmiþtim Bence herkesin kesinlikle izlemesi gereken bir film insana birçok duyguyu ayný anda yaþatýyor ilk baþta eðlenceli ve komik baþlayan film maalesef bir dramla son buluyor',10,33);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Sistemin iflasýna doðru, gemi artýlk su alýyor, 3.mevki sel altýnda. Ýngilizce eðitimi ile baþlayan iliþkiler, kapitalizmin baþlangýç noktasýna gönderme.',10,36);
-------------son þaka
INSERT INTO Comments (comComment, m_id, u_id) 
values('ince espiri öyle komedi malesef yok. Sýrf serdar gökalp var diye gittik izlerken sýkýlýrsýnýz. Ýlk filmi buna veriyorum daha baþarýlý olursun inþallah',11,11);
-------------iki gözüm ahmet
INSERT INTO Comments (comComment, m_id, u_id) 
values('Ahmet Kaya’nýn hayatý nasýl anlatýlmaz sorusuna verilebilecek cevap niteliðinde film. Benim bile üstünkörü bilgimle bu sanatçý için daha iyi bir film çekilebilir, filme çok çok daha iyi bir son eklenebilirdi. Yetersiz.',12,13);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Filmin yeterli ve yüksek bir bütçe ile çekilmediði aþikar. Oldukça profesyonel oyunculuklar, mekan kurgusu gibi öðeler çok da filmde bulunmuyor. Ancak filmin baþrolündeki oyuncu Ahmet Kaya’ya oldukça benzerdiði için filme inandýrýcýlýk katmaktadýr.',12,17);
INSERT INTO Comments (comComment, m_id, u_id) 
values('Ben Ahmet Kaya hayraný olarak hayal kýrýklýðýna uðradým.2 dk çocukluk gösterdiniz geri kalan linç yediði gündü.Ahmet Kaya gibi birinin hayatý bu kadar es geçilemezdi. Büyük bir projeydi ama batýrmýþsýnýz.Yine de emeðinize saðlýk.',12,35);

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





