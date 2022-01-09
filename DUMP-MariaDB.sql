-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: komis_samochodowy
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_dowodu` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `NIP` char(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_domu` char(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_lokalu` char(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_tel` varchar(14) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Andrzej','Piaskowski','78574635161','CBD361731','1937462713','91-123','Słowackiego','34','12','465738162'),(2,'Patryk','Vypowski','75637183712','TAD384736',NULL,'81-230','Z.Martyniuka','12','32','756182736'),(3,'Agnieszka','Ziomkowska','99384756132','ADG127384',NULL,'36-489','Szklankowska','23','12','884838192'),(4,'Patryk','Litowski','83748371623','CBC873183',NULL,'18-180','Zimowska','32','83d','581920391'),(5,'Józef','Oliwierowski','0054326784','BYC324712',NULL,'18-180','Brzozowa','21','10','564712345'),(6,'Zbigniew','Troczyński','93182389412','DFC831912',NULL,'91-112','Kędzickiego','62',NULL,'654881321'),(7,'Oliwier','Patrykowski','99837182731','BYC193093',NULL,'84-192','Czelągowska','3','81','757483721'),(8,'Szymon','Szymowski','00293847123','BCA098321',NULL,'83-330','Brzozowa','32',NULL,'647938123'),(9,'Patrycja','Patowska','87381928341','CBG738193','8391039481','73-148','Pehapowska','4','10','532986123'),(10,'Zbyszek','Złociński','93102934122','DFC831481',NULL,'18-180','Kędzickiego','7','18','881839129'),(11,'Magdalena','Disk','86765432900','BAB009567','9980957654','15-098','Żelkowa','92',NULL,'841928318'),(12,'Jakub','Jusiowski','29130612345','YHB777713','9897231412',' 78-98','Pasiborska','12','43','647182734'),(13,'Adrianna','Lis','928394102','CBV817321','1928374581','91-129','Samsungowa','98','12','647123471'),(14,'Jan','Skarpeta','99381231931','GBC983712','1029384756','43-123','Wrzosowa','19','12','519203451'),(15,'Zenon','Kowalewicz','03948174612','IPK481321','8574612730','91-120','Krakowska','18','48','881238451'),(16,'Angelika','Orędowska','83748172314','HBC817312',NULL,'83-123','Przecinkowska','23','1','581920293'),(17,'Daniel','Klin','92837123841','ABY172384',NULL,'83-123','Przecinkowska','24','1','518093142'),(18,'Anabella','Klinczak','84918294812','HBC819384','8439128321','83-212','Warneńska','32','5','581928341'),(19,'Cycylia','Dąbrowska','93182736471','FCB818312','1839401928','81-112','Dyskietkowa','13',NULL,'519012345'),(20,'Renata','Długopis','99381234561','CGA647123','2837491283','75-170','Zeszytowa','77','12','839123841'),(21,'Hanna','Szymkiewicz','91827364712','TYC102934',NULL,'24-120','Lenowska','14','93','928374810'),(22,'Angelika','Onca','93840129412','CBG819384','8817374810','81-203','Rymanowska','93','12','847182734'),(23,'Agnieszka','Trąbkowska','99283746172','CBA938129','9182734819','71-127','Piernikowa','93','12','712348012'),(24,'Zenon','Czmykowski','67102934512','CBG128938',NULL,'83-330','Zawadzkiego','19',NULL,'883918231'),(25,'Paweł','Szklanka','99102938471','BAB182930','8419283918','83-120','Kasztanowa','28','7','777234730');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownik`
--

DROP TABLE IF EXISTS `pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_dowodu` varchar(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `miejscowosc` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_domu` char(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_mieszkania` char(5) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_tel` varchar(14) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_umowy` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_rachunk` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownik`
--

LOCK TABLES `pracownik` WRITE;
/*!40000 ALTER TABLE `pracownik` DISABLE KEYS */;
INSERT INTO `pracownik` VALUES (1,'Stanisław','Bronko','89129301923','FGV731723','Gdynia','81-241','Stefana Ramułta','34','12','657819291','1/2020','24238100029300123849100431'),(2,'Brunon','Belka','95012930123','CBH103941','Gdańsk','80-298','Kazimierza Wiłkomirskiego','7',NULL,'734182910','2/2020','23913200012310001923019238'),(3,'Patryk','Kluczko','99102938412','AZF192381','Żukowo','83-330','Zawadzkiego','17',NULL,'571827319','3/2020','24291029384300123849100431'),(4,'Marek','Lorenzo','91238491021','AGH218938','Chwaszczyno','80-209','Adama Mickiewicza','14','3','724819283','4/2020','23913200012310001992839102'),(5,'Ryszard','Czmiński','8192039482','GDC102938','Gdynia','81-591','Imbirowa','3','9','637127384','5/2020','23000092832310001992839102'),(6,'Marta','Żninowska','93019283481','ACZ129384','Gdańsk','80-158','Warszawska','13','32','881374819','6/2020','23000092832310001029887381'),(7,'Karolina','Paczka','00192738194','CHA617829','Żukowo','83-330','Gdyńska','13',NULL,'771893812','7/2022','23000092891820001091087381');
/*!40000 ALTER TABLE `pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samochod`
--

DROP TABLE IF EXISTS `samochod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samochod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marka` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `model` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `kolor` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `rok_prod` year(4) NOT NULL,
  `przebieg` int(11) NOT NULL,
  `Paliwo` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL,
  `poj_skokowa` int(11) NOT NULL,
  `powypadkowy` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL,
  `nadwozie` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `VIN` varchar(17) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samochod`
--

LOCK TABLES `samochod` WRITE;
/*!40000 ALTER TABLE `samochod` DISABLE KEYS */;
INSERT INTO `samochod` VALUES (1,'Honda','Civic Si','Czarny',2005,195000,'Benzyna',1668,'nie','Sedan','DHA26371HDYE12Y3H',11450.00),(2,'Alfa Romeo','Stelvio','Czerwony',2017,55256,'Benzyna',1995,'nie','SUV','ZARFAHAN1J7B88027',119900.00),(4,'Audi','A4 B8','Czarny',2011,160000,'Diesel',2001,'Nie','Combi','WVWZZZ12771283474',125000.15),(5,'Volkswagen','Golf 4','Srebrny',2003,235000,'Benzyna',1595,'nie','Hatchback','WVWZZZ1RT48347412',8500.00),(6,'Lancia','Delta Integrale','Kremowy',1995,89000,'Benzyna',1998,'tak','Hatchback','DADFTETHDYE12Y3H',98120.45),(7,'Toyota','Supra MkV','Srebrny',2020,10000,'Benzyna',2998,'nie','Coupe','YBCDB41080W025168',290000.00),(8,'KIA','Stinger','Biały',2018,30000,'Benzyna',3342,'nie','Sedan','KNAE35LC4J6022658',135000.00),(9,'Seat','Leon','Granatowy',2003,250000,'Diesel',1998,'nie','Hatchback','WVWZZZ10293847581',7500.15),(12,'BMW','545i','Biały',2018,55000,'Benzyna',4458,'nie','Sedan','DADPOWIEJE12Y3H',98000.45),(13,'Mazda','RX-8','Zielony wiosenn',2004,105000,'Benzyna',1308,'nie','Coupe','ZARFAHA9183741029',18000.00),(14,'Ford','Focus RS','Zółty',2018,25000,'Benzyna',2300,'nie','Hatchback','1C4BU0000JPH38440',120000.00),(15,'Suzuki','Samurai','Czarny',1987,87000,'Benzyna',1301,'nie','SUV','HFJAUR20391119341',17500.59),(16,'Volvo','850 Estate','Błękitny',1998,315000,'Benzyna',2565,'tak','Combi','DADFTETH91827384',12000.00),(17,'Nissan','370z','Srebrny',2016,65000,'Benzyna',3700,'tak','Coupe','DADFTE9301928491',65150.00),(18,'Mitsubishi','Pajero','Kremowy',2005,125841,'Diesel',3214,'tak','SUV','1C4BU0000JFHDYUAD',43999.00),(19,'Jeep','Renegade','Bordowy',2018,32000,'Benzyna',1389,'nie','SUV','DADFTETHDYEAJDKF',77000.00),(20,'Subaru','Forester','Zielony',2005,177000,'Benzyna',1990,'nie','SUV','URY1827HDJ182734H',23000.00),(21,'Subaru','Impreza','Niebieski',2008,212000,'Benzyna',2000,'nie','Sedan','CHDGAY18273182313',21000.99),(22,'Toyota','Yaris GR','Biały',2020,1000,'Benzyna',1636,'nie','Hatchback','DHFGAYW1293847182',239000.00),(23,'Seat','Toledo','Zielony',2000,312304,'Diesel',1998,'tak','Sedan','VWVZZZ18273jd7183',3500.00);
/*!40000 ALTER TABLE `samochod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samochod_sprzedany`
--

DROP TABLE IF EXISTS `samochod_sprzedany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samochod_sprzedany` (
  `id` int(11) NOT NULL,
  `marka` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `model` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `kolor` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `rok_prod` year(4) NOT NULL,
  `przebieg` int(11) NOT NULL,
  `Paliwo` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL,
  `poj_skokowa` int(11) NOT NULL,
  `powypadkowy` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL,
  `nadwozie` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `VIN` varchar(17) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samochod_sprzedany`
--

LOCK TABLES `samochod_sprzedany` WRITE;
/*!40000 ALTER TABLE `samochod_sprzedany` DISABLE KEYS */;
INSERT INTO `samochod_sprzedany` VALUES (1,'Honda','Civic Si','Czarny',2005,195000,'Benzyna',1668,'nie','Sedan','DHA26371HDYE12Y3H',11450.00),(4,'Audi','A4 B8','Czarny',2011,160000,'Diesel',2001,'Nie','Combi','WVWZZZ12771283474',125000.15),(5,'Volkswagen','Golf 4','Srebrny',2003,235000,'Benzyna',1595,'nie','Hatchback','WVWZZZ1RT48347412',8500.00),(6,'Lancia','Delta Integrale','Kremowy',1995,89000,'Benzyna',1998,'tak','Hatchback','DADFTETHDYE12Y3H',98120.45),(7,'Toyota','Supra MkV','Srebrny',2020,10000,'Benzyna',2998,'nie','Coupe','YBCDB41080W025168',290000.00),(8,'KIA','Stinger','Biały',2018,30000,'Benzyna',3342,'nie','Sedan','KNAE35LC4J6022658',135000.00),(13,'Mazda','RX-8','Zielony wiosenn',2004,105000,'Benzyna',1308,'nie','Coupe','ZARFAHA9183741029',18000.00),(17,'Nissan','370z','Srebrny',2016,65000,'Benzyna',3700,'tak','Coupe','DADFTE9301928491',65150.00),(18,'Mitsubishi','Pajero','Kremowy',2005,125841,'Diesel',3214,'tak','SUV','1C4BU0000JFHDYUAD',43999.00),(19,'Jeep','Renegade','Bordowy',2018,32000,'Benzyna',1389,'nie','SUV','DADFTETHDYEAJDKF',77000.00),(20,'Subaru','Forester','Zielony',2005,177000,'Benzyna',1990,'nie','SUV','URY1827HDJ182734H',23000.00);
/*!40000 ALTER TABLE `samochod_sprzedany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transakcje`
--

DROP TABLE IF EXISTS `transakcje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transakcje` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_klienta` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL,
  `id_samochodu` int(11) NOT NULL,
  `rodzaj_trans` varchar(80) COLLATE utf8_polish_ci NOT NULL,
  `kwota` decimal(9,2) NOT NULL,
  `nr_faktury` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `sp_zaplaty` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `data_trans` date NOT NULL,
  `zaplacono` varchar(5) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SAMOCHOD ID` (`id_samochodu`) USING BTREE,
  KEY `KLIENT_ID` (`id_klienta`),
  KEY `PRACOWNIK_ID` (`id_pracownika`),
  CONSTRAINT `KLIENT_ID` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id`),
  CONSTRAINT `PRACOWNIK_ID` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id`),
  CONSTRAINT `SAMOCHOD_ID` FOREIGN KEY (`id_samochodu`) REFERENCES `samochod` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transakcje`
--

LOCK TABLES `transakcje` WRITE;
/*!40000 ALTER TABLE `transakcje` DISABLE KEYS */;
INSERT INTO `transakcje` VALUES (1,1,3,21,'SPRZEDAŻ',20000.00,'04/2021','Gotówka','2021-09-15','TAK'),(2,10,3,8,'KUPNO',138000.00,'26/2022','Przelew','2022-01-02','TAK'),(3,3,2,20,'SPRZEDAŻ',21000.00,'07/2021','Przelew','2021-10-04','TAK'),(4,4,4,6,'SPRZEDAŻ',95000.00,'12/2021','Gotówka','2021-11-03','TAK'),(5,5,1,7,'SPRZEDAŻ',285000.00,'05/2021','Przelew','2021-10-03','TAK'),(6,6,1,2,'SPRZEDAŻ',115000.00,'25/2021','Gotówka','2021-12-09','NIE'),(7,10,5,4,'KUPNO',127000.15,'27/2022','Przelew','2022-01-03','TAK'),(8,2,3,22,'SPRZEDAŻ',235000.00,'13/2021','Gotówka','2021-11-08','TAK'),(9,7,3,19,'SPRZEDAŻ',70000.00,'14/2021','Przelew','2021-11-29','TAK'),(10,17,2,18,'SPRZEDAŻ',39500.00,'19/2021','Gotówka','2021-12-02','NIE'),(12,17,5,7,'KUPNO',292000.00,'22/2021','Przelew','2021-12-02','NIE'),(13,17,3,1,'SPRZEDAŻ',12900.00,'20/2021','Gotówka','2021-12-02','TAK'),(14,19,1,5,'SPRZEDAŻ',7600.00,'16/2021','Gotówka','2021-12-01','TAK'),(16,12,5,6,'KUPNO',98500.00,'21/2021','Przelew','2021-12-03','TAK'),(17,8,1,1,'KUPNO',11400.00,'17/2021','Gotówka','2021-12-04','TAK'),(18,7,2,4,'SPRZEDAŻ',120000.00,'15/2021','Przelew','2021-11-29','TAK'),(19,6,1,8,'SPRZEDAŻ',110000.00,'24/2021','Przelew','2021-12-09','TAK'),(20,6,6,9,'SPRZEDAŻ',7000.00,'23/2021','Przelew','2021-12-09','TAK'),(21,23,5,12,'SPRZEDAŻ',94000.00,'08/2021','Przelew','2021-10-05','TAK'),(22,9,4,13,'SPRZEDAŻ',17500.00,'02/2021','Przelew','2021-07-05','TAK'),(23,13,2,14,'SPRZEDAŻ',100000.00,'03/2021','Gotówka','2021-09-06','TAK'),(24,14,6,15,'SPRZEDAŻ',14000.00,'09/2021','Gotówka','2021-10-06','TAK'),(25,15,5,16,'SPRZEDAŻ',11000.00,'11/2021','Gotówka','2021-11-01','TAK'),(26,16,6,23,'SPRZEDAŻ',2200.00,'10/2021','Gotówka','2021-10-06','NIE'),(27,3,2,20,'KUPNO',21000.00,'06/2021','Przelew','2021-10-04','TAK'),(29,11,4,5,'KUPNO',8800.00,'28/2022','Gotówka','2022-01-03','TAK'),(30,18,3,9,'SPRZEDAŻ',7900.00,'29/2022','Gotówka','2022-01-04','TAK'),(31,20,1,17,'KUPNO',65000.00,'30/2022','Przelew','2022-01-05','TAK'),(32,21,6,19,'KUPNO',77900.00,'31/2022','PRZELEW','2022-01-05','NIE'),(35,17,2,18,'KUPNO',39500.00,'18/2021','Gotówka','2021-12-02','NIE'),(44,24,4,13,'KUPNO',18000.00,'01/2021','Przelew','2021-12-16','TAK');
/*!40000 ALTER TABLE `transakcje` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_buy_car_delete` BEFORE INSERT ON `transakcje`
 FOR EACH ROW BEGIN 
DELETE FROM samochod_sprzedany;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_buy_car` AFTER INSERT ON `transakcje`
 FOR EACH ROW BEGIN 

INSERT INTO samochod_sprzedany (SELECT samochod.* FROM samochod INNER JOIN transakcje WHERE samochod.id = transakcje.id_samochodu AND transakcje.rodzaj_trans = 'KUPNO');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08 21:09:38
