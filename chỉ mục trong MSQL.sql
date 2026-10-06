
CREATE TABLE IF NOT EXISTS customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

INSERT INTO customers VALUES 
(103, 'Atelier graphique', 'Schmitt', 'Carine ', '40.32.2555', '54, rue Royale', 'Nantes', 'France'),
(112, 'Signal Gift Stores', 'King', 'Jean', '7025551838', '8489 Strong St.', 'Las Vegas', 'USA'),
(114, 'Australian Collectors, Co.', 'Ferguson', 'Peter', '03 9520 4555', '636 St Kilda Road', 'Melbourne', 'Australia'),
(119, 'La Rochelle Gifts', 'Labrune', 'Janine ', '40.67.8555', '67, rue des Cités', 'Nantes', 'France'),
(121, 'Baane Mini Imports', 'Bergulfsen', 'Jonas ', '07-98 9555', 'Erling Skakkes gate 78', 'Stavern', 'Norway'),
(124, 'Mini Gifts Distributors Ltd.', 'Nelson', 'Valarie', '4155551450', '5677 Strong St.', 'San Rafael', 'USA'),
(128, 'Blauer See Auto, Co.', 'Keitel', 'Roland', '+49 69 66 90 2555', 'Lyonerstr. 34', 'Frankfurt', 'Germany'),
(129, 'Mini Wheels Co.', 'Murphy', 'Julie', '6505555787', '5557 North Point Way', 'San Francisco', 'USA'),
(131, 'Land of Toys Inc.', 'King', 'Kwai', '2125557818', '897 Long Airport Highway', 'NYC', 'USA');

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';


ALTER TABLE customers ADD INDEX idx_customerName(customerName);

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' OR contactFirstName = 'King';


ALTER TABLE customers DROP INDEX idx_full_name;