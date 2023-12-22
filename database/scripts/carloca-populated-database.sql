
-- Populando a tabela de fabricantes
INSERT INTO manufacturer (name) VALUES
('Toyota'),
('Ford'),
('Honda'),
('Chevrolet'),
('Volkswagen'),
('BMW'),
('Mercedes-Benz'),
('Nissan'),
('Audi'),
('Hyundai');

-- Populando a tabela de cores
INSERT INTO color (name) VALUES 
('White'),
('Black'),
('Silver');

-- Populando a tabela de categorias
INSERT INTO category (name) VALUES
('Sedan'),
('SUV'),
('Truck'),
('Hatchback'),
('Convertible'),
('Coupe'),
('Minivan'),
('Electric'),
('Hybrid'),
('Sports Car');

-- Populando a tabela de carros
INSERT INTO car (manufacturer_id, color_id, category_id, model, version, `year`, license_plate) VALUES
(1,1,1,'Corolla','SE',2022, 'ASD1256'),
(2,2,2,'Mustang','GT',2023, 'ERF5214'),
(3,3,1,'Accord','Touring',2022, 'ERW3256'),
(4,3,3,'Colorado','Z71',2023, 'JJK8521'),
(5,2,2,'Jetta','SEL',2022, 'LMS9654'),
(1,2,4,'RAV4','XLE',2023, 'ASD1234'),
(2,1,1,'Explorer','Limited',2022, 'AWE8547'),
(3,1,2,'Fit','Sport',2023, 'AVG2556'),
(4,2,3,'Equinox','Premier',2022, 'FEF3258'),
(5,3,1,'Tiguan','SE R-Line',2023, 'OLK1145'),
(1,1,2,'Camry','XSE',2022, 'GJH9585'),
(2,2,3,'Ranger','Lariat',2023, 'WQE2569'),
(3,3,1,'Civic','Si',2022, 'QWE9632'),
(4,1,4,'Silverado','High Country',2023, 'MMN4521'),
(5,1,2,'Passat','R-Line',2022, 'FLA2019'),
(1,2,3,'Highlander','Limited',2023, 'OKI3325'),
(2,1,1,'Edge','Titanium',2022, 'OPL8542'),
(3,3,2,'Pilot','EX-L',2023, 'AVF3218'),
(4,1,4,'Traverse','RS',2022, 'JMS9559'),
(5,2,1,'Atlas','SE',2023, 'QWE2558'),
(1,2,4,'Prius','LE',2022, 'PLO2288'),
(2,1,1,'Expedition','XLT',2023, 'MKH5456'),
(3,2,2,'CR-V','EX',2022, 'RET2589'),
(4,2,3,'Blazer','RS',2023, 'MKN1456'),
(5,3,1,'ID.4','Pro',2022, 'KIU2256'),
(1,1,2,'Avalon','Limited',2023, 'BVJ2147'),
(2,2,3,'Escape','SE',2022, 'WQS8596'),
(3,3,1,'Insight','Touring',2023, 'VFG2589'),
(4,3,4,'Tahoe','Premier',2022, 'IED5896'),
(5,2,2,'Arteon','SEL',2023, 'BVY1299'),
(1,1,3,'Sienna','XLE',2022, 'WED3658'),
(2,1,1,'Bronco','Badlands',2023, 'TGH6589'),
(3,1,2,'Odyssey','Elite',2022, 'AKI8547'),
(4,1,4,'Suburban','RST',2023, 'OIU1235'),
(5,2,1,'Touareg','Executive',2022, 'UYG1596'),
(1,3,4,'C-HR','LE',2023, 'QWE1486'),
(2,3,1,'Mach-E','Premium',2022, 'XDF2657'),
(3,2,2,'Pilot','Touring',2023, 'MBV1633'),
(4,2,3,'Trax','LT',2022, 'ANT5631'),
(5,2,1,'Golf GTI','S',2023, 'TIH8645');

-- Populando a tabela de gêneros
INSERT INTO gender (name) VALUES 
('M'),
('F');

