
CREATE TABLE IF NOT EXISTS menu
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(500),
    description VARCHAR(20500),
    category    VARCHAR(500),
    price       VARCHAR(500),
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
INSERT INTO catalogue (ten, chitiet)
VALUES ('Combo', 'mo ta Combo category'),
       ('Signature','mo ta Signature category'),
    ('Classic','mo ta Classic category');
    INSERT INTO menu (id,title, `description`,photos,price)
VALUES (1,'Bombay Sapphire Combo', 'Combo','BombaySapphireCombo.jpg','1.600.000'),
		(2,'Jose Cuervo Tequila', 'Combo','JoseCuervoTequila.jpg','1.550.000'),
        (3,'Barcadi Gold Rum Combo', 'Combo','BarcadiGoldRumCombo.jpg','1.550.000'),
        (4,'Captain Morgan Rum Combo', 'Combo','CaptainMorganRumCombo.jpg','1.550.000'),
        (5,'Jack Daniels Combo', 'Combo','JackDanielsCombo.jpg','1.750.000'),
         (6,'Jimbeam White Combo', 'Combo','JimbeamWhiteCombo.jpg','1.450.000'),
          (7,'Attack on Pearl Harbor', 'Whisky,Sesame,Passion,Tamarind','AttackonPearlHarbor.jpg','230.000'),
           (8,'Ocean Heart', 'Gin,Alovera,Honey','OceanHeart.jpg','230.000'),
            (9,'The Habour Sunrise', 'Tequila,Watermelon,Basil,Grenadine','TheHabourSunrise.jpg','250.000'),
             (10,'Just a Kiss', 'Bourbon,Gin,Banana Liquor,Mamalade','JustaKiss.jpg','220.000'),
              (11,'Green Muse', 'Bourbon,Bailey,Hazenut,Matcha,Mlik','GreenMuse.jpg','190.000'),
               (12,'Bermuda Triangle', 'Seaweed Bourbon,Smoky Whisky,Bitter','BermudaTriangle.jpg','210.000'),
               (13,'Port Royal', 'Gin,Campari,Vermouth,Licorine,O Mai','PortRoyal.jpg','195.000'),
               (14,'Foundtain of Youth', 'Rum,Basil,Pine Apple,Lime,Honey','FoundtainofYouth.jpg','185.000'),
                (15,'The Flying Dutch Man', 'Tequila,Tomato,Cinnamon,Lemon,Tabasco','TheFlyingDutchMan.jpg','185.000'),
                (16,'Calypso', 'Gin,Hibicus Cordial,Honey Ginger,Egg White','Calypso.jpg','165.000');

INSERT INTO catagory_menu (id_catagory,id_menu)
 VALUES (1,1),
		(1,2),
        (1,3),
        (1,4),
        (1,5),
        (1,6),
        (2,7),
        (2,8),
        (2,9),
        (2,10),
        (2,11),
        (2,12),
        (2,13),
		(2,14),
        (2,15),
        (2,16);
