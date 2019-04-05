DROP TABLE CUSTOMER;
DROP TABLE vehicle;
DROP TABLE part;
DROP TABLE repairorder;
DROP TABLE partsused;


CREATE TABLE Customer(
	custNo NUMBER(4) NOT NULL,
	firstName VARCHAR2(20) NOT NULL,
	lastName VARCHAR2(20) NOT NULL,
	address VARCHAR2(40) NOT NULL,
	city VARCHAR2(20) NOT NULL,
	stateCode VARCHAR2(2) NOT NULL,
	zip NUMBER(5) NOT NULL,
	phone VARCHAR2(20) NOT NULL, 
	CONSTRAINT Customer_custNo_pk PRIMARY KEY (custNo));
	
INSERT INTO customer
	VALUES (1,'Beth','Taylor','2396 Rafter Rd','Seattle','WA',98103,'(206)221-9021)');
INSERT INTO customer
	VALUES (2,'Betty','Wise','4334 153rd NW','Seattle','WA',98178,'(206)445-6982)');
INSERT INTO customer
	VALUES (3,'Bob','Mann','1190 Lorraine Cir.','Monroe','WA',98013,'(206)326-1234)');
INSERT INTO customer
	VALUES (4,'Candy','Kendall','456 Pine St.','Seattle','WA',98105,'(206)523-1112)');
INSERT INTO customer
	VALUES (5,'Harry','Sanders','1280 S. Hill Rd.','Fife','WA',98523,'(360)444-0092)');
INSERT INTO customer
	VALUES (6,'Helen','Sibley','206 McCaffrey','Renton','WA',98006,'(206)624-0362)');
INSERT INTO customer
	VALUES (7,'Homer','Wells','123 Main St.','Seattle','WA',98105,'(206)524-1461)');
INSERT INTO customer
	VALUES (8,'Jerry','Wyatt','16212 123rd Ct.','Seattle','WA',98266,'(206)524-8145)');
INSERT INTO customer
	VALUES (9,'Jim','Glussman','1432 E. Revenna','Seattle','WA',98266,'(206)445-2139)');
INSERT INTO customer
	VALUES (10,'Larry','Styles','9825 S. Crest Lane','Bellevue','WA',98104,'(425)745-9980)');
INSERT INTO customer
	VALUES (11,'Mike','Boren','642 Crest Ave.','Fife','WA',98523,'(360)444-5678)');
INSERT INTO customer
	VALUES (12,'Ron','Thompson','789 122nd St.','Renton','WA',98666,'(360)747-2222)');
INSERT INTO customer
	VALUES (13,'Sharon','Johnson','1223 Meyer Way','Fife','WA',98222,'(360)333-6666)');
INSERT INTO customer
	VALUES (14,'Sheri','Gordon','336 Hill St.','Seattle','WA',98103,'(206)525-3344)');
INSERT INTO customer
	VALUES (15,'Todd','Hayes','1400 NW 88th','Lynnwood','WA',98036,'(206)775-7689)');
INSERT INTO customer
	VALUES (16,'Wally','Jones','411 Webber Ave.','Seattle','WA',98105,'(206)523-9957)');
		
	
CREATE TABLE Vehicle(
	vin VARCHAR2(10) NOT NULL,
	year NUMBER(4) NOT NULL,
	make VARCHAR2(15) NOT NULL,
	model VARCHAR2(20) NOT NULL,
	licenseNo VARCHAR2(7) NOT NULL,
	stateCode VARCHAR2(2) NOT NULL,
	cylinders NUMBER(1) NOT NULL, 
	custNo NUMBER(4) NOT NULL,
	CONSTRAINT Vehicle_vin_pk PRIMARY KEY (vin),
	CONSTRAINT Vehicle_custNo_fk FOREIGN KEY (custNo)
		REFERENCES Customer (custNo),
	CONSTRAINT Vehicle_licenseNo_uk UNIQUE (licenseNo));
	
INSERT INTO vehicle
	VALUES('AZXS230I87',2001,'Ford','Skylark','145UKI','WA',4,10);
INSERT INTO vehicle
	VALUES('BHGY08631Q',1998,'Chevrolet','Blazer','567WER','WA',8,7);
INSERT INTO vehicle
	VALUES('GHL39789UI',1993,'Honda','Del Sol','123XYZ','WA',4,13);
