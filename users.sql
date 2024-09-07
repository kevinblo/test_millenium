CREATE TABLE users
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL COMMENT 'Имя пользователя',
    last_name VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL COMMENT 'Фамилия пользователя',
    birthday DATE NULL COMMENT 'Дата рождения',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания записи',
    UNIQUE (first_name, last_name, birthday)
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users (id, first_name, last_name, birthday, created_at)
VALUES (1, 'Петр', 'Петров', '2000-04-14', '2024-02-01 18:17:16');

INSERT INTO users (id, first_name, last_name, birthday, created_at)
VALUES (2, 'Иван', 'Иванов', '1997-06-17', '2024-02-02 18:17:43');
