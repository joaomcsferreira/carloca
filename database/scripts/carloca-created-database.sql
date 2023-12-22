DROP DATABASE IF EXISTS carloca;
CREATE DATABASE IF NOT EXISTS carloca;

USE carloca;

CREATE TABLE IF NOT EXISTS manufacturer (
	manufacturer_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS color (
	color_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
	category_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS car (
	car_id int PRIMARY KEY AUTO_INCREMENT,
	manufacturer_id int NOT NULL,
	color_id int NOT NULL,
	category_id int NOT NULL,
	model varchar(120) NOT NULL,
	`version` varchar(100) NOT NULL,
	`year` year NOT NULL,
	license_plate char(7) NOT NULL unique,
	
	FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(manufacturer_id),
	FOREIGN KEY (color_id) REFERENCES color(color_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE IF NOT EXISTS gender (
	gender_id int PRIMARY KEY AUTO_INCREMENT,
	name char(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS client (
	client_id int PRIMARY KEY AUTO_INCREMENT,
	first_name varchar(125) NOT NULL,
	last_name varchar(125) NOT NULL,
	cpf char(11) NOT NULL unique,
	date_birth date,
	gender_id int NOT NULL,
	
	FOREIGN KEY (gender_id) REFERENCES gender(gender_id)
);

CREATE TABLE IF NOT EXISTS rental_mode (
	rental_mode_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS rental_status (
	rental_status_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(10)
);

CREATE TABLE IF NOT EXISTS rental (
	rental_id int PRIMARY KEY AUTO_INCREMENT,
	rental_date datetime NOT NULL DEFAULT NOW(),
	return_date datetime,
	rental_mode_id int NOT NULL,
	rental_status_id int DEFAULT 0,
	initial_mileage double NOT NULL DEFAULT 0,
	final_mileage double,
	
	-- para impedir um alguel seja feito sem ser na modalidade diária
	CONSTRAINT only_daily_mode CHECK (rental_mode_id = 1),
	
	FOREIGN KEY (rental_mode_id) REFERENCES rental_mode(rental_mode_id),
	FOREIGN KEY (rental_status_id) REFERENCES rental_status(rental_status_id)
);

CREATE TABLE IF NOT EXISTS rental_client (
	rental_id int NOT NULL,
	client_id int  NOT NULL,
		
	PRIMARY KEY (rental_id, client_id),
	
	FOREIGN KEY (client_id) REFERENCES client(client_id),
	FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
);

CREATE TABLE IF NOT EXISTS rental_car (
	rental_id int NOT NULL,
	car_id int NOT NULL,
	
	PRIMARY KEY (rental_id, car_id),
	
	FOREIGN KEY (rental_id) REFERENCES rental(rental_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE IF NOT EXISTS address (
	address_id int PRIMARY KEY AUTO_INCREMENT,
	street varchar(100) NOT NULL,
	`number` int NOT NULL,
	city varchar(100) NOT NULL,
	neighborhood varchar(150) NOT NULL,
	state varchar(100) NOT NULL,
	zip_code char(8) NOT NULL,
	complement varchar(255)
);

CREATE TABLE IF NOT EXISTS franchise_unit (
	franchise_unit_id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	address_id int NOT NULL,
	
	FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE IF NOT EXISTS rental_franchise_unit (
	rental_id int NOT NULL,
	franchise_unit_id int NOT NULL,
	
	PRIMARY KEY (rental_id, franchise_unit_id),
	
	FOREIGN KEY (franchise_unit_id) REFERENCES franchise_unit(franchise_unit_id),
	FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
);

CREATE TABLE IF NOT EXISTS rental_franchise_unit_return (
	rental_id int NOT NULL,
	franchise_unit_id int NOT NULL,
	
	PRIMARY KEY (rental_id, franchise_unit_id),
	
	FOREIGN KEY (franchise_unit_id) REFERENCES franchise_unit(franchise_unit_id),
	FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
);

CREATE TABLE IF NOT EXISTS car_current_franchise_unit (
	car_id int NOT NULL,
	franchise_unit_id int NOT NULL,
	
	PRIMARY KEY(car_id, franchise_unit_id),
	
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (franchise_unit_id) REFERENCES franchise_unit(franchise_unit_id)
);
