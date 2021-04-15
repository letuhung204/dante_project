
CREATE TABLE IF NOT EXISTS menu
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(500),
    description VARCHAR(20500),
    category    VARCHAR(500),
    price       int,
    photos      VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS role
(
    id   LONG AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS `user`
(
    id       LONG AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(500),
    password VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS catagory_menu
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catagory INT,
    id_menu INT
);

CREATE TABLE IF NOT EXISTS catalogue
(
    id_catalogue INT AUTO_INCREMENT PRIMARY KEY,
    ten VARCHAR(500),
    chitiet VARCHAR(500)
);
INSERT INTO `user` (username, password)
VALUES ('admin-dante','$2a$10$KSX3/ZmYSK6udsTFRow1a.neW/k/UY5iVvx2w6iB.UhXDOnMQhNoa');