-- Populando a tabela de clientes
INSERT INTO client (first_name, last_name, cpf, date_birth, gender_id) VALUES
('John', 'Doe', '12345678901', '1990-05-15', 1),
('Jane', 'Smith', '23456789012', '1985-08-22', 2),
('Michael', 'Johnson', '34567890123', '1992-02-10', 1),
('Emily', 'Davis', '45678901234', '1988-11-30', 2),
('Robert', 'Wilson', '56789012345', '1980-07-05', 1),
('Olivia', 'Taylor', '67890123456', '1995-04-18', 2),
('David', 'Brown', '78901234567', '1982-09-25', 1),
('Sophia', 'Anderson', '89012345678', '1987-06-12', 2),
('Christopher', 'Moore', '90123456789', '1998-03-03', 1),
('Emma', 'Williams', '01234567890', '1984-01-20', 2),
('Matthew', 'Jones', '12345098765', '1993-07-17', 1),
('Ava', 'Miller', '23450987654', '1989-10-08', 2),
('Daniel', 'White', '34509876543', '1996-12-05', 1),
('Chloe', 'Johnson', '45609876532', '1983-04-28', 2),
('Ethan', 'Clark', '56709876521', '1991-09-15', 1),
('Mia', 'Martin', '67809876543', '1986-02-09', 2),
('Andrew', 'Wright', '78909876532', '1997-05-26', 1),
('Isabella', 'Wilson', '89098765432', '1981-08-13', 2),
('James', 'Taylor', '90987654321', '1994-11-01', 1),
('Sophie', 'Brown', '01234567899', '1983-06-28', 2),
('Jon', 'Blacksmith', '90987654874', '1999-01-31', 1);

-- Populando a tabela de modos de aluguel
INSERT INTO rental_mode (name) VALUES
('Daily'),
('Weekly'),
('Monthly');

-- Populando a tabela de status de aluguel
INSERT INTO rental_status (name) VALUES
('Reserved'),
('InProgress'),
('Completed');

-- Populando a tabela de endereços
INSERT INTO address (street, `number`, city, neighborhood, state, zip_code, complement) VALUES
('Avenida Paulista', 123, 'São Paulo', 'Bela Vista', 'SP', '01311000', 'Conjunto 101'),
('Rua Copacabana', 456, 'Rio de Janeiro', 'Copacabana', 'RJ', '22050002', 'Unidade 202'),
('Avenida Boa Viagem', 789, 'Recife', 'Boa Viagem', 'PE', '51030300', 'Apto 303'),
('Rua das Flores', 101, 'Curitiba', 'Centro', 'PR', '80020060', 'Andar 4'),
('Avenida Beira Mar', 202, 'Fortaleza', 'Meireles', 'CE', '60165121', 'Conjunto 505'),
('Rua Augusta', 303, 'São Paulo', 'Consolação', 'SP', '01305100', 'Loja 606'),
('Rua das Palmeiras', 404, 'Salvador', 'Barra', 'BA', '40140360', 'Sala 707'),
('Rua 13 de Maio', 505, 'Campinas', 'Centro', 'SP', '13010900', 'Sala 808'),
('Avenida Atlântica', 606, 'Balneário Camboriú', 'Centro', 'SC', '88330003', 'Estúdio 909'),
('Rua Oscar Freire', 707, 'São Paulo', 'Jardins', 'SP', '01426000', 'Cobertura 1010');

-- Populando a tabela de unidades de franquia
INSERT INTO franchise_unit (name, address_id) VALUES
('Unidade Paulista', 1),
('Unidade Copacabana', 2),
('Unidade Boa Viagem', 3),
('Unidade das Flores', 4),
('Unidade Beira Mar', 5),
('Unidade Augusta', 6),
('Unidade Palmeiras', 7),
('Unidade 13 de Maio', 8),
('Unidade Atlântica', 9),
('Unidade Oscar Freire', 10);