INSERT INTO vehicle
	VALUES('IOMEQ54397',2000,'Buick','Regal','367ASZ','WA',8,2);
INSERT INTO vehicle
	VALUES('JHMCCF673Q',1992,'Honda','Civic Si','367ABC','WA',4,8);
INSERT INTO vehicle
	VALUES('JHMEC3348H',1985,'Buick','Corolla','345XYZ','WA',6,5);
INSERT INTO vehicle
	VALUES('JKLP7IIIJF',2001,'Ford','Impala','902PLO','WA',8,2);
INSERT INTO vehicle
	VALUES('LPQW76200I',2000,'Honda','Accord','123ABC','MT',4,7);
INSERT INTO vehicle
	VALUES('MNMJ7H6098',1999,'Lincoln','Towne Car','234ABC','WA',8,12);
INSERT INTO vehicle
	VALUES('MVMN8974PP',1998,'Honda','Civic DX','567TUV','WA',4,9);
INSERT INTO vehicle
	VALUES('PLJFVC5609',1997,'Toyota','Landcruiser','876GYK','WA',4,16);
INSERT INTO vehicle
	VALUES('POIU980PLL',2001,'Chevrolet','Cavalier','675THE','OR',4,3);
INSERT INTO vehicle
	VALUES('POOL98T90P',1998,'Ford','Escort','678RST','WA',4,11);
INSERT INTO vehicle
	VALUES('QWER9LK982',1999,'Pontiac','FireHawk','669GVI','WA',8,1);
INSERT INTO vehicle
	VALUES('QWSA870976',2000,'Chevrolet','Cavalier','116UYT','WA',4,14);
INSERT INTO vehicle
	VALUES('SWQW345RT6',1999,'BMW','320i','789GHI','CA',6,4);
INSERT INTO vehicle
	VALUES('TGVYY76R43',1995,'Honda','Civic','980QAW','WA',4,15);
INSERT INTO vehicle
	VALUES('THYDF55639',2000,'Ford','F-100','980QEW','WA',8,5);
INSERT INTO vehicle
	VALUES('TYYYI87590',2002,'Toyota','Celica','890YUI','ID',6,6);
INSERT INTO vehicle
	VALUES('V121BHD481',1999,'Toyota','Pick-up','190PGF','WA',6,9);
INSERT INTO vehicle
	VALUES('VHJK009L88',1997,'Ford','Taurus','456MNO','WA',4,13);
INSERT INTO vehicle
	VALUES('WWQAA452P0',1996,'Buick','Regal','123DEF','WA',8,10);
INSERT INTO vehicle
	VALUES('XCVY760PIQ',2000,'Toyota','Celica','477HSD','WA',4,8);	
	
	
CREATE TABLE Part(
	partNo NUMBER(4) NOT NULL,
	partDesc VARCHAR2(40) NOT NULL,
	unitsInStock NUMBER(4) NOT NULL,
	unitPrice NUMBER(4,2) NOT NULL,
	unitSize VARCHAR2(15) NOT NULL,
	CONSTRAINT Part_partNo_pk PRIMARY KEY (partNo),
	CONSTRAINT Part_partDesc_uk UNIQUE (partDesc));
	
INSERT INTO part
	VALUES (1,'10W-40 oil',145,1.00,'quart');
INSERT INTO part
	VALUES (2,'oil filter',14,2.00,'item');
INSERT INTO part
	VALUES (3,'Antifreeze',10,3.95,'quart');
INSERT INTO part
	VALUES (4,'Spark Plugs',45,0.99,'item');
INSERT INTO part
	VALUES (5,'Transmission Fluid',15,1.50,'quart');
INSERT INTO part
	VALUES (6,'10W-30 oil',95,0.95,'quart');
INSERT INTO part
	VALUES (7,'Brake Lining',25,5.00,'quart');
INSERT INTO part
	VALUES (8,'Shock',75,6.00,'item');
INSERT INTO part
	VALUES (9,'Muffler',10,15.00,'item');
INSERT INTO part
	VALUES (10,'Tail Pipe',85,4.00,'item');
INSERT INTO part
	VALUES (11,'Head Gasket',32,9.00,'dozen');
INSERT INTO part
	VALUES (12,'Timing Chain',6,22.50,'item');
INSERT INTO part
	VALUES (13,'Battery',13,50.00,'item');
INSERT INTO part
	VALUES (14,'Radiator',3,60.00,'item');
