SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- USE jungle-bike;

-- CREATE TABLE IF NOT EXISTS `produit` (
-- `id` int(11) NOT NULL AUTO_INCREMENT,
-- `name` varchar(256) NOT NULL,
-- `description` text NOT NULL,
-- `price` int(255) NOT NULL,
-- primary key (id)
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `presta` (
`id_label` int NOT NULL,
`id_type` int NOT NULL,
`type` VARCHAR(256) NOT NULL,
`id_prestation` int NOT NULL,
`prestation` VARCHAR(256) NOT NULL,
`position` int NOT NULL,
`id_lang` int NOT NULL,
`price_ttc` float NOT NULL,
`estimation` VARCHAR(256) NOT NULL,
`estim_min` int NOT NULL,
`estim_max` int NOT NULL,
    PRIMARY KEY (`id_prestation`)
) ENGINE = InnoDB;

-- ALTER DATABASE `jungle-bike` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `presta` (`id_label`, `id_type`, `type`, `id_prestation`, `prestation`, `position`, `id_lang`, `price_ttc`, `estimation`, `estim_min`, `estim_max`) VALUES
(11,1,'Freins',1,'Changement d\'une paire de plaquettes pour frein à disque',1,2,42.5,'35€ - 50€',35,50),
(11,1,'Freins',2,'Changement d\'une paire de patins pour frein mécanique',2,2,32.5,'25€ - 40€',25,40),
(11,1,'Freins',3,'Changement d\'une paire de patins pour frein hydraulique',3,2,42.5,'35€ - 50€',35,50),
(11,1,'Freins',4,'Changement d\'un disque de frein simple',4,2,50,'45€ - 55€ ',45,55),
(11,1,'Freins',5,'Changement d\'un disque de frein complexe',5,2,62.5,'55€ - 70€',55,70),
(11,1,'Freins',6,'Changement d\'un étrier de frein mécanique - patins + reglages',6,2,65,'60€ - 70€',60,70),
(11,1,'Freins',7,'Changement d\'un étrier de frein hydraulique simple + purge',7,2,82.5,'75€ - 90€',75,90),
(11,1,'Freins',8,'Changement d\'un étrier de frein hydraulique complexe + purge',8,2,92.5,'85€ - 100€',85,100),
(11,1,'Freins',9,'Changement d\'un levier de frein mécanique',9,2,57.5,'50€ - 65€',50,65),
(11,1,'Freins',10,'Changement d\'un levier de frein hydraulique simple + purge',10,2,70,'65€ - 75€ ',65,75),
(11,1,'Freins',11,'Changement d\'un levier de frein hydraulique complexe + purge',11,2,82.5,'75€ - 90€',75,90),
(11,1,'Freins',12,'Changement d\’une durite + purge pour frein à disque hydraulique (réglage inclus)',12,2,42.5,'35€ - 50€',35,50),
(11,1,'Freins',13,'Purge d\'un frein hydraulique',13,2,37.5,'30€ - 45€',30,45),
(11,1,'Freins',14,'Changement d\’un câble + gaine pour frein à patins intérieurs (réglage inclus)',14,2,40,'35€ - 45€  ',35,45),
(11,1,'Freins',15,'Changement d\’un câble + gaine pour frein à patins extérieurs (réglage inclus)',15,2,40,'35€ - 45€  ',35,45),
(11,1,'Freins',16,'Changement d\’un câble + gaine pour frein à disque mécanique (réglage inclus)',16,2,40,'35€ - 45€  ',35,45),
(11,1,'Freins',17,'Réglage des freins à patins avant et arrière',17,2,52.5,'45€ - 60€',45,60),
(11,1,'Freins',18,'Réglage freins à disques mécaniques avant et arrière',18,2,25,'15€ - 35€',15,35),
(11,2,'Roues',19,'Fourniture et remplacement d\'une chambre à air roue avant',19,2,25,'20€ - 30€',20,30),
(11,2,'Roues',20,'Fourniture et remplacement d\'une chambre à air roue arrière',20,2,25,'20€ - 30€',20,30),
(11,2,'Roues',21,'Changement d\'un pneu sur vélo simple',21,2,42.5,'35€ - 50€',35,50),
(11,2,'Roues',22,'Changement d\'un pneu sur vélo électrique ou cargo',22,2,82.5,'75€ - 90€',75,90),
(11,2,'Roues',23,'Changement d\'un pneu sur trottinette',23,2,82.5,'75€ - 90€',75,90),
(11,2,'Roues',24,'Changement d\'un rayon simple',24,2,22.5,'15€- 30€',15,30),
(11,2,'Roues',25,'Changement d\'un rayon complexe',25,2,40,'35€ - 45€',35,45),
(11,2,'Roues',26,'Dévoilage simple d\'une roue',26,2,20,'15€ - 25€',15,25),
(11,2,'Roues',27,'Dévoilage complexe d\'une roue',27,2,30,'20€ - 40€',20,40),
(11,1,'Roues',28,'Changement d\’un garde boue',28,2,20,'15€ - 25€',15,25),
(11,3,'Transmission',29,'Changement de chaîne',29,2,24,'18€ - 30€',18,30),
(11,3,'Transmission',30,'Changement d\’une cassette',30,2,0,'sur demande',0,0),
(11,3,'Transmission',31,'Changement et réglage des vitesses (1 dérailleur)',31,2,32.5,'25€ - 40€',25,40),
(11,3,'Transmission',32,'Changement et réglage des vitesses (2 dérailleurs)',32,2,47.5,'40€ - 55€',40,55),
(11,3,'Transmission',33,'Changement d’un boitier de pédalier',33,2,87.5,'80€ - 95€',80,95),
(11,3,'Transmission',34,'Montage d\’un pédalier',34,2,37.5,'30€ - 45€',30,45),
(11,3,'Transmission',35,'Montage d\'un pédalier avec carter',35,2,50,'45€ - 55€',45,55),
(11,3,'Transmission',36,'Pose pédale',36,2,25,'20€ - 30€ ',20,30),
(11,3,'Transmission',37,'Changement gaine et/ou câble de dérailleur',37,2,40,'35€ - 45€',35,45),
(11,3,'Transmission',38,'Nettoyage - graissage boitier de pédalier',38,2,0,'sur demande',0,0),
(11,7,'Electrique',44,'Diagnostic panne électrique',44,2,50,'45€ - 55€ ',45,55),
(11,7,'Electrique',45,'Changement d\'une batterie (hors pièces)',45,2,50,'45€ - 55€ ',45,55),
(11,7,'Electrique',46,'Changement manette d\'accélération',46,2,60,'55€ - 65€',55,65),
(11,7,'Electrique',47,'Changement du module bluetooth',47,2,50,'45€ - 55€ ',45,55),
(11,7,'Electrique',48,'Réparation système électrique',48,2,52.5,'45€ - 60€',45,60),
(11,7,'Electrique',49,'Electrification',49,2,0,'sur demande',0,0),
(11,9,'Peinture',50,'Peinture et customisation',50,2,0,'sur demande',0,0),
(11,6,'Identification',51,'Pose Code d\'identification vélo (autocollant)',51,2,20,'15€ - 25€',15,25),
(11,6,'Identification',52,'Pose Code d\'identification vélo (gravure)',52,2,42.5,'35€ - 50€',35,50),
(11,5,'Accessoires',53,'Installation petit accessoire (béquille, rétroviseur etc.)',53,2,20,'15€ - 25€',15,25),
(11,5,'Accessoires',54,'Installation gros accessoire (porte-bagage, attelage, guidoline etc.)',54,2,25,'15€ - 35€',15,35),
(11,5,'Accessoires',55,'Découpe antivol',55,2,40,'35€ - 45€  ',35,45),
(11,4,'Forfait révision',56,'Mise en service vélo acheté sur Internet',56,2,52.5,'45€ - 60€',45,60),
(11,4,'Forfait révision',57,'Entretien et réglage sur vélo simple (transmission + freins)',57,2,37.5,'30€ - 45€',30,45),
(11,4,'Forfait révision',58,'Entretien et réglage sur vélo cargo (transmission + freins)',58,2,80,'70€ - 90€',70,90),
(11,4,'Forfait révision',59,'Révision complète sur vélo simple',59,2,47.5,'35€ - 65€',35,60),
(11,4,'Forfait révision',60,'Révision complète sur vélo cargo',60,2,102.5,'70€ - 135€',70,135),
(11,8,'Etude posturale',61,'Etude posturale',61,2,105,'60€ - 150€',60,150);

CREATE TABLE IF NOT EXISTS `bike_data`
(
    `id`	INT NOT NULL,
    `bike_column`	VARCHAR(512) NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('1', 'brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('2', 'activity');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('3', 'model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('4', 'year');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('5', 'size');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('6', 'frame_form');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('7', 'electric');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('8', 'engine_name_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('9', 'engine_battery_name_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('10', 'frame_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('11', 'fork_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('12', 'crankset_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('13', 'bb_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('14', 'pedals_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('15', 'chain_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('16', 'tire_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('17', 'cassette_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('18', 'brakes_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('19', 'hub_front_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('20', 'hub_rear_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('21', 'rim_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('22', 'gearshifter_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('23', 'derailleur_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('24', 'saddle_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('25', 'handlebar_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('26', 'luggagerack_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('27', 'bicycle_insurance');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('28', 'frame_tube_form');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('29', 'frame_diameter');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('30', 'frame_material');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('31', 'handlebar_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('32', 'handlebar_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('33', 'handlebar_diameter');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('34', 'handlebar_material');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('35', 'stem_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('36', 'stem_diameter');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('37', 'fork_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('38', 'fork_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('39', 'fork_pivot_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('40', 'fork_diameter');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('41', 'fork_length');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('42', 'fork_material');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('43', 'engine_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('44', 'engine_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('45', 'engine_power');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('46', 'engine_position');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('47', 'battery_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('48', 'battery_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('49', 'battery_capacity');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('50', 'battery_position');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('51', 'wheel_inch');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('52', 'tire_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('53', 'tire_size');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('54', 'etrto_size');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('55', 'spokes_nb');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('56', 'speed_nb');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('57', 'bb_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('58', 'bb_thread_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('59', 'chainring_nb');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('60', 'derailleur_position');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('61', 'derailleur_front_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('62', 'derailleur_rear_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('63', 'breaks_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('64', 'break_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('65', 'saddle_size');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('66', 'seatpost_diameter');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('67', 'pedals_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('68', 'comment');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('69', 'crankset_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('70', 'pedals_brand');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('71', 'active');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('72', 'purchase_date');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('73', 'warranty_manufacturer');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('74', 'warrenty_start_date');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('75', 'warrenty_end_date');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('76', 'insurance_formula');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('77', 'insurance_state');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('78', 'condition');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('79', 'cable_type');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('80', 'id_bike_model');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('81', 'bike-pseudo');
INSERT INTO `bike_data` (`id`, `bike_column`) VALUES ('82', 'bicycode');


CREATE TABLE IF NOT EXISTS `bike`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`)
);

INSERT INTO `bike` () VALUES ();
INSERT INTO `bike` () VALUES ();

-- CREATE TABLE IF NOT EXISTS `bike` (
--    `id`                        INT  NOT NULL PRIMARY KEY AUTO_INCREMENT
--   ,`brand`                     VARCHAR(30)
--   ,`activity`                  VARCHAR(30)
--   ,`model`                     VARCHAR(30)
--   ,`year`                      VARCHAR(30)
--   ,`size`                      VARCHAR(30)
--   ,`frame_form`                VARCHAR(30)
--   ,`electric`                  VARCHAR(30)
--   ,`engine_name_model`         VARCHAR(30)
--   ,`engine_battery_name_model` VARCHAR(30)
--   ,`frame_model`               VARCHAR(30)
--   ,`fork_model`                VARCHAR(30)
--   ,`crankset_model`            VARCHAR(30)
--   ,`bb_model`                  VARCHAR(30)
--   ,`pedals_model`              VARCHAR(30)
--   ,`chain_model`               VARCHAR(30)
--   ,`tire_model`                VARCHAR(30)
--   ,`cassette_model`            VARCHAR(30)
--   ,`brakes_model`              VARCHAR(30)
--   ,`hub_front_model`           VARCHAR(30)
--   ,`hub_rear_model`            VARCHAR(30)
--   ,`rim_model`                 VARCHAR(30)
--   ,`gearshifter_model`         VARCHAR(30)
--   ,`derailleur_model`          VARCHAR(30)
--   ,`saddle_model`              VARCHAR(30)
--   ,`handlebar_model`           VARCHAR(30)
--   ,`luggagerack_model`         VARCHAR(30)
--   ,`bicycle_insurance`         VARCHAR(30)
--   ,`frame_tube_form`           VARCHAR(30)
--   ,`frame_diameter`            VARCHAR(30)
--   ,`frame_material`            VARCHAR(30)
--   ,`handlebar_brand`           VARCHAR(30)
--   ,`handlebar_type`            VARCHAR(30)
--   ,`handlebar_diameter`        VARCHAR(30)
--   ,`handlebar_material`        VARCHAR(30)
--   ,`stem_type`                 VARCHAR(30)
--   ,`stem_diameter`             VARCHAR(30)
--   ,`fork_brand`                VARCHAR(30)
--   ,`fork_type`                 VARCHAR(30)
--   ,`fork_pivot_type`           VARCHAR(30)
--   ,`fork_diameter`             VARCHAR(30)
--   ,`fork_length`               VARCHAR(30)
--   ,`fork_material`             VARCHAR(30)
--   ,`engine_brand`              VARCHAR(30)
--   ,`engine_model`              VARCHAR(30)
--   ,`engine_power`              VARCHAR(30)
--   ,`engine_position`           VARCHAR(30)
--   ,`battery_brand`             VARCHAR(30)
--   ,`battery_model`             VARCHAR(30)
--   ,`battery_capacity`          VARCHAR(30)
--   ,`battery_position`          VARCHAR(30)
--   ,`wheel_inch`                VARCHAR(30)
--   ,`tire_type`                 VARCHAR(30)
--   ,`tire_size`                 VARCHAR(30)
--   ,`etrto_size`                VARCHAR(30)
--   ,`spokes_nb`                 VARCHAR(30)
--   ,`speed_nb`                  VARCHAR(30)
--   ,`bb_type`                   VARCHAR(30)
--   ,`bb_thread_type`            VARCHAR(30)
--   ,`chainring_nb`              VARCHAR(30)
--   ,`derailleur_position`       VARCHAR(30)
--   ,`derailleur_front_brand`    VARCHAR(30)
--   ,`derailleur_rear_brand`     VARCHAR(30)
--   ,`breaks_type`               VARCHAR(30)
--   ,`break_brand`               VARCHAR(30)
--   ,`saddle_size`               VARCHAR(30)
--   ,`seatpost_diameter`         VARCHAR(30)
--   ,`pedals_type`               VARCHAR(30)
--   ,`comment`                   VARCHAR(30)
--   ,`crankset_brand`            VARCHAR(30)
--   ,`pedals_brand`              VARCHAR(30)
--   ,`active`                    VARCHAR(30)
--   ,`purchase_date`             VARCHAR(30)
--   ,`warranty_manufacturer`     VARCHAR(30)
--   ,`warrenty_start_date`       VARCHAR(30)
--   ,`warrenty_end_date`         VARCHAR(30)
--   ,`insurance_formula`         VARCHAR(30)
--   ,`insurance_state`           VARCHAR(30)
--   ,`condition`                 VARCHAR(30)
--   ,`cable_type`                VARCHAR(30)
--   ,`id_bike_model`             VARCHAR(30)
--   ,`bike-pseudo`               VARCHAR(30)
--   ,`bicycode`                  VARCHAR(30)
-- );

-- INSERT INTO `bike` (`bike-pseudo`, `bicycode`) VALUES ('Stella', 'CCCCCCVVVV');
-- INSERT INTO `bike` (`bike-pseudo`, `bicycode`) VALUES ('Gilou', 'CCCCCCVVVV');

CREATE TABLE IF NOT EXISTS `bike_detail`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `bike_id` INT NOT NULL,
    `data_id` INT,
    `data_value` VARCHAR(512),
    PRIMARY KEY (`id`)
    -- FOREIGN KEY (`data_id`) REFERENCES `bike_data`(`id`),
    -- FOREIGN KEY (`bike_id`) REFERENCES `bike`(`id`)
);

INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('1', '1', '1', 'Gitane');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('2', '1', '2', 'Vélo de ville');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('3', '1', '3', '"500"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('4', '1', '4', 'Vintage');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('5', '1', '5', 'S');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('6', '1', '6', 'Cadre bas');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('7', '1', '7', 'Non');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('8', '1', '26', 'Porte-bagages avant');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('9', '1', '28', 'Tube de cadre rond');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('10', '1', '29', '"21.15 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('11', '1', '30', 'Acier');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('12', '1', '31', 'Algi');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('13', '1', '32', 'Cintre ville hollandais');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('14', '1', '33', '"22 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('15', '1', '34', 'Acier');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('16', '1', '35', 'Potence à plongeur');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('17', '1', '36', '"1"" - 25.4 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('18', '1', '37', 'Fibrax');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('19', '1', '38', 'Fourche cintrée fixe');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('20', '1', '39', 'Pivot conique lisse');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('21', '1', '41', '"110 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('22', '1', '51', '"8"""');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('23', '1', '52', 'Chambre à air');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('24', '1', '53', '"8 1/2 x 2"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('25', '1', '54', '"55-225"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('26', '1', '55', '"32 rayons"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('27', '1', '56', '"3 vitesses (1 x 3)"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('28', '1', '57', 'A clavette');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('29', '1', '58', 'Filetage Anglais BSA/BSC');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('30', '1', '59', '"1 plateau"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('31', '1', '60', 'Arrière');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('32', '1', '62', 'Shimano');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('33', '1', '63', 'Freins à disque');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('34', '1', '64', 'Fibrax');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('35', '1', '65', 'XXS / 131-136 mm');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('36', '1', '66', '"26 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('37', '1', '67', 'Pédales simples plates');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('38', '1', '69', 'Algi');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('39', '1', '71', '"1"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('40', '1', '78', 'Occasion');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('41', '1', '79', 'Câbles externes');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('42', '2', '1', 'MBK');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('43', '2', '2', 'Vélo de ville');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('44', '2', '3', '"04 Allez Comp Double (INTL)"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('45', '2', '4', '"2020"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('46', '2', '5', 'M');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('47', '2', '6', 'Cadre bas');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('48', '2', '7', 'Oui');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('49', '2', '26', 'Porte-bagages avant et porte-baggage arrière');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('50', '2', '27', 'AG2R La Mondiale');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('51', '2', '28', 'Tube de cadre rond');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('52', '2', '29', '"26 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('53', '2', '30', 'Aluminium');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('54', '2', '31', 'Algi');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('55', '2', '32', 'Cintre ville hollandais');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('56', '2', '33', '"22 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('57', '2', '34', 'Aluminium');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('58', '2', '35', 'Potence fixe');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('59', '2', '36', '"1"" - 25.4 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('60', '2', '37', 'Fibrax');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('61', '2', '38', 'Fourche cintrée fixe');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('62', '2', '39', 'Pivot conique fileté');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('63', '2', '41', '"100 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('64', '2', '43', 'Bosch');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('65', '2', '44', 'Performance Line Speed');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('66', '2', '45', '"1000 W"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('67', '2', '46', 'Roue arrière');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('68', '2', '47', 'Bosch');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('69', '2', '48', 'Power Pack');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('70', '2', '49', '"545 wh"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('71', '2', '50', 'Cadre');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('72', '2', '51', '"8"""');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('73', '2', '52', 'Chambre à air');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('74', '2', '54', '"47-94"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('75', '2', '56', '"12 vitesses (2 x 6)"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('76', '2', '57', 'BB30 Ai');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('77', '2', '58', 'Filetage Anglais BSA/BSC');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('78', '2', '59', '"2 plateaux"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('79', '2', '60', 'Avant et Arrière');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('80', '2', '61', 'Shimano');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('81', '2', '62', 'Shimano');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('82', '2', '63', 'Freins à disque hydraulique');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('83', '2', '64', 'Sram');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('84', '2', '65', 'M / 151-200 mm');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('85', '2', '66', '"27.2 mm"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('86', '2', '67', 'Pédales simples plates');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('87', '2', '69', 'Shimano');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('88', '2', '71', '"1"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('89', '2', '72', '"2021-02-15"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('90', '2', '74', '"2021-02-15"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('91', '2', '75', '"2023-02-15"');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('92', '2', '78', 'Neuf');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('93', '2', '79', 'Câbles internes');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('94', '1', '81', 'Stella');
INSERT INTO `bike_detail` (`id`, `bike_id`, `data_id`, `data_value`) VALUES ('95', '2', '81', 'Gilou');

CREATE TABLE IF NOT EXISTS `task`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `bike_id` INT NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    `id_prestation` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`bike_id`) REFERENCES `bike` (`id`),
    FOREIGN KEY (`id_prestation`) REFERENCES `presta` (`id_prestation`)
);

INSERT INTO `task` (`bike_id`, `status`, `id_prestation`) VALUES ('1', 'a faire', '11');
INSERT INTO `task` (`bike_id`, `status`, `id_prestation`) VALUES ('2', 'en cours', '3');