INSERT INTO car_current_franchise_unit (car_id, franchise_unit_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 8),
(5, 5),
(6, 8),
(7, 2),
(8, 9),
(9, 2),
(10, 9),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 7),
(18, 4),
(19, 4),
(20, 4),
(21, 7),
(22, 8),
(23, 10),
(24, 10),
(25, 6),
(26, 6),
(27, 8),
(28, 6),
(29, 10),
(30, 7),
(31, 1),
(32, 2),
(33, 1),
(34, 3),
(35, 4),
(36, 5),
(37, 6),
(38, 10),
(39, 8),
(40, 8);

INSERT INTO rental (rental_date, return_date, rental_mode_id, rental_status_id, initial_mileage, final_mileage) VALUES
-- Completed
('2023-01-01 08:00:00', '2023-01-02 08:00:00', 1, 3, 100.5, 200.8),
('2023-01-02 10:30:00', '2023-01-03 10:30:00', 1, 3, 50.2, 180.3),
('2023-01-03 12:15:00', '2023-01-04 12:15:00', 1, 3, 80.0, 220.7),
('2023-01-04 14:45:00', '2023-01-05 14:45:00', 1, 3, 120.1, 250.0),
('2023-01-05 16:30:00', '2023-01-06 16:30:00', 1, 3, 90.3, 190.5),
('2023-01-06 18:00:00', '2023-01-07 18:00:00', 1, 3, 60.7, 210.2),
('2023-01-07 20:30:00', '2023-01-08 20:30:00', 1, 3, 150.0, 280.4),
('2023-01-08 22:45:00', '2023-01-09 22:45:00', 1, 3, 110.6, 240.8),
('2023-01-09 01:00:00', '2023-01-10 01:00:00', 1, 3, 70.9, 200.1),
('2023-01-10 03:30:00', '2023-01-11 03:30:00', 1, 3, 180.2, 310.5),
('2023-01-11 05:45:00', '2023-01-12 05:45:00', 1, 3, 130.4, 270.9),
('2023-01-12 08:15:00', '2023-01-13 08:15:00', 1, 3, 100.8, 230.3),
('2023-01-13 10:45:00', '2023-01-14 10:45:00', 1, 3, 210.5, 350.2),
('2023-01-14 13:00:00', '2023-01-15 13:00:00', 1, 3, 160.7, 310.5),
('2023-01-15 15:30:00', '2023-01-16 15:30:00', 1, 3, 130.0, 270.0),
('2023-01-16 17:45:00', '2023-01-17 17:45:00', 1, 3, 240.3, 380.1),
('2023-01-17 20:15:00', '2023-01-18 20:15:00', 1, 3, 190.5, 330.4),
('2023-01-18 22:30:00', '2023-01-19 22:30:00', 1, 3, 160.9, 300.7),
('2023-01-19 01:00:00', '2023-01-20 01:00:00', 1, 3, 270.8, 400.0),
('2023-01-20 03:15:00', '2023-01-21 03:15:00', 1, 3, 220.1, 350.3),
('2023-01-21 05:45:00', '2023-01-22 05:45:00', 1, 3, 200.8, 250.6),
('2023-01-22 08:00:00', '2023-01-23 08:00:00', 1, 3, 180.3, 230.5),
('2023-01-23 10:30:00', '2023-01-24 10:30:00', 1, 3, 220.7, 250.9),
('2023-01-24 12:45:00', '2023-01-25 12:45:00', 1, 3, 250, 300.2),
('2023-01-25 15:15:00', '2023-01-26 15:15:00', 1, 3, 190.5, 230.3),
-- InProgress
('2023-01-31 10:25:00', NULL, 1, 2, 250.6, NULL),
('2023-01-31 12:25:00', NULL, 1, 2, 230.5, NULL),
('2023-02-01 08:25:00', NULL, 1, 2, 110.9, NULL),
('2023-02-01 10:05:00', NULL, 1, 2, 150.2, NULL),
('2023-02-01 10:35:00', NULL, 1, 2, 130.3, NULL),
('2023-02-01 10:43:00', NULL, 1, 2, 210.2, NULL),
('2023-02-01 10:52:00', NULL, 1, 2, 280.4, NULL),
('2023-02-01 11:37:00', NULL, 1, 2, 240.8, NULL),
('2023-02-01 11:45:00', NULL, 1, 2, 200.1, NULL),
('2023-02-01 11:35:00', NULL, 1, 2, 310.5, NULL),
('2023-02-01 12:55:00', NULL, 1, 2, 270.9, NULL),
('2023-02-01 13:15:00', NULL, 1, 2, 230.3, NULL),
('2023-02-02 15:22:00', NULL, 1, 2, 350.2, NULL),
('2023-02-02 15:52:00', NULL, 1, 2, 310.5, NULL),
('2023-02-02 16:27:00', NULL, 1, 2, 270, NULL),
('2023-02-02 16:49:00', NULL, 1, 2, 380.1, NULL),
-- Reserved
('2023-02-09 08:00:00', NULL, 1, 1, 0.0, NULL),
('2023-02-09 08:00:00', NULL, 1, 1, 0.0, NULL),
('2023-02-10 08:00:00', NULL, 1, 1, 0.0, NULL),
('2023-02-11 08:00:00', NULL, 1, 1, 0.0, NULL)
;

