CREATE DATABASE IF NOT EXISTS expense_tracker;
USE expense_tracker;

DROP TABLE IF EXISTS expenses;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id     INT AUTO_INCREMENT PRIMARY KEY,
    full_name   VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    category_id   INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE expenses (
    expense_id    INT AUTO_INCREMENT PRIMARY KEY,
    user_id       INT NOT NULL,
    category_id   INT NOT NULL,
    amount        DECIMAL(10,2) NOT NULL,
    expense_date  DATE NOT NULL,
    notes         VARCHAR(255),
    CONSTRAINT fk_expense_user FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_expense_category FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
