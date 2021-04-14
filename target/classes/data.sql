DROP TABLE IF EXISTS menu;
CREATE TABLE menu
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(500),
    description VARCHAR(500),
    category    VARCHAR(250),
    price       int,
    photos      VARCHAR(500)
);

DROP TABLE IF EXISTS role;
CREATE TABLE role
(
    id   LONG AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500)
);

DROP TABLE IF EXISTS user;
CREATE TABLE user
(
    id       LONG AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(500),
    password VARCHAR(500)
);

DROP TABLE IF EXISTS catagory_menu;
CREATE TABLE catagory_menu
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catagory INT,
    id_menu INT
);

DROP TABLE IF EXISTS catalogue;
CREATE TABLE catalogue
(
    id_catalogue INT AUTO_INCREMENT PRIMARY KEY,
    ten VARCHAR(500),
    chitiet VARCHAR(500)
);