INSERT INTO rental_client (rental_id, client_id) VALUES
-- Completed
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 2),
(22, 1),
(23, 4),
(24, 5),
(25, 3),
-- InProgress
(26, 3),
(27, 7),
(28, 5),
(29, 2),
(30, 1),
(31, 4),
(32, 6),
(33, 9),
(34, 8),
(35, 12),
(36, 11),
(37, 10),
(38, 15),
(39, 13),
(40, 17),
(41, 14),
-- Reserved
(42, 16),
(43, 18),
(44, 19),
(45, 20)
;

INSERT INTO rental_car (rental_id, car_id) VALUES
-- Completed
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
-- InProgress
(26, 1),
(27, 2),
(28, 3),
(29, 4),
(30, 5),
(31, 6),
(32, 7),
(33, 8),
(34, 9),
(35, 10),
(36, 11),
(37, 12),
(38, 13),
(39, 14),
(40, 15),
(41, 16),
-- Reserved
(42, 21),
(43, 22),
(44, 23),
(45, 24)
;

INSERT INTO rental_franchise_unit (rental_id, franchise_unit_id) VALUES
-- Completed
(1, 1),
(2, 1),
(3, 1),
(4, 8),
(5, 5),
(6, 8),
(7, 2),
(8, 9),
(9, 2),
(10, 9),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 7),
(18, 4),
(19, 4),
(20, 4),
(21, 1),
(22, 1),
(23, 1),
(24, 8),
(25, 5),
-- InProgress
(26, 6),
(27, 5),
(28, 10),
(29, 3),
(30, 8),
(31, 8),
(32, 2),
(33, 9),
(34, 2),
(35, 9),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 3),
(41, 3),
-- Reserved
(42, 7),
(43, 8),
(44, 10),
(45, 10)
;

INSERT INTO rental_franchise_unit_return (rental_id, franchise_unit_id) VALUES
-- Completed
(1, 1),
(2, 1),
(3, 1),
(4, 8),
(5, 5),
(6, 8),
(7, 2),
(8, 9),
(9, 2),
(10, 9),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 7),
(18, 4),
(19, 4),
(20, 4),
(21, 6),
(22, 5),
(23, 10),
(24, 3),
(25, 8);
-- InProgress - não possui unidade de devolução
-- Reserved - não possui unidade de devolução

-- atualizando a localização do carro na sua atual unidade da franquia para criar um historico minimamente visivel, apenas para fins didáticos
UPDATE car_current_franchise_unit ccfu
SET 
	ccfu.franchise_unit_id = CASE 
		WHEN ccfu.car_id = 1 THEN 6
		WHEN ccfu.car_id = 2 THEN 5
		WHEN ccfu.car_id = 3 THEN 10
		WHEN ccfu.car_id = 4 THEN 3
		WHEN ccfu.car_id = 5 THEN 8
	END
WHERE ccfu.car_id IN (1, 2, 3, 4, 5);