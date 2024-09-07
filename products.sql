CREATE TABLE products
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL UNIQUE COMMENT 'Название продукта',
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'Цена продукта'
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products (id, title, price)
VALUES (1, 'Три товарища', 49.80);

INSERT INTO products (id, title, price)
VALUES (2, 'Триумфальная арка', 349.00);

INSERT INTO products (id, title, price)
VALUES (3, 'Один год жизни', 149.00);

INSERT INTO products (id, title, price)
VALUES (4, 'Северный дракон', 249.00);
