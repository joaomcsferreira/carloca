/*
 * NESTE PONTO SERÃO DESCRITOS AS LOGICAS UTILIZADAS NA CONSTRUÇÃO DESSE PROJETO DE BANCO DE DADOS

 * para a inserção do relacionamente de alugueis com cliente deverá ser feita da seguinte forma,
 * antes da inserção na tabela rental_cliente é feita a verificação se existe algum aluguel que 
 * possua o status como 1 ou 2, Reserved e InProgress respectivamente
 */

INSERT INTO rental_client (rental_id, client_id)
SELECT r.rental_id, 21
FROM rental r
WHERE r.rental_id = 46
  AND NOT EXISTS (
    SELECT 1
	FROM rental r2 
	JOIN rental_client rc2 ON rc2.rental_id = r2.rental_id
	WHERE rc2.client_id = 21 AND r2.rental_status_id IN (1, 2)
);

-- tabelas relacionadas

/*
 * ao adionar uma nova row em alguma tabela será necessario realizar a inserção ou atualização
 * em outras tabelas, esses casos são principalmente com relação a tabela rental.
 * ao realizar uma nova inserção na tabela rental, se necessario realizar inserções nas
 * tabelas de rental_cliente, rental_car, rental_franchise_unit e rental_franchise_unit_return
 * isso é devido que a modelagem utilizado nesse projeto priorizou a separação dos relacionamentos
 * em tabelas separadas
 */

/*
 * a tabela carro possui um relacionamento que atribui a informação de qual unidade da franquia o
 * carro está no momento, dessa forma ao finalizar um aluguel e ele ter os campos rental_status_id atualizado,
 * além de ser atribuido a informação do local onde o carro foi devolvido na tabela rental_franchise_unit_return,
 * a tabela car_current_franchise_unit, com a mesma informação adicionada em rental_franchise_unit_return
 */ 
 
-- select o historico de um carro por id

SELECT c.model, c.`version`, c.license_plate, concat(c2.first_name, ' ', c2.last_name)  AS client_name, r.rental_date, rs.name AS status, r.return_date, fu.name AS franchise_origem, fu2.name AS franchise_return 
FROM car c 
JOIN rental_car rc ON rc.car_id = c.car_id 
JOIN rental r ON r.rental_id = rc.rental_id
JOIN rental_client rc2 ON rc2.rental_id = r.rental_id
JOIN rental_status rs ON rs.rental_status_id = r.rental_status_id
JOIN client c2 ON c2.client_id = rc2.client_id	
JOIN rental_franchise_unit rfu ON rfu.rental_id = r.rental_id
LEFT JOIN rental_franchise_unit_return rfur ON rfur.rental_id = r.rental_id
JOIN franchise_unit fu ON fu.franchise_unit_id = rfu.franchise_unit_id
LEFT JOIN franchise_unit fu2 ON fu2.franchise_unit_id = rfur.franchise_unit_id
WHERE c.car_id = 5
ORDER BY r.rental_date DESC;

-- select o historico de um cliente por id
SELECT concat(c.first_name, ' ', c.last_name)  AS client_name, c.cpf, r.rental_id, r.rental_date, r.return_date, rs.name, c2.model, c2.`version`, c2.license_plate
FROM client c 
JOIN rental_client rc ON rc.client_id = c.client_id 
JOIN rental r ON r.rental_id = rc.rental_id
JOIN rental_status rs ON rs.rental_status_id = r.rental_status_id
JOIN rental_car rc2 ON rc2.rental_id = r.rental_id
JOIN car c2 ON c2.car_id = rc2.car_id
WHERE c.client_id = 3
ORDER BY r.rental_date DESC;

