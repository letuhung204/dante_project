DROP TABLE IF EXISTS menu;
CREATE TABLE menu
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(500),
    description VARCHAR(500),
    category    VARCHAR(250),
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
