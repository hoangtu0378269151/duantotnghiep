create database luckyshop;
use luckyshop;

CREATE TABLE Accounts(
	Username nvarchar(50) NOT NULL,
	Password nvarchar(50) NOT NULL,
	Fullname nvarchar(50),
	Email nvarchar(50),
	Phone nvarchar(20),
	Photo varchar(50),
	Adress nvarchar(255),
	CONSTRAINT PK_User PRIMARY KEY (Username));

	CREATE TABLE Authorities(
	 Id int not null AUTO_INCREMENT,
	Username nvarchar(50) NOT NULL,
	RoleId nvarchar(10) NOT NULL,
    CONSTRAINT PK_UserRoles PRIMARY KEY (Id) );

 CREATE TABLE Categories(
	Id char(4) NOT NULL,
	Name nvarchar(50) NOT NULL,
    CONSTRAINT PK_Categories PRIMARY KEY (Id) );

  CREATE TABLE CateSmalls(
	 Id int not null AUTO_INCREMENT,
	Name nvarchar(50) NOT NULL,
	CategoryId char(4) NOT NULL,
    CONSTRAINT PK_CateSmall PRIMARY KEY (Id));
 
CREATE TABLE OrderDetails(
	Id bigint not null AUTO_INCREMENT,
	OrderId bigint NOT NULL,
	Name nvarchar(200) NOT NULL,
	Height nvarchar(20) NOT NULL,
	Weight nvarchar(20) NOT NULL,
	Size nvarchar(20) NOT NULL,
	Image nvarchar(50) NOT NULL,
	Color nvarchar(50) NOT NULL,
	Price float NOT NULL,
	Quantity int not null,
	ProductdetailId int NOT NULL,
    CONSTRAINT PK_OrderDetails PRIMARY KEY (Id));

	
CREATE TABLE Orders(
	Id bigint not null AUTO_INCREMENT,
	Username nvarchar(50) not null,
	Fullname nvarchar(50) NOT NULL,
	Method nvarchar(20) NOT NULL,
	CreateDate datetime NOT NULL,
	Address nvarchar(255) NOT NULL,
	Phone nvarchar(20) NOT NULL,
	Total nvarchar(100) NOT NULL,
	Status nvarchar(100) NOT NULL,
    CONSTRAINT PK_Orders PRIMARY KEY (Id));

 CREATE TABLE Products(
	Id int not null AUTO_INCREMENT,
	Name nvarchar(255) NOT NULL,
	Price float NOT NULL,
	Image nvarchar(50)NOT NULL,
	CreateDate date NOT NULL,
	Available bit NOT NULL,
	CategoryId int NOT NULL,
	Company nvarchar(50) NOT NULL,
	Status bit NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (Id));

 CREATE TABLE Roles(
	Id nvarchar(10) NOT NULL,
	Name nvarchar(50) NOT NULL,
    CONSTRAINT PK_Roles PRIMARY KEY (Id));

 CREATE TABLE Promotions(
	Id char(10) NOT NULL,
	ProductId int NOT NULL,
	Description nvarchar(255) NOT NULL,
	DateStart Datetime NOT NULL,
	DateEnd Datetime NOT NULL,
    CONSTRAINT PK_Sale PRIMARY KEY (Id));


	CREATE TABLE ProductDetails(
	Id int not null AUTO_INCREMENT,
	ProductId int not null,
	height nvarchar(20) not null,
	weight nvarchar(20) not null,
	Color nvarchar(50) NOT NULL,
	Size nvarchar(20) NOT NULL,
	Quantity int NOT NULL,
	 CONSTRAINT PK_Sanpham_Details PRIMARY KEY (Id));

	CREATE TABLE Images(
	Id int not null AUTO_INCREMENT,
	Image nvarchar(50) NOT NULL,
	ProductId int NOT NULL,
	ProductDetailid int NOT NULL,
    CONSTRAINT PK_Image PRIMARY KEY (Id));
	
	CREATE TABLE Descriptions(
	Id int not null AUTO_INCREMENT,
	Text nvarchar(4000) NOT NULL,
	ProductId int NOT NULL,
    CONSTRAINT PK_Description PRIMARY KEY (Id));

	/*-------Accounts--------*/

	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('hoangtu','2001',N'Nguy???n Ho??ng T??','nguyenhoangtu13062001@gmail.com','037826915','tu.jpg',N'S??c Tr??ng');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('nhutbao','2001',N'L?? Nh???t B???o','nhutbao123456789@gmail.com','0853244830','bao.jpg',N'B???c Li??u');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('minhtuong','2001',N'Nguy???n Minh T?????ng','nguyentuongtnct2001@gmail.com','0865093320','tuong.jpg',N'C???n Th??');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('nghiahuynh','2001',N'Hu???nh Tr???ng Ngh??a','nghiahtpc01295@fpt.edu.vn','0123456789','nghia.jpg',N'B???c Li??u');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('duysorry','nhinhi',N'Phan Kh??nh Duy','pkduy003@gmail.com','0858343798','duy.jpg',N'D??n ch??i c??i n?????c');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('school','2001',N'L?? Nh???t Tr?????ng','pkduy003@gmail.com','0123456789','truong.jpg',N'?????ng Th??p');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('hoahoa','123',N'Hoa Hoa','hoa@gmail.com','0123456789','hoa.jpg',N'C???n Th??');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('micro','123',N'Hu???nh V??n Mic','micro@gmail.com','0123456789','mic.jpg',N'C???n Th??');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('jerry','123',N'L?? Th??? T??','chuot@gmail.com','0123456789','chuot.jpg',N'C???n Th??');
	
	
	
	/*-------Roles--------*/
	INSERT INTO Roles(Id,Name) VALUES('ADMIN','Qu???n l??');
	INSERT INTO Roles(Id,Name) VALUES('STAFF','Nh??n vi??n');
	INSERT INTO Roles(Id,Name) VALUES('USER','Ng?????i d??ng');