-- select todos os registros de alugueis
SELECT r.rental_id, rs.name AS status, r.rental_date, r.return_date, c.model, c.`version`, c.license_plate, c2.client_id, concat(c2.first_name, ' ', c2.last_name)  AS client_name, fu.name AS franchise_origem, fu2.name AS franchise_return 
FROM rental r 
JOIN rental_car rc ON rc.rental_id = r.rental_id
JOIN rental_status rs ON rs.rental_status_id = r.rental_status_id
JOIN car c ON c.car_id = rc.car_id
JOIN rental_client rc2 ON rc2.rental_id = r.rental_id
JOIN client c2 ON c2.client_id = rc2.client_id
JOIN rental_franchise_unit rfu ON rfu.rental_id = r.rental_id
LEFT JOIN rental_franchise_unit_return rfur ON rfur.rental_id = r.rental_id
JOIN franchise_unit fu ON fu.franchise_unit_id = rfu.franchise_unit_id
LEFT JOIN franchise_unit fu2 ON fu2.franchise_unit_id = rfur.franchise_unit_id
ORDER BY r.rental_id;

-- select todos os registros de carros
SELECT c.car_id, c.model, c.`version`, c.`year`, c.license_plate, c2.name AS category, c3.name AS color, m.name AS manufacturer
FROM car c 
JOIN category c2 ON c2.category_id = c.category_id 
JOIN color c3 ON c3.color_id = c.color_id
JOIN manufacturer m ON m.manufacturer_id = c.manufacturer_id
ORDER BY c.model;

-- select quilometragem atual de um carro por id
SELECT c.model, c.version, c.license_plate, r.final_mileage AS mileage
FROM car c
JOIN rental_car rc ON rc.car_id = c.car_id
JOIN rental r ON r.rental_id = rc.rental_id
WHERE r.rental_status_id = 3 AND c.car_id = 1
ORDER BY r.return_date DESC LIMIT 1;

-- select exibição dos carros que possuem algum status de aluguel ativo (Reserved ou InProgress)
SELECT c2.car_id, c2.model, c2.`version`, c2.`year`, c2.license_plate, c3.name AS category, c4.name AS color, m.name AS manufacturer
FROM (
	SELECT c.car_id, MAX(r.rental_date) AS max_rental_date
	FROM car c
	LEFT JOIN rental_car rc ON rc.car_id = c.car_id
	LEFT JOIN rental r ON r.rental_id = rc.rental_id
	GROUP BY c.car_id
) AS sub
JOIN car c2 ON c2.car_id = sub.car_id
JOIN rental_car rc ON rc.car_id = sub.car_id
JOIN rental r ON r.rental_id = rc.rental_id
JOIN category c3 ON c3.category_id = c2.category_id
JOIN color c4 ON c4.color_id = c2.color_id
JOIN manufacturer m ON m.manufacturer_id = c2.manufacturer_id
WHERE r.rental_status_id != 3
ORDER BY c2.model;

-- select carros disponiveis para aluguel
SELECT c2.car_id, c2.model, c2.`version`, c2.`year`, c2.license_plate, c3.name AS category, c4.name AS color, m.name AS manufacturer, fu.name AS current_franchise, a.city, a.state
FROM (
	SELECT c.car_id, MAX(r.rental_date) AS max_rental_date
	FROM car c
	LEFT JOIN rental_car rc ON rc.car_id = c.car_id
	LEFT JOIN rental r ON r.rental_id = rc.rental_id
	GROUP BY c.car_id
) AS sub
LEFT JOIN car c2 ON sub.car_id = c2.car_id
LEFT JOIN rental_car rc ON rc.car_id = c2.car_id
LEFT JOIN rental r ON r.rental_id = rc.rental_id
JOIN category c3 ON c3.category_id = c2.category_id
JOIN color c4 ON c4.color_id = c2.color_id
JOIN manufacturer m ON m.manufacturer_id = c2.manufacturer_id
JOIN car_current_franchise_unit ccfu ON ccfu.car_id = c2.car_id
JOIN franchise_unit fu ON fu.franchise_unit_id = ccfu.franchise_unit_id
JOIN address a ON a.address_id = fu.address_id
WHERE (sub.max_rental_date = r.rental_date OR r.rental_date IS NULL) AND (r.rental_status_id = 3 OR r.rental_status_id IS NULL)
ORDER BY c2.model;
