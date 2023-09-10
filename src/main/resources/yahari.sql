--  ========================
--			Customer
--  ========================
DROP TABLE Customer;
CREATE TABLE Customer(
	cid				BIGINT			PRIMARY KEY			AUTO_INCREMENT,
	name			VARCHAR(20)		NOT NULL,
	phone			VARCHAR(13)		NOT NULL			UNIQUE,
	passwd			VARCHAR(20)		NOT NULL,
	balance			DOUBLE			NOT NULL			DEFAULT 0.0,		
	point			DOUBLE			NOT NULL			DEFAULT 0.0,	
	regDate			TIMESTAMP		NOT NULL			DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT = 1001;

SELECT * FROM Customer;

SELECT COUNT(*) FROM Customer;

INSERT INTO Customer (name, phone, passwd, balance, point) VALUES ('페이커', '01046047591', '11', '20000', '2000');

UPDATE Customer SET name = '이상혁' WHERE id = '1001';


--  ========================
--			  Menu
--  ========================
DROP TABLE Menu;
CREATE TABLE Menu (
   mid				BIGINT			PRIMARY	KEY			AUTO_INCREMENT,
   name				VARCHAR(20)		NOT NULL			UNIQUE,
   price			DOUBLE			NOT NULL  			DEFAULT 0.0,
   menuType			CHAR(1)			NOT NULL,
   imageName		VARCHAR(20)		NOT NULL
)AUTO_INCREMENT = 2001;

SELECT * FROM Menu;


--  ========================
--			 Admin
--  ========================
DROP TABLE Admin;
CREATE TABLE Admin (
   aid				BIGINT			PRIMARY	KEY			AUTO_INCREMENT,
   adminPasswd		VARCHAR(20)		NOT NULL,
   adminBalance		DOUBLE			NOT NULL  			DEFAULT 0.0,
   adminAccountNum	VARCHAR(20)		NOT NULL,
   regDate			TIMESTAMP		NOT NULL			DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM Admin;