/*-------Authorities--------*/
	
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('10','hoangtu','ADMIN');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('11','nhutbao','STAFF');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('12','minhtuong','STAFF');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('13','nghiahuynh','STAFF');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('14','duysorry','STAFF');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('15','school','STAFF');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('16','hoahoa','USER');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('17','micro','USER');
	INSERT INTO Authorities(Id,Username,RoleId) VALUES ('18','jerry','USER');
	/*-------Categories--------*/
	INSERT INTO Categories(Id,Name) VALUES ('100',N'Nam');
	INSERT INTO Categories(Id,Name) VALUES ('101',N'N???');

	/*-------CateSmall--------*/

	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('500',N'Gi??y Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('501',N'Qu???n Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('502',N'??o Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('503',N'D??y N???t','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('504',N'Balo','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('505',N'D??p','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('506',N'N??n','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('507',N'V??y','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('508',N'Qu???n N???','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('509',N'??o N???','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('510',N'T??i X??ch','101');
	

	/*-------Products--------*/
	
	/*Gi???y*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2001',N'Adidas Yeezy Boost 350 V2 Bred (CP9652)',10350000,'giay2001-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2002',N'Adidas Ultraboost 20 Shoes - Dash Grey Five (EG0694)',5000000,'giay2002-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2003',N'Adidas Stan Smith Shoes - Silver Metallic (EF4913)',1500000,'giay2003-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2004',N'Adidas Falcon Shoes - Black (B28129)',2150000,'giay2004-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2005',N'Nike Air Force 1/1 Removable Patches White (DB2812-100)',2650000,'giay2005-1.png',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2006',N'Jordan 1 Mid Peach Mocha (DH0210-100)',6550000,'giay2006-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2007',N'Jordan 1 Mid Black Chile Red White (554724-075)',5550000,'giay2007-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2008',N'Nike Air Max 90 Maroon (CT4352-104)',2350000,'giay2008-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2009',N'Puma Thunder Spectra Triple White (370682-01)',1850000,'giay2009-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Puma',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2010',N'Puma Smash v2 Leather (365208-01/365215-01)',1850000,'giay20010-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Puma',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2011',N'Puma Thunder Rive Gauche Peach/Beige (369453-01)',1950000,'giay20011-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Puma',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2012',N'Puma Smash Vulc Mule - Black (309680-02)',1490000,'giay20012-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Puma',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2013',N'MLB Playball Origin NY Black (32SHP1111-50L)',1590000,'giay20013-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2014',N'MLB BIG BALL CHUNKY MONOGRAM LT NEW YORK | 32SHCM011-50I |',2650000,'giay20014-1.png',CAST(N'2021-09-25' AS Date),1,'500',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2015',N'MLB BIG BALL CHUNKY BOSTON | 32SHC2011 - 50 |',1950000,'giay20015-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2016',N'MLB BIG BALL CHUNKY LA DODGERS |32shc1011-07w|',1950000,'giay20016-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2017',N'Jordan 1 Retro High Tie Dye (CD0461-100)',7950000,'giay20017-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2018',N'Jordan 1 Mid SE USA (852542-104)',4250000,'giay20018-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2019',N'Jordan 1 Retro High CO Japan Neutral Grey (575441-029)',7950000,'giay20019-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2020',N'Jordan 1 Low Laser Orange (CZ4776-107)',4850000,'giay20020-1.jpg',CAST(N'2021-09-25' AS Date),1,'500',N'Nike',0);
	/*Qu???n Nam*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2021',N'OWN THE RUN SHORTS',570000,'quan20021-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2022',N'ESSENTIALS FLEECE 3-STRIPES SHORTS',796000,'quan20022-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2023',N'TIRO 21 TRACK PANTS',102400,'quan20023-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2029',N'Adidas Baseball Short (DU9542)',1290000,'quan20029-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'HyperDenim',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2030',N'Adidas Must-haves Plain Pants (DT9910)',1250000,'quan20030-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2031',N'GRAPHICS CAMO SWEAT PANTS',1290000,'quan20031-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2032',N'Replay qu???n jeans nam MC900-50C M71 009',11090000,'quan20032-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Replay',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2033',N'QU???N CH??? O PREMIUM FUTURE ICONS ADIDAS SPORTSWEAR',2000000,'quan20033-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2035',N'QU???N N??M T??I GO-TO',2000000,'quan20035-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2036',N'QU???N CO GI??N B???N CHI???U S??U T??I AEROREADY',2700000,'quan20036-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2037',N'TRACK PANTS COLORBLOCK ADIDAS SPRT',1900000,'quan20037-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2038',N'QU???N 3/4 FB HYPE',1300000,'quan20038-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2039',N'QU???N GRAPHIC ADIDAS SPORTSWEAR',1400000,'quan20039-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2040',N'TRACK PANTS ADICOLOR',2100000,'quan20040-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2034',N'QU???N 3 S???C ???NG C??N G???U TH???NG SINGL4EJERSEY ESSENTIALS',1000000,'quan20034-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	/*Balo*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5000',N'Balo Adidas Originals Tongue Lab Backpack AB3909',299000,'balo-5000-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5001',N'BALO Adidas Originals Essential Backpack Black',299000,'balo-5001-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5002',N'Balo Adidas 3-Stripes Backpack',350.000,'balo-5002-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5003',N'BALO Adidas Originals Essential Backpack Black',450000,'balo-5003-1.jpg',CAST(N'2021-09-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5004',N'Balo Adidas Multicolor',299000,'balo-5004-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5005',N'BALO DU L???CH ADIDAS OPS',650000,'balo-5005-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5006',N'Balo Adidas Originals Classic Backpack',350000,'balo-5006-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5007',N'Balo laptop ch???ng n?????c Arctic Hunter',549000,'balo-5007-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5008',N'BALO Laptop ARCTIC HUNTER Men Casual',580.000,'balo-5008-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5009',N'Balo ARCTIC HUNTER AUTUMN 2019',650000,'balo-5009-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5010',N'Balo Arctic HunTer USB hot TREND 2019',750000,'balo-5010-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5011',N'Balo Chi???n Thu???t 5.11 All Hazards Nitro',950000,'balo-5011-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5012',N'Balo 511 all Hazards Prime',950000,'balo-5012-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5013',N'Ba l?? ph?????t 511 rush 24 multicam c???c hi???m',849000,'balo-5013-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5014',N'Balo du l???ch ph?????t 5.11 Tactical Rush 12',650000,'balo-5014-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5015',N'Balo du l???ch leo n??i Deuter Futura',1390000,'balo-5015-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5016',N'Balo Du L???ch Deuter Futura',950000,'balo-5016-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5017',N'Ba l?? leo n??i DEUTER FUTURA',950000,'balo-5017-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5018',N'Ba l?? du l???ch ph?????t DEUTER FUTURA',1190000,'balo-5018-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5019',N'Balo H???c Sinh Th???i trang MOYYI',480000,'balo-5019-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5020',N'Balo Laptop Th???i Trang Cao C???p',1100000,'balo-5020-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5021',N'Balo du l???ch ??? laptop th???i trang ??a n??ng',650000,'balo-5021-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5022',N'Balo T??i du l???ch th??? thao ??a n??ng',720000,'balo-5022-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5023',N'Balo Laptop Manhattan Portage BLACK',550000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5024',N'Balo Sakos SNAPPY SI??U NH??? ??? CH???NG G??',490000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5025',N'Balo Sakos SIMPLE SI??U NH??? ??? CH???NG G??',490000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5026',N'Balo H???c Sinh Sakos Lightly Tiger Ch???ng g?? si??u nh???',660000,'balo-5023-1.jpg',CAST(N'2021-09-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5027',N'Balo laptop doanh nh??n',1820000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5028',N'Balo laptop SAKOS ALMA i17',1370000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	/*??o Nam*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1001',N'??o Thun C??? Tr??n ?????c Bi???t Hand Drawn M10',185000,'1001.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1002',N'??o Thun C??? Tr??n Y Nguy??n B???n',185000,'1003.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1003',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? Kh???ng Long',185000,'1005.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1004',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? M12',185000,'1008.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1005',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? SG M10',185000,'1010.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1006',N'??o Thun 3 L??? Th??? Thao M4 ',185000,'1012.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1007',N'??o Thun 3 L??? ?????c Bi???t Typography M5',185000,'1016.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1008',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? Darkness Hunters Ver4',185000,'1018.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1009',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? M14',185000,'1022.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1010',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? M15',185000,'1024.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1011',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? Kh???ng Long M6',185000,'1026.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1012',N'??o Thun C??? Tr??n Y Nguy??n B???n 18+ M12',185000,'1028.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1013',N'??o Thun C??? Tr??n 12VAHDT V??n Hi???n Chi Bang Ver10',185000,'1030.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1014',N'??o Thun C??? Tr??n ?????c Bi???t Logo 2010 M6',185000,'1032.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1015',N'??o Thun C??? Tr??n Thi??n Nhi??n K?? V?? SG M5',185000,'1034.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1016',N'??o Thun C??? Tr??n 12VAHDT V??n Hi???n Chi Bang Ver8',185000,'1036.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1017',N'??o Thun C??? Tr??n Y Nguy??n B???n 18+ M7',185000,'1038.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	/*D??y n???t*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4000',N'D??y n???t da c?? s???u Khatoco',1600000,'4000.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4001',N'D??y th???t l??ng nam da th???t ELLY HOMME - EDM1',1499000,'4001.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4002',N'D??y th???t l??ng nam da th???t ELLY HOMME - EDM2',1499000,'4002.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4003',N'D??y th???t l??ng nam da th???t ELLY HOMME - EDM4',899000,'4003.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4004',N'D??y th???t l??ng nam da th???t ELLY HOMME - EDM5',899000,'4004.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4005',N'D??y th???t l??ng nam da th???t ELLY HOMME - EDM6',899000,'4005.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4006',N'PKTT D??y N???t ????n Gi???n D03',285000,'4006.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4007',N'PKTT D??y N???t ????n Gi???n M12',285000,'4007.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4008',N'PKTT D??y N???t ????n Gi???n D14',285000,'4008.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4009',N'PKTT D??y N???t ????n Gi???n M15',285000,'4009.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	/*D??p*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4100',N'D??p nam MWC NADE - 7684',195000,'4100.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4101',N'D??p nam MWC NADE - 7682',195000,'4101.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4102',N'D??p nam MWC NADE - 7681',150000,'4102.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4103',N'D??p nam MWC NADE - 7675',195000,'4103.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4104',N'D??p nam MWC NADE - 7676',195000,'4104.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4105',N'D??p nam MWC NADE - 7673',195000,'4105.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4106',N'D??p nam MWC NADE - 7674',150000,'4106.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4107',N'D??p nam MWC NADE - 7666',195000,'4107.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4108',N'D??p nam MWC NADE - 7671',180000,'4108.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4109',N'D??p nam MWC NADE - 7670',99000,'4109.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4110',N'D??p nam MWC NADE - 7662',190000,'4110.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4111',N'D??p nam MWC NADE - 7665',150000,'4111.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4112',N'D??p nam MWC NADE - 7659',150000,'4112.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4113',N'D??p nam MWC NADE - 7658',90000,'4113.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4114',N'D??p nam MWC NADE - 7656',195000,'4114.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4115',N'D??p nam MWC NADE - 7655',99000,'4115.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4116',N'D??p nam MWC NADE - 7653',195000,'4116.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4117',N'D??p nam MWC NADE - 7652',195000,'4117.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4118',N'D??p nam MWC NADE - 7637',195000,'4118.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4119',N'D??p nam MWC NADE - 7648',195000,'4119.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	/*M??*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3040',N'M?? MLB New York Yankees Heroes Adjustable Cap M??u ??en',1720000,'3040.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3042',N'M?? Gucci Bee Print GG Supreme Baseball Beige Size M',8200000,'3042.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'GUCCI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3044',N'M?? Lacoste Mens Sport Collab Youssef SY Cotton Cap',1300000,'3044.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'Lacoste',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3046',N'M?? Gucci GG Supreme Supreme Baseball Cap With Feline Head In Neutrals Size L',12200000,'3046.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3048',N'M?? Gucci Original GG Canvas Baseball With Web Beige',3400000,'3048.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3050',N'M?? Gucci Giants GG Supreme Baseball Hat ',6890000,'3050.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3052',N'M?? ch??i g??n',900000,'3052.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3054',N'M?? Lacoste Sport Velvet Camo-Croc Cap Grey Mens One Size RK7918-51 ZE1 M??u X??m',1490000,'3054.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'lacoste',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3056',N'M?? MLB Script Tail Ball Cap New York Yankees 32CPIJ011-50L M??u ??en',990000,'3056.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3058',N'M?? MLB Monogram Blue Jacquard Bucket Hat 32CPHV111-50N ',1590000,'3058.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3060',N'M?? SNAPBACK ADICOLOR',650000,'3060.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3068',N'M?? B??NG CH??Y TREFOIL',280000,'3068.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3070',N'M?? b??ng ch??y RYV',550000,'3070.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3072',N'ADIDAS ADVENTURE RUNNER CAP',450000,'3072.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3074',N' TWILL VISOR',195000,'3074.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3076',N'ADICOLOR PREMIUM ESSENTIALS SUEDE CAP',500000,'3076.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3078',N'BUCKET HAT',650000,'3078.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3080',N'"M?? B??NG CH??Y TOKYO PACK',600000,'3080.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	/*V??y*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3082',N'CH??N V??Y JEREMY SCOTT',2100000,'3082.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3084',N'??O V??Y BA L?? APPLICATION',950000,'3084.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3086',N'V??Y ADIDAS 2000 LUXE',1500000,'3086.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3088',N'V??Y TANK TOP MIDI MARIMEKKO',1785000,'3088.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3090',N'V??Y RACERBACK ADICOLOR CLASSICS',950000,'3090.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3092',N'TRACK DRESS ADICOLOR',190000,'3092.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3094',N'??O V??Y',1200000,'3094.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3096',N'3 STR DRESS',1200000,'3096.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3098',N'W SPW M DRS',1350000,'3098.png',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3100',N'??O V??Y BA L?? 3D ADICOLOR',930000,'3100.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	/*Qu???n n???*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4200',N'Qu???n CULLOTE ???ng su??ng',212000,'4200.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4201',N'Qu???n BAGGY nh???n ly tr?????c l???t l???i',525000,'4201.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4202',N'Qu???n ???ng su??ng l??ng cao d??y k??o sau',315000,'4202.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4203',N'Qu???n sort l??ng cao vi???n b??o',296000,'4203.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4204',N'Qu???n jeans form su??ng Basic',525000,'4204.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4205',N'Qu???n sort ??ai CORSET nh???n ly tr?????c v?? sao',321000,'4205.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4206',N'Qu???n sort ly tr?????c ben d??y k??o sau',162000,'4206.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4207',N'Qu???n sort v???i TEXTURE nh???n 4 ly',222000,'4207.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4208',N'Qu???n sort l??ng cao nh???n ly h???a ti???t hoa',222000,'4208.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4209',N'Qu???n sort l??ng thun h???a ti???t s???c',197000,'4209.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4210',N'Qu???n sorts l??ng li???n nh???n ly tr?????c',256000,'4210.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4211',N'Qu???n sort x???p 4 ly',250000,'4211.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4212',N'Qu???n ???ng su??ng l??ng r???i t??i h??m ???ch',199000,'4212.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4213',N'Qu???n d??i th???t n?? 1 b??n',199000,'4213.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4214',N'Qu???n n??? Smart Pants D??i ?????n m???t c??',799000,'4214.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4215',N'Qu???n n??? Ponte ??m',499000,'4215.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4216',N'Qu???n n??? Jogger th??? thao Ultra Stretch',499000,'4216.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4217',N'Qu???n Uniqlo U qu???n d??i v???i Jersey d??ng Relax',99000,'4217.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4218',N'Qu???n n??? Linen Conton Tapered Pants',599000,'4218.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4219',N'Qu???n n??? JW Anderson qu???n d??i Easy',399000,'4219.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	/*??o n???*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5100',N'??O THUN W2ATN2051004',185000,'aonu-5000-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5101',N'??O LEN C??? TR??N, TAY L???, D??NG SLIMFIT',299000,'aonu-5001-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5102',N'PYJAMAS ??O NG???N TAY QU???N SOOC',449000,'aonu-5002-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5103',N'??O KI???U C??? TR??N, TAY B???NG, D??Y BU???C EO',449000,'aonu-5003-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5104',N'??O PH??NG "EM L?? DUY NH???T"',249000,'aonu-5004-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5105',N'??O PH??NG N??? C??? THUY???N',299000,'aonu-5005-1.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5106',N'??O PH??NG N??? EO TH???T D??Y',299000,'aonu-5006-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5107',N'??O PH??NG N??? XO???N EO',249000,'aonu-5007-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5108',N'??O PH??NG N??? PH???I TAY D???T THOI',399000,'aonu-5008-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5109',N'??O PH??NG N??? - B??? S??U T???P GIA ????NH',299000,'aonu-5009-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5110',N'??O KI???U N??? TAY PH???NG',149000,'aonu-5010-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5111',N'??O PH??NG N??? COTTON USA H???A TI???T',399000,'aonu-5011-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5112',N'??O M???C TRONG N???',149000,'aonu-5012-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5113',N'??O GI??? NHI???T N??? C??? TIM OEKO-TEX',299000,'aonu-5013-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	/*T??i x??ch*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3000',N'Adidas Camo Waist Bag - Multicolour (FM1348)',640000,'3000.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3002',N'Jordan Festival Bag Smoke Grey (9A0443-GB5)',750000,'3002.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'Jordan',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3004',N'Nike Sportswear Heritage Hip Bag - Canyon Pink (BA5750-689)',700000,'3004.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3006',N'Adidas Core Waist Bag - Grey (CM5541)',640000,'3006.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3008',N'TOKYO PACK POUCH',600000,'3008.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3010',N'Adidas Waist Bag (ED5875)',630000,'3010.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3012',N'C???p Laptop C??ng s??? Th???i trang MOYYI666',420000,'3012.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3014',N'T??i bao t??? ??eo ch??o nam n??? Th???i Trang MOYYI MY0642',299000,'3014.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3016',N'T??i ??eo Ch??o Nam V??i D?? Th???i Trang MOYYI MY2031',420000,'3016.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3020',N'T??i x??ch tay quai c???m ph???i v???i HB0119',845000,'3020.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3022',N'T??i x??ch tay th???i trang ph???i v???i HB0120',845000,'3022.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3024',N'Balo th???i trang h???a ti???t d???p ch??? BP0054',865000,'3024.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'BP',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3026',N'Balo th???i trang n???p g???p ????n gi???n BP0055',845000,'3026.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'BP',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3028',N'T??i x??ch tay c??? trung ????n gi???n HB0124',745000,'3028.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3030',N'T??I X??CH N??? LEMINO MONOGRAM CANVAS LE259056',3400000,'3030.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINO',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3032',N'T??I X??CH N??? LEBY LEMINO LB232106',360000,'3032.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINHO',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3034',N'T??I X??CH N??? LEBY LEMINO LB232109',600000,'3034.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINHO',0);
	/*-------ProductDetails--------*/
	
	/*Gi???y*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('11','2001','160cm','50',N'??en','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('12','2001','170cm','50',N'??en','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('13','2001','180cm','50',N'??en','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('14','2002','160cm','50',N'??en','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('15','2002','170cm','60',N'??en','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('16','2002','180cm','80',N'??en','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('17','2003','160cm','50',N'??en','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('18','2003','170cm','60',N'??en','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('19','2003','180cm','80',N'??en','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('20','2003','160cm','50',N'Tr???ng','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('21','2003','170cm','60',N'Tr???ng','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('22','2003','180cm','80',N'Tr???ng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('23','2004','165cm','55',N'??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('24','2004','172cm','65',N'??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('25','2004','180cm','70',N'??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('26','2004','165cm','50',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('27','2004','172cm','65',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('28','2004','180cm','77',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('29','2005','165cm','52',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('30','2005','172cm','63',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('31','2005','180cm','68',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('32','2006','165cm','52',N'H???ng ??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('33','2006','172cm','63',N'H???ng ??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('34','2006','180cm','68',N'H???ng ??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('35','2007','165cm','52',N'Tr???ng ??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('36','2007','172cm','63',N'Tr???ng ??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('37','2007','180cm','68',N'Tr???ng ??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('38','2008','165cm','52',N'Tr???ng ??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('39','2008','172cm','63',N'Tr???ng ??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('40','2008','180cm','68',N'Tr???ng ??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('41','2009','165cm','52',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('42','2009','172cm','63',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('43','2009','180cm','68',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('44','2010','165cm','52',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('45','2010','172cm','63',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('46','2010','180cm','68',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('47','2011','165cm','52',N'Tr???ng H???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('48','2011','172cm','63',N'Tr???ng H???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('49','2011','180cm','68',N'Tr???ng H???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('50','2012','165cm','55',N'??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('51','2012','172cm','65',N'??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('52','2012','180cm','70',N'??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('53','2013','165cm','55',N'??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('54','2013','172cm','65',N'??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('55','2013','180cm','70',N'??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('56','2014','165cm','52',N'Tr???ng ??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('57','2014','172cm','63',N'Tr???ng ??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('58','2014','180cm','68',N'Tr???ng ??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('59','2015','165cm','52',N'Tr???ng H???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('60','2015','172cm','63',N'Tr???ng H???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('61','2015','180cm','68',N'Tr???ng H???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('62','2016','165cm','52',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('63','2016','172cm','63',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('64','2016','180cm','68',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('65','2017','165cm','52',N'H???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('66','2017','172cm','63',N'H???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('67','2017','180cm','68',N'H???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('68','2018','165cm','52',N'Xanh Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('69','2018','172cm','63',N'Xanh Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('70','2018','180cm','68',N'Xanh Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('71','2019','165cm','55',N'X??m','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('72','2019','172cm','65',N'X??m','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('73','2019','180cm','70',N'X??m','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('74','2020','165cm','55',N'V??ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('75','2020','172cm','65',N'V??ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('76','2020','180cm','70',N'V??ng','41',50);
	/*Qu???n nam*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('77','2021','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('78','2021','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('79','2021','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('80','2022','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('81','2022','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('82','2022','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('83','2023','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('84','2023','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('85','2023','180cm','70',N'??en','XL',50);
	
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('101','2029','165cm','55',N'tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('102','2029','172cm','65',N'tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('103','2029','180cm','70',N'tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('104','2030','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('105','2030','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('106','2030','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('107','2031','165cm','55',N'xanh ??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('108','2031','172cm','65',N'xanh ??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('109','2031','180cm','70',N'xanh ??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('110','2032','165cm','55',N'xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('111','2032','172cm','65',N'xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('112','2032','180cm','70',N'xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('113','2033','165cm','55',N'x??m','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('114','2033','172cm','65',N'x??m','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('115','2033','180cm','70',N'x??m','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('116','2034','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('117','2034','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('118','2034','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('119','2035','165cm','55',N'xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('120','2035','172cm','65',N'xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('121','2035','180cm','70',N'xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('122','2036','165cm','55',N'tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('123','2036','172cm','65',N'tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('124','2036','180cm','70',N'tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('125','2037','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('126','2037','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('127','2037','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('128','2038','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('129','2038','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('130','2038','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('131','2039','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('132','2039','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('133','2039','180cm','70',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('134','2040','165cm','55',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('135','2040','172cm','65',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('136','2040','180cm','70',N'??en','XL',50);
	
	/*balo*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('201','5000','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('202','5001','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('203','5002','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('204','5003','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('205','5004','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('206','5005','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('207','5006','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('208','5007','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('209','5008','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('210','5009','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('211','5010','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('212','5011','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('213','5012','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('214','5013','null','null',N'x??m','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('215','5014','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('216','5015','null','null',N'?????','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('217','5015','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('218','5016','null','null',N'Xanh x??m ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('219','5016','null','null',N'????? x??m','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('220','5017','null','null',N'?????','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('221','5018','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('222','5019','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('223','5020','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('224','5021','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('225','5022','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('226','5023','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('227','5024','null','null',N'H???ng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('228','5024','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('229','5024','null','null',N'?????','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('230','5025','null','null',N'H???ng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('231','5025','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('232','5025','null','null',N'?????','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('233','5026','null','null',N'H???ng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('234','5026','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('235','5026','null','null',N'?????','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('236','5027','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('237','5028','null','null',N'??en','null',50);
	  /*d??y n???t*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('701','4000','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('702','4001','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('703','4002','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('704','4003','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('705','4004','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('706','4005','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('707','4006','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('708','4007','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('709','4008','null','null',N'??en','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('710','4009','null','null',N'??en','null',50);

	/*D??p*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('711','4100','null','null',N'??en','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('712','4100','null','null',N'??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('713','4100','null','null',N'??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('714','4100','null','null',N'??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('715','4101','null','null',N'Tr???ng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('716','4101','null','null',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('717','4101','null','null',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('718','4101','null','null',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('719','4102','null','null',N'??en','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('720','4102','null','null',N'??en','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('721','4102','null','null',N'??en','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('722','4102','null','null',N'??en','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('723','4103','null','null',N'Tr???ng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('724','4103','null','null',N'Tr???ng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('725','4103','null','null',N'Tr???ng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('726','4103','null','null',N'Tr???ng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('727','4104','null','null',N'??a m??u','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('728','4104','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('729','4104','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('730','4105','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('731','4105','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('732','4105','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('733','4105','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('734','4106','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('735','4106','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('736','4106','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('737','4106','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('738','4107','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('739','4107','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('740','4107','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('741','4107','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('742','4108','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('743','4108','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('744','4108','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('745','4108','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('746','4109','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('747','4109','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('748','4109','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('749','4109','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('750','4110','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('751','4110','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('752','4110','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('753','4110','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('754','4111','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('755','4111','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('756','4111','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('757','4111','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('758','4112','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('759','4112','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('760','4112','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('761','4112','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('762','4113','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('763','4113','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('764','4113','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('765','4113','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('766','4114','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('767','4114','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('768','4114','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('769','4114','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('770','4115','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('771','4115','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('772','4115','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('773','4115','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('774','4116','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('775','4116','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('776','4116','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('777','4116','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('778','4117','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('779','4117','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('780','4117','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('781','4117','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('782','4118','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('783','4118','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('784','4118','null','null',N'??a m??u','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('785','4118','null','null',N'??a m??u','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('786','4119','null','null',N'??a m??u','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('787','4119','null','null',N'??a m??u','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('788','4119','null','null',N'??a m??u','42',50);
    INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('789','4119','null','null',N'??a m??u','44',50);
	/*M??*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('300','3040','null','null',N'??en',' S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('301','3040','null','null',N'Tr???ng','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('302','3042','null','null',N'X??m','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('303','3044','null','null',N'Tr???ng',' S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('304','3046','null','null',N'X??m','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('305','3048','null','null',N'??en','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('306','3048','null','null',N'V??ng N??u','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('307','3050','null','null',N'N??u','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('308','3052','null','null',N'Tr???ng','S/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('309','3052','null','null',N'??en','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('310','3054','null','null',N'??en','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('311','3054','null','null',N'X??m','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('312','3056','null','null',N'??en','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('313','3056','null','null',N'Tr???ng kem','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('314','3058','null','null',N'X??m','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('315','3058','null','null',N'Xanh','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('316','3060','null','null',N'??en','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('323','3068','null','null',N'??en','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('324','3068','null','null',N'V??ng n??u','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('325','3070','null','null',N'??en','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('326','3072','null','null',N'??en','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('327','3072','null','null',N'Tr???ng','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('328','3074','null','null',N'??en','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('329','3074','null','null',N'X??m','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('330','3076','null','null',N'Tr???ng','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('331','3078','null','null',N'??en','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('332','3080','null','null',N'X??m','S/M',50);

	/*Qu???n n???*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('400','4200','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('401','4200','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('402','4200','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('403','4201','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('404','4201','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('405','4201','155-156','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('406','4202','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('407','4202','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('408','4202','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('409','4203','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('410','4203','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('411','4203','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('412','4203','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('413','4204','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('414','4204','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('415','4204','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('416','4204','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('417','4205','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('418','4205','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('419','4205','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('420','4205','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('421','4206','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('422','4206','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('423','4206','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('424','4206','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('425','4207','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('426','4207','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('427','4207','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('428','4207','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('429','4208','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('430','4208','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('431','4208','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('432','4208','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('433','4209','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('434','4209','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('435','4209','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('436','4209','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('437','4210','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('438','4210','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('439','4210','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('440','4210','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('441','4211','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('442','4211','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('443','4211','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('444','4211','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('445','4212','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('446','4212','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('447','4212','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('448','4212','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('449','4213','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('450','4213','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('451','4213','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('452','4213','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('453','4214','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('454','4214','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('455','4214','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('456','4214','158-160','null',N'null','27',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('457','4215','149-151','null',N'null','24',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('458','4215','152-154','null',N'null','25',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('459','4215','155-157','null',N'null','26',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('460','4215','158-160','null',N'null','27',50);
	/*v??y*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('500','3082','150-155','40-45',N'X??m','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('501','3082','158-160','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('502','3082','160-164','46-53',N'H???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('503','3082','165-170','53-57',N'V??ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('504','3084','150-155','40-45',N'H???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('505','3084','158-160','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('506','3084','160-164','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('507','3084','165-170','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('508','3086','150-155','40-45',N'H???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('509','3086','158-160','43-46',N'H???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('510','3086','160-164','46-53',N'H???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('511','3086','165-170','53-57',N'H???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('512','3088','150-155','40-45',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('513','3088','158-160','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('514','3088','160-164','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('515','3088','165-170','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('516','3090','150-155','40-45',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('517','3090','158-160','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('518','3090','160-164','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('519','3090','165-170','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('520','3092','150-155','40-45',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('521','3092','158-160','43-46',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('522','3092','160-164','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('523','3092','165-170','53-57',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('524','3094','150-155','40-45',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('525','3094','158-160','43-46',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('526','3094','160-164','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('527','3094','165-170','53-57',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('528','3096','150-155','40-45',N'?????','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('529','3096','158-160','43-46',N'?????','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('530','3096','160-164','46-53',N'?????','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('531','3096','165-170','53-57',N'?????','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('532','3098','150-155','40-45',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('533','3098','158-160','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('534','3098','160-164','46-53',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('535','3098','165-170','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('536','3100','150-155','40-45',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('537','3100','158-160','43-46',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('538','3100','160-164','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('539','3100','165-170','53-57',N'Tr???ng','XL',50);
	/*??o n???*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('600','5100','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('601','5100','153-155','43-46',N'V??ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('602','5100','155-158','46-53',N'X??m','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('603','5100','158-162','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('604','5101','148-153','38-43',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('605','5101','153-155','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('606','5101','155-158','46-53',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('607','5101','158-162','53-57',N'Cam','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('608','5102','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('609','5102','153-155','43-46',N'H???ng nh???t','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('610','5102','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('611','5102','158-162','53-57',N'H???ng nh???t','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('612','5103','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('613','5103','153-155','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('614','5103','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('615','5103','158-162','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('616','5104','148-153','38-43',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('617','5104','153-155','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('618','5104','155-158','46-53',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('619','5104','158-162','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('620','5105','148-153','38-43',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('621','5105','153-155','43-46',N'V??ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('622','5105','155-158','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('623','5105','158-162','53-57',N'V??ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('624','5106','148-153','38-43',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('625','5106','153-155','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('626','5106','155-158','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('627','5106','158-162','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('628','5107','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('629','5107','153-155','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('630','5107','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('631','5107','158-162','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('632','5108','148-153','38-43',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('633','5108','153-155','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('634','5108','155-158','46-53',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('635','5108','158-162','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('636','5109','148-153','38-43',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('637','5109','153-155','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('638','5109','155-158','46-53',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('639','5109','158-162','53-57',N'Cam','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('640','5110','148-153','38-43',N'V??ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('641','5110','153-155','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('642','5110','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('643','5110','158-162','53-57',N'V??ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('644','5111','148-153','38-43',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('645','5111','153-155','43-46',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('646','5111','155-158','46-53',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('647','5111','158-162','53-57',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('648','5112','148-153','38-43',N'?????','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('649','5112','153-155','43-46',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('650','5112','155-158','46-53',N'?????','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('651','5112','158-162','53-57',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('652','5113','148-153','38-43',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('653','5113','153-155','43-46',N'X??m','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('654','5113','155-158','46-53',N'X??m','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('655','5113','158-162','53-57',N'??en','XL',50);
	/*T??i x??ch*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('800','3000','null','null',N'Xanh r??u','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('801','3000','null','null',N'Xanh r??u','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('802','3000','null','null',N'Xanh r??u','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('803','3000','null','null',N'Xanh r??u','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('804','3002','null','null',N'Tr???ng ','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('805','3002','null','null',N'?????','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('808','3002','null','null',N'Tr???ng ','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('809','3002','null','null',N'?????','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('810','3004','null','null',N'H???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('811','3004','null','null',N'Xanh r??u','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('812','3004','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('813','3004','null','null',N'X??m','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('814','3006','null','null',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('815','3006','null','null',N'X??m','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('816','3006','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('817','3006','null','null',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('818','3008','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('819','3008','null','null',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('820','3008','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('821','3008','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('822','3010','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('823','3010','null','null',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('824','3010','null','null',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('825','3010','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('826','3012','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('827','3012','null','null',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('828','3012','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('829','3012','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('830','3014','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('831','3014','null','null',N'N??u','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('832','3014','null','null',N'N??u','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('833','3014','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('834','3016','null','null',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('835','3016','null','null',N'V??ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('836','3016','null','null',N'V??ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('837','3016','null','null',N'Tr???ng','XL',50);
	
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('842','3020','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('843','3020','null','null',N'H???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('844','3020','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('845','3020','null','null',N'H???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('846','3022','null','null',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('847','3022','null','null',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('848','3022','null','null',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('849','3022','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('850','3024','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('851','3024','null','null',N'V??ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('852','3024','null','null',N'V??ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('853','3024','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('854','3026','null','null',N'H???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('856','3026','null','null',N'H???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('857','3026','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('858','3026','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('859','3028','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('860','3028','null','null',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('861','3028','null','null',N'h???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('862','3028','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('863','3030','null','null',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('864','3030','null','null',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('865','3030','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('866','3030','null','null',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('867','3032','null','null',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('868','3032','null','null',N'N??u','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('869','3032','null','null',N'N??u','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('870','3032','null','null',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('871','3034','null','null',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('872','3034','null','null',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('873','3034','null','null',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('874','3034','null','null',N'??en','XL',50);
	
	/*??o Nam*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('900','1001','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('902','1001','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('903','1001','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('904','1002','1m60-1m65','55-60kg',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('905','1002','1m64-1m69','60-65kg',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('906','1002','1m70-1m74','66-70kg',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('907','1002','1m74-1m76','70-76kg',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('908','1003','1m60-1m65','55-60kg',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('909','1003','1m64-1m69','60-65kg',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('910','1003','1m70-1m74','66-70kg',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('911','1003','1m74-1m76','70-76kg',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('912','1004','1m60-1m65','55-60kg',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('913','1004','1m64-1m69','60-65kg',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('914','1004','1m70-1m74','66-70kg',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('915','1004','1m74-1m76','70-76kg',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('916','1005','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('917','1005','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('918','1005','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('919','1005','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('920','1006','1m60-1m65','55-60kg',N'Tr???ng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('921','1006','1m64-1m69','60-65kg',N'Tr???ng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('922','1006','1m70-1m74','66-70kg',N'Tr???ng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('923','1006','1m74-1m76','70-76kg',N'Tr???ng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('924','1007','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('925','1007','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('926','1007','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('927','1007','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('928','1008','1m60-1m65','55-60kg',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('929','1008','1m64-1m69','60-65kg',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('930','1008','1m70-1m74','66-70kg',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('931','1008','1m74-1m76','70-76kg',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('932','1009','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('933','1009','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('934','1009','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('935','1009','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('936','1010','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('937','1010','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('938','1010','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('939','1010','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('940','1011','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('941','1011','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('942','1011','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('943','1011','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('944','1012','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('945','1012','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('946','1012','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('947','1012','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('948','1013','1m60-1m65','55-60kg',N'??en','S ',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('949','1013','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('950','1013','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('951','1013','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('952','1014','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('953','1014','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('954','1014','1m70-1m74','66-70kg',N'??en','L ',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('955','1014','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('956','1015','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('957','1015','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('958','1015','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('959','1015','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('960','1016','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('961','1016','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('962','1016','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('963','1016','1m74-1m76','70-76kg',N'??en','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('964','1017','1m60-1m65','55-60kg',N'??en','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('965','1017','1m64-1m69','60-65kg',N'??en','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('966','1017','1m70-1m74','66-70kg',N'??en','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('967','1017','1m74-1m76','70-76kg',N'??en','XL',50);


	/*-------Images--------*/
	
	/*Gi???y*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50001','giay2001-2.jpg','2001','11');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50002','giay2002-2.jpg','2002','14');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50003','giay2003-2.jpg','2003','17');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50004','giay2004-2.jpg','2004','23');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50005','giay2005-2.png','2005','29');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50006','giay2006-2.png','2006','32');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50007','giay2007-2.jpg','2007','35');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50008','giay2008-2.jpg','2008','38');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50009','giay2009-2.jpg','2009','41');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50010','giay20010-2.jpg','2010','44');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50011','giay20011-2.jpg','2011','47');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50012','giay20012-2.jpg','2012','50');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50013','giay20013-2.jpg','2013','53');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50014','giay20014-2.png','2014','56');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50015','giay20015-2.jpg','2015','59');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50016','giay20016-2.jpg','2016','62');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50017','giay20017-2.jpg','2017','65');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50018','giay20018-2.jpg','2018','68');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50019','giay20019-2.jpg','2019','71');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50020','giay20020-2.jpg','2020','74');
	/*Qu???n nam*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50021','quan20021-2.jpg','2021','77');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50022','quan20022-2.jpg','2022','80');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50023','quan20023-2.jpg','2023','83');

	
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50029','quan20029-2.jpg','2029','101');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50030','quan20030-2.jpg','2030','104');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50031','quan20031-2.jpg','2031','107');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50032','quan20032-2.jpg','2032','110');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50033','quan20033-2.jpg','2033','113');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50034','quan20034-2.jpg','2034','116');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50035','quan20035-2.jpg','2035','119');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50036','quan20036-2.jpg','2036','122');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50037','quan20037-2.jpg','2037','125');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50038','quan20038-2.jpg','2038','128');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50039','quan20039-2.jpg','2039','131');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50040','quan20040-2.jpg','2040','134');
	/*Balo*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50041','balo-5000-2.jpg','5000','201');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50042','balo-5001-2.jpg','5001','202');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50043','balo-5002-2.jpg','5002','203');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50044','balo-5003-2.jpg','5003','204');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50045','balo-5004-2.jpg','5004','205');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50046','balo-5005-2.jpg','5005','206');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50047','balo-5006-2.jpg','5006','207');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50048','balo-5007-2.jpg','5007','208');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50049','balo-5008-2.jpg','5008','209');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50050','balo-5009-2.jpg','5009','210');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50051','balo-5010-2.jpg','5010','211');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50052','balo-5011-2.jpg','5011','212');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50053','balo-5011-2.jpg','5012','213');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50054','balo-5012-2.jpg','5013','214');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50055','balo-5014-2.jpg','5014','215');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50056','balo-5015-2.jpg','5015','216');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50057','balo-5016-2.jpg','5016','218');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50058','balo-5017-2.jpg','5017','220');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50059','balo-5018-2.jpg','5018','221');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50060','balo-5019-2.jpg','5019','222');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50061','balo-5020-2.jpg','5020','223');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50062','balo-5021-2.jpg','5021','224');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50063','balo-5022-2.jpg','5022','225');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50064','balo-5023-2.jpg','5023','226');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50065','balo-5024-2.jpg','5024','227');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50066','balo-5025-2.jpg','5025','230');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50067','balo-5026-2.jpg','5026','233');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50068','balo-5027-2.jpg','5027','236');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50069','balo-5028-2.jpg','5028','237');
    /*D??y n???t*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50070','4000_1.jpg','5028','701');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50071','4001_1.jpg','5028','702');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50072','4002_1.jpg','5028','703');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50073','4003_1.jpg','5028','704');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50074','4004_1.jpg','5028','705');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50075','4005_1.jpg','5028','706');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50076','4006_1.jpg','5028','707');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50077','4007_1.jpg','5028','708');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50078','4008_1.jpg','5028','709');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50079','4009_1.jpg','5028','710');
	
	/*D??p*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50080','4100.jpg','4100','711');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50081','4101.jpg','4101','715');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50082','4102.jpg','4102','719');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50084','4104.jpg','4104','727');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50085','4105.jpg','4105','730');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50086','4106.jpg','4106','734');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50087','4107.jpg','4107','738');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50088','4108.jpg','4108','742');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50089','4109.jpg','4109','746');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50090','4110.jpg','4110','750');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50091','4111.jpg','4111','754');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50092','4112.jpg','4112','758');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50093','4113.jpg','4113','762');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50094','4114.jpg','4114','766');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50095','4115.jpg','4115','770');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50096','4116.jpg','4116','774');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50097','4117.jpg','4117','778');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50098','4118.jpg','4118','782');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50099','4119.jpg','4119','786');
	/*M??*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50100','3041.jpg','3040','300');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50101','3043.jpg','3042','302');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50102','3045.jpg','3044','303');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50103','3047.jpg','3046','304');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50104','3049.jpg','3048','305');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50105','3051.jpg','3050','307');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50106','3053.jpg','3052','308');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50107','3055.jpg','3054','310');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50108','3057.jpg','3056','312');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50109','3059.jpg','3058','314');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50110','3061.jpg','3060','316');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50114','3069.jpg','3068','323');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50115','3071.jpg','3070','325');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50116','3073.jpg','3072','326');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50117','3075.jpg','3074','328');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50118','3077.jpg','3076','330');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50119','3079.jpg','3078','331');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50120','3081.jpg','3080','332');
	/*V??y*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50121','3083.jpg','3082','500');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50122','3085.jpg','3084','504');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50123','3087.jpg','3086','508');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50124','3089.jpg','3088','512');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50125','3091.jpg','3090','516');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50126','3093.jpg','3092','520');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50127','3095.jpg','3094','524');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50128','3097.jpg','3096','528');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50129','3099.jpg','3098','532');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50130','3101.jpg','3100','536');
	/*??o n???*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50151','aonu-5000-2.jpg','5100','600');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50152','aonu-5001-2.jpg','5101','604');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50153','aonu-5002-2.jpg','5102','608');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50154','aonu-5003-2.jpg','5103','612');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50155','aonu-5004-2.jpg','5104','616');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50156','aonu-5005-2.jpg','5105','620');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50157','aonu-5006-2.jpg','5106','624');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50158','aonu-5007-2.jpg','5107','628');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50160','aonu-5009-2.jpg','5109','636');
	/*T??i x??ch*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50131','3001.jpg','3000','800');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50132','3003.jpg','3002','804');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50133','3005.jpg','3004','810');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50134','3007.jpg','3006','814');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50135','3009.jpg','3008','818');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50136','3011.jpg','3010','822');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50137','3013.jpg','3012','826');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50138','3015.jpg','3014','830');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50139','3017.jpg','3016','834');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50141','3021.jpg','3020','842');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50142','3023.jpg','3022','846');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50143','3025.jpg','3024','850');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50144','3027.jpg','3026','854');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50145','3029.jpg','3028','859');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50146','3031.jpg','3030','863');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50147','3033.jpg','3032','867');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50148','3035.jpg','3034','871');
	
	/*??o nam*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50166','1002.jpg','1001','900');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50167','1004.jpg','1002','904');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50168','1006.jpg','1003','908');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50169','1007.jpg','1003','908');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50170','1009.jpg','1004','912');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50171','1011.jpg','1005','916');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50172','1013.jpg','1006','920');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50173','1017.jpg','1007','924');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50174','1019.jpg','1008','928');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50175','1021.jpg','1008','928');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50176','1023.jpg','1009','932');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50177','1025.jpg','1010','936');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50178','1027.jpg','1011','940');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50179','1029.jpg','1012','944');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50180','1031.jpg','1013','948');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50181','1033.jpg','1014','952');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50182','1035.jpg','1015','956');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50183','1037.jpg','1016','960');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50184','1039.jpg','1017','964');


	
	
	
	
	/*-------Orders--------*/
	
	INSERT INTO Orders(Id,Username,Fullname,Method,CreateDate,Address,Phone,Total,Status) 
	VALUES ('1','micro','Huynh Van Mic',N'Ti???n M???t',CAST(N'2021-10-18' AS Date),N'C???n Th??','0356982112','210000',N'???? thanh to??n');
	INSERT INTO Orders(Id,Username,Fullname,Method,CreateDate,Address,Phone,Total,Status) 
	VALUES ('2','micro','Huynh Van Mic',N'Ti???n M???t',CAST(N'2021-10-18' AS Date),N'C???n Th??','0356982112','2100000',N'???? giao h??ng');
	
	
	/*-------OrderDetails--------*/
	

	/*-------Description--------*/

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('2',N'B??n Ngo??i: Neoprene 100%','2001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('4',N'?????: Cao Su 100%','2001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('6',N'Lo???t: Dash Grey / Grey / Solar Red','2002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('8',N'Ng??y ph??t h??nh: Ng??y 02 th??ng 6 n??m 2020','2002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('10',N'M???t tr??n b???ng da v???i ????? cao su,?????m c???','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('12',N'S???n xu???t t???i Trung Qu???c','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('14',N'Ki???u d??ng s??? ADIO-MZ78 c???a ch??ng t??i','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('16',N'Ng??y ph??t h??nh Ng??y 21 th??ng 9 n??m 2018','2004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('18',N'M??u s???c CBLACK / FTWWHT','2004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('20',N'????? cao su','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('22',N'Phong c??ch: DB2812-100','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('24',N'Qu???c gia / Khu v???c xu???t x???: Indonesia','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('26',N'M??u s???c: MixColer','2006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('28',N'N??i s???n xu???t: M???','2006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('30',N'Gi???i t??nh: Unisex','2007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('32',N'M??u s???c: Black/White/Red','2007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('34',N'Lo???t Maroon m???i','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('36',N'Ng??y ph??t h??nh 06 th??ng 5, 2020','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('38',N'M??u s???c TR???NG / MAROON M???I / ??EN','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('40',N'Lo???t tr???ng','2009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('42',N'Ng??y ph??t h??nh Ng??y 15 th??ng 3 n??m 2021','2009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('44',N'Ng??y ph??t h??nh 03 th??ng 2 n??m 2021','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('46',N'M??a ??p d???ng T???t c??? c??c m??a','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('48',N'Kh??p k??n Vi???n','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('50',N'Ch???c n??ng Ch???ng tr??n tr?????t, nh???','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('52',N'Ch???t li???u duy nh???t ????? cao su,Ph??a tr??n C???t th???p','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('54',N'Lo???i ng??n ch??n Ng??n ch??n tr??n','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('56',N'Lo???i g??t ch??n G??t ph???ng','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('58',N'Lo???t X??m / Tr???ng / H???ng ????o','2011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('60',N'Ng??y ph??t h??nh Ng??y 15 th??ng 3 n??m 2021','2011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('62',N'Ng??y ph??t h??nh Ng??y 15 th??ng 4 n??m 2021','2012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('64',N'Th????ng hi???u: Reebok ','2013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('66',N'Gi???i t??nh: Unisex ','2013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('68',N'Th??n: Da t???ng h???p','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('70',N'?????: Cao su t???ng h???p','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('72',N'TTh?????ng hi???u: MLB ','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('74',N'Th??n: Da t???ng h???p','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('76',N'TTh?????ng hi???u: MLB ','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('78',N'?????: Cao su t???ng h???p','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('80',N'Ki???u d??ng:Gi??y th??? thao','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('82',N'TTh?????ng hi???u: MLB ','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('84',N'Gi???i t??nh:Unisex','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('86',N'Nh??n hi???u Air Jordan','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('88',N'Lo???t Tie Dye','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('90',N'Ng??y ph??t h??nh Ng??y 11 th??ng 6 n??m 2020','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('92',N'Nh??n hi???u Air Jordan','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('94',N'Lo???t Tr???ng / H???i qu??n n???a ????m / ????? Varsity','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('96',N'Ng??y ph??t h??nh Ng??y 26 th??ng 8 n??m 2020','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('98',N'Nh??n hi???u Air Jordan','2019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('100',N'Lo???t CO Japan - X??m trung t??nh','2019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('102',N'Nh??n hi???u Air Jordan','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('104',N'Lo???t Laser Orange','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('106',N'Ng??y ph??t h??nh Ng??y 27 th??ng 7 n??m 2020','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('108',N'Ph?? h???p th?????ng xuy??n,Drawcord tr??n eo ????n h???i','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('110',N'D???t tr??n 100% polyester t??i ch???','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('112',N'M???m m???i v?? tho??ng kh??,Qu???n ????i ch???y ph???n quang','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('114',N'AEROREADY h??t ???m,T??i zip b??n ngo??i','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('116',N'???? nh???p kh???u','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('118',N'B??? c??n th??ng th?????ng,Drawcord tr??n eo ????n h???i','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('120',N'100% polyester doubleknit t??i ch???,H??t ???m','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('122',N'T??i zip ph??a tr?????c','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('124',N'G??n d?????i ch??n c?? kh??a k??o ??? m???t c?? ch??n','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('126',N'Primegreen,???? nh???p kh???u','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('138',N'Ph?? h???p th?????ng xuy??n','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('140',N'Drawcord tr??n eo ????n h???i,53% cotton, 36% polyester t??i ch???, 11% l??ng c???u','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('142',N'T??i tr?????t b??n,???? nh???p kh???u','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('176',N'98% cotton / 2% Spandex, Ng?????i m???u cao 61 , m???c ??o c??? 32.','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('178',N'D??ng regular fit, C???p chun c?? d??y r??t','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('180',N'V???i d???t kim ????i l??m t??? 44% polyester t??i ch???, 32% polyester, 24% viscose','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('182',N'C??c t??i kh??a k??o ph??a tr?????c','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('184',N'Qu???n ???ng c??n ????? th?? gi??n tr?????c v?? sau tr???n ?????u.','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('186',N'V???a v???n th??ng th?????ng t???o ra s??? c??n b???ng tho???i m??i gi???a l???ng l???o v?? ??m s??t','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('188',N'Ch??n thon c?? c??ng, 67% cotton / 33% polyester t??i ch??? doubleknit','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('190',N'Nh???ng chi???c qu???n n??y ???????c l??m b???ng polyester t??i ch??? ????? ti???t ki???m t??i nguy??n v?? gi???m l?????ng kh?? th???i; Ch??ng t??i h???p t??c v???i S??ng ki???n ??????B??ng t???t h??n ????? c???i thi???n vi???c tr???ng b??ng tr??n to??n c???u','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('192',N'Th??ch ???ng v???i ng??y trong s??? tho???i m??i v?? camo.','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('194',N'Ph?? h???p th?????ng xuy??n,Drawcord tr??n eo ????n h???i','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('196',N'70% cotton, 30% polyester t??i ch??? l??ng c???u','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('198',N'T??i b??n, C??ng co gi??n, S??ng ki???n ??????B??ng t???t h??n','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('200',N'Bi???t th??m th??ng tin','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('202',N'Model, Season','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('204',N'TMC900-50C M71','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('206',N'D??ng regular fit,C???p chun c?? d??y r??t','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('208',N'V???i d???t tr??n l??m t??? 100% nylon t??i ch???','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('210',N'C???p cao v???a,C??c t??i hai b??n','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('212',N'C??c t??i h???p, G???u qu???n co gi??n','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('214',N'D??ng regular fit v???i ???ng c??n','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('216',N'C???p chun c?? d??y r??t','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('218',N'V???i single jersey l??m t??? 70% cotton, 30% polyester t??i ch???','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('220',N'T??i hai b??n, G???u th???ng, C???p cao v???a','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('222',N'D???i b??ng ch???ng tr?????t in logo adidas b???ng silicone b??n trong c???p qu???n Primegreen','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('224',N'D??ng regular fit','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('226',N'C???p co gi??n v???i ?????a c??i th???t l??ng','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('228',N'V???i twill l??m t??? 95% nylon t??i ch???, 5% elastane','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('230',N'C???m gi??c m??t m??? v?? kh?? r??o','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('232',N'L???p ph??? ch???ng th???m n?????c b???n b??? (DWR)','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('234',N'Thi???t k??? n??m t??i kinh ??i???n','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('236',N'D??ng regular fit, C???p qu???n c?? ?????a c??i th???t l??ng','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('238',N'V???i d???t dobby l??m t??? 90% nylon, 10% elastane','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('240',N'Th???m h??t ???m,C??c t??i tr?????c v?? t??i sau','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('242',N'D???i b??ng silicone in logo adidas b??n trong c???p qu???n','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('244',N'Ch??? s??? ch???ng tia UV 50+','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('246',N'D??ng regular fit, C???p chun c?? d??y r??t','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('248',N'V???i d???t interlock l??m t??? 70% polyester t??i ch???, 30% cotton','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('250',N'Ch???t v???i d??y d???n, T??i hai b??n,G???u qu???n c?? g??n bo','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('252',N'D??ng regular fit,C???p chun c?? g??n s???c k??m d??y r??t','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('254',N'V???i d???t kim ????i l??m t??? 100% polyester t??i ch???','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('256',N'C???m gi??c m???m m???i, co gi??n,Th???m h??t ???m','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('258',N'T??i ch??m hai b??n,G???u qu???n co gi??n','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('260',N'Chi???u d??i b???ng 3/4 qu???n d??i th??ng th?????ng','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('262',N'D??ng regular fit,C???p chun c?? d??y r??t','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('264',N'V???i thun da c?? l??m t??? 100% cotton','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('266',N'T??i hai b??n,G???u qu???n c?? g??n bo','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('268',N'D??ng regular fit,C???p cao v???a co gi??n c?? d??y r??t','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('270',N'V???i d???t tr??n l??m t??? 100% nylon t??i ch???','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('272',N'L???p l??t b???ng v???i l?????i,T??i kh??a k??o hai b??n','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('274',N'G???u qu???n co gi??n','2040');
	/*Balo*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('275',N'Balo laptop Adidas Originals Tongue Backpack ???????c thi???t k??? v???i m??u s???c n???i b???t, ????? h???a in ?????m c??c bi???u t?????ng nh??n hi???u gi??y adidas, ph?? h???p cho c??? nam l???n n??? mang ??i h???c, ??i l??m hay s??? d???ng h??ng ng??y. Ng??n ch??nh r???ng r??i cho b???n tho???i m??i l??u tr???, c?? nhi???u ng??n nh??? b??n trong. Ng??n laptop 15 inch ri??ng bi???t c?? l???p l??t ch???ng s???c.Ng??n nh??? ph??a tr?????c cho b???n th??m kh??ng gian l??u tr???.Hai t??i b??n h??ng ????? b??nh n?????c, ?? d??.Quai ??eo c?? th??? ??i???u ch???nh d??? d??ng ph?? h???p v???i t???ng ng?????i."','5000');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('276',N'Ch???t li???u: 100% Polyester.
??? Balo th???i trang Adidas Originals Essentials Backpack ???????c thi???t k??? v???i m??u ??en c?? t??nh, ki???u d??ng th???i trang, ph?? h???p cho c??? nam l???n n??? mang ??i h???c, ??i l??m hay s??? d???ng h??ng ng??y.
??? Ng??n ch??nh r???ng r??i cho b???n tho???i m??i l??u tr???, c?? nhi???u ng??n nh??? b??n trong.
??? Ng??n laptop 15 inch ri??ng bi???t c?? l???p l??t ch???ng s???c.
??? Ng??n nh??? ph??a tr?????c cho b???n th??m kh??ng gian l??u tr???.
??? Hai t??i b??n h??ng ????? b??nh n?????c, ?? d??.
??? Quai ??eo c?? th??? ??i???u ch???nh d??? d??ng ph?? h???p v???i t???ng ng?????i.','5001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('277',N'??? Ch???t li???u: 100% Polyester plain weave
??? Thi???t k??? g???m 1 ng??n ch??nh gi???a + 1 ng??n Zip ph??? ph??a tr?????c + 1 ng??n Laptop Ri??ng bi???t b??n trong + 1 Ng??n ph??? m???t sau *nh?? ???nh*
??? Full tag m??c kh??a, Logo Das in n???i s???c n??t
??? Balo th???i trang 3-STRI.PES BACKPACK ???????c thi???t k??? pha tr???n gi???a s??? ti???n l???i, hi???n ?????i v?? ki???u d??ng sang tr???ng c??? ??i???n. Balo s??? d???ng ch???t li???u Poly mix da t???o cho balo s??? hi???n ?????i, c?? t??nh!
Balo c?? tr???ng l?????ng nh??? gi??p b???n tho??i m??i khi di chuy???n.
??? Phong c??ch H??n Qu???c v???i thi???t k??? ?????c ????o ph?? h???p cho c??? nam v?? n??? mang ??i du l???ch, ??i h???c???
??? Ng??n ch??nh r???ng r??i cho b???n tho???i m??i l??u tr???,
??? Ng??n ????? m??y t??nh x??ch tay 15.6 inch ri??ng bi???t.','5002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('278',N'??? Ch???t li???u: Polyester
??? Laptop: 15inches
??? Ng??n ch??nh r???t r???ng cho b???n tho???i m??i l??u tr???, ng??n ????? m??y t??nh x??ch tay 15.6 inch ri??ng bi???t c?? l???p l??t ch???ng s???c.
??? Hai t??i b??n h??ng c?? ?????ng c?? th??? ????? b??nh n?????c hay ?? d??.
??? ?????m l??ng v?? quai ??eo c?? l???p l??t tho??ng kh?? t???o s??? tho???i m??i khi s??? d???ng.
??? Balo b???o h??nh 1 n??m.','5003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('279',N'??? Ch???t li???u: 100% Polyester.
??? Balo th???i trang Originals Essentials Backpack ???????c thi???t k??? v???i m??u s???c n???i b???t, ????? h???a l??? m???t, ki???u d??ng th???i trang, ph?? h???p cho c??? nam l???n n??? mang ??i h???c, ??i l??m hay s??? d???ng h??ng ng??y.
??? Ng??n ch??nh r???ng r??i cho b???n tho???i m??i l??u tr???, c?? nhi???u ng??n nh??? b??n trong.
??? Ng??n laptop 15 inch ri??ng bi???t c?? l???p l??t ch???ng s???c.
??? Ng??n nh??? ph??a tr?????c cho b???n th??m kh??ng gian l??u tr???.
??? Hai t??i b??n h??ng ????? b??nh n?????c, ?? d??.
??? Quai ??eo c?? th??? ??i???u ch???nh d??? d??ng ph?? h???p v???i t???ng ng?????i.','5004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('280',N'-Ch???t li???u 100% Polyester, h??? tr??? ch???ng th???m t???t. ?????nh v?? ????y balo l?? ch???t li???u tarpaulin kh??ng n?????c ho??n to??n.
??? D??y ??eo vai ??m ??i v???i ?????m d??y, c??ng quai c?? th??? ??i???u ch???nh ????? d??i tu??? ??. H??? th???ng Loadspring h??? tr??? t???i ?????u l???c, kh??ng g??y ??au vai.
??? M???t ng??n ri??ng cho laptop ?????n 15,6???, ch???ng s???c c???c k??? ??m ??i. Ng??n laotop n???m ri??ng bi???t ??? ph??a sau l??ng balo.
??? Th??? t??ch 30L, ng??n ch??nh l???n cho t???t c??? ????? ?????c, qu???n ??o, s??ch v???, c?? th??? ????p ???ng ????? dung t??ch cho chuy???n du l???ch ?????n 4 ng??y.
??? M???t ng??n ph??? m???t tr?????c d???c theo balo v???i kho?? k??o k??n cho gi???y t???, s??? s??ch ????? th??m???
??? 2 ng??n b??n h??ng cho chai n?????c ho???c v???t d???ng c?? nh??n nh??? g???n. C???ng th??m 2 ng??n nh??? k??n c?? kho?? k??o cho chai n?????c l???n, hay v???t d???ng c???n b???o m???t.
??? ????y balo l?? ng??n ?????ng gi??y ri??ng bi???t, ho???c ????? d??, ????? m??i??? D?????i c??ng balo l?? m???t t??i r??t ????nh k??m cho chai n?????c t???p th??? thao, hay l???u nh???, ????? nh???..','5005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('281',N'"K??ch th?????c: 44 x 30 x 12 cm.
??? Ch???t li???u: 100% v???i Polyester.
??? Balo th???i trang Adidas Originals Classic Backpack ???????c thi???t k??? pha tr???n gi???a s??? ti???n l???i, hi???n ?????i v?? ki???u d??ng sang tr???ng c??? ??i???n. Balo s??? d???ng ch???t li???u v???i polyester c?? tr???ng l?????ng nh??? gi??p b???n tho??i m??i khi di chuy???n.
??? Ng??n ch??nh r???ng r??i cho b???n tho???i m??i l??u tr???,
??? Ng??n ????? m??y t??nh x??ch tay 15 inch ri??ng bi???t.
??? Ngo??i ra balo adidas c??n c?? ng??n zip ph??a tr?????c.
??? Bi???u t?????ng Adidas 3 l?? ???????c in nh??? ph??a tr?????c t??i.
??? Quai ??eo c?? th??? ??i???u ch???nh ????? d??i d??? d??ng ph?? h???p v???i t???ng ng?????i.
??? Thi???t k??? c?? quai x??ch tay."','5006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('282',N'"K??ch th?????c: 46 x 30 x 16cm
??? Ch???t li???u: v???i Oxford ch???ng th???m n?????c v?? ch???ng b??m b???i c???c t???t, v???i l??t Polyester
??? C???ng s???c USB th??ng minh v?? ti???n l???i
??? Ng??n ?????ng laptop 15.6???
??? M??u s???c: ??en, ghi ??en, xanh than
??? Tr???ng l?????ng: 1kg"','5007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('283',N'"Ch???ng n?????c c???c cao
??? C?? ng??n ch???ng s???c ??? ?????ng ???????c laptop 15 inch
??? Tr???ng l?????ng : 0.8kg (1.76lb.)
??? K??ch th?????c : 31cm x 18cm x 46cm (12.20in x 7.09in x 18.11in)
??? V???i ch???ng n?????c si??u c???p
??? Kho?? n???p, quai ??eo ph???n quang CH???NG TR???M, CH???NG N?????C NG???M v??o b??n trong t???i ??a
??? V???t li???u l??t: Polyester
??? Ch???t li???u v???i : Oxford ch???ng n?????c cao c???p nh???t
??? Thi???t k??? tr??? trung, n??ng ?????ng v???i 1 m??u ??en"','5008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('284',N'"V???i: Ch???t L?????ng Cao Oxford
??? Th??? t??ch: 20-35L
??? K??ch th?????c: 46*30*12 CM
??? Tr???ng l?????ng: 1.00 KG
??? Nam Gi???i, N??? gi???i
??? D???p ??p d???ng: ??i H???c,Th??? Thao Ngo??i Tr???i,Du L???ch
??? Ch???c n??ng: ch???ng m??i m??n/Ch???ng Th???m/L??m Gi???m B???t qu?? m???c g??nh n???ng
??? V???i l??t: Polyester"','5009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('285',N'"K??ch th?????c: 48 x 32 x 16cm
??? Ch???t li???u: v???i Oxford ch???ng th???m n?????c v?? ch???ng b??m b???i c???c t???t, v???i l??t Polyester
??? Kh??a ch???ng tr???m TSA007 ???????c hi???p h???i h???i quan qu???c t??? ch???ng nh???n v??? ????? an to??n.
??? Ng??n ?????ng laptop 15.6???
??? M??u s???c: ??en, ghi, tr???ng
??? Tr???ng l?????ng: 1,3kg"','5010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('286',N'"V??? thi???t k???, All Hazard Nitro kh?? gi???ng Prime, nh??ng k??ch th?????c b?? h??n (kho???ng 20L)
??? V???i 1050D ch???ng th???m n?????c nh???, c???c b???n
??? Balo c?? th??? chia l??m 2 ng??n r???ng v?? c?? th??? m??? ra t???i 180 ?????, c?? 1 t??i l?????i ????? d???c ?????ng th??m ?????
??? Ng??n nh??? m???t tr?????c v?? 2 ng??n ch??nh s??? d???ng lo???i kh??a d???t ,c??n l???i ?????u s??? d???ng kh??a d??y c???t nh?? ng??n ?????ng Bladder.
??? Th??ch h???p v???i anh em n??o mang balo ??i l??m, ??i h???c, ch???a laptop 13??? ho???c ????i khi ??i c??ng t??c ng???n ng??y (2-3 ng??y)
??? K??ch th?????c: 45x23x15cm
??? Xu???t x??? Vi???t Nam
"','5011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('287',N'"Ch???t li???u 1050 ??? denier, Ch???ng th???m , H???n ch??? ch??y
??? Tr???ng L?????ng : 2Kg
??? K??ch Th?????c : 52 x 29 x 23 Cm
??? Laptop : 17???"','5012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('288',N'"Ch???t li???u v???i 1050D nylon ch???u n?????c c???c t???t v?? h???n ch??? ch??y.
??? C?? ng??n ????? laptop v???i ?????m ch???ng s???c, balo laptop 14 inch tr??? xu???ng. C?? ng??n ph??? ki???n v???i c??c v??? tr?? ????? pin, s???c, tai nghe, c??p???
??? Tr???ng L?????ng : 1Kg
??? Th??? T??ch : 34L
??? K??ch Th?????c : 51 x 30 x 18 Cm
??? Quai ??eo c???c ??m v???i l???p m??t b???c trong.
??? D??y ??eo ngang ng???c c?? th??? ??i???u ch???nh linh ho???t.
??? ?????m l??ng ?????c bi???t ??m ??i, c?? c??c l??? tho??t kh?? ch???ng n??ng trong m??a h??.
??? Kh??a k??o YKK b???n b???.
??? Ph???n c???ng Duraflex"','5013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('289',N'"TH??? T??CH : 21 L??t
??? K??CH TH?????C : 46 x 29 x 17cm.
??? NGU???N G???C : H??ng ch??nh h??ng 100% 511 Tactical ??? H??ng s???n xu???t balo cho qu??n ?????i ??? m??u c???c hi???m, s??? l?????ng ch??? c?? 1 con duy nh???t
??? CH???T LI???U : Ch???t li???u 1050 ??? denier, Ch???ng th???m 100%, H???n ch??? ch??y
??? THI???T K??? : Fit Laptop 14 16 inches, R???t nhi???u ng??n ????? ?????, Ph?? h???p cho ??i du l???ch d??i ng??y,
??? balo r????t h???p cho b???n ??i ph?????t,du l???ch.."','5014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('290',N'"Ho???t ?????ng outdoor: Leo n??i, du l???ch.
??? Ho???t ?????ng ph?? h???p: D?? ngo???i, leo n??i, du l???ch, c???m tr???i, ph?????t, th??m hi???m.
??? M??a ph?? h???p: 4 m??a.
??? Th????ng hi???u: Deuter.
??? M??u s???c: Cam, xanh d????ng, ??en,
??? Tr???ng l?????ng: 1.4kg.
??? K??ch th?????c: 62x30x18cm (HxWxD).
??? Th??? t??ch: 30l"','5015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('291',N'"C??n n???ng: 1740 g
??? Th??? t??ch: 42 litres
??? K??ch th?????c: 70 / 34 / 27 (H x W x D) cm
??? S???n xu???t t???i Vi???t Nam
??? Ch???t li???u: Deuter-Super-Polytex
??? Macro Lite 210
-M???u m???i nh???t 2016
??? Twin-frame cho h??? th???ng Flexlite Aircomfort 3D c?? kh??? n??ng tho??ng kh?? m???nh m???.
??? Ng??n ch??nh r???ng r??i ????ng m??? v???i d??y r??t ti???n l???i.
??? Ng??n ph??? l???n ph??a d?????i c?? kh??? n??ng ?????ng ????? d?? ho???c gi??y d??p c???a b???n.
??? ??ai h??ng c?? kh??? n??ng gi???m t???i tr???ng l??n vai c???a b???n.
??? ????y t??i c???ng c??p t??i ??o m??a cho balo c?? kh??? n??ng ch???ng l???i m???i th???i ti???t t??? b??n ngo??i.
??? C??c ??ai xung quanh gi??p ?????nh h??nh balo. Gi??? cho tr???ng l?????ng c??n b???ng.
??? ???????c l??m t??? ch???t li???u 600 Polyester v???i m???t l???p ph??? PU d??y, m???nh m???, nh???.
??? S??? d???ng v???t li???u Nylon 420 denier v?? 210 denier.
??? ?????c bi???t denier m???t ????? cao polyamide ch???u m??i m??n cao,
??? Ba l?? c?? h??? th???ng Aircomfort Flexlite Pro tuy???t v???i mang l???i s??? th??ng tho??ng, tho???i m??i v?? linh ho???t."','5016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('292',N'"Dung t??ch: 32L
+Tr???ng l?????ng: 1.5kg
+Chi???u cao: 60cm
+ d??i 65cm, R???ng 34cm, s??u 24cm
-Ch???t li???u: ???????c d???t t??? s???i polyester cao c???p. L???p ngo??i c??ng ???????c ph??? PU gi??p ch???ng th???m t???t h??n."','5017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('293',N'"H??? th???ng tho??t kh?? Air Comfort ??? l??ng gi??p m??? h??i ti???t ra trong qu?? tr??nh di chuy???n bay h??i nhanh h??n, ??em l???i c???m gi??c kh?? tho??ng, tho???i m??i.
H??? th???ng d??y m??c, ??ai h??? tr??? ???????c b??? tr?? h???p l?? l??m t??ng t??nh ???ng d???ng v?? t??nh ti???n d???ng cho ba l??.
H??? th???ng gi?? ????? ch???ng x??? ph??a l??ng gi??p h??? tr??? t???i ??a trong qu?? tr??nh di chuy???n, h???n ch??? x??? ????y g??y c???n tr??? v?? t???n s???c trong l??c di chuy???n.
Bao g???m khoang ch??nh v?? khoang ph???, dung t??ch ph?? h???p v???i c??c chuy???n ??i t??? 3 ?????n 5 ng??y.
S???n ph???m c?? m??u s???c t????i s??ng r???t ph?? h???p v???i c??c ho???t ?????ng du l???ch d?? ngo???i, th??ch h???p v???i h???u h???t c??c lo???i h??nh du l???ch."','5018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('294',N'"K??ch th?????c: D??i 45 cm: R???ng 29, D???y 17CM
??? Ng??n ch??nh r???ng r??i ?????ng ????? c?? nh??n, nhi???u nh??? ????? ??i???n tho???i v?? ti???n, gi??y d??p???.,
??? Ng??n ????? laptop ri??ng bi???t 15.6???
??? V???t li???u l??t: Polyester
??? Ch???t li???u v???i : Oxford ch???ng n?????c cao c???p nh???t
??? Thi???t k??? tr??? trung nam n??? ??eo ?????u ph?? h???p ??i h???c ??i ch??i hay ??i d?? ngo???i"','5019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('295',N'"Tr???ng l?????ng 800g
??? Th??? t??ch: 21L
??? Ch???t li???u v???i : Oxford ch???ng n?????c cao c???p nh???t
??? V???t li???u l??t: Polyester
??? K??ch th?????c 48x15x32
??? Ng??n ????? laptop ri??ng bi???t 15.6???
??? Kh??ng gian ng??n ch???a ????? r???ng r??i, c?? b??? xung ng??n ch???ng shock cho iPad/m??y t??nh b???ng. Ngo??i ra c??n c?? c??c ng??n nh??? ti???n l???i???"','5020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('296',N'"??? K??ch th?????c: D??i 30: R???ng 16, Cao 46CM
??? C?? ng??n c?? th??? ?????ng m??y t??nh 17,3 inch
??? V???i ch???ng n?????c si??u c???p
??? C?? th??? t??ng gi???m k??ch th?????c t??? 25-30-40 t??y theo ?? mu???n
??? Ng??n ch??nh r???ng r??i ?????ng ????? c?? nh??n, nhi???u nh??? ????? ??i???n tho???i v?? ti???n???.,
??? V???t li???u l??t: Polyester
??? Ch???t li???u v???i : Oxford ch???ng n?????c cao c???p nh???t
??? Thi???t k??? tr??? trung nam n??? ??eo ?????u ph?? h???p ??i h???c ??i ch??i hay ??i d?? ngo???i"','5021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('297',N'"K??ch th?????c: D??i 52: R???ng 26, Cao 26 cm
??? C?? ng??n c?? th??? ?????ng m??y t??nh 17,3 inch
??? V???i ch???ng n?????c si??u c???p
??? C?? th??? ??eo, x??ch, ??eo ch??o ??a n??ng ti???n l???i
??? Ng??n ch??nh r???ng r??i ?????ng ????? c?? nh??n, nhi???u nh??? ????? ??i???n tho???i v?? ti???n???.,
??? V???t li???u l??t: Polyester
??? Ch???t li???u v???i : Oxford ch???ng n?????c cao c???p nh???t
??? Thi???t k??? tr??? trung nam n??? ??eo ?????u ph?? h???p ??i h???c ??i ch??i hay ??i d?? ngo???i"','5022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('298',N'"K??ch th?????c: H44??W29??D15cm
??? Tr???ng l?????ng: 720g
??? S??? d???ng ch???t li???u Cordura nylon cho kh??? n??ng ch???ng th???m , h???n ch??? t???i ??a kh??? n??ng th???m n?????c cho t??i.
??? Balo Manhattan Portage BLACK LABEL mp1274twlbl thi???t k??? ????n gi???n , tr???ng l?????ng si??u nh???, nhi???u ng??n ti???n d???ng cho b???n kh??? n??ng s??? d???ng tuy???t v???i.
??? Balo g???m 1 ng??n ch??nh, ng??n ????? laptop ri??ng bi???t fix laptop 15.6, b??n trong nhi???u ng??n nh??? ti???n l???i, ng??n ph??? ??? ph??a tr?????c cho ph??p l???y ????? nhanh v?? 2 t??i b??n h??ng ?????ng chai n?????c, ?? d?????
??? Quai ??eo ??u vi???t, thi???t k??? ??m s??t b??? vai & ?????m m??t t???n kh??, ??m ??i
??? Th??n sau ?????m m??t tho??t kh?? k??m d??y ??ai c??i tay k??o vali
??? Ch???t li???u v???i polyester ch???ng th???m n?????c t???t.
??? H??ng ch??nh h??ng xu???t Nh???t."','5023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('299',N'"Ch???t li???u: Polyester, Nylon, PE, PU
??? Tr???ng l?????ng: 0.5 kg
??? T???i tr???ng t???i ??a: 10 kg
??? K??ch th?????c nh??? g???n 27x15x37 cm tr???ng l?????ng si??u nh??? ch??? 0.5kg gi??p b?? c???m th???y nh??? t??nh m???i ng??y ?????n l???p.
??? Ch???t li???u v???i tr?????t n?????c b???o v??? t???p v???, ????? d??ng h???c t???p c???a b?? tr??nh kh???i t??c ?????ng c???a n?????c d?? kh??ng may g???p m??a.
??? ??ai ng???c, ??ai h??ng gi??p balo ??m s??t l??ng, d??n tr???i ?????u tr???ng l?????ng to??n th??n thay v?? ???? n???ng l??n vai, ch???ng cong ??? v???o c???t s???ng, b?? v???ng b?????c ?????n tr?????ng.
??? B?? d??? d??ng ki???m so??t th???i gian v?? nh???n ra balo c???a m??nh nh??? t??ch h???p th???i kh??a bi???u b??n trong v?? b???ng t??n b??n ngo??i."','5024');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('300',N'"Ch???t li???u: Polyester, Nylon, PE, PU
??? Tr???ng l?????ng: 0.5 kg
??? T???i tr???ng t???i ??a: 10 kg
??? K??ch th?????c nh??? g???n 24x15x34 cm, tr???ng l?????ng si??u nh??? ch??? 0.5kg gi??p b?? c???m th???y nh??? t??nh m???i ng??y ?????n l???p.
??? Ch???t li???u v???i tr?????t n?????c b???o v??? t???p v???, ????? d??ng h???c t???p c???a b?? tr??nh kh???i t??c ?????ng c???a n?????c d?? kh??ng may g???p m??a.
??? ??ai ng???c, ??ai h??ng gi??p balo ??m s??t l??ng, d??n tr???i ?????u tr???ng l?????ng to??n th??n thay v?? ???? n???ng l??n vai, ch???ng cong ??? v???o c???t s???ng, b?? v???ng b?????c ?????n tr?????ng.
??? B?? d??? d??ng ki???m so??t th???i gian v?? nh???n ra balo c???a m??nh nh??? t??ch h???p th???i kh??a bi???u b??n trong v?? b???ng t??n b??n ngo??i."','5025');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('301',N'"Ch??nh ch???t li???u cao c???p simili c??ng kh??a k??o nh???a d???o gi??p balo si??u nh??? ch???ng g?? ch???ng n?????c ho??n h???o. S??ch v???, ????? d??ng h???c t???p c???a b?? s??? ???????c b???o v??? tuy???t ?????i n???u kh??ng may g???p m??a ho???c b??? n?????c ????? v??o tr???c ti???p.
??? Hai l???p ?????m cao su ch???ng l??n trong c???u t???o v??? LIGHTLY ch???ng l???i m???i va ?????p c???a ngo??i l???c ho???c th???m ch?? kh??ng may b?? l??m r???t balo xu???ng s??n, b???o v??? ????? d??ng, t???p v??? v?? ?????c bi???t l?? c??c thi???t b??? ??i???n t??? c???a b??.
??? Ph???n l??ng balo c?? ????? cong nh??? t??? nhi??n k???t h???p m??t 3D ??m ??i, tho??ng kh??, h???n ch??? ????? m??? h??i l??ng d?? ??eo balo trong th???i gian d??i d?????i th???i ti???t n??ng b???c.
??? Ph???n ????y ???????c trang b??? ?????m cao su ?????nh h??nh, gi??p t???p v??? b??n trong balo kh??ng b??? qu??n m??p d?? b?? c?? ch???y nh???y ????a gi???n c??ng b???n b??.
??? Balo t??ch h???p th???i kh??a bi???u b??n trong ng??n ch??nh v?? b???ng t??n b??n h??ng gi??p b?? d??? d??ng nh???n bi???t balo c???a m??nh c??ng nh?? qu???n l?? th???i gian c?? nh??n hi???u qu???."','5026');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('302',N'"Ch???t li???u: Polyester
??? Tr???ng l?????ng: 0.7 kg
??? K??ch th?????c: 13x31x44 cm
??? T???i tr???ng t???i ??a: 15 kg
??? Th???i h???n b???o h??nh: 1 n??m
??? Thi???t k??? Tinh gi???n thi???t k??? d??nh ri??ng cho b???n tr??? s??nh ??i???u nh??ng tinh t???
??? Ch???t v???i polyester si??u tr?????t n?????c. Ch???ng n?????c hi???u qu???, an to??n tuy???t ?????i k??? c??? khi g???p m??a
??? H??? th???ng kh??a zip an to??n, ch???ng r???ch b???ng v???t s???t nh???n gi??p b???n y??n t??m d?? ??? nh???ng n??i ????ng ng?????i.
??? Balo laptop th???i trang Spirit g???m ng??n laptop, ng??n ch??nh v?? nhi???u ng??n ph??? ti???n d???ng. B??n trong ng??n laptop trang b??? d??y c??? ?????nh c??ng ?????m EVA ch???ng s???c, ch???ng rung l???c trong qu?? tr??nh di chuy???n, an to??n tuy???t ?????i cho c??c d??ng m??y t??nh x??ch tay l??n ?????n 17 inches."','5027');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('304',N'"Ch???t li???u Polyester, EVA
??? Tr???ng l?????ng 1.2 kg
??? K??ch th?????c 32x19x49 cm
??? T???i tr???ng t???i ??a 20 kg
??? Th???i h???n b???o h??nh 1 n??m
??? Balo laptop SAKOS DILY i15 thi???t k??? v???i ki???u d??ng th???i trang, ?????ng c???p, ch???t li???u v???i polyester ch???c ch???n, b???n b???, c?? ng??n d??nh cho laptop 15.6 inch r???t ph?? h???p cho sinh vi??n, d??n c??ng s???, k??? s?????
??? Balo SAKOS DILY i15 g???m 2 ng??n ch??nh v?? 2 ng??n ph???.
??? Ng??n ch??nh r???t r???ng cho b???n tho???i m??i l??u tr???, b??n trong c?? ng??n ????? m??y t??nh x??ch tay 15.6 inch v?? ng??n ????? ipad c?? l???p l??t ch???ng s???c. Ng??n ch???ng tr???m ???????c thi???t k??? s??t l??ng k??n ????o, mang ?????n s??? an to??n tuy???t ?????i cho ng?????i d??ng. T???t c??? h??? th???ng ng??n ?????u ???????c trang b??? kh??a zip an to??n, h???n ch??? t??c ?????ng c???a c??c v???t s???c nh???n.
??? Hai ng??n ph??a tr?????c v???i nhi???u ng??n ph??? b??n trong ????? v???t d???ng c?? nh??n c???n thi???t nh?? b??t vi???t, name card, s??? tay, ??i???n tho???i???
??? Hai t??i b??n h??ng c?? ?????ng c?? th??? ????? b??nh n?????c hay ?? d??.
??? ?????m l??ng v?? quai ??eo c?? l???p l??t tho??ng kh?? t???o s??? tho???i m??i khi s??? d???ng."','5028');
	/*M??*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('305',N'"Th????ng hi???u MLB
Xu???t x???        M?? H??n Qu???c
Ki???u d??ng        N??n k???t - M?? l?????i trai
M??u s???c        M?? ??en
Ch???t li???u        100% Cotton
Size        One Size"','3040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('306',N'"Th????ng hi???u	Gucci
Xu???t x???	M?? ??
Ki???u d??ng	M?? l?????i trai - N??n k???t
M??u s???c	M??u n??u nh???t
Size	S - M"','3042');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('307',N'"Th????ng hi???u	Lacoste
Xu???t x???	M???
Ki???u d??ng	M?? l?????i trai
M??u s???c	Tr???ng
Gi???i t??nh	Nam"','3044');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('308',N'"Th????ng hi???u	GUCCI
Xu???t x???	??
Ki???u d??ng	M?? l?????i trai
M??u s???c	N??u nh???t
Ch???t li???u	Canvas
Size	L"','3046');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('309',N'"Hai b??n m?? ???????c th??u m???i t???m v???i g???m 2 m??u ????? xanh huy???n tho???i c???a h??ng Gucci.
L?????i m?? ???????c bao b???c 1 mi???ng da quanh vi???n v?? ???????c may m???i t???m v???i 2 b??n v???i nh???ng ???????ng ch??? r???t tinh t???.
Mi???ng d??n b???ng da sau m??, ??i???u ch???nh t??ng gi???m ???????c.
B??n trong m?? Original GG l??m b???ng ch???t li???u v???i Cotton ???????c l??t th??m t???m b??ng t???o c???m gi??c ??m ??i cho ?????u khi ?????i.
M?? ???????c l??m b???ng ch???t li???u cao c???p c???a ?? v?? ???????c ph??? 1 l???p keo h??? tr??? l??m gi???m th???m n?????c t???o s??? d??? ch???u v?? tho???i m??i khi mang v???i m???i kh??ch h??ng cho d?? kh?? t??nh.
M?? c?? thi???t k??? v???a v???n, d??? ph???i ????? v???i qu???n jeans, qu???n short v?? ??o thun hay polos t???o n??n s??? sang tr???ng v?? m???nh m???.
"','3048');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('310',N'"M?? ???????c l??m b???ng ch???t li???u Polyester/cotton cao c???p mang l???i c???m gi??c tho??ng m??t, tho???i m??i cho ng?????i s??? d???ng.
- ???????ng may c???a m?? v???i c??c ???????ng n??t tinh t??? v?? t??? m???, chinh ph???c ngay c??? nh???ng kh??ch h??ng kh?? t??nh.
- Logo tr??n m?? t???o ??i???m nh???n r???t ?????c ????o.
- Ph??a sau m?? b???n c?? th??? ??i???u ch???nh k??ch th?????c sao cho v???a v???i v??ng ?????u c???a m??nh.
- M??u s???c m?? n??u d??? d??ng k???t h???p v???i nhi???u trang ph???c kh??c nhau theo s??? th??ch c???a b???n th??n."','3050');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('311',N'"97% cotton, 3% v???i d???t tr??n elastane
H??t ???m
V??nh cong tr?????c
D??y ??eo sau c?? th??? ??i???u ch???nh v???i kh??a
H??? s??? UV 50+
C???u tr??c s??u b???ng ??i???u khi???n
Doubleknit
S??ng ki???n ??????B??ng t???t h??n
M??u tr???ng
M?? s???n ph???m: GU8621"','3052');

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('312',N'M?? ???????c l??m t??? ch???t li???u Cotton (85%), Polyamide (15%) tho??ng kh??, kh??ng phai m??u, d??? gi???t v?? d??? b???o qu???n.
- Form m?? chu???n ?????p, c??c ???????ng ch??? kh??u r???t t??? m??? v?? ch???c ch???n h??i l??ng m???i kh??ch h??ng.
- Kh??a ph??a sau c?? th??? ??i???u ch???nh ph?? h???p v???i m???i kh??ch h??ng.
- M?? n???i b???t v???i h???a ti???t logo c?? s???u ?????y tinh t??? ph??a tr?????c t???o ??i???m nh???n ri??ng.
- M??u s???c m?? tr???ng d??? k???t h???p v???i nhi???u phong c??ch th???i trang kh??c nhau.
- ???????c thi???t k??? v???i phong c??ch tr??? trung, kh???e kho???n v?? l???ch l??m mang ?????m phong phong c??ch ?????c tr??ng c???a th????ng hi???u Lacoste.
- C??c ???????ng ch??? kh??u th???ng h??ng r???t tinh t??? v?? ch???c ch???n.','3054');
	
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('313',N'"Sau khi s??? d???ng m?? n??n treo l??n g???n g??ng n??i c?? v??? tr?? kh?? r??o v?? tho??ng m??t.
- Khi gi???t m?? n??n gi???t b???ng tay, kh??ng n??n d??ng m??y gi???t v?? s??? l??m m???t form v?? h?? d??ng m??.
- Tr??nh gi???t c??ng nh???ng ch???t g??y loang m??u.
- Kh??ng n??n b??? m?? trong t??i x??ch qu?? l??u s??? khi???n ch??ng m???t ??i h??nh d??ng ban ?????u.
- N??n c?? t??i ?????ng ri??ng ????? b???o qu???n m?? ???????c m???i v?? b???n h??n."','3056');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('314',N'"Th????ng hi???u	MLB
Xu??t x???	M?? H??n Qu???c
Ki???u d??ng	M?? tr??n
M??u s???c	Xanh b??
Ch???t li???u	100% Polyester
TH??NG TIN CHUNG
KI???U D??NG
M?? tr??n
GI???I T??NH
Unisex
M??U S???C
M??u Xanh B??
CH???T LI???U
100%Polyester
XU???T X???
H??n Qu???c
PH??N LO???I
MLB BUCKET"','3058');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('315',N'"V??? tr?????c: 100% polyester d???t tr??n
V??? sau: 100% l?????i polyester
Sweatband: kh??n 100% cotton
????ng snapback c?? th??? ??i???u ch???nh
D???t tr??n
M??u ??en
M?? s???n ph???m: H34574"','3060');
	/*INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('316',N'"V???: kh??n 100% cotton
L???p l??t: 80% polyester, 20% cotton d???t tr??n
Tr???ng l?????ng nh???
Khoen
?? Disney
Kh??n t???m
M??u ??en
M?? s???n ph???m: HE3087"','3062');*/
	
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('319',N'"Ch??nh: 55% polyester t??i ch???, 45% polyester dobby
T???m l?????i: 97% polyester, 3% l?????i elastane
Sweatband: 100% polyester doubleknit t??i ch???
Tr???ng l?????ng nh???
Bungee c?? th??? ??i???u ch???nh
Dobby
M??u s???c: ??en / T??m vinh quang
M?? s???n ph???m: H25268"','3068');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('320',N'"C??? ph??? th??ng
100% cotton twill
H??t ???m
V??nh cong tr?????c
D??y ??eo sau c?? th??? ??i???u ch???nh m??c v?? v??ng
Huy hi???u th??? thao c???a adidas ???????c th??u n???i ??? m???t tr?????c
S??ng ki???n ??????B??ng t???t h??n
M??u s???c: White / Haze Coral
M?? s???n ph???m: GU6174"','3070');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('321',N'"C??? ph??? th??ng
100% polyester d???t tr??n
L?????i l??t
V??nh cong tr?????c
D??y ??eo sau c?? th??? ??i???u ch???nh
C???u tr??c s??u b???ng ??i???u khi???n
Huy hi???u Trefoil
D???t tr??n
M??u ??en
M?? s???n ph???m: GN4886"','3072');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('322',N'"100% cotton twill
B??ng ???? h??t ???m
Twill
M??u tr???ng
M?? s???n ph???m: GL8769"','3074');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('323',N'"100% polyester l??ng
L??ng th??
M??u ??en
M?? s???n ph???m: HG8462"','3076');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('324',N'"100% cotton twill
M?? b??ng ch??y Hiroko Takahashi
M??u ??en
M?? s???n ph???m: GM8722"','3078');

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('325',N'"100% cotton twill
M?? b??ng ch??y Hiroko Takahashi
M??u ??en
M?? s???n ph???m: GM8722"','3080');

/*??o n???*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('326',N'','5100');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('327',N'??o len ch???t li???u 100% acrylic, tay l???, d??ng slimfit','5101');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('328',N'"B??? Pyjamas Polyester Spandex
Ao ng???n tay qu???n sooc"','5102');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('329',N'??o ki???u, c??? tr??n, tay ng???n, ch???y chun eo, c???t t??ng','5103');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('330',N'"??o ph??ng n??? thu???c BST ""V??? ?????p ri??ng m???i ng?????i""
Ch???t li???u 100% cotton USA, c?? h??nh in
D??ng regular, c??? tr??n, tay c???c."','5104');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('331',N'"??o ph??ng ch???t li???u polyester pha
D??ng regular, c??? thuy???n, tay c???c h??i ph???ng."','5105');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('332',N'"??o ph??ng ch???t li???u cotton USA
D??ng regular, c??? tr??n, tay c???c, d??y d???t r??t g???u ??o."','5106');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('333',N'"??o ph??ng ch???t li???u cotton pha
D??ng regular, c??? tr??n, tay c???c, d??m eo, v???t ch??o."','5107');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('334',N'??o ph??ng n??? ph???i tay d???t thoi','5108');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('335',N'"??o ph??ng ch???t li???u cotton USA in ng???c
D??ng regular, c??? tr??n, tay c???c."','5109');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('336',N'"??o ki???u ch???t li???u 100% cotton
D??ng regular, c??? tr??n, tay ph???ng."','5110');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('337',N'"??o ph??ng ch???t li???u cotton USA c?? h??nh in
D??ng regular, c??? tr??n, tay c???c."','5111');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('338',N'??o m???c trong n???','5112');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('339',N'"??o gi??? nhi???t ?????t chu???n Oeko-Tex 100 Class 2
D??ng slim fit, c??? tim, d??i tay"','5113');
/*T??i x??ch*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('341',N'"K??ch th?????c: 34 cm x 12 cm x 5 cm
Ch???t li???u: 100% polyester oxford
C???u tr??c t??i: 2 ng??n ????? ???????c nhi???u v???t d???ng nh??: ??i???n tho???i, b??p v??, ch??a kh??a, s???c d??? ph??ng v.v???
Ti???n l???i khi ??i ch??i, du l???ch, ???ai m?? l?? tr??m qu??n ????? th?? c??? mang m???i th??? linh tinh b??? h???t v??o ????y ?????m b???o an to??n nh??."','3000');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('342',N'"Th????ng hi???u: Jordan
M?? s???n ph???m: 9A0443-GB5
Ph???i m??u: Shadow/Black White
K??ch th?????c: 17cm x 13cm x 4cm (chi???u cao x chi???u d??i x chi???u r???ng)
Ch???t li???u: Polyurethane
Ph??t h??nh: 2020"','3002');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('343',N'"Th????ng hi???u: Nike
- M??: BA5750-689
- M??u s???c: Canyon Pink, Pale Ivory
- K??ch th?????c: 41*10*15 cm
- Ch???t li???u: 100% polyester
- Hai ng??n c?? kh??a k??o
- D??y ??eo th???t l??ng c?? th??? ??i???u ch???nh"','3004');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('344',N'"T??i Adidas Core Waist Bag Grey CM5541 M??u X??m ???????c l??m t??? ch???t li???u  100% polyester cao c???p b???n ?????p trong su???t qu?? tr??nh s??? d???ng. Form t??i v???i c??c ???????ng may v?? c??ng t??? m???, tinh t??? h??i l??ng m???i kh??ch h??ng. 
Ng??n trong t??i r???ng r??i ????? ???????c nhi???u v???t d???ng thi???t y???u kh??c nhau khi ??i ra ngo??i. T??i thi???t k??? sang tr???ng c??ng h???a ti???t n???i b???t l??m ??i???m nh???n. Ph???n kh??a k??o ch???c ch???n c??ng d??y ??eo c?? th??? ??i???u ch???nh t??y s??? th??ch c???a m???i ng?????i.
K??ch th?????c: 35.5 x 12.5 x 14cm"','3006');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('345',N'"100% polyester d???t tr??n
T??i ?????ng Hiroko Takahashi
D??y ??eo vai c?? th??? ??i???u ch???nh v???i kh??a ????ng
T??i zip ph??a tr?????c
K??ch th?????c: 14 cm x 18 cm
D???t tr??n
M??u s???c: ??en / Tr???ng
M?? s???n ph???m: GM8723"','3008');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('346',N'" Th????ng hi???u: adidas
- M??u ??en
- B??? m??n: Nam
- Ki???u d??ng: T??i ??eo ch??o
- T??nh n??ng: D??y ??ai c?? th??? ??i???u ch???nh
- Ch???t li???u: 100% Polyester
- M?? h??nh: Trefoil
- Qu???c gia / Khu v???c s???n xu???t: Vi???t Nam
- MPN: ED5875
- K??ch th?????c: 21 cm (W) x 10 cm (H) x 7 cm (D)
- UPC: 746648982987"','3010');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('347',N'"- Ch???t li???u DA B?? cao c???p, b???o h??nh da 12 th??ng n???u bong, tr??c, n??? do l???i nh?? s???n xu???t
- Ki???u d??ng th???i trang, sang tr???ng, phong c??ch, t???o cho b???n s??? ?????ng ?????n, ch???ng ch???c v?? s??? chuy??n nghi???p v???i kh??ch 
  h??ng, ?????i t??c.
- Thi???t k??? t???i ??u : ?????ng laptop, h??? s??, t??i li???u, ????? d??ng c?? nh??n 1 c??ch ti???n d???ng, tho???i m??i. B??n trong t??i ???????c chia 
  l??m 2 ng??n to v?? 1 ng??n nh??? k??o s??c.
- Ch???t li???u da cao c???p, kh??ng th???m n?????c, d??? d??ng l??m s???ch,????? b???n cao.
- M??u s???c ??a d???ng: N??u ?????m, N??u nh???t, ??en
- K??ch th?????c s???n ph???m: 39 x 29 x 7cm.
- T??i ?????ng v???a laptop 14 inch"','3012');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('348',N'"Ch???t li???u: V???i Canvas cao c???p r???t b???n, ?????p theo th???i gian.
 M???u c?? 3 m??u: ??en - Xanh than -  X??m
 K??ch th?????c:  32 x 17 x 5 (cm) (Ngang x Cao x R???ng ????y)
 T??i ??eo mang phong c??ch H??n Qu???c tr??? trung, l???ch l??m v?? r???t th???i trang
 ???????ng may ???????c kh??u r??t t??? m??? v?? ch???c ch???n.
 D??y ??eo ???????c thi???t k??? r???t m???n, in ch??m r???t ?????p v?? ch???n ch???n .c?? th??? thay ?????i k??ch th?????c d??? d??ng.
 M??u s???c ??a d???ng nam t??nh h???p v???i m???i lo???i trang ph???c, b???n c?? th??? ??eo ??i ch??i, g???p g??? b???n b??, ??i ch??a chi???n l??? h???i, ??i d?? ngo???i....
Thi???t k??? nhi???u ng??n ?????ng ??i???n tho???i ,ipad ,v?? ,s??? s??ch tho???i m??i ...."','3014');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('349',N'" T??i da nam, t??i ??eo vai th???i trang, t??i da ??eo ch??o, t??i tr???ng, t??i ??eo vai da m???m
  C??c s???n ph???m ?????t ti??u chu???n lo???i 1, ch???t li???u da cao c???p, b???n ?????p theo th???i gian
  ???????ng may t??? m???, ch???c ch???n
  Ki???u d??ng ??a d???ng phong ph??, h???p th???i trang
  S???n ph???m ph?? h???p: Nam, N???	                             
???Th????ng hi???u: OEM
???Ch???t li???u: Da PU cao c???p
???V???t li???u l??t: Polyester
???Kh???i l?????ng: 490g
???K??ch th?????c: 24cm x 21cm x 6
???Ki???u d??ng: T??i ??eo vai, T??i ??eo ch??o
???M??u s???c: ??en, Cafe
???Xu???t x???: Trung Qu???c
???B???o h??nh s???n ph???m: 03 th??ng (b???ng m?? ????n mua h??ng)	"','3016');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('351',N'"Ch???t li???u: Da t???ng h???p
K??ch Th?????c: 21 x 10 x 17,5
S??? ng??n: 1
D??ng: ??i ti???c, ??i ch??i, ??i l??m

- Quai c???m ph???i v???i tinh t???, xinh x???n. Li???u v??n da n???i b???n, ?????p.
- Phom t??i c??? trung ch???a ????? c??c v???t d???ng c?? nh??n c?? b???n nh?? ??i???n tho???i, v?? ti???n ng???n, m??? ph???m c?? b???n.
- Gam m??u  hi???n ?????i tr??? trung, d??? d??ng k???t h???p trang ph???c."','3020');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('352',N'"Ch???t li???u: Da t???ng h???p
Lo???i d??y ??eo: V???t t?? c??ng lo???i	
K??ch Th?????c: 20*7*17	
S??? ng??n: 1	
D??ng: ??i ti???c, ??i ch??i, ??i l??m	
- Thi???t k??? h??nh h???p ????n gi???n, quai c???m ph???i v???i xinh x???n, n???i b???t.	
- Phom t??i c??? trung ch???a ????? c??c v???t d???ng c?? nh??n c?? b???n nh?? ??i???n tho???i, v?? ti???n ng???n, m??? ph???m c?? b???n.	
- Gam m??u hi???n ?????i tr??? trung, d??? d??ng k???t h???p trang ph???c.	"','3022');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('353',N'"Ch???t li???u: Da t???ng h???p
Lo???i d??y ??eo: V???t t?? c??ng lo???i
K??ch Th?????c: 25*11*23
S??? ng??n: 1
D??ng: ??i l??m, ??i ch??i, ??i h???c

- V???i thi???t k??? n???p g???p, h???a ti???t d???p ch??o t???i ??i???m nh???n n???i b???t.
- Kh??ng gian t??i 2 ng??n ri??ng bi???t ch???a ????? c??c v???t d???ng c?? nh??n c?? b???n nh?? ??i???n tho???i, v?? ti???n.
- Gam m??u hi???n ?????i tr??? trung, d??? d??ng k???t h???p trang ph???c."','3024');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('354',N'"Ch???t li???u: Da t???ng h???p
Lo???i d??y ??eo: V???t t?? c??ng lo???i
K??ch Th?????c: 23*12.5*26
S??? ng??n: 3
D??ng: ??i l??m, ??i ch??i, ??i h???c

- D??ng t??i n???p g???p ????n gi???n, tr??? trung v?? c??ng n??ng ?????ng.
- Kh??ng gian t??i 3 ng??n ri??ng bi???t ch???a ????? c??c v???t d???ng c?? nh??n c?? b???n nh?? ??i???n tho???i, v?? ti???n.
- Gam m??u hi???n ?????i tr??? trung, d??? d??ng k???t h???p trang ph???c."','3026');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('355',N'"Ch???t li???u: Da t???ng h???p
Lo???i d??y ??eo: Kh??ng x??c ?????nh
K??ch Th?????c: 34*10*18
S??? ng??n: 1
D??ng: ??i ti???c, ??i ch??i, ??i l??m
- Thi???t k??? x???p ly m???m m???i, xinh x???n.
- Phom t??i c??? trung ch???a ????? c??c v???t d???ng c?? nh??n c?? b???n nh?? ??i???n tho???i, v?? ti???n ng???n, m??? ph???m c?? b???n.
- Gam m??u  hi???n ?????i tr??? trung, d??? d??ng k???t h???p trang ph???c."','3028');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('356',N'"Types of bag: Crossbody Ch???t li???u da Monogram canvas cao c???p.
V???i thi???t k??? nh??? nh???n, ti???n l???i trong vi???c s??? d???ng. Crossbody lu??n l?? s??? l???a ch???n t???i ??u c???a nh???ng c?? n??ng n??ng ?????ng... items n??y v?? c??ng h???u d???ng khi v???a c?? th??? ??eo??i ch??i c??ng c?? th??? x??ch khi ??i l??m."','3030');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('357',N'"Types of bag:  Crossbody 
Tr??n ch???t li???u da m???m m???i.D??ng t??i c?? n???p ????ng v?? ng??n ch???a ????? r???ng. D??ng t??i size v???a, phom t??i c???ng, th???i trang, tr??? trung... ph?? h???p v???i nh???ng b??? c??nh n??ng ?????ng, n??? t??nh."','3032');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('358',N'"Types of bag:  Crossbody Phom d??ng c???ng c??p l?? l???a ch???nph??? ki???n ph??? bi???n b???i thi???t k??? ????n gi???n, tinh t???. Nh???ng mi???ng da m??u s???c ??an xen, ?????i l???p t???o ??i???m nh???n th?? v??? cho m???u t??i n??y. T??i ??eo ch??o ch???n ch???n s??? l?? l???a ch???n ph?? h???p v???i nh???ng c?? g??i y??u th??ch s??? tr??? trung, n??ng ?????ng."','3034');
	/*??o Nam*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('361',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in n?????c
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('362',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in trame + in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('363',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in b???t n???i
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('364',N'"Ch???t li???u: Cotton 2 Chi???u
Th??nh ph???n: 100% cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('365',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('366',N'"Ch???t li???u: Poly 4 Chi???u
Th??nh ph???n: 85% poly 15% spandex freshgear
- Tho??ng kh??
- Nh???
- Th???m h??t m??? h??i
- Nhanh kh??
- Kh??? m??i t??? nhi??n
- M??t m???
- Co gi??n t???t
- ??t nh??n
+ H???a ti???t in d???o + in nh?? b???c
HDSD:
???i ??? nhi???t ????? d?????i 150 ????? C ????? tr??nh l??m v???i m???t ????? ????n h???i do qu?? n??ng
Kh??ng n??n gi???t sp trong n?????c n??ng tr??n 40 ????? C hay ph??i ngo??i n???ng g???t v?? s??? l??m v???i s?? c??ng, b???c m??u v???i.
Kh??ng n??n s??? d???ng ch???t t???y m???nh.
N??n l???i tr??i ??o khi ph??i ????? b???o v??? m??u s???c v?? h??nh in tr??n ??o"','1006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('367',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t ??p decal + in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('368',N'"Ch???t li???u: Cotton 4 Chi???u
Th??nh ph???n: 95% cotton 5% Spandex
- M???m m???i
- Tho??ng m??t
- Co d??n t???i ??u
+ H???a ti???t in d???o"','1008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('369',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o + nh??n ??p
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('370',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o + nh??n ??p
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('371',N'"Ch???t li???u: Cotton Compact
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('372',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in d???o + in trame
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('373',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ In nh?? logo V??n Hi???n Chi Bang
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('374',N'"Ch???t li???u: Cotton 2 Chi???u
Th??nh ph???n: 100% cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ Nh??n ??p logo 2010
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('375',N'"Ch???t li???u: Cotton 2 Chi???u
Th??nh ph???n: 100% cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in trame + in nh?? + in b??ng
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('376',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Co d??n 2 chi???u
- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t
+ In trame logo V??n Hi???n Chi Bang"','1016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('377',N'"Ch???t li???u: Cotton 2 chi???u
Th??nh ph???n: 100% Cotton
- Th??n thi???n
- Th???m h??t tho??t ???m
- M???m m???i
- Ki???m so??t m??i
- ??i???u h??a nhi???t
+ H???a ti???t in trame + in d???o
- HDSD:
+ N??n gi???t chung v???i s???n ph???m c??ng m??u
+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh
+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u"','1017');
/*V??y*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('378',N'"D??ng tight fit
C???p chun c?? d??y r??t
V???i nhung l??m t??? 93% polyester, 7% elastane
C??c t??i kh??a k??o hai b??n
M??u s???n ph???m: Solar Yellow
M?? s???n ph???m: H53365"','3080');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('379',N'"D??ng loose fit
C??? tr??n c?? g??n s???c
V???i single jersey l??m t??? 100% cotton
Better Cotton Initiative
M??u s???n ph???m: Ambient Sky
M?? s???n ph???m: H17958"','3082');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('380',N'"D??ng regular fit
C??? tr??n
V???i satin l??m t??? 95% polyester, 5% elastane
M??u s???n ph???m: Bliss Orchid
M?? s???n ph???m: HF9212"','3084');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('381',N'"D??ng loose fit
C??? r???ng
V???i l?????i l??m t??? 97% polyester t??i ch???, 3% elastane
L??ng ch??? T
M??u s???n ph???m: Black / White
M?? s???n ph???m: H20489"','3086');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('382',N'"D??ng slim fit
C??? tr??n
V???i thun g??n l??m t??? 95% cotton, 5% elastane
L??ng ch??? T
M??u s???n ph???m: Glory Mint
M?? s???n ph???m: H34601"','3090');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('383',N'"D??ng regular fit
Kh??a k??o d???c th??n v???i c??? r???ng
V???i piqu?? l??m t??? 52% cotton, 48% polyester t??i ch???
T??i ng???c c?? kh??a k??o
Primegreen
M??u s???n ph???m: Wonder White
M?? s???n ph???m: HB5563"','3092');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('384',N'"D??ng regular fit
C??? tr??n c?? g??n s???c
V???i d???t kim ????i l??m t??? 100% polyester t??i ch???
Ph???n eo c?? d??y r??t
M??u s???n ph???m: White
M?? s???n ph???m: GN3115"','3094');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('385',N'"D??ng slim fit
C??? tr??n
V???i thun g??n l??m t??? 95% cotton, 5% elastane"','3096');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('386',N'"M???c ?????p v??o m??a ????ng c??? khi r???nh r???i v?? trong m???t s??? l??? k??? ni???m nh???
V??y li???n th??n tuy???t v???i cho m??a Thu ????ng, y??u th??ch combo th??? thao v?? s??nh ??i???u
 Thi???t k??? Marimekko n???i ti???ng v?? Adidas, m???t s??? k???t h???p ho??n h???o."','3098');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('387',N'"D??ng regular fit
C??? ch??? V c?? g??n s???c
V???i single jersey l??m t??? 70% cotton, 30% polyester t??i ch???
C???m gi??c m???m m???i
Vi???n tay ??o c?? g??n bo
Th??u logo Ba L?? 3D ombr??
M??u s???n ph???m: White
M?? s???n ph???m: GN2848"','3100');
	

ALTER TABLE Products  ADD  CONSTRAINT FK_CategoryId FOREIGN KEY(CategoryId)
REFERENCES CateSmalls (Id) ON DELETE CASCADE ;

ALTER TABLE Authorities  ADD  CONSTRAINT FK_UserRoles FOREIGN KEY(Username)
REFERENCES Accounts (Username)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE Authorities  ADD  CONSTRAINT FK_Roles FOREIGN KEY(RoleId)
REFERENCES Roles(Id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE OrderDetails  ADD  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(OrderId)
REFERENCES Orders(Id)
ON UPDATE CASCADE
ON DELETE CASCADE;


ALTER TABLE Orders ADD  CONSTRAINT FK_Orders_Customers FOREIGN KEY(Username)
REFERENCES Accounts (Username)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE Promotions ADD  CONSTRAINT FK_Promotions_Products FOREIGN KEY(ProductId)
REFERENCES Products (Id);

ALTER TABLE ProductDetails ADD  CONSTRAINT FK_ProductDetails FOREIGN KEY(ProductId)
REFERENCES Products (Id);

ALTER TABLE CateSmalls ADD  CONSTRAINT FK_Category_CateSmall FOREIGN KEY(CategoryId)
REFERENCES Categories (Id);

ALTER TABLE Images ADD  CONSTRAINT FK_Images FOREIGN KEY(ProductId)
REFERENCES Products (Id);

ALTER TABLE Images ADD  CONSTRAINT FK_Images_ProductDetail FOREIGN KEY(ProductDetailid)
REFERENCES ProductDetails (Id);

ALTER TABLE Descriptions ADD  CONSTRAINT FK_Descriptions FOREIGN KEY(ProductId)
REFERENCES Products (Id);


ALTER TABLE OrderDetails ADD  CONSTRAINT FK_Product_Order_details FOREIGN KEY(ProductdetailId)
REFERENCES ProductDetails (Id);