INSERT INTO part
	VALUES (15,'Radiator Hose',24,3.00,'dozen');
INSERT INTO part
	VALUES (16,'Rotor',4,16.00,'item');
INSERT INTO part
	VALUES (17,'Tire',36,46.00,'item');
INSERT INTO part
	VALUES (18,'Headlight',6,5.00,'case');
INSERT INTO part
	VALUES (19,'Tail Light',7,3.00,'dozen');
INSERT INTO part
	VALUES (20,'Gearbox',2,25.00,'item');	
	
	
CREATE TABLE RepairOrder(
	ordNo NUMBER(4) NOT NULL,
	odometer NUMBER(7) NOT NULL,
	ro_date DATE,
	vin VARCHAR2(10) NOT NULL,
	CONSTRAINT RepairOrder_ordNo_pk PRIMARY KEY (ordNo),
	CONSTRAINT RepairOrder_vin_fk FOREIGN KEY (vin)
		REFERENCES Vehicle (vin)); 

INSERT INTO repairorder
	VALUES (1,50000,'05-OCT-05','AZXS230I87');
INSERT INTO repairorder
	VALUES (2,30000,'05-OCT-05','IOMEQ54397');
INSERT INTO repairorder
	VALUES (3,6000,'07-OCT-05','JKLP7IIIJF');
INSERT INTO repairorder
	VALUES (4,75000,'08-OCT-05','AZXS230I87');
INSERT INTO repairorder
	VALUES (5,15000,'10-OCT-05','TYYYI87590');
INSERT INTO repairorder
	VALUES (6,55000,'10-OCT-05','BHGY08631Q');
INSERT INTO repairorder
	VALUES (7,25500,'11-OCT-05','V121BHD481');
INSERT INTO repairorder
	VALUES (8,125000,'12-OCT-05','PLJFVC5609');
INSERT INTO repairorder
	VALUES (9,60800,'15-OCT-05','XCVY760PIQ');
INSERT INTO repairorder
	VALUES (10,11000,'16-OCT-05','THYDF55639');
INSERT INTO repairorder
	VALUES (11,55060,'018-OCT-05','MNMJ7H6098');
INSERT INTO repairorder
	VALUES (12,25600,'20-OCT-05','THYDF55639');
INSERT INTO repairorder
	VALUES (13,56000,'20-OCT-05','QWER9LK982');
INSERT INTO repairorder
	VALUES (14,22000,'22-OCT-05','QWER9LK982');
INSERT INTO repairorder
	VALUES (15,14800,'25-OCT-05','JKLP7IIIJF');
INSERT INTO repairorder
	VALUES (16,46000,'25-OCT-05','THYDF55639');
INSERT INTO repairorder
	VALUES (17,71500,'30-OCT-05','MNMJ7H6098');
INSERT INTO repairorder
	VALUES (18,15800,'01-NOV-05','MVMN8974PP');
INSERT INTO repairorder
	VALUES (19,28525,'02-NOV-05','POIU980PLL');
INSERT INTO repairorder
	VALUES (20,32560,'02-NOV-05','QWSA870976');
INSERT INTO repairorder
	VALUES (21,72700,'05-NOV-05','IOMEQ54397');
INSERT INTO repairorder
	VALUES (22,18900,'08-NOV-05','POOL98T90P');
INSERT INTO repairorder
	VALUES (23,46590,'08-NOV-05','SWQW345RT6');
INSERT INTO repairorder
	VALUES (24,34800,'12-NOV-05','TGVYY76R43');
INSERT INTO repairorder
	VALUES (25,61800,'15-NOV-05','JHMEC3348H');
INSERT INTO repairorder
	VALUES (26,55000,'20-NOV-05','V121BHD481');
INSERT INTO repairorder
	VALUES (27,30800,'22-NOV-05','WWQAA452P0');
INSERT INTO repairorder
	VALUES (28,17600,'22-NOV-05','XCVY760PIQ');
INSERT INTO repairorder
	VALUES (29,20600,'25-NOV-05','AZXS230I87');
INSERT INTO repairorder
	VALUES (30,22590,'27-NOV-05','BHGY08631Q');
INSERT INTO repairorder
	VALUES (31,23000,'03-FEB-06','BHGY08631Q');
INSERT INTO repairorder
	VALUES (32,15000,'01-DEC-05','BHGY08631Q');	
	
