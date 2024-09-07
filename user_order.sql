CREATE TABLE user_order
(
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Уникальный идентификатор заказа
    user_id INT NOT NULL,               -- ID пользователя
    product_id INT NOT NULL,            -- ID продукта
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Время создания заказа',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `user_order` ADD INDEX(`user_id`, `product_id`);

INSERT INTO user_order (user_id, product_id, created_at) VALUES (1, 4, '2024-02-14 18:41:25');
INSERT INTO user_order (user_id, product_id, created_at) VALUES (2, 1, '2024-02-14 18:40:52');
INSERT INTO user_order (user_id, product_id, created_at) VALUES (2, 2, '2024-02-14 18:40:51');
INSERT INTO user_order (user_id, product_id, created_at) VALUES (2, 3, '2024-02-02 18:40:45');
