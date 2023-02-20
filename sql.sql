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

	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('hoangtu','2001',N'Nguyễn Hoàng Tú','nguyenhoangtu13062001@gmail.com','037826915','tu.jpg',N'Sóc Trăng');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('nhutbao','2001',N'Lê Nhật Bảo','nhutbao123456789@gmail.com','0853244830','bao.jpg',N'Bạc Liêu');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('minhtuong','2001',N'Nguyễn Minh Tường','nguyentuongtnct2001@gmail.com','0865093320','tuong.jpg',N'Cần Thơ');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('nghiahuynh','2001',N'Huỳnh Trọng Nghĩa','nghiahtpc01295@fpt.edu.vn','0123456789','nghia.jpg',N'Bạc Liêu');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('duysorry','nhinhi',N'Phan Khánh Duy','pkduy003@gmail.com','0858343798','duy.jpg',N'Dân chơi cái nước');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('school','2001',N'Lê Nhật Trường','pkduy003@gmail.com','0123456789','truong.jpg',N'Đồng Tháp');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('hoahoa','123',N'Hoa Hoa','hoa@gmail.com','0123456789','hoa.jpg',N'Cần Thơ');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('micro','123',N'Huỳnh Văn Mic','micro@gmail.com','0123456789','mic.jpg',N'Cần Thơ');
	INSERT INTO Accounts (Username,Password,Fullname,Email,Phone,Photo,Adress) VALUES ('jerry','123',N'Lê Thị Tí','chuot@gmail.com','0123456789','chuot.jpg',N'Cần Thơ');
	
	
	
	/*-------Roles--------*/
	INSERT INTO Roles(Id,Name) VALUES('ADMIN','Quản lý');
	INSERT INTO Roles(Id,Name) VALUES('STAFF','Nhân viên');
	INSERT INTO Roles(Id,Name) VALUES('USER','Người dùng');
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
	INSERT INTO Categories(Id,Name) VALUES ('101',N'Nữ');

	/*-------CateSmall--------*/

	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('500',N'Giày Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('501',N'Quần Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('502',N'Áo Nam','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('503',N'Dây Nịt','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('504',N'Balo','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('505',N'Dép','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('506',N'Nón','100');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('507',N'Váy','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('508',N'Quần Nữ','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('509',N'Áo Nữ','101');
	INSERT INTO CateSmalls(Id,Name,CategoryId) VALUES ('510',N'Túi Xách','101');
	

	/*-------Products--------*/
	
	/*Giầy*/
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
	/*Quần Nam*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2021',N'OWN THE RUN SHORTS',570000,'quan20021-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2022',N'ESSENTIALS FLEECE 3-STRIPES SHORTS',796000,'quan20022-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2023',N'TIRO 21 TRACK PANTS',102400,'quan20023-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2029',N'Adidas Baseball Short (DU9542)',1290000,'quan20029-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'HyperDenim',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2030',N'Adidas Must-haves Plain Pants (DT9910)',1250000,'quan20030-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2031',N'GRAPHICS CAMO SWEAT PANTS',1290000,'quan20031-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2032',N'Replay quần jeans nam MC900-50C M71 009',11090000,'quan20032-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Replay',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2033',N'QUẦN CHỮ O PREMIUM FUTURE ICONS ADIDAS SPORTSWEAR',2000000,'quan20033-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2035',N'QUẦN NĂM TÚI GO-TO',2000000,'quan20035-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2036',N'QUẦN CO GIÃN BỐN CHIỀU SÁU TÚI AEROREADY',2700000,'quan20036-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2037',N'TRACK PANTS COLORBLOCK ADIDAS SPRT',1900000,'quan20037-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2038',N'QUẦN 3/4 FB HYPE',1300000,'quan20038-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2039',N'QUẦN GRAPHIC ADIDAS SPORTSWEAR',1400000,'quan20039-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2040',N'TRACK PANTS ADICOLOR',2100000,'quan20040-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('2034',N'QUẦN 3 SỌC ỐNG CÔN GẤU THẲNG SINGL4EJERSEY ESSENTIALS',1000000,'quan20034-1.jpg',CAST(N'2021-09-25' AS Date),1,'501',N'Adidas',0);
	/*Balo*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5000',N'Balo Adidas Originals Tongue Lab Backpack AB3909',299000,'balo-5000-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5001',N'BALO Adidas Originals Essential Backpack Black',299000,'balo-5001-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5002',N'Balo Adidas 3-Stripes Backpack',350.000,'balo-5002-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5003',N'BALO Adidas Originals Essential Backpack Black',450000,'balo-5003-1.jpg',CAST(N'2021-09-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5004',N'Balo Adidas Multicolor',299000,'balo-5004-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5005',N'BALO DU LỊCH ADIDAS OPS',650000,'balo-5005-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5006',N'Balo Adidas Originals Classic Backpack',350000,'balo-5006-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5007',N'Balo laptop chống nước Arctic Hunter',549000,'balo-5007-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5008',N'BALO Laptop ARCTIC HUNTER Men Casual',580.000,'balo-5008-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5009',N'Balo ARCTIC HUNTER AUTUMN 2019',650000,'balo-5009-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5010',N'Balo Arctic HunTer USB hot TREND 2019',750000,'balo-5010-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Arctic Hunter',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5011',N'Balo Chiến Thuật 5.11 All Hazards Nitro',950000,'balo-5011-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5012',N'Balo 511 all Hazards Prime',950000,'balo-5012-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5013',N'Ba lô phượt 511 rush 24 multicam cực hiếm',849000,'balo-5013-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5014',N'Balo du lịch phượt 5.11 Tactical Rush 12',650000,'balo-5014-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo 509',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5015',N'Balo du lịch leo núi Deuter Futura',1390000,'balo-5015-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5016',N'Balo Du Lịch Deuter Futura',950000,'balo-5016-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5017',N'Ba lô leo núi DEUTER FUTURA',950000,'balo-5017-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5018',N'Ba lô du lịch phượt DEUTER FUTURA',1190000,'balo-5018-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Balo DEUTER',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5019',N'Balo Học Sinh Thời trang MOYYI',480000,'balo-5019-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5020',N'Balo Laptop Thời Trang Cao Cấp',1100000,'balo-5020-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5021',N'Balo du lịch – laptop thời trang đa năng',650000,'balo-5021-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5022',N'Balo Túi du lịch thể thao đa năng',720000,'balo-5022-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5023',N'Balo Laptop Manhattan Portage BLACK',550000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5024',N'Balo Sakos SNAPPY SIÊU NHẸ – CHỐNG GÙ',490000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5025',N'Balo Sakos SIMPLE SIÊU NHẸ – CHỐNG GÙ',490000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5026',N'Balo Học Sinh Sakos Lightly Tiger Chống gù siêu nhẹ',660000,'balo-5023-1.jpg',CAST(N'2021-09-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5027',N'Balo laptop doanh nhân',1820000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5028',N'Balo laptop SAKOS ALMA i17',1370000,'balo-5023-1.jpg',CAST(N'2021-10-27' AS Date),1,'504',N'Sakos',0);
	/*Áo Nam*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1001',N'Áo Thun Cổ Tròn Đặc Biệt Hand Drawn M10',185000,'1001.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1002',N'Áo Thun Cổ Tròn Y Nguyên Bản',185000,'1003.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1003',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ Khủng Long',185000,'1005.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1004',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ M12',185000,'1008.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1005',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ SG M10',185000,'1010.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1006',N'Áo Thun 3 Lỗ Thể Thao M4 ',185000,'1012.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1007',N'Áo Thun 3 Lỗ Đặc Biệt Typography M5',185000,'1016.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1008',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ Darkness Hunters Ver4',185000,'1018.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1009',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ M14',185000,'1022.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1010',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ M15',185000,'1024.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1011',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ Khủng Long M6',185000,'1026.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1012',N'Áo Thun Cổ Tròn Y Nguyên Bản 18+ M12',185000,'1028.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1013',N'Áo Thun Cổ Tròn 12VAHDT Văn Hiến Chi Bang Ver10',185000,'1030.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1014',N'Áo Thun Cổ Tròn Đặc Biệt Logo 2010 M6',185000,'1032.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1015',N'Áo Thun Cổ Tròn Thiên Nhiên Kì Vĩ SG M5',185000,'1034.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1016',N'Áo Thun Cổ Tròn 12VAHDT Văn Hiến Chi Bang Ver8',185000,'1036.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('1017',N'Áo Thun Cổ Tròn Y Nguyên Bản 18+ M7',185000,'1038.jpg',CAST(N'2021-10-28' AS Date),1,'502',N'Yame',0);
	/*Dây nịt*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4000',N'Dây nịt da cá sấu Khatoco',1600000,'4000.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4001',N'Dây thắt lưng nam da thật ELLY HOMME - EDM1',1499000,'4001.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4002',N'Dây thắt lưng nam da thật ELLY HOMME - EDM2',1499000,'4002.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4003',N'Dây thắt lưng nam da thật ELLY HOMME - EDM4',899000,'4003.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4004',N'Dây thắt lưng nam da thật ELLY HOMME - EDM5',899000,'4004.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4005',N'Dây thắt lưng nam da thật ELLY HOMME - EDM6',899000,'4005.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4006',N'PKTT Dây Nịt Đơn Giản D03',285000,'4006.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4007',N'PKTT Dây Nịt Đơn Giản M12',285000,'4007.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4008',N'PKTT Dây Nịt Đơn Giản D14',285000,'4008.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4009',N'PKTT Dây Nịt Đơn Giản M15',285000,'4009.jpg',CAST(N'2021-10-28' AS Date),1,'503',N'ELLY',0);
	/*Dép*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4100',N'Dép nam MWC NADE - 7684',195000,'4100.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4101',N'Dép nam MWC NADE - 7682',195000,'4101.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4102',N'Dép nam MWC NADE - 7681',150000,'4102.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4103',N'Dép nam MWC NADE - 7675',195000,'4103.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4104',N'Dép nam MWC NADE - 7676',195000,'4104.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4105',N'Dép nam MWC NADE - 7673',195000,'4105.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4106',N'Dép nam MWC NADE - 7674',150000,'4106.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4107',N'Dép nam MWC NADE - 7666',195000,'4107.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4108',N'Dép nam MWC NADE - 7671',180000,'4108.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4109',N'Dép nam MWC NADE - 7670',99000,'4109.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4110',N'Dép nam MWC NADE - 7662',190000,'4110.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4111',N'Dép nam MWC NADE - 7665',150000,'4111.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4112',N'Dép nam MWC NADE - 7659',150000,'4112.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4113',N'Dép nam MWC NADE - 7658',90000,'4113.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4114',N'Dép nam MWC NADE - 7656',195000,'4114.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4115',N'Dép nam MWC NADE - 7655',99000,'4115.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4116',N'Dép nam MWC NADE - 7653',195000,'4116.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4117',N'Dép nam MWC NADE - 7652',195000,'4117.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4118',N'Dép nam MWC NADE - 7637',195000,'4118.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4119',N'Dép nam MWC NADE - 7648',195000,'4119.jpg',CAST(N'2021-10-28' AS Date),1,'505',N'NADE',0);
	/*Mũ*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3040',N'Mũ MLB New York Yankees Heroes Adjustable Cap Màu Đen',1720000,'3040.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3042',N'Mũ Gucci Bee Print GG Supreme Baseball Beige Size M',8200000,'3042.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'GUCCI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3044',N'Mũ Lacoste Mens Sport Collab Youssef SY Cotton Cap',1300000,'3044.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'Lacoste',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3046',N'Mũ Gucci GG Supreme Supreme Baseball Cap With Feline Head In Neutrals Size L',12200000,'3046.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3048',N'Mũ Gucci Original GG Canvas Baseball With Web Beige',3400000,'3048.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3050',N'Mũ Gucci Giants GG Supreme Baseball Hat ',6890000,'3050.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'gucci',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3052',N'Mũ chơi gôn',900000,'3052.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'Adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3054',N'Mũ Lacoste Sport Velvet Camo-Croc Cap Grey Mens One Size RK7918-51 ZE1 Màu Xám',1490000,'3054.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'lacoste',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3056',N'Mũ MLB Script Tail Ball Cap New York Yankees 32CPIJ011-50L Màu Đen',990000,'3056.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3058',N'Mũ MLB Monogram Blue Jacquard Bucket Hat 32CPHV111-50N ',1590000,'3058.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'MLB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3060',N'MŨ SNAPBACK ADICOLOR',650000,'3060.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3068',N'MŨ BÓNG CHÀY TREFOIL',280000,'3068.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3070',N'Mũ bóng chày RYV',550000,'3070.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3072',N'ADIDAS ADVENTURE RUNNER CAP',450000,'3072.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3074',N' TWILL VISOR',195000,'3074.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3076',N'ADICOLOR PREMIUM ESSENTIALS SUEDE CAP',500000,'3076.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3078',N'BUCKET HAT',650000,'3078.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3080',N'"MŨ BÓNG CHÀY TOKYO PACK',600000,'3080.jpg',CAST(N'2021-10-28' AS Date),1,'506',N'ADIDAS',0);
	/*Váy*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3082',N'CHÂN VÁY JEREMY SCOTT',2100000,'3082.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3084',N'ÁO VÁY BA LÁ APPLICATION',950000,'3084.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3086',N'VÁY ADIDAS 2000 LUXE',1500000,'3086.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3088',N'VÁY TANK TOP MIDI MARIMEKKO',1785000,'3088.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3090',N'VÁY RACERBACK ADICOLOR CLASSICS',950000,'3090.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3092',N'TRACK DRESS ADICOLOR',190000,'3092.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3094',N'ÁO VÁY',1200000,'3094.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3096',N'3 STR DRESS',1200000,'3096.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3098',N'W SPW M DRS',1350000,'3098.png',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3100',N'ÁO VÁY BA LÁ 3D ADICOLOR',930000,'3100.jpg',CAST(N'2021-10-28' AS Date),1,'507',N'ADIDAS',0);
	/*Quần nữ*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4200',N'Quần CULLOTE ống suông',212000,'4200.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4201',N'Quần BAGGY nhấn ly trước lật lại',525000,'4201.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4202',N'Quần ống suông lưng cao dây kéo sau',315000,'4202.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4203',N'Quần sort lưng cao viền bèo',296000,'4203.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4204',N'Quần jeans form suông Basic',525000,'4204.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4205',N'Quần sort đai CORSET nhấn ly trước và sao',321000,'4205.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4206',N'Quần sort ly trước ben dây kéo sau',162000,'4206.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4207',N'Quần sort vải TEXTURE nhấn 4 ly',222000,'4207.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4208',N'Quần sort lưng cao nhấn ly họa tiết hoa',222000,'4208.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4209',N'Quần sort lưng thun họa tiết sọc',197000,'4209.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4210',N'Quần sorts lưng liền nhấn ly trước',256000,'4210.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4211',N'Quần sort xếp 4 ly',250000,'4211.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4212',N'Quần ống suông lưng rời túi hàm ếch',199000,'4212.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4213',N'Quần dài thắt nơ 1 bên',199000,'4213.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4214',N'Quần nữ Smart Pants Dài đến mắt cá',799000,'4214.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4215',N'Quần nữ Ponte ôm',499000,'4215.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4216',N'Quần nữ Jogger thể thao Ultra Stretch',499000,'4216.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4217',N'Quần Uniqlo U quần dài vải Jersey dáng Relax',99000,'4217.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4218',N'Quần nữ Linen Conton Tapered Pants',599000,'4218.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('4219',N'Quần nữ JW Anderson quần dài Easy',399000,'4219.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'ADIDAS',0);
	/*Áo nữ*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5100',N'ÁO THUN W2ATN2051004',185000,'aonu-5000-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5101',N'ÁO LEN CỔ TRÒN, TAY LỠ, DÁNG SLIMFIT',299000,'aonu-5001-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5102',N'PYJAMAS ÁO NGẮN TAY QUẦN SOOC',449000,'aonu-5002-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5103',N'ÁO KIỂU CỔ TRÒN, TAY BỒNG, DÂY BUỘC EO',449000,'aonu-5003-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5104',N'ÁO PHÔNG "EM LÀ DUY NHẤT"',249000,'aonu-5004-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5105',N'ÁO PHÔNG NỮ CỐ THUYỀN',299000,'aonu-5005-1.jpg',CAST(N'2021-10-28' AS Date),1,'508',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5106',N'ÁO PHÔNG NỮ EO THẮT DÂY',299000,'aonu-5006-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5107',N'ÁO PHÔNG NỮ XOẮN EO',249000,'aonu-5007-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5108',N'ÁO PHÔNG NỮ PHỐI TAY DỆT THOI',399000,'aonu-5008-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5109',N'ÁO PHÔNG NỮ - BỘ SƯU TẬP GIA ĐÌNH',299000,'aonu-5009-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5110',N'ÁO KIỂU NỮ TAY PHỒNG',149000,'aonu-5010-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'ADIDAS',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5111',N'ÁO PHÔNG NỮ COTTON USA HỌA TIẾT',399000,'aonu-5011-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5112',N'ÁO MẶC TRONG NỮ',149000,'aonu-5012-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('5113',N'ÁO GIỮ NHIỆT NỮ CỔ TIM OEKO-TEX',299000,'aonu-5013-1.jpg',CAST(N'2021-10-28' AS Date),1,'509',N'a',0);
	/*Túi xách*/
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3000',N'Adidas Camo Waist Bag - Multicolour (FM1348)',640000,'3000.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3002',N'Jordan Festival Bag Smoke Grey (9A0443-GB5)',750000,'3002.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'Jordan',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3004',N'Nike Sportswear Heritage Hip Bag - Canyon Pink (BA5750-689)',700000,'3004.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3006',N'Adidas Core Waist Bag - Grey (CM5541)',640000,'3006.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3008',N'TOKYO PACK POUCH',600000,'3008.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'nike',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3010',N'Adidas Waist Bag (ED5875)',630000,'3010.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'adidas',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3012',N'Cặp Laptop Công sở Thời trang MOYYI666',420000,'3012.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3014',N'Túi bao tử đeo chéo nam nữ Thời Trang MOYYI MY0642',299000,'3014.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3016',N'TÚi Đeo Chéo Nam Vài Dù Thời Trang MOYYI MY2031',420000,'3016.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'MOYYI',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3020',N'Túi xách tay quai cầm phối vải HB0119',845000,'3020.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3022',N'Túi xách tay thời trang phối vải HB0120',845000,'3022.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3024',N'Balo thời trang họa tiết dập chỉ BP0054',865000,'3024.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'BP',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3026',N'Balo thời trang nắp gập đơn giản BP0055',845000,'3026.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'BP',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3028',N'Túi xách tay cỡ trung đơn giản HB0124',745000,'3028.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'HB',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3030',N'TÚI XÁCH NỮ LEMINO MONOGRAM CANVAS LE259056',3400000,'3030.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINO',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3032',N'TÚI XÁCH NỮ LEBY LEMINO LB232106',360000,'3032.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINHO',0);
	INSERT INTO Products(Id,Name,Price,Image,CreateDate,Available,CategoryId,Company,Status) VALUES ('3034',N'TÚI XÁCH NỮ LEBY LEMINO LB232109',600000,'3034.jpg',CAST(N'2021-10-28' AS Date),1,'510',N'LEMINHO',0);
	/*-------ProductDetails--------*/
	
	/*Giầy*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('11','2001','160cm','50',N'Đen','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('12','2001','170cm','50',N'Đen','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('13','2001','180cm','50',N'Đen','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('14','2002','160cm','50',N'Đen','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('15','2002','170cm','60',N'Đen','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('16','2002','180cm','80',N'Đen','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('17','2003','160cm','50',N'Đen','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('18','2003','170cm','60',N'Đen','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('19','2003','180cm','80',N'Đen','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('20','2003','160cm','50',N'Trắng','37',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('21','2003','170cm','60',N'Trắng','38',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('22','2003','180cm','80',N'Trắng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('23','2004','165cm','55',N'Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('24','2004','172cm','65',N'Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('25','2004','180cm','70',N'Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('26','2004','165cm','50',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('27','2004','172cm','65',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('28','2004','180cm','77',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('29','2005','165cm','52',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('30','2005','172cm','63',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('31','2005','180cm','68',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('32','2006','165cm','52',N'Hồng Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('33','2006','172cm','63',N'Hồng Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('34','2006','180cm','68',N'Hồng Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('35','2007','165cm','52',N'Trắng Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('36','2007','172cm','63',N'Trắng Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('37','2007','180cm','68',N'Trắng Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('38','2008','165cm','52',N'Trắng Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('39','2008','172cm','63',N'Trắng Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('40','2008','180cm','68',N'Trắng Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('41','2009','165cm','52',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('42','2009','172cm','63',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('43','2009','180cm','68',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('44','2010','165cm','52',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('45','2010','172cm','63',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('46','2010','180cm','68',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('47','2011','165cm','52',N'Trắng Hồng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('48','2011','172cm','63',N'Trắng Hồng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('49','2011','180cm','68',N'Trắng Hồng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('50','2012','165cm','55',N'Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('51','2012','172cm','65',N'Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('52','2012','180cm','70',N'Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('53','2013','165cm','55',N'Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('54','2013','172cm','65',N'Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('55','2013','180cm','70',N'Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('56','2014','165cm','52',N'Trắng Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('57','2014','172cm','63',N'Trắng Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('58','2014','180cm','68',N'Trắng Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('59','2015','165cm','52',N'Trắng Hồng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('60','2015','172cm','63',N'Trắng Hồng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('61','2015','180cm','68',N'Trắng Hồng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('62','2016','165cm','52',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('63','2016','172cm','63',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('64','2016','180cm','68',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('65','2017','165cm','52',N'Hồng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('66','2017','172cm','63',N'Hồng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('67','2017','180cm','68',N'Hồng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('68','2018','165cm','52',N'Xanh Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('69','2018','172cm','63',N'Xanh Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('70','2018','180cm','68',N'Xanh Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('71','2019','165cm','55',N'Xám','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('72','2019','172cm','65',N'Xám','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('73','2019','180cm','70',N'Xám','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('74','2020','165cm','55',N'Vàng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('75','2020','172cm','65',N'Vàng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('76','2020','180cm','70',N'Vàng','41',50);
	/*Quần nam*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('77','2021','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('78','2021','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('79','2021','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('80','2022','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('81','2022','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('82','2022','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('83','2023','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('84','2023','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('85','2023','180cm','70',N'đen','XL',50);
	
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('101','2029','165cm','55',N'trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('102','2029','172cm','65',N'trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('103','2029','180cm','70',N'trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('104','2030','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('105','2030','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('106','2030','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('107','2031','165cm','55',N'xanh đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('108','2031','172cm','65',N'xanh đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('109','2031','180cm','70',N'xanh đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('110','2032','165cm','55',N'xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('111','2032','172cm','65',N'xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('112','2032','180cm','70',N'xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('113','2033','165cm','55',N'xám','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('114','2033','172cm','65',N'xám','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('115','2033','180cm','70',N'xám','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('116','2034','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('117','2034','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('118','2034','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('119','2035','165cm','55',N'xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('120','2035','172cm','65',N'xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('121','2035','180cm','70',N'xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('122','2036','165cm','55',N'trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('123','2036','172cm','65',N'trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('124','2036','180cm','70',N'trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('125','2037','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('126','2037','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('127','2037','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('128','2038','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('129','2038','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('130','2038','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('131','2039','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('132','2039','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('133','2039','180cm','70',N'đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('134','2040','165cm','55',N'đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('135','2040','172cm','65',N'đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('136','2040','180cm','70',N'đen','XL',50);
	
	/*balo*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('201','5000','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('202','5001','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('203','5002','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('204','5003','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('205','5004','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('206','5005','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('207','5006','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('208','5007','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('209','5008','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('210','5009','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('211','5010','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('212','5011','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('213','5012','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('214','5013','null','null',N'xám','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('215','5014','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('216','5015','null','null',N'Đỏ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('217','5015','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('218','5016','null','null',N'Xanh xám ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('219','5016','null','null',N'Đỏ xám','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('220','5017','null','null',N'đỏ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('221','5018','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('222','5019','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('223','5020','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('224','5021','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('225','5022','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('226','5023','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('227','5024','null','null',N'Hồng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('228','5024','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('229','5024','null','null',N'Đỏ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('230','5025','null','null',N'Hồng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('231','5025','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('232','5025','null','null',N'Đỏ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('233','5026','null','null',N'Hồng','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('234','5026','null','null',N'Xanh','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('235','5026','null','null',N'Đỏ','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('236','5027','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('237','5028','null','null',N'Đen','null',50);
	  /*dây nịt*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('701','4000','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('702','4001','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('703','4002','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('704','4003','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('705','4004','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('706','4005','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('707','4006','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('708','4007','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('709','4008','null','null',N'Đen','null',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('710','4009','null','null',N'Đen','null',50);

	/*Dép*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('711','4100','null','null',N'Đen','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('712','4100','null','null',N'Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('713','4100','null','null',N'Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('714','4100','null','null',N'Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('715','4101','null','null',N'Trắng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('716','4101','null','null',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('717','4101','null','null',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('718','4101','null','null',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('719','4102','null','null',N'Đen','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('720','4102','null','null',N'Đen','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('721','4102','null','null',N'Đen','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('722','4102','null','null',N'Đen','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('723','4103','null','null',N'Trắng','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('724','4103','null','null',N'Trắng','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('725','4103','null','null',N'Trắng','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('726','4103','null','null',N'Trắng','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('727','4104','null','null',N'Đa màu','40',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('728','4104','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('729','4104','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('730','4105','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('731','4105','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('732','4105','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('733','4105','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('734','4106','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('735','4106','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('736','4106','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('737','4106','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('738','4107','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('739','4107','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('740','4107','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('741','4107','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('742','4108','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('743','4108','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('744','4108','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('745','4108','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('746','4109','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('747','4109','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('748','4109','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('749','4109','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('750','4110','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('751','4110','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('752','4110','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('753','4110','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('754','4111','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('755','4111','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('756','4111','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('757','4111','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('758','4112','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('759','4112','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('760','4112','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('761','4112','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('762','4113','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('763','4113','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('764','4113','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('765','4113','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('766','4114','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('767','4114','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('768','4114','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('769','4114','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('770','4115','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('771','4115','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('772','4115','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('773','4115','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('774','4116','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('775','4116','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('776','4116','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('777','4116','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('778','4117','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('779','4117','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('780','4117','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('781','4117','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('782','4118','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('783','4118','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('784','4118','null','null',N'Đa màu','42',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('785','4118','null','null',N'Đa màu','44',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('786','4119','null','null',N'Đa màu','39',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('787','4119','null','null',N'Đa màu','41',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('788','4119','null','null',N'Đa màu','42',50);
    INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('789','4119','null','null',N'Đa màu','44',50);
	/*Mũ*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('300','3040','null','null',N'Đen',' S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('301','3040','null','null',N'Trắng','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('302','3042','null','null',N'Xám','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('303','3044','null','null',N'Trắng',' S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('304','3046','null','null',N'Xám','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('305','3048','null','null',N'Đen','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('306','3048','null','null',N'Vàng Nâu','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('307','3050','null','null',N'Nâu','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('308','3052','null','null',N'Trắng','S/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('309','3052','null','null',N'Đen','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('310','3054','null','null',N'Đen','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('311','3054','null','null',N'Xám','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('312','3056','null','null',N'Đen','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('313','3056','null','null',N'Trắng kem','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('314','3058','null','null',N'Xám','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('315','3058','null','null',N'Xanh','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('316','3060','null','null',N'Đen','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('323','3068','null','null',N'Đen','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('324','3068','null','null',N'Vàng nâu','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('325','3070','null','null',N'Đen','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('326','3072','null','null',N'Đen','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('327','3072','null','null',N'Trắng','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('328','3074','null','null',N'Đen','M/L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('329','3074','null','null',N'Xám','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('330','3076','null','null',N'Trắng','L/XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('331','3078','null','null',N'Đen','S/M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('332','3080','null','null',N'Xám','S/M',50);

	/*Quần nữ*/
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
	/*váy*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('500','3082','150-155','40-45',N'Xám','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('501','3082','158-160','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('502','3082','160-164','46-53',N'Hồng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('503','3082','165-170','53-57',N'Vàng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('504','3084','150-155','40-45',N'Hồng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('505','3084','158-160','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('506','3084','160-164','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('507','3084','165-170','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('508','3086','150-155','40-45',N'Hồng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('509','3086','158-160','43-46',N'Hồng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('510','3086','160-164','46-53',N'Hồng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('511','3086','165-170','53-57',N'Hồng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('512','3088','150-155','40-45',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('513','3088','158-160','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('514','3088','160-164','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('515','3088','165-170','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('516','3090','150-155','40-45',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('517','3090','158-160','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('518','3090','160-164','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('519','3090','165-170','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('520','3092','150-155','40-45',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('521','3092','158-160','43-46',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('522','3092','160-164','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('523','3092','165-170','53-57',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('524','3094','150-155','40-45',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('525','3094','158-160','43-46',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('526','3094','160-164','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('527','3094','165-170','53-57',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('528','3096','150-155','40-45',N'Đỏ','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('529','3096','158-160','43-46',N'Đỏ','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('530','3096','160-164','46-53',N'Đỏ','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('531','3096','165-170','53-57',N'Đỏ','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('532','3098','150-155','40-45',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('533','3098','158-160','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('534','3098','160-164','46-53',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('535','3098','165-170','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('536','3100','150-155','40-45',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('537','3100','158-160','43-46',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('538','3100','160-164','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('539','3100','165-170','53-57',N'Trắng','XL',50);
	/*Áo nữ*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('600','5100','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('601','5100','153-155','43-46',N'Vàng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('602','5100','155-158','46-53',N'Xám','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('603','5100','158-162','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('604','5101','148-153','38-43',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('605','5101','153-155','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('606','5101','155-158','46-53',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('607','5101','158-162','53-57',N'Cam','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('608','5102','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('609','5102','153-155','43-46',N'Hồng nhạt','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('610','5102','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('611','5102','158-162','53-57',N'Hồng nhạt','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('612','5103','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('613','5103','153-155','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('614','5103','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('615','5103','158-162','53-57',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('616','5104','148-153','38-43',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('617','5104','153-155','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('618','5104','155-158','46-53',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('619','5104','158-162','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('620','5105','148-153','38-43',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('621','5105','153-155','43-46',N'Vàng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('622','5105','155-158','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('623','5105','158-162','53-57',N'Vàng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('624','5106','148-153','38-43',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('625','5106','153-155','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('626','5106','155-158','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('627','5106','158-162','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('628','5107','148-153','38-43',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('629','5107','153-155','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('630','5107','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('631','5107','158-162','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('632','5108','148-153','38-43',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('633','5108','153-155','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('634','5108','155-158','46-53',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('635','5108','158-162','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('636','5109','148-153','38-43',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('637','5109','153-155','43-46',N'Cam','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('638','5109','155-158','46-53',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('639','5109','158-162','53-57',N'Cam','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('640','5110','148-153','38-43',N'Vàng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('641','5110','153-155','43-46',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('642','5110','155-158','46-53',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('643','5110','158-162','53-57',N'Vàng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('644','5111','148-153','38-43',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('645','5111','153-155','43-46',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('646','5111','155-158','46-53',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('647','5111','158-162','53-57',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('648','5112','148-153','38-43',N'Đỏ','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('649','5112','153-155','43-46',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('650','5112','155-158','46-53',N'Đỏ','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('651','5112','158-162','53-57',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('652','5113','148-153','38-43',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('653','5113','153-155','43-46',N'Xám','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('654','5113','155-158','46-53',N'Xám','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('655','5113','158-162','53-57',N'Đen','XL',50);
	/*Túi xách*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('800','3000','null','null',N'Xanh rêu','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('801','3000','null','null',N'Xanh rêu','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('802','3000','null','null',N'Xanh rêu','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('803','3000','null','null',N'Xanh rêu','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('804','3002','null','null',N'Trắng ','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('805','3002','null','null',N'Đỏ','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('808','3002','null','null',N'Trắng ','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('809','3002','null','null',N'Đỏ','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('810','3004','null','null',N'Hồng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('811','3004','null','null',N'Xanh rêu','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('812','3004','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('813','3004','null','null',N'Xám','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('814','3006','null','null',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('815','3006','null','null',N'Xám','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('816','3006','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('817','3006','null','null',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('818','3008','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('819','3008','null','null',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('820','3008','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('821','3008','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('822','3010','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('823','3010','null','null',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('824','3010','null','null',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('825','3010','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('826','3012','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('827','3012','null','null',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('828','3012','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('829','3012','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('830','3014','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('831','3014','null','null',N'Nâu','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('832','3014','null','null',N'Nâu','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('833','3014','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('834','3016','null','null',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('835','3016','null','null',N'Vàng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('836','3016','null','null',N'Vàng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('837','3016','null','null',N'Trắng','XL',50);
	
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('842','3020','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('843','3020','null','null',N'Hồng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('844','3020','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('845','3020','null','null',N'Hồng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('846','3022','null','null',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('847','3022','null','null',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('848','3022','null','null',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('849','3022','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('850','3024','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('851','3024','null','null',N'Vàng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('852','3024','null','null',N'Vàng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('853','3024','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('854','3026','null','null',N'Hồng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('856','3026','null','null',N'Hồng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('857','3026','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('858','3026','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('859','3028','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('860','3028','null','null',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('861','3028','null','null',N'hồng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('862','3028','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('863','3030','null','null',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('864','3030','null','null',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('865','3030','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('866','3030','null','null',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('867','3032','null','null',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('868','3032','null','null',N'Nâu','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('869','3032','null','null',N'Nâu','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('870','3032','null','null',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('871','3034','null','null',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('872','3034','null','null',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('873','3034','null','null',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('874','3034','null','null',N'Đen','XL',50);
	
	/*Áo Nam*/
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('900','1001','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('902','1001','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('903','1001','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('904','1002','1m60-1m65','55-60kg',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('905','1002','1m64-1m69','60-65kg',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('906','1002','1m70-1m74','66-70kg',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('907','1002','1m74-1m76','70-76kg',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('908','1003','1m60-1m65','55-60kg',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('909','1003','1m64-1m69','60-65kg',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('910','1003','1m70-1m74','66-70kg',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('911','1003','1m74-1m76','70-76kg',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('912','1004','1m60-1m65','55-60kg',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('913','1004','1m64-1m69','60-65kg',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('914','1004','1m70-1m74','66-70kg',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('915','1004','1m74-1m76','70-76kg',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('916','1005','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('917','1005','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('918','1005','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('919','1005','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('920','1006','1m60-1m65','55-60kg',N'Trắng','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('921','1006','1m64-1m69','60-65kg',N'Trắng','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('922','1006','1m70-1m74','66-70kg',N'Trắng','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('923','1006','1m74-1m76','70-76kg',N'Trắng','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('924','1007','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('925','1007','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('926','1007','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('927','1007','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('928','1008','1m60-1m65','55-60kg',N'Xanh','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('929','1008','1m64-1m69','60-65kg',N'Xanh','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('930','1008','1m70-1m74','66-70kg',N'Xanh','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('931','1008','1m74-1m76','70-76kg',N'Xanh','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('932','1009','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('933','1009','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('934','1009','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('935','1009','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('936','1010','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('937','1010','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('938','1010','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('939','1010','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('940','1011','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('941','1011','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('942','1011','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('943','1011','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('944','1012','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('945','1012','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('946','1012','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('947','1012','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('948','1013','1m60-1m65','55-60kg',N'Đen','S ',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('949','1013','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('950','1013','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('951','1013','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('952','1014','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('953','1014','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('954','1014','1m70-1m74','66-70kg',N'Đen','L ',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('955','1014','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('956','1015','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('957','1015','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('958','1015','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('959','1015','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('960','1016','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('961','1016','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('962','1016','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('963','1016','1m74-1m76','70-76kg',N'Đen','XL',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('964','1017','1m60-1m65','55-60kg',N'Đen','S',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('965','1017','1m64-1m69','60-65kg',N'Đen','M',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('966','1017','1m70-1m74','66-70kg',N'Đen','L',50);
	INSERT INTO ProductDetails(Id,ProductId,height,weight,Color,Size,Quantity) VALUES ('967','1017','1m74-1m76','70-76kg',N'Đen','XL',50);


	/*-------Images--------*/
	
	/*Giầy*/
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
	/*Quần nam*/
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
    /*Dây nịt*/
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
	
	/*Dép*/
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
	/*Mũ*/
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
	/*Váy*/
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
	/*Áo nữ*/
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50151','aonu-5000-2.jpg','5100','600');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50152','aonu-5001-2.jpg','5101','604');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50153','aonu-5002-2.jpg','5102','608');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50154','aonu-5003-2.jpg','5103','612');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50155','aonu-5004-2.jpg','5104','616');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50156','aonu-5005-2.jpg','5105','620');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50157','aonu-5006-2.jpg','5106','624');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50158','aonu-5007-2.jpg','5107','628');
	INSERT INTO Images(Id,Image,ProductId,ProductDetailid) VALUES ('50160','aonu-5009-2.jpg','5109','636');
	/*Túi xách*/
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
	
	/*Áo nam*/
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
	VALUES ('1','micro','Huynh Van Mic',N'Tiền Mặt',CAST(N'2021-10-18' AS Date),N'Cần Thơ','0356982112','210000',N'Đã thanh toán');
	INSERT INTO Orders(Id,Username,Fullname,Method,CreateDate,Address,Phone,Total,Status) 
	VALUES ('2','micro','Huynh Van Mic',N'Tiền Mặt',CAST(N'2021-10-18' AS Date),N'Cần Thơ','0356982112','2100000',N'Đã giao hàng');
	
	
	/*-------OrderDetails--------*/
	

	/*-------Description--------*/

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('2',N'Bên Ngoài: Neoprene 100%','2001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('4',N'Đế: Cao Su 100%','2001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('6',N'Loạt: Dash Grey / Grey / Solar Red','2002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('8',N'Ngày phát hành: Ngày 02 tháng 6 năm 2020','2002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('10',N'Mặt trên bằng da với đế cao su,Đệm cổ','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('12',N'Sản xuất tại Trung Quốc','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('14',N'Kiểu dáng số ADIO-MZ78 của chúng tôi','2003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('16',N'Ngày phát hành Ngày 21 tháng 9 năm 2018','2004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('18',N'Màu sắc CBLACK / FTWWHT','2004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('20',N'Đế cao su','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('22',N'Phong cách: DB2812-100','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('24',N'Quốc gia / Khu vực xuất xứ: Indonesia','2005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('26',N'Màu sắc: MixColer','2006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('28',N'Nơi sản xuất: Mỹ','2006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('30',N'Giới tính: Unisex','2007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('32',N'Màu sắc: Black/White/Red','2007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('34',N'Loạt Maroon mới','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('36',N'Ngày phát hành 06 tháng 5, 2020','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('38',N'Màu sắc TRẮNG / MAROON MỚI / ĐEN','2008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('40',N'Loạt trắng','2009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('42',N'Ngày phát hành Ngày 15 tháng 3 năm 2021','2009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('44',N'Ngày phát hành 03 tháng 2 năm 2021','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('46',N'Mùa áp dụng Tất cả các mùa','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('48',N'Khép kín Viền','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('50',N'Chức năng Chống trơn trượt, nhẹ','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('52',N'Chất liệu duy nhất Đế cao su,Phía trên Cắt thấp','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('54',N'Loại ngón chân Ngón chân tròn','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('56',N'Loại gót chân Gót phẳng','2010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('58',N'Loạt Xám / Trắng / Hồng đào','2011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('60',N'Ngày phát hành Ngày 15 tháng 3 năm 2021','2011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('62',N'Ngày phát hành Ngày 15 tháng 4 năm 2021','2012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('64',N'Thương hiệu: Reebok ','2013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('66',N'Giới tính: Unisex ','2013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('68',N'Thân: Da tổng hợp','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('70',N'Đế: Cao su tổng hợp','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('72',N'TThường hiệu: MLB ','2014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('74',N'Thân: Da tổng hợp','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('76',N'TThường hiệu: MLB ','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('78',N'Đế: Cao su tổng hợp','2015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('80',N'Kiểu dáng:Giày thể thao','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('82',N'TThường hiệu: MLB ','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('84',N'Giới tính:Unisex','2016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('86',N'Nhãn hiệu Air Jordan','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('88',N'Loạt Tie Dye','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('90',N'Ngày phát hành Ngày 11 tháng 6 năm 2020','2017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('92',N'Nhãn hiệu Air Jordan','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('94',N'Loạt Trắng / Hải quân nửa đêm / Đỏ Varsity','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('96',N'Ngày phát hành Ngày 26 tháng 8 năm 2020','2018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('98',N'Nhãn hiệu Air Jordan','2019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('100',N'Loạt CO Japan - Xám trung tính','2019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('102',N'Nhãn hiệu Air Jordan','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('104',N'Loạt Laser Orange','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('106',N'Ngày phát hành Ngày 27 tháng 7 năm 2020','2020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('108',N'Phù hợp thường xuyên,Drawcord trên eo đàn hồi','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('110',N'Dệt trơn 100% polyester tái chế','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('112',N'Mềm mại và thoáng khí,Quần đùi chạy phản quang','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('114',N'AEROREADY hút ẩm,Túi zip bên ngoài','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('116',N'Đã nhập khẩu','2021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('118',N'Bộ côn thông thường,Drawcord trên eo đàn hồi','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('120',N'100% polyester doubleknit tái chế,Hút ẩm','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('122',N'Túi zip phía trước','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('124',N'Gân dưới chân có khóa kéo ở mắt cá chân','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('126',N'Primegreen,Đã nhập khẩu','2023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('138',N'Phù hợp thường xuyên','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('140',N'Drawcord trên eo đàn hồi,53% cotton, 36% polyester tái chế, 11% lông cừu','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('142',N'Túi trượt bên,Đã nhập khẩu','2022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('176',N'98% cotton / 2% Spandex, Người mẫu cao 61 , mặc áo cỡ 32.','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('178',N'Dáng regular fit, Cạp chun có dây rút','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('180',N'Vải dệt kim đôi làm từ 44% polyester tái chế, 32% polyester, 24% viscose','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('182',N'Các túi khóa kéo phía trước','2029');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('184',N'Quần ống côn để thư giãn trước và sau trận đấu.','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('186',N'Vừa vặn thông thường tạo ra sự cân bằng thoải mái giữa lỏng lẻo và ôm sát','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('188',N'Chân thon có còng, 67% cotton / 33% polyester tái chế doubleknit','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('190',N'Những chiếc quần này được làm bằng polyester tái chế để tiết kiệm tài nguyên và giảm lượng khí thải; Chúng tôi hợp tác với Sáng kiến ​​Bông tốt hơn để cải thiện việc trồng bông trên toàn cầu','2030');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('192',N'Thích ứng với ngày trong sự thoải mái và camo.','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('194',N'Phù hợp thường xuyên,Drawcord trên eo đàn hồi','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('196',N'70% cotton, 30% polyester tái chế lông cừu','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('198',N'Túi bên, Còng co giãn, Sáng kiến ​​Bông tốt hơn','2031');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('200',N'Biết thêm thông tin','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('202',N'Model, Season','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('204',N'TMC900-50C M71','2032');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('206',N'Dáng regular fit,Cạp chun có dây rút','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('208',N'Vải dệt trơn làm từ 100% nylon tái chế','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('210',N'Cạp cao vừa,Các túi hai bên','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('212',N'Các túi hộp, Gấu quần co giãn','2033');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('214',N'Dáng regular fit với ống côn','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('216',N'Cạp chun có dây rút','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('218',N'Vải single jersey làm từ 70% cotton, 30% polyester tái chế','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('220',N'Túi hai bên, Gấu thẳng, Cạp cao vừa','2034');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('222',N'Dải băng chống trượt in logo adidas bằng silicone bên trong cạp quần Primegreen','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('224',N'Dáng regular fit','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('226',N'Cạp co giãn với đỉa cài thắt lưng','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('228',N'Vải twill làm từ 95% nylon tái chế, 5% elastane','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('230',N'Cảm giác mát mẻ và khô ráo','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('232',N'Lớp phủ chống thấm nước bền bỉ (DWR)','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('234',N'Thiết kế năm túi kinh điển','2035');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('236',N'Dáng regular fit, Cạp quần có đỉa cài thắt lưng','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('238',N'Vải dệt dobby làm từ 90% nylon, 10% elastane','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('240',N'Thấm hút ẩm,Các túi trước và túi sau','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('242',N'Dải băng silicone in logo adidas bên trong cạp quần','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('244',N'Chỉ số chống tia UV 50+','2036');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('246',N'Dáng regular fit, Cạp chun có dây rút','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('248',N'Vải dệt interlock làm từ 70% polyester tái chế, 30% cotton','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('250',N'Chất vải dày dặn, Túi hai bên,Gấu quần có gân bo','2037');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('252',N'Dáng regular fit,Cạp chun có gân sọc kèm dây rút','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('254',N'Vải dệt kim đôi làm từ 100% polyester tái chế','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('256',N'Cảm giác mềm mại, co giãn,Thấm hút ẩm','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('258',N'Túi chìm hai bên,Gấu quần co giãn','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('260',N'Chiều dài bằng 3/4 quần dài thông thường','2038');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('262',N'Dáng regular fit,Cạp chun có dây rút','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('264',N'Vải thun da cá làm từ 100% cotton','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('266',N'Túi hai bên,Gấu quần có gân bo','2039');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('268',N'Dáng regular fit,Cạp cao vừa co giãn có dây rút','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('270',N'Vải dệt trơn làm từ 100% nylon tái chế','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('272',N'Lớp lót bằng vải lưới,Túi khóa kéo hai bên','2040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('274',N'Gấu quần co giãn','2040');
	/*Balo*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('275',N'Balo laptop Adidas Originals Tongue Backpack được thiết kế với màu sắc nổi bật, đồ họa in đậm các biểu tượng nhãn hiệu giày adidas, phù hợp cho cả nam lẫn nữ mang đi học, đi làm hay sử dụng hàng ngày. Ngăn chính rộng rãi cho bạn thoải mái lưu trữ, có nhiều ngăn nhỏ bên trong. Ngăn laptop 15 inch riêng biệt có lớp lót chống sốc.Ngăn nhỏ phía trước cho bạn thêm không gian lưu trữ.Hai túi bên hông để bình nước, ô dù.Quai đeo có thể điều chỉnh dễ dàng phù hợp với từng người."','5000');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('276',N'Chất liệu: 100% Polyester.
– Balo thời trang Adidas Originals Essentials Backpack được thiết kế với màu đen cá tính, kiểu dáng thời trang, phù hợp cho cả nam lẫn nữ mang đi học, đi làm hay sử dụng hàng ngày.
– Ngăn chính rộng rãi cho bạn thoải mái lưu trữ, có nhiều ngăn nhỏ bên trong.
– Ngăn laptop 15 inch riêng biệt có lớp lót chống sốc.
– Ngăn nhỏ phía trước cho bạn thêm không gian lưu trữ.
– Hai túi bên hông để bình nước, ô dù.
– Quai đeo có thể điều chỉnh dễ dàng phù hợp với từng người.','5001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('277',N'– Chất liệu: 100% Polyester plain weave
– Thiết kế gồm 1 ngăn chính giữa + 1 ngăn Zip phụ phía trước + 1 ngăn Laptop Riêng biệt bên trong + 1 Ngăn phụ mặt sau *như ảnh*
– Full tag mác khóa, Logo Das in nổi sắc nét
– Balo thời trang 3-STRI.PES BACKPACK được thiết kế pha trộn giữa sự tiện lợi, hiện đại và kiểu dáng sang trọng cổ điển. Balo sử dụng chất liệu Poly mix da tạo cho balo sự hiện đại, cá tính!
Balo có trọng lượng nhẹ giúp bạn thoái mái khi di chuyển.
– Phong cách Hàn Quốc với thiết kế độc đáo phù hợp cho cả nam và nữ mang đi du lịch, đi học…
– Ngăn chính rộng rãi cho bạn thoải mái lưu trữ,
– Ngăn để máy tính xách tay 15.6 inch riêng biệt.','5002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('278',N'– Chất liệu: Polyester
– Laptop: 15inches
– Ngăn chính rất rộng cho bạn thoải mái lưu trữ, ngăn để máy tính xách tay 15.6 inch riêng biệt có lớp lót chống sốc.
– Hai túi bên hông cơ động có thể để bình nước hay ô dù.
– Đệm lưng và quai đeo có lớp lót thoáng khí tạo sự thoải mái khi sử dụng.
– Balo bảo hành 1 năm.','5003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('279',N'– Chất liệu: 100% Polyester.
– Balo thời trang Originals Essentials Backpack được thiết kế với màu sắc nổi bật, đồ họa lạ mắt, kiểu dáng thời trang, phù hợp cho cả nam lẫn nữ mang đi học, đi làm hay sử dụng hàng ngày.
– Ngăn chính rộng rãi cho bạn thoải mái lưu trữ, có nhiều ngăn nhỏ bên trong.
– Ngăn laptop 15 inch riêng biệt có lớp lót chống sốc.
– Ngăn nhỏ phía trước cho bạn thêm không gian lưu trữ.
– Hai túi bên hông để bình nước, ô dù.
– Quai đeo có thể điều chỉnh dễ dàng phù hợp với từng người.','5004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('280',N'-Chất liệu 100% Polyester, hỗ trợ chống thấm tốt. Đỉnh và đáy balo là chất liệu tarpaulin kháng nước hoàn toàn.
– Dây đeo vai êm ái với đệm dày, cùng quai có thể điều chỉnh độ dài tuỳ ý. Hệ thống Loadspring hỗ trợ tải đều lực, không gây đau vai.
– Một ngăn riêng cho laptop đến 15,6″, chống sốc cực kỳ êm ái. Ngăn laotop nằm riêng biệt ở phía sau lưng balo.
– Thể tích 30L, ngăn chính lớn cho tất cả đồ đạc, quần áo, sách vở, có thể đáp ứng đủ dung tích cho chuyến du lịch đến 4 ngày.
– Một ngăn phụ mặt trước dọc theo balo với khoá kéo kín cho giấy tờ, sổ sách để thêm…
– 2 ngăn bên hông cho chai nước hoặc vật dụng cá nhân nhỏ gọn. Cộng thêm 2 ngăn nhỏ kín có khoá kéo cho chai nước lớn, hay vật dụng cần bảo mật.
– Đáy balo là ngăn đựng giày riêng biệt, hoặc đồ dơ, đồ mùi… Dưới cùng balo là một túi rút đính kèm cho chai nước tập thể thao, hay lều nhỏ, đồ nhỏ..','5005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('281',N'"Kích thước: 44 x 30 x 12 cm.
– Chất liệu: 100% vải Polyester.
– Balo thời trang Adidas Originals Classic Backpack được thiết kế pha trộn giữa sự tiện lợi, hiện đại và kiểu dáng sang trọng cổ điển. Balo sử dụng chất liệu vải polyester có trọng lượng nhẹ giúp bạn thoái mái khi di chuyển.
– Ngăn chính rộng rãi cho bạn thoải mái lưu trữ,
– Ngăn để máy tính xách tay 15 inch riêng biệt.
– Ngoài ra balo adidas còn có ngăn zip phía trước.
– Biểu tượng Adidas 3 lá được in nhỏ phía trước túi.
– Quai đeo có thể điều chỉnh độ dài dễ dàng phù hợp với từng người.
– Thiết kế có quai xách tay."','5006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('282',N'"Kích thước: 46 x 30 x 16cm
– Chất liệu: vải Oxford chống thấm nước và chống bám bụi cực tốt, vải lót Polyester
– Cổng sạc USB thông minh và tiện lợi
– Ngăn đựng laptop 15.6″
– Màu sắc: đen, ghi đen, xanh than
– Trọng lượng: 1kg"','5007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('283',N'"Chống nước cực cao
– Có ngăn chống sốc – Đựng được laptop 15 inch
– Trọng lượng : 0.8kg (1.76lb.)
– Kích thước : 31cm x 18cm x 46cm (12.20in x 7.09in x 18.11in)
– Vải chống nước siêu cấp
– Khoá nắp, quai đeo phản quang CHỐNG TRỘM, CHỐNG NƯỚC NGẤM vào bên trong tối đa
– Vật liệu lót: Polyester
– Chất liệu vải : Oxford chống nước cao cấp nhất
– Thiết kế trẻ trung, năng động với 1 màu đen"','5008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('284',N'"Vải: Chất Lượng Cao Oxford
– Thể tích: 20-35L
– Kích thước: 46*30*12 CM
– Trọng lượng: 1.00 KG
– Nam Giới, Nữ giới
– Dịp áp dụng: Đi Học,Thể Thao Ngoài Trời,Du Lịch
– Chức năng: chống mài mòn/Chống Thấm/Làm Giảm Bớt quá mức gánh nặng
– Vải lót: Polyester"','5009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('285',N'"Kích thước: 48 x 32 x 16cm
– Chất liệu: vải Oxford chống thấm nước và chống bám bụi cực tốt, vải lót Polyester
– Khóa chống trộm TSA007 được hiệp hội hải quan quốc tế chứng nhận về độ an toàn.
– Ngăn đựng laptop 15.6″
– Màu sắc: đen, ghi, trắng
– Trọng lượng: 1,3kg"','5010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('286',N'"Về thiết kế, All Hazard Nitro khá giống Prime, nhưng kích thước bé hơn (khoảng 20L)
– Vải 1050D chống thấm nước nhẹ, cực bền
– Balo có thể chia làm 2 ngăn rộng và có thể mở ra tới 180 độ, có 1 túi lưới để dọc đựng thêm đồ
– Ngăn nhỏ mặt trước và 2 ngăn chính sử dụng loại khóa dẹt ,còn lại đều sử dụng khóa dây cột như ngăn đựng Bladder.
– Thích hợp với anh em nào mang balo đi làm, đi học, chứa laptop 13” hoặc đôi khi đi công tác ngắn ngày (2-3 ngày)
– Kích thước: 45x23x15cm
– Xuất xứ Việt Nam
"','5011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('287',N'"Chất liệu 1050 – denier, Chống thấm , Hạn chế cháy
– Trọng Lượng : 2Kg
– Kích Thước : 52 x 29 x 23 Cm
– Laptop : 17″"','5012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('288',N'"Chất liệu vải 1050D nylon chịu nước cực tốt và hạn chế cháy.
– Có ngăn để laptop với đệm chống sốc, balo laptop 14 inch trở xuống. Có ngăn phụ kiện với các vị trí để pin, sạc, tai nghe, cáp…
– Trọng Lượng : 1Kg
– Thể Tích : 34L
– Kích Thước : 51 x 30 x 18 Cm
– Quai đeo cực êm với lớp mút bọc trong.
– Dây đeo ngang ngực có thể điều chỉnh linh hoạt.
– Đệm lưng đặc biệt êm ái, có các lỗ thoát khí chống nóng trong mùa hè.
– Khóa kéo YKK bền bỉ.
– Phần cứng Duraflex"','5013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('289',N'"THỂ TÍCH : 21 Lít
– KÍCH THƯỚC : 46 x 29 x 17cm.
– NGUỒN GỐC : Hàng chính hãng 100% 511 Tactical – Hãng sản xuất balo cho quân đội – màu cực hiếm, số lượng chỉ có 1 con duy nhất
– CHẤT LIỆU : Chất liệu 1050 – denier, Chống thấm 100%, Hạn chế cháy
– THIẾT KẾ : Fit Laptop 14 16 inches, Rất nhiều ngăn để đồ, Phù hợp cho đi du lịch dài ngày,
– balo rất hợp cho bạn đi phượt,du lịch.."','5014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('290',N'"Hoạt động outdoor: Leo núi, du lịch.
– Hoạt động phù hợp: Dã ngoại, leo núi, du lịch, cắm trại, phượt, thám hiểm.
– Mùa phù hợp: 4 mùa.
– Thương hiệu: Deuter.
– Màu sắc: Cam, xanh dương, đen,
– Trọng lượng: 1.4kg.
– Kích thước: 62x30x18cm (HxWxD).
– Thể tích: 30l"','5015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('291',N'"Cân nặng: 1740 g
– Thể tích: 42 litres
– Kích thước: 70 / 34 / 27 (H x W x D) cm
– Sản xuất tại Việt Nam
– Chất liệu: Deuter-Super-Polytex
– Macro Lite 210
-Mẫu mới nhất 2016
– Twin-frame cho hệ thống Flexlite Aircomfort 3D có khả năng thoáng khí mạnh mẽ.
– Ngăn chính rộng rãi đóng mở với dây rút tiện lợi.
– Ngăn phụ lớn phía dưới có khả năng đựng đồ dơ hoặc giày dép của bạn.
– Đai hông có khả năng giảm tải trọng lên vai của bạn.
– Đáy túi cứng cáp túi áo mưa cho balo có khả năng chống lại mọi thời tiết từ bên ngoài.
– Các đai xung quanh giúp định hình balo. Giữ cho trọng lượng cân bằng.
– Được làm từ chất liệu 600 Polyester với một lớp phủ PU dày, mạnh mẽ, nhẹ.
– Sử dụng vật liệu Nylon 420 denier và 210 denier.
– Đặc biệt denier mật độ cao polyamide chịu mài mòn cao,
– Ba lô có hệ thống Aircomfort Flexlite Pro tuyệt vời mang lại sự thông thoáng, thoải mái và linh hoạt."','5016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('292',N'"Dung tích: 32L
+Trọng lượng: 1.5kg
+Chiều cao: 60cm
+ dài 65cm, Rộng 34cm, sâu 24cm
-Chất liệu: Được dệt từ sợi polyester cao cấp. Lớp ngoài cùng được phủ PU giúp chống thấm tốt hơn."','5017');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('293',N'"Hệ thống thoát khí Air Comfort ở lưng giúp mồ hôi tiết ra trong quá trình di chuyển bay hơi nhanh hơn, đem lại cảm giác khô thoáng, thoải mái.
Hệ thống dây móc, đai hỗ trợ được bố trí hợp lí làm tăng tính ứng dụng và tính tiện dụng cho ba lô.
Hệ thống giá đỡ chống xệ phía lưng giúp hỗ trợ tối đa trong quá trình di chuyển, hạn chế xệ đáy gây cản trở và tốn sức trong lúc di chuyển.
Bao gồm khoang chính và khoang phụ, dung tích phù hợp với các chuyến đi từ 3 đến 5 ngày.
Sản phẩm có màu sắc tươi sáng rất phù hợp với các hoạt động du lịch dã ngoại, thích hợp với hầu hết các loại hình du lịch."','5018');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('294',N'"Kích thước: Dài 45 cm: Rộng 29, Dầy 17CM
– Ngăn chính rộng rãi đựng đồ cá nhân, nhiều nhỏ để điện thoại ví tiền, giày dép….,
– Ngăn để laptop riêng biệt 15.6″
– Vật liệu lót: Polyester
– Chất liệu vải : Oxford chống nước cao cấp nhất
– Thiết kế trẻ trung nam nữ đeo đều phù hợp đi học đi chơi hay đi dã ngoại"','5019');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('295',N'"Trọng lượng 800g
– Thể tích: 21L
– Chất liệu vải : Oxford chống nước cao cấp nhất
– Vật liệu lót: Polyester
– Kích thước 48x15x32
– Ngăn để laptop riêng biệt 15.6″
– Không gian ngăn chứa đồ rộng rãi, có bổ xung ngăn chống shock cho iPad/máy tính bảng. Ngoài ra còn có các ngăn nhỏ tiện lợi…"','5020');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('296',N'"– Kích thước: Dài 30: Rộng 16, Cao 46CM
– Có ngăn có thể đựng máy tính 17,3 inch
– Vải chống nước siêu cấp
– Có thể tăng giảm kích thước từ 25-30-40 tùy theo ý muốn
– Ngăn chính rộng rãi đựng đồ cá nhân, nhiều nhỏ để điện thoại ví tiền….,
– Vật liệu lót: Polyester
– Chất liệu vải : Oxford chống nước cao cấp nhất
– Thiết kế trẻ trung nam nữ đeo đều phù hợp đi học đi chơi hay đi dã ngoại"','5021');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('297',N'"Kích thước: Dài 52: Rộng 26, Cao 26 cm
– Có ngăn có thể đựng máy tính 17,3 inch
– Vải chống nước siêu cấp
– Có thể đeo, xách, đeo chéo đa năng tiện lợi
– Ngăn chính rộng rãi đựng đồ cá nhân, nhiều nhỏ để điện thoại ví tiền….,
– Vật liệu lót: Polyester
– Chất liệu vải : Oxford chống nước cao cấp nhất
– Thiết kế trẻ trung nam nữ đeo đều phù hợp đi học đi chơi hay đi dã ngoại"','5022');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('298',N'"Kích thước: H44×W29×D15cm
– Trọng lượng: 720g
– Sử dụng chất liệu Cordura nylon cho khả năng chống thấm , hạn chế tối đa khả năng thấm nước cho túi.
– Balo Manhattan Portage BLACK LABEL mp1274twlbl thiết kế đơn giản , trọng lượng siêu nhẹ, nhiều ngăn tiện dụng cho bạn khả năng sử dụng tuyệt vời.
– Balo gồm 1 ngăn chính, ngăn để laptop riêng biệt fix laptop 15.6, bên trong nhiều ngăn nhỏ tiện lợi, ngăn phụ ở phía trước cho phép lấy đồ nhanh và 2 túi bên hông đựng chai nước, ô dù…
– Quai đeo ưu việt, thiết kế ôm sát bờ vai & đệm mút tản khí, êm ái
– Thân sau đệm mút thoát khí kèm dây đai cài tay kéo vali
– Chất liệu vải polyester chống thấm nước tốt.
– Hàng chính hãng xuất Nhật."','5023');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('299',N'"Chất liệu: Polyester, Nylon, PE, PU
– Trọng lượng: 0.5 kg
– Tải trọng tối đa: 10 kg
– Kích thước nhỏ gọn 27x15x37 cm trọng lượng siêu nhẹ chỉ 0.5kg giúp bé cảm thấy nhẹ tênh mỗi ngày đến lớp.
– Chất liệu vải trượt nước bảo vệ tập vở, đồ dùng học tập của bé tránh khỏi tác động của nước dù không may gặp mưa.
– Đai ngực, đai hông giúp balo ôm sát lưng, dàn trải đều trọng lượng toàn thân thay vì đè nặng lên vai, chống cong – vẹo cột sống, bé vững bước đến trường.
– Bé dễ dàng kiểm soát thời gian và nhận ra balo của mình nhờ tích hợp thời khóa biểu bên trong và bảng tên bên ngoài."','5024');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('300',N'"Chất liệu: Polyester, Nylon, PE, PU
– Trọng lượng: 0.5 kg
– Tải trọng tối đa: 10 kg
– Kích thước nhỏ gọn 24x15x34 cm, trọng lượng siêu nhẹ chỉ 0.5kg giúp bé cảm thấy nhẹ tênh mỗi ngày đến lớp.
– Chất liệu vải trượt nước bảo vệ tập vở, đồ dùng học tập của bé tránh khỏi tác động của nước dù không may gặp mưa.
– Đai ngực, đai hông giúp balo ôm sát lưng, dàn trải đều trọng lượng toàn thân thay vì đè nặng lên vai, chống cong – vẹo cột sống, bé vững bước đến trường.
– Bé dễ dàng kiểm soát thời gian và nhận ra balo của mình nhờ tích hợp thời khóa biểu bên trong và bảng tên bên ngoài."','5025');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('301',N'"Chính chất liệu cao cấp simili cùng khóa kéo nhựa dẻo giúp balo siêu nhẹ chống gù chống nước hoàn hảo. Sách vở, đồ dùng học tập của bé sẽ được bảo vệ tuyệt đối nếu không may gặp mưa hoặc bị nước đổ vào trực tiếp.
– Hai lớp đệm cao su chồng lên trong cấu tạo vỏ LIGHTLY chống lại mọi va đập của ngoài lực hoặc thậm chí không may bé làm rớt balo xuống sàn, bảo vệ đồ dùng, tập vở và đặc biệt là các thiết bị điện tử của bé.
– Phần lưng balo có độ cong nhẹ tự nhiên kết hợp mút 3D êm ái, thoáng khí, hạn chế đổ mồ hôi lưng dù đeo balo trong thời gian dài dưới thời tiết nóng bức.
– Phần đáy được trang bị đệm cao su định hình, giúp tập vở bên trong balo không bị quăn mép dù bé có chạy nhảy đùa giỡn cùng bạn bè.
– Balo tích hợp thời khóa biểu bên trong ngăn chính và bảng tên bên hông giúp bé dễ dàng nhận biết balo của mình cũng như quản lý thời gian cá nhân hiệu quả."','5026');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('302',N'"Chất liệu: Polyester
– Trọng lượng: 0.7 kg
– Kích thước: 13x31x44 cm
– Tải trọng tối đa: 15 kg
– Thời hạn bảo hành: 1 năm
– Thiết kế Tinh giản thiết kế dành riêng cho bạn trẻ sành điệu nhưng tinh tế
– Chất vải polyester siêu trượt nước. Chống nước hiệu quả, an toàn tuyệt đối kể cả khi gặp mưa
– Hệ thống khóa zip an toàn, chống rạch bằng vật sắt nhọn giúp bạn yên tâm dù ở những nơi đông người.
– Balo laptop thời trang Spirit gồm ngăn laptop, ngăn chính và nhiều ngăn phụ tiện dụng. Bên trong ngăn laptop trang bị dây cố định cùng đệm EVA chống sốc, chống rung lắc trong quá trình di chuyển, an toàn tuyệt đối cho các dòng máy tính xách tay lên đến 17 inches."','5027');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('304',N'"Chất liệu Polyester, EVA
– Trọng lượng 1.2 kg
– Kích thước 32x19x49 cm
– Tải trọng tối đa 20 kg
– Thời hạn bảo hành 1 năm
– Balo laptop SAKOS DILY i15 thiết kế với kiểu dáng thời trang, đẳng cấp, chất liệu vải polyester chắc chắn, bền bỉ, có ngăn dành cho laptop 15.6 inch rất phù hợp cho sinh viên, dân công sở, kỹ sư…
– Balo SAKOS DILY i15 gồm 2 ngăn chính và 2 ngăn phụ.
– Ngăn chính rất rộng cho bạn thoải mái lưu trữ, bên trong có ngăn để máy tính xách tay 15.6 inch và ngăn để ipad có lớp lót chống sốc. Ngăn chống trộm được thiết kế sát lưng kín đáo, mang đến sự an toàn tuyệt đối cho người dùng. Tất cả hệ thống ngăn đều được trang bị khóa zip an toàn, hạn chế tác động của các vật sắc nhọn.
– Hai ngăn phía trước với nhiều ngăn phụ bên trong để vật dụng cá nhân cần thiết như bút viết, name card, sổ tay, điện thoại…
– Hai túi bên hông cơ động có thể để bình nước hay ô dù.
– Đệm lưng và quai đeo có lớp lót thoáng khí tạo sự thoải mái khi sử dụng."','5028');
	/*Mũ*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('305',N'"Thương hiệu MLB
Xuất xứ        Mũ Hàn Quốc
Kiểu dáng        Nón kết - Mũ lưỡi trai
Màu sắc        Mũ đen
Chất liệu        100% Cotton
Size        One Size"','3040');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('306',N'"Thương hiệu	Gucci
Xuất xứ	Mũ Ý
Kiểu dáng	Mũ lưỡi trai - Nón kết
Màu sắc	Màu nâu nhạt
Size	S - M"','3042');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('307',N'"Thương hiệu	Lacoste
Xuất xứ	Mỹ
Kiểu dáng	Mũ lưỡi trai
Màu sắc	Trắng
Giới tính	Nam"','3044');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('308',N'"Thương hiệu	GUCCI
Xuất xứ	Ý
Kiểu dáng	Mũ lưỡi trai
Màu sắc	Nâu nhạt
Chất liệu	Canvas
Size	L"','3046');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('309',N'"Hai bên mũ được thêu mỗi tấm vải gồm 2 màu đỏ xanh huyền thoại của hãng Gucci.
Lưỡi mũ được bao bọc 1 miếng da quanh viền và được may mỗi tấm vải 2 bên với những đường chỉ rất tinh tế.
Miếng dán bằng da sau mũ, điều chỉnh tăng giảm được.
Bên trong mũ Original GG làm bằng chất liệu vải Cotton được lót thêm tấm bông tạo cảm giác êm ái cho đầu khi đội.
Mũ được làm bằng chất liệu cao cấp của Ý và được phủ 1 lớp keo hỗ trợ làm giảm thấm nước tạo sự dễ chịu và thoải mái khi mang với mọi khách hàng cho dù khó tính.
Mũ có thiết kế vừa vặn, dễ phối đồ với quần jeans, quần short và áo thun hay polos tạo nên sự sang trọng và mạnh mẽ.
"','3048');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('310',N'"Mũ được làm bằng chất liệu Polyester/cotton cao cấp mang lại cảm giác thoáng mát, thoải mái cho người sử dụng.
- Đường may của mũ với các đường nét tinh tế và tỉ mỉ, chinh phục ngay cả những khách hàng khó tính.
- Logo trên mũ tạo điểm nhấn rất độc đáo.
- Phía sau mũ bạn có thể điều chỉnh kích thước sao cho vừa với vòng đầu của mình.
- Màu sắc mũ nâu dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích của bản thân."','3050');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('311',N'"97% cotton, 3% vải dệt trơn elastane
Hút ẩm
Vành cong trước
Dây đeo sau có thể điều chỉnh với khóa
Hệ số UV 50+
Cấu trúc sáu bảng điều khiển
Doubleknit
Sáng kiến ​​Bông tốt hơn
Màu trắng
Mã sản phẩm: GU8621"','3052');

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('312',N'Mũ được làm từ chất liệu Cotton (85%), Polyamide (15%) thoáng khí, không phai màu, dễ giặt và dễ bảo quản.
- Form mũ chuẩn đẹp, các đường chỉ khâu rất tỉ mỉ và chắc chắn hài lòng mọi khách hàng.
- Khóa phía sau có thể điều chỉnh phù hợp với mỗi khách hàng.
- Mũ nổi bật với họa tiết logo cá sấu đầy tinh tế phía trước tạo điểm nhấn riêng.
- Màu sắc mũ trắng dễ kết hợp với nhiều phong cách thời trang khác nhau.
- Được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.
- Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn.','3054');
	
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('313',N'"Sau khi sử dụng mũ nên treo lên gọn gàng nơi có vị trí khô ráo và thoáng mát.
- Khi giặt mũ nên giặt bằng tay, không nên dùng máy giặt vì sẽ làm mất form và hư dáng mũ.
- Tránh giặt cùng những chất gây loang màu.
- Không nên bỏ mũ trong túi xách quá lâu sẽ khiến chúng mất đi hình dáng ban đầu.
- Nên có túi đựng riêng để bảo quản mũ được mới và bền hơn."','3056');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('314',N'"Thương hiệu	MLB
Xuât xứ	Mũ Hàn Quốc
Kiểu dáng	Mũ tròn
Màu sắc	Xanh bò
Chất liệu	100% Polyester
THÔNG TIN CHUNG
KIỂU DÁNG
Mũ tròn
GIỚI TÍNH
Unisex
MÀU SẮC
Màu Xanh Bò
CHẤT LIỆU
100%Polyester
XUẤT XỨ
Hàn Quốc
PHÂN LOẠI
MLB BUCKET"','3058');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('315',N'"Vỏ trước: 100% polyester dệt trơn
Vỏ sau: 100% lưới polyester
Sweatband: khăn 100% cotton
Đóng snapback có thể điều chỉnh
Dệt trơn
Màu đen
Mã sản phẩm: H34574"','3060');
	/*INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('316',N'"Vỏ: khăn 100% cotton
Lớp lót: 80% polyester, 20% cotton dệt trơn
Trọng lượng nhẹ
Khoen
© Disney
Khăn tắm
Màu đen
Mã sản phẩm: HE3087"','3062');*/
	
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('319',N'"Chính: 55% polyester tái chế, 45% polyester dobby
Tấm lưới: 97% polyester, 3% lưới elastane
Sweatband: 100% polyester doubleknit tái chế
Trọng lượng nhẹ
Bungee có thể điều chỉnh
Dobby
Màu sắc: Đen / Tím vinh quang
Mã sản phẩm: H25268"','3068');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('320',N'"Cỡ phổ thông
100% cotton twill
Hút ẩm
Vành cong trước
Dây đeo sau có thể điều chỉnh móc và vòng
Huy hiệu thể thao của adidas được thêu nổi ở mặt trước
Sáng kiến ​​Bông tốt hơn
Màu sắc: White / Haze Coral
Mã sản phẩm: GU6174"','3070');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('321',N'"Cỡ phổ thông
100% polyester dệt trơn
Lưới lót
Vành cong trước
Dây đeo sau có thể điều chỉnh
Cấu trúc sáu bảng điều khiển
Huy hiệu Trefoil
Dệt trơn
Màu đen
Mã sản phẩm: GN4886"','3072');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('322',N'"100% cotton twill
Băng đô hút ẩm
Twill
Màu trắng
Mã sản phẩm: GL8769"','3074');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('323',N'"100% polyester lông
Lông thú
Màu đen
Mã sản phẩm: HG8462"','3076');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('324',N'"100% cotton twill
Mũ bóng chày Hiroko Takahashi
Màu đen
Mã sản phẩm: GM8722"','3078');

	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('325',N'"100% cotton twill
Mũ bóng chày Hiroko Takahashi
Màu đen
Mã sản phẩm: GM8722"','3080');

/*Áo nữ*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('326',N'','5100');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('327',N'Áo len chất liệu 100% acrylic, tay lỡ, dáng slimfit','5101');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('328',N'"Bộ Pyjamas Polyester Spandex
Ao ngắn tay quần sooc"','5102');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('329',N'Áo kiểu, cổ tròn, tay ngắn, chạy chun eo, cắt tùng','5103');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('330',N'"Áo phông nữ thuộc BST ""Vẻ đẹp riêng mỗi người""
Chất liệu 100% cotton USA, có hình in
Dáng regular, cổ tròn, tay cộc."','5104');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('331',N'"Áo phông chất liệu polyester pha
Dáng regular, cổ thuyền, tay cộc hơi phồng."','5105');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('332',N'"Áo phông chất liệu cotton USA
Dáng regular, cổ tròn, tay cộc, dây dệt rút gấu áo."','5106');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('333',N'"Áo phông chất liệu cotton pha
Dáng regular, cổ tròn, tay cộc, dúm eo, vạt chéo."','5107');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('334',N'Áo phông nữ phối tay dệt thoi','5108');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('335',N'"Áo phông chất liệu cotton USA in ngực
Dáng regular, cổ tròn, tay cộc."','5109');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('336',N'"Áo kiểu chất liệu 100% cotton
Dáng regular, cổ tròn, tay phồng."','5110');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('337',N'"Áo phông chất liệu cotton USA có hình in
Dáng regular, cổ tròn, tay cộc."','5111');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('338',N'Áo mặc trong nữ','5112');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('339',N'"Áo giữ nhiệt đạt chuẩn Oeko-Tex 100 Class 2
Dáng slim fit, cổ tim, dài tay"','5113');
/*Túi xách*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('341',N'"Kích thước: 34 cm x 12 cm x 5 cm
Chất liệu: 100% polyester oxford
Cấu trúc túi: 2 ngăn để được nhiều vật dụng như: điện thoại, bóp ví, chìa khóa, sạc dự phòng v.v…
Tiện lợi khi đi chơi, du lịch, …ai mà là trùm quên đồ thì cứ mang mọi thứ linh tinh bỏ hết vào đây đảm bảo an toàn nhé."','3000');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('342',N'"Thương hiệu: Jordan
Mã sản phẩm: 9A0443-GB5
Phối màu: Shadow/Black White
Kích thước: 17cm x 13cm x 4cm (chiều cao x chiều dài x chiều rộng)
Chất liệu: Polyurethane
Phát hành: 2020"','3002');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('343',N'"Thương hiệu: Nike
- Mã: BA5750-689
- Màu sắc: Canyon Pink, Pale Ivory
- Kích thước: 41*10*15 cm
- Chất liệu: 100% polyester
- Hai ngăn có khóa kéo
- Dây đeo thắt lưng có thể điều chỉnh"','3004');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('344',N'"Túi Adidas Core Waist Bag Grey CM5541 Màu Xám được làm từ chất liệu  100% polyester cao cấp bền đẹp trong suốt quá trình sử dụng. Form túi với các đường may vô cùng tỉ mỉ, tinh tế hài lòng mọi khách hàng. 
Ngăn trong túi rộng rãi để được nhiều vật dụng thiết yếu khác nhau khi đi ra ngoài. Túi thiết kế sang trọng cùng họa tiết nổi bật làm điểm nhấn. Phần khóa kéo chắc chắn cùng dây đeo có thể điều chỉnh tùy sở thích của mỗi người.
Kích thước: 35.5 x 12.5 x 14cm"','3006');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('345',N'"100% polyester dệt trơn
Túi đựng Hiroko Takahashi
Dây đeo vai có thể điều chỉnh với khóa đóng
Túi zip phía trước
Kích thước: 14 cm x 18 cm
Dệt trơn
Màu sắc: Đen / Trắng
Mã sản phẩm: GM8723"','3008');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('346',N'" Thương hiệu: adidas
- Màu đen
- Bộ môn: Nam
- Kiểu dáng: Túi đeo chéo
- Tính năng: Dây đai có thể điều chỉnh
- Chất liệu: 100% Polyester
- Mô hình: Trefoil
- Quốc gia / Khu vực sản xuất: Việt Nam
- MPN: ED5875
- Kích thước: 21 cm (W) x 10 cm (H) x 7 cm (D)
- UPC: 746648982987"','3010');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('347',N'"- Chất liệu DA BÒ cao cấp, bảo hành da 12 tháng nếu bong, tróc, nổ do lỗi nhà sản xuất
- Kiểu dáng thời trang, sang trọng, phong cách, tạo cho bạn sự đứng đắn, chững chạc và sự chuyên nghiệp với khách 
  hàng, đối tác.
- Thiết kế tối ưu : đựng laptop, hồ sơ, tài liệu, đồ dùng cá nhân 1 cách tiện dụng, thoải mái. Bên trong túi được chia 
  làm 2 ngăn to và 1 ngăn nhỏ kéo séc.
- Chất liệu da cao cấp, không thấm nước, dễ dàng làm sạch,độ bền cao.
- Màu sắc đa dạng: Nâu đậm, Nâu nhạt, Đen
- Kích thước sản phẩm: 39 x 29 x 7cm.
- Túi đựng vừa laptop 14 inch"','3012');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('348',N'"Chất liệu: Vải Canvas cao cấp rất bền, đẹp theo thời gian.
 Mẫu có 3 màu: Đen - Xanh than -  Xám
 Kích thước:  32 x 17 x 5 (cm) (Ngang x Cao x Rộng đáy)
 Túi đeo mang phong cách Hàn Quốc trẻ trung, lịch lãm và rất thời trang
 Đường may được khâu rât tỉ mỉ và chắc chắn.
 Dây đeo được thiết kế rất mịn, in chìm rất đẹp và chắn chắn .có thể thay đồi kích thước dễ dàng.
 Màu sắc đa dạng nam tính hợp với mọi loại trang phục, bạn có thể đeo đi chơi, gặp gỡ bạn bè, đi chùa chiền lễ hội, đi dã ngoại....
Thiết kế nhiều ngăn đựng điện thoại ,ipad ,ví ,sổ sách thoải mái ...."','3014');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('349',N'" Túi da nam, túi đeo vai thời trang, túi da đeo chéo, túi trống, túi đeo vai da mềm
  Các sản phẩm đạt tiêu chuẩn loại 1, chất liệu da cao cấp, bền đẹp theo thời gian
  Đường may tỉ mỉ, chắc chắn
  Kiểu dáng đa dạng phong phú, hợp thời trang
  Sản phẩm phù hợp: Nam, Nữ	                             
•Thương hiệu: OEM
•Chất liệu: Da PU cao cấp
•Vật liệu lót: Polyester
•Khối lượng: 490g
•Kích thước: 24cm x 21cm x 6
•Kiểu dáng: Túi đeo vai, Túi đeo chéo
•Màu sắc: Đen, Cafe
•Xuất xứ: Trung Quốc
•Bảo hành sản phẩm: 03 tháng (bằng mã đơn mua hàng)	"','3016');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('351',N'"Chất liệu: Da tổng hợp
Kích Thước: 21 x 10 x 17,5
Số ngăn: 1
Dòng: đi tiệc, đi chơi, đi làm

- Quai cầm phối vải tinh tế, xinh xắn. Liệu vân da nổi bền, đẹp.
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.
- Gam màu  hiện đại trẻ trung, dễ dàng kết hợp trang phục."','3020');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('352',N'"Chất liệu: Da tổng hợp
Loại dây đeo: Vật tư cùng loại	
Kích Thước: 20*7*17	
Số ngăn: 1	
Dòng: đi tiệc, đi chơi, đi làm	
- Thiết kế hình hộp đơn giản, quai cầm phối vải xinh xắn, nổi bật.	
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.	
- Gam màu hiện đại trẻ trung, dễ dàng kết hợp trang phục.	"','3022');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('353',N'"Chất liệu: Da tổng hợp
Loại dây đeo: Vật tư cùng loại
Kích Thước: 25*11*23
Số ngăn: 1
Dòng: đi làm, đi chơi, đi học

- Với thiết kế nắp gập, họa tiết dập chéo tại điểm nhấn nổi bật.
- Không gian túi 2 ngăn riêng biệt chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền.
- Gam màu hiện đại trẻ trung, dễ dàng kết hợp trang phục."','3024');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('354',N'"Chất liệu: Da tổng hợp
Loại dây đeo: Vật tư cùng loại
Kích Thước: 23*12.5*26
Số ngăn: 3
Dòng: đi làm, đi chơi, đi học

- Dáng túi nắp gập đơn giản, trẻ trung vô cùng năng động.
- Không gian túi 3 ngăn riêng biệt chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền.
- Gam màu hiện đại trẻ trung, dễ dàng kết hợp trang phục."','3026');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('355',N'"Chất liệu: Da tổng hợp
Loại dây đeo: Không xác định
Kích Thước: 34*10*18
Số ngăn: 1
Dòng: đi tiệc, đi chơi, đi làm
- Thiết kế xếp ly mềm mại, xinh xắn.
- Phom túi cỡ trung chứa đủ các vật dụng cá nhân cơ bản như điện thoại, ví tiền ngắn, mỹ phẩm cơ bản.
- Gam màu  hiện đại trẻ trung, dễ dàng kết hợp trang phục."','3028');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('356',N'"Types of bag: Crossbody Chất liệu da Monogram canvas cao cấp.
Với thiết kế nhỏ nhắn, tiện lợi trong việc sử dụng. Crossbody luôn là sự lựa chọn tối ưu của những cô nàng năng động... items này vô cùng hữu dụng khi vừa có thể đeođi chơi cũng có thể xách khi đi làm."','3030');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('357',N'"Types of bag:  Crossbody 
Trên chất liệu da mềm mại.Dáng túi có nắp đóng và ngăn chứa đồ rộng. Dáng túi size vừa, phom túi cứng, thời trang, trẻ trung... phù hợp với những bộ cánh năng động, nữ tính."','3032');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('358',N'"Types of bag:  Crossbody Phom dáng cứng cáp là lựa chọnphụ kiện phổ biến bởi thiết kế đơn giản, tinh tế. Những miếng da màu sắc đan xen, đối lập tạo điểm nhấn thú vị cho mẫu túi này. Túi đeo chéo chắn chắn sẽ là lựa chọn phù hợp với những cô gái yêu thích sự trẻ trung, năng động."','3034');
	/*Áo Nam*/
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('361',N'"Chất liệu: Cotton Compact
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in nước
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1001');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('362',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in trame + in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1002');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('363',N'"Chất liệu: Cotton Compact
Thành phần: 100% cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in bột nổi
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1003');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('364',N'"Chất liệu: Cotton 2 Chiều
Thành phần: 100% cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1004');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('365',N'"Chất liệu: Cotton Compact
Thành phần: 100% cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1005');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('366',N'"Chất liệu: Poly 4 Chiều
Thành phần: 85% poly 15% spandex freshgear
- Thoáng khí
- Nhẹ
- Thấm hút mồ hôi
- Nhanh khô
- Khử mùi tự nhiên
- Mát mẻ
- Co giãn tốt
- Ít nhăn
+ Họa tiết in dẻo + in nhũ bạc
HDSD:
Ủi ở nhiệt độ dưới 150 độ C để tránh làm vải mất độ đàn hồi do quá nóng
Không nên giặt sp trong nước nóng trên 40 độ C hay phơi ngoài nắng gắt vì sẽ làm vải sơ cưng, bạc màu vải.
Không nên sử dụng chất tẩy mạnh.
Nên lội trái áo khi phơi để bảo về màu sắc và hình in trên áo"','1006');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('367',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết ép decal + in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1007');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('368',N'"Chất liệu: Cotton 4 Chiều
Thành phần: 95% cotton 5% Spandex
- Mềm mại
- Thoáng mát
- Co dãn tối ưu
+ Họa tiết in dẻo"','1008');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('369',N'"Chất liệu: Cotton Compact
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo + nhãn ép
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1009');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('370',N'"Chất liệu: Cotton Compact
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo + nhãn ép
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1010');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('371',N'"Chất liệu: Cotton Compact
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1011');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('372',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in dẻo + in trame
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1012');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('373',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ In nhũ logo Văn Hiến Chi Bang
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1013');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('374',N'"Chất liệu: Cotton 2 Chiều
Thành phần: 100% cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Nhãn ép logo 2010
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1014');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('375',N'"Chất liệu: Cotton 2 Chiều
Thành phần: 100% cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in trame + in nhũ + in bóng
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1015');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('376',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Co dãn 2 chiều
- Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát
+ In trame logo Văn Hiến Chi Bang"','1016');
	INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('377',N'"Chất liệu: Cotton 2 chiều
Thành phần: 100% Cotton
- Thân thiện
- Thấm hút thoát ẩm
- Mềm mại
- Kiểm soát mùi
- Điều hòa nhiệt
+ Họa tiết in trame + in dẻo
- HDSD:
+ Nên giặt chung với sản phẩm cùng màu
+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh
+ Nên phơi trong bóng râm để giữ sp bền màu"','1017');
/*Váy*/
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('378',N'"Dáng tight fit
Cạp chun có dây rút
Vải nhung làm từ 93% polyester, 7% elastane
Các túi khóa kéo hai bên
Màu sản phẩm: Solar Yellow
Mã sản phẩm: H53365"','3080');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('379',N'"Dáng loose fit
Cổ tròn có gân sọc
Vải single jersey làm từ 100% cotton
Better Cotton Initiative
Màu sản phẩm: Ambient Sky
Mã sản phẩm: H17958"','3082');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('380',N'"Dáng regular fit
Cổ tròn
Vải satin làm từ 95% polyester, 5% elastane
Màu sản phẩm: Bliss Orchid
Mã sản phẩm: HF9212"','3084');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('381',N'"Dáng loose fit
Cổ rộng
Vải lưới làm từ 97% polyester tái chế, 3% elastane
Lưng chữ T
Màu sản phẩm: Black / White
Mã sản phẩm: H20489"','3086');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('382',N'"Dáng slim fit
Cổ tròn
Vải thun gân làm từ 95% cotton, 5% elastane
Lưng chữ T
Màu sản phẩm: Glory Mint
Mã sản phẩm: H34601"','3090');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('383',N'"Dáng regular fit
Khóa kéo dọc thân với cổ rộng
Vải piqué làm từ 52% cotton, 48% polyester tái chế
Túi ngực có khóa kéo
Primegreen
Màu sản phẩm: Wonder White
Mã sản phẩm: HB5563"','3092');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('384',N'"Dáng regular fit
Cổ tròn có gân sọc
Vải dệt kim đôi làm từ 100% polyester tái chế
Phần eo có dây rút
Màu sản phẩm: White
Mã sản phẩm: GN3115"','3094');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('385',N'"Dáng slim fit
Cổ tròn
Vải thun gân làm từ 95% cotton, 5% elastane"','3096');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('386',N'"Mặc đẹp vào mùa đông cả khi rảnh rỗi và trong một số lễ kỷ niệm nhỏ
Váy liền thân tuyệt vời cho mùa Thu Đông, yêu thích combo thể thao và sành điệu
 Thiết kế Marimekko nổi tiếng và Adidas, một sự kết hợp hoàn hảo."','3098');
INSERT INTO Descriptions(Id,Text,ProductId) VALUES ('387',N'"Dáng regular fit
Cổ chữ V có gân sọc
Vải single jersey làm từ 70% cotton, 30% polyester tái chế
Cảm giác mềm mại
Viền tay áo có gân bo
Thêu logo Ba Lá 3D ombré
Màu sản phẩm: White
Mã sản phẩm: GN2848"','3100');
	

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