CREATE TABLE PartsUsed(
	ordNo NUMBER(4) NOT NULL, 
	partNo NUMBER(4) NOT NULL,
	qtyUsed NUMBER(4) NOT NULL,
	CONSTRAINT PartsUsed_ordNo_fk FOREIGN KEY (ordNo)
		REFERENCES RepairOrder (ordNo),
	CONSTRAINT PartsUsed_partNo_fk FOREIGN KEY (partNo)
		REFERENCES Part (partNo));
		
INSERT INTO partsused
	VALUES (1,2,1);
INSERT INTO partsused
	VALUES (1,3,4);
INSERT INTO partsused
	VALUES (2,3,1);	
INSERT INTO partsused
	VALUES (2,4,5);
INSERT INTO partsused
	VALUES (3,2,1);
INSERT INTO partsused
	VALUES (3,3,2);
INSERT INTO partsused
	VALUES (3,4,2);
INSERT INTO partsused
	VALUES (3,20,2);
INSERT INTO partsused
	VALUES (5,5,5);
INSERT INTO partsused
	VALUES (5,6,5);
INSERT INTO partsused
	VALUES (5,8,1);
INSERT INTO partsused
	VALUES (5,14,1);
INSERT INTO partsused
	VALUES (5,16,2);
INSERT INTO partsused
	VALUES (6,7,1);
INSERT INTO partsused
	VALUES (6,8,2);
INSERT INTO partsused
	VALUES (7,1,2);
INSERT INTO partsused
	VALUES (8,1,4);
INSERT INTO partsused
	VALUES (8,2,1);
INSERT INTO partsused
	VALUES (8,3,1);
INSERT INTO partsused
	VALUES (8,4,1);
INSERT INTO partsused
	VALUES (9,9,1);
INSERT INTO partsused
	VALUES (9,10,4);
INSERT INTO partsused
	VALUES (10,4,4);
INSERT INTO partsused
	VALUES (11,3,2);
INSERT INTO partsused
	VALUES (11,4,1);
INSERT INTO partsused
	VALUES (12,1,4);
INSERT INTO partsused
	VALUES (12,7,2);
INSERT INTO partsused
	VALUES (13,7,1);
INSERT INTO partsused
	VALUES (13,8,1);
INSERT INTO partsused
	VALUES (14,3,6);
INSERT INTO partsused
	VALUES (14,6,4);
INSERT INTO partsused
	VALUES (14,14,1);
INSERT INTO partsused
	VALUES (15,4,1);
INSERT INTO partsused
	VALUES (15,20,1);
INSERT INTO partsused
	VALUES (16,9,1);
INSERT INTO partsused
	VALUES (16,14,1);
INSERT INTO partsused
	VALUES (17,7,4);
INSERT INTO partsused
	VALUES (17,13,1);
INSERT INTO partsused
	VALUES (18,1,5);
INSERT INTO partsused
	VALUES (18,4,6);
INSERT INTO partsused
	VALUES (19,8,2);	
INSERT INTO partsused
	VALUES (20,5,2);
INSERT INTO partsused
	VALUES (20,7,4);
INSERT INTO partsused
	VALUES (21,15,1);	
INSERT INTO partsused
	VALUES (21,16,1);	
INSERT INTO partsused
	VALUES (21,17,3);	
INSERT INTO partsused
	VALUES (21,18,1);	
INSERT INTO partsused
	VALUES (22,1,5);	
INSERT INTO partsused
	VALUES (22,2,1);
INSERT INTO partsused
	VALUES (23,4,2);	
INSERT INTO partsused
	VALUES (23,16,3);	
INSERT INTO partsused
	VALUES (23,20,2);
INSERT INTO partsused
	VALUES (24,3,2);	
INSERT INTO partsused
	VALUES (25,10,1);	
INSERT INTO partsused
	VALUES (25,13,1);	
INSERT INTO partsused
	VALUES (26,14,1);	
INSERT INTO partsused
	VALUES (27,4,6);	
INSERT INTO partsused
	VALUES (27,7,4);	
INSERT INTO partsused
	VALUES (28,19,1);
INSERT INTO partsused
	VALUES (29,4,1);
INSERT INTO partsused
	VALUES (29,9,1);
INSERT INTO partsused
	VALUES (30,2,1);
INSERT INTO partsused
	VALUES (30,3,2);
INSERT INTO partsused
	VALUES (30,6,6);
INSERT INTO partsused
	VALUES (32,8,2);
		