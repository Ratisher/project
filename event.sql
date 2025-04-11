CREATE DATABASE  IF NOT EXISTS `user05` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `user05`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: SRV-1208-1    Database: user05
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chasoviepiyasa`
--

DROP TABLE IF EXISTS `chasoviepiyasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chasoviepiyasa` (
  `idChasovoyPoyas` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idChasovoyPoyas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chasoviepiyasa`
--

LOCK TABLES `chasoviepiyasa` WRITE;
/*!40000 ALTER TABLE `chasoviepiyasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `chasoviepiyasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companii`
--

DROP TABLE IF EXISTS `companii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companii` (
  `idCompanya` int NOT NULL AUTO_INCREMENT,
  `idVishayaCompaniya` int DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `nazvaniye` varchar(100) DEFAULT NULL,
  `contacti` varchar(250) DEFAULT NULL,
  `primechaniya` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCompanya`),
  KEY `companii_vishayacompanii_FK` (`idVishayaCompaniya`),
  CONSTRAINT `companii_vishayacompanii_FK` FOREIGN KEY (`idVishayaCompaniya`) REFERENCES `vishayacompanii` (`idVishayaCompaniya`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companii`
--

LOCK TABLES `companii` WRITE;
/*!40000 ALTER TABLE `companii` DISABLE KEYS */;
INSERT INTO `companii` VALUES (1,10,'ул. Ленина, 15, офис 34','ООО ТехноПром','+7 (495) 123-45-67, tech@example.com','Основной офис'),(2,10,'пр. Мира, 42, этаж 5','ЗАО Инновации','+7 (495) 765-43-21, info@innov.ru','Филиал в центре'),(3,20,'ул. Гагарина, 7','АО СтройГрад','+7 (499) 555-01-02, stroi@mail.ru','Строительный департамент'),(4,30,'ш. Энтузиастов, 12, корп. 3','ИП Иванов','+7 (916) 123-45-67, ivanov@ip.ru','Индивидуальный предприниматель'),(5,20,'ул. Кирова, 25','ООО Логистик','+7 (495) 222-33-44, logist@logistic.ru','Складской комплекс'),(6,40,'пр. Вернадского, 105','АО МедТех','+7 (499) 500-05-05, info@medtech.org','Медицинское оборудование'),(7,10,'ул. Тверская, 18','ООО БизнесКонсалт','+7 (495) 111-22-33, bc@consult.ru','Консалтинговые услуги'),(8,50,'ул. Пушкина, 10','ЗАО ФудМастер','+7 (495) 999-88-77, sales@foodmaster.ru','Производство продуктов'),(9,30,'ул. Ленинградская, 35','ИП Петрова','+7 (925) 123-45-67, petrova@ip.ru','Розничная торговля'),(10,20,'ш. Рублёвское, 12к1','ООО АвтоСервис','+7 (495) 333-44-55, service@auto.ru','Авторемонтная мастерская'),(11,40,'ул. Садовая, 20','АО ФармГрупп','+7 (499) 600-06-06, farm@group.ru','Аптечная сеть'),(12,10,'пр. Ленинский, 67','ООО ТехноСофт','+7 (495) 444-55-66, dev@techsoft.ru','Разработка ПО'),(13,50,'ул. Кутузова, 15','ЗАО ВкусВилл','+7 (495) 777-66-55, info@vkusvill.ru','Продуктовый ритейл'),(14,30,'ул. Маяковского, 3','ИП Сидоров','+7 (926) 123-45-67, sidorov@ip.ru','Услуги ремонта'),(15,20,'ш. Варшавское, 125','ООО ТрансЛогист','+7 (495) 555-66-77, transport@logist.ru','Грузоперевозки'),(16,40,'ул. Профсоюзная, 100','АО МедЛаб','+7 (499) 700-07-07, lab@medlab.ru','Медицинская лаборатория'),(17,10,'ул. Новый Арбат, 24','ООО КонсалтГрупп','+7 (495) 666-77-88, group@consult.ru','Финансовый консалтинг'),(18,50,'ул. Тимирязевская, 1','ЗАО АгроТех','+7 (495) 888-99-00, agro@tech.ru','Сельхозтехника'),(19,30,'ул. Щербаковская, 5','ИП Козлов','+7 (927) 123-45-67, kozlov@ip.ru','Ремонт техники'),(20,20,'ш. Дмитровское, 120','ООО СтройЛогист','+7 (495) 777-88-99, build@logist.ru','Строительные материалы'),(21,40,'ул. Вавилова, 25','АО ФармХим','+7 (499) 800-08-08, chem@pharm.ru','Фармацевтическое производство'),(22,10,'ул. Пятницкая, 40','ООО ИТРешения','+7 (495) 999-00-11, it@sol.ru','IT-аутсорсинг'),(23,50,'ул. Серпуховская, 12','ЗАО Продукты+','+7 (495) 100-20-30, info@produkti.ru','Сеть супермаркетов'),(24,30,'ул. Обручева, 30','ИП Николаев','+7 (928) 123-45-67, nikolaev@ip.ru','Услуги сантехника'),(25,20,'ш. Алтуфьевское, 80','ООО АвтоТрейд','+7 (495) 200-30-40, auto@trade.ru','Автодилер'),(26,40,'ул. Миклухо-Маклая, 10','АО Клиника+','+7 (499) 900-09-09, clinic@plus.ru','Медицинский центр'),(27,10,'ул. Большая Дорогомиловская, 5','ООО ЮрПартнер','+7 (495) 300-40-50, law@partner.ru','Юридические услуги'),(28,50,'ул. Марксистская, 5','ЗАО ХлебДом','+7 (495) 400-50-60, hleb@dom.ru','Хлебопекарня'),(29,30,'ул. Дубнинская, 15','ИП Воробьева','+7 (929) 123-45-67, vorob@ip.ru','Парикмахерские услуги'),(30,20,'ш. Ярославское, 150','ООО СтройТрейд','+7 (495) 500-60-70, build@trade.ru','Оптовая торговля'),(31,40,'ул. Проспект Вернадского, 78','АО Дентал+','+7 (499) 123-45-67, dental@plus.ru','Стоматологическая клиника'),(32,10,'ул. Садовническая, 10','ООО ВебТех','+7 (495) 600-70-80, web@tech.ru','Веб-разработка'),(33,50,'ул. Велозаводская, 5','ЗАО Мясной Двор','+7 (495) 700-80-90, myaso@dvor.ru','Мясопереработка'),(34,30,'ул. Борисовская, 25','ИП Семенов','+7 (930) 123-45-67, semenov@ip.ru','Ремонт обуви'),(35,20,'ш. Каширское, 65','ООО ТрансСервис','+7 (495) 800-90-10, trans@serv.ru','Транспортная компания'),(36,40,'ул. Лобачевского, 20','АО Оптика+','+7 (499) 234-56-78, optika@plus.ru','Оптическая сеть'),(37,10,'ул. Маросейка, 15','ООО БизнесАналитика','+7 (495) 900-10-20, analit@biz.ru','Аналитика данных'),(38,50,'ул. Автозаводская, 10','ЗАО Молоко+','+7 (495) 101-20-30, moloko@plus.ru','Молочная продукция'),(39,30,'ул. Генерала Белова, 5','ИП Кузнецов','+7 (931) 123-45-67, kuznec@ip.ru','Ремонт электроники'),(40,20,'ш. Осташковское, 30','ООО ГрузАвто','+7 (495) 202-30-40, gruz@auto.ru','Грузовые перевозки'),(41,40,'ул. Удальцова, 50','АО МедАптека','+7 (499) 345-67-89, apteka@med.ru','Аптечная сеть'),(42,10,'ул. Покровка, 30','ООО СофтДев','+7 (495) 303-40-50, dev@soft.ru','Разработка приложений'),(43,50,'ул. Дмитровское ш., 100','ЗАО Овощной Двор','+7 (495) 404-50-60, ovoshi@dvor.ru','Овощебаза'),(44,30,'ул. Перерва, 45','ИП Орлов','+7 (932) 123-45-67, orlov@ip.ru','Ремонт квартир'),(45,20,'ш. Рязанское, 70','ООО ТрансЭкспресс','+7 (495) 505-60-70, express@trans.ru','Экспресс-доставка'),(46,40,'ул. Обручева, 30','АО ВитаМед','+7 (499) 456-78-90, vita@med.ru','Медицинский центр'),(47,10,'ул. Поварская, 20','ООО КиберТех','+7 (495) 606-70-80, cyber@tech.ru','Кибербезопасность'),(48,50,'ул. Варшавское ш., 150','ЗАО МясоПром','+7 (495) 707-80-90, myasoprom@ru','Мясокомбинат'),(49,30,'ул. Грина, 5','ИП Волкова','+7 (933) 123-45-67, volkova@ip.ru','Услуги дизайнера'),(50,20,'ш. Новорижское, 25','ООО ЛогистГрупп','+7 (495) 808-90-10, logist@group.ru','Логистический оператор');
/*!40000 ALTER TABLE `companii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogovor`
--

DROP TABLE IF EXISTS `dogovor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogovor` (
  `iddogovor` int NOT NULL AUTO_INCREMENT,
  `dataPodpisanya` date DEFAULT NULL,
  `srock` varchar(45) DEFAULT NULL,
  `statusDogovora_idstatusDogovora` int NOT NULL,
  PRIMARY KEY (`iddogovor`),
  KEY `fk_dogovor_statusDogovora1_idx` (`statusDogovora_idstatusDogovora`),
  CONSTRAINT `fk_dogovor_statusDogovora1` FOREIGN KEY (`statusDogovora_idstatusDogovora`) REFERENCES `statusdogovora` (`idstatusDogovora`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogovor`
--

LOCK TABLES `dogovor` WRITE;
/*!40000 ALTER TABLE `dogovor` DISABLE KEYS */;
INSERT INTO `dogovor` VALUES (1,'2024-02-02','5 лет',1);
/*!40000 ALTER TABLE `dogovor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogovor_companii`
--

DROP TABLE IF EXISTS `dogovor_companii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogovor_companii` (
  `iddogovor_companii` int NOT NULL AUTO_INCREMENT,
  `companii_idCompanya` int NOT NULL,
  `dogovor_iddogovor` int NOT NULL,
  PRIMARY KEY (`iddogovor_companii`),
  KEY `fk_dogovor_companii_companii1_idx` (`companii_idCompanya`),
  KEY `fk_dogovor_companii_dogovor1_idx` (`dogovor_iddogovor`),
  CONSTRAINT `fk_dogovor_companii_companii1` FOREIGN KEY (`companii_idCompanya`) REFERENCES `companii` (`idCompanya`),
  CONSTRAINT `fk_dogovor_companii_dogovor1` FOREIGN KEY (`dogovor_iddogovor`) REFERENCES `dogovor` (`iddogovor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogovor_companii`
--

LOCK TABLES `dogovor_companii` WRITE;
/*!40000 ALTER TABLE `dogovor_companii` DISABLE KEYS */;
INSERT INTO `dogovor_companii` VALUES (1,1,1);
/*!40000 ALTER TABLE `dogovor_companii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marki`
--

DROP TABLE IF EXISTS `marki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marki` (
  `idMarka` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMarka`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marki`
--

LOCK TABLES `marki` WRITE;
/*!40000 ALTER TABLE `marki` DISABLE KEYS */;
INSERT INTO `marki` VALUES (1,'LG'),(2,'Philipp'),(3,'Sansun');
/*!40000 ALTER TABLE `marki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestaustanovki`
--

DROP TABLE IF EXISTS `mestaustanovki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestaustanovki` (
  `idMestoUstanovki` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  `opisanie` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idMestoUstanovki`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestaustanovki`
--

LOCK TABLES `mestaustanovki` WRITE;
/*!40000 ALTER TABLE `mestaustanovki` DISABLE KEYS */;
INSERT INTO `mestaustanovki` VALUES (1,'ТЦ Солнечный',NULL),(2,'Пивоваренный Завод Моисеева',NULL);
/*!40000 ALTER TABLE `mestaustanovki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeli`
--

DROP TABLE IF EXISTS `modeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeli` (
  `idModel` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idModel`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeli`
--

LOCK TABLES `modeli` WRITE;
/*!40000 ALTER TABLE `modeli` DISABLE KEYS */;
INSERT INTO `modeli` VALUES (1,'AR-1250'),(2,'P-250'),(3,'C300'),(4,'D450'),(5,'E500'),(6,'F600'),(7,'G750'),(8,'H800'),(9,'I900'),(10,'J1000'),(11,'K1100'),(12,'L1200'),(13,'M1300'),(14,'N1400'),(15,'O1500'),(16,'P1600'),(17,'Q1700'),(18,'R1800'),(19,'S1900'),(20,'T2000'),(21,'U2100'),(22,'V2200'),(23,'W2300'),(24,'X2400'),(25,'Y2500'),(26,'Z2600'),(27,'AA2700'),(28,'BB2800'),(29,'CC2900'),(30,'DD3000'),(31,'EE3100'),(32,'FF3200'),(33,'GG3300'),(34,'HH3400'),(35,'II3500'),(36,'JJ3600'),(37,'KK3700'),(38,'LL3800'),(39,'MM3900'),(40,'NN4000'),(41,'OO4100'),(42,'PP4200'),(43,'QQ4300'),(44,'RR4400'),(45,'SS4500'),(46,'TT4600'),(47,'UU4700'),(48,'VV4800'),(49,'WW4900'),(50,'XX5000');
/*!40000 ALTER TABLE `modeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modemi`
--

DROP TABLE IF EXISTS `modemi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modemi` (
  `idModem` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idModem`)
) ENGINE=InnoDB AUTO_INCREMENT=1824100075 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modemi`
--

LOCK TABLES `modemi` WRITE;
/*!40000 ALTER TABLE `modemi` DISABLE KEYS */;
INSERT INTO `modemi` VALUES (-1),(1824100022),(1824100023),(1824100024),(1824100025),(1824100026),(1824100027),(1824100028),(1824100029),(1824100030),(1824100031),(1824100032),(1824100033),(1824100034),(1824100035),(1824100036),(1824100037),(1824100038),(1824100039),(1824100040),(1824100041),(1824100042),(1824100043),(1824100044),(1824100045),(1824100046),(1824100047),(1824100048),(1824100049),(1824100050),(1824100051),(1824100052),(1824100053),(1824100054),(1824100055),(1824100056),(1824100057),(1824100058),(1824100059),(1824100060),(1824100061),(1824100062),(1824100063),(1824100064),(1824100065),(1824100066),(1824100067),(1824100068),(1824100069),(1824100070),(1824100071),(1824100072),(1824100073),(1824100074);
/*!40000 ALTER TABLE `modemi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obslushivaniye`
--

DROP TABLE IF EXISTS `obslushivaniye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obslushivaniye` (
  `idObslushovaniye` int NOT NULL AUTO_INCREMENT,
  `idAvtomat` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `opisaniye` varchar(255) DEFAULT NULL,
  `problemi` varchar(255) DEFAULT NULL,
  `idPolzovatel` int DEFAULT NULL,
  PRIMARY KEY (`idObslushovaniye`),
  KEY `obslushivaniye_polzovateli_FK` (`idPolzovatel`),
  KEY `obslushivaniye_vendingovieavtomati_FK` (`idAvtomat`),
  CONSTRAINT `obslushivaniye_polzovateli_FK` FOREIGN KEY (`idPolzovatel`) REFERENCES `polzovateli` (`idPolzovatel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `obslushivaniye_vendingovieavtomati_FK` FOREIGN KEY (`idAvtomat`) REFERENCES `vendingovieavtomati` (`idAvtomat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obslushivaniye`
--

LOCK TABLES `obslushivaniye` WRITE;
/*!40000 ALTER TABLE `obslushivaniye` DISABLE KEYS */;
/*!40000 ALTER TABLE `obslushivaniye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polzovateli`
--

DROP TABLE IF EXISTS `polzovateli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polzovateli` (
  `idPolzovatel` int NOT NULL AUTO_INCREMENT,
  `familiya` varchar(100) DEFAULT NULL,
  `imya` varchar(100) DEFAULT NULL,
  `otchestvo` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telephon` varchar(15) DEFAULT NULL,
  `idRol` int DEFAULT NULL,
  `parol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPolzovatel`),
  KEY `polzovateli_roli_FK` (`idRol`),
  CONSTRAINT `polzovateli_roli_FK` FOREIGN KEY (`idRol`) REFERENCES `roli` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polzovateli`
--

LOCK TABLES `polzovateli` WRITE;
/*!40000 ALTER TABLE `polzovateli` DISABLE KEYS */;
INSERT INTO `polzovateli` VALUES (1,'Козлов','Алексей','Дмитриевич','123','89527659485',1,'$2a$12$MHx2aObrWohea24gucFPaOZRB3F0V3f0j04TNaWu5YhDCwx.G1t92'),(3,'1','1','1','1','1',1,'1'),(7,'Сальников','Владислав','Сергеевич','Vlad@mail.ru','1234',1,'123');
/*!40000 ALTER TABLE `polzovateli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodashi`
--

DROP TABLE IF EXISTS `prodashi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodashi` (
  `idProdasha` int NOT NULL AUTO_INCREMENT,
  `idAvtomat` int DEFAULT NULL,
  `idTovar` int DEFAULT NULL,
  PRIMARY KEY (`idProdasha`),
  KEY `prodashi_vendingovieavtomati_FK` (`idAvtomat`),
  KEY `prodashi_tovari_FK` (`idTovar`),
  CONSTRAINT `prodashi_tovari_FK` FOREIGN KEY (`idTovar`) REFERENCES `tovari` (`idTovar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodashi_vendingovieavtomati_FK` FOREIGN KEY (`idAvtomat`) REFERENCES `vendingovieavtomati` (`idAvtomat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodashi`
--

LOCK TABLES `prodashi` WRITE;
/*!40000 ALTER TABLE `prodashi` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodashi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reshimiraboti`
--

DROP TABLE IF EXISTS `reshimiraboti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reshimiraboti` (
  `idReshimRaboti` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idReshimRaboti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reshimiraboti`
--

LOCK TABLES `reshimiraboti` WRITE;
/*!40000 ALTER TABLE `reshimiraboti` DISABLE KEYS */;
/*!40000 ALTER TABLE `reshimiraboti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roli`
--

DROP TABLE IF EXISTS `roli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roli` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roli`
--

LOCK TABLES `roli` WRITE;
/*!40000 ALTER TABLE `roli` DISABLE KEYS */;
INSERT INTO `roli` VALUES (1,'Администратор');
/*!40000 ALTER TABLE `roli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shablonicritticeskihznacheniy`
--

DROP TABLE IF EXISTS `shablonicritticeskihznacheniy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shablonicritticeskihznacheniy` (
  `idCritichescoeZnacheniye` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCritichescoeZnacheniye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shablonicritticeskihznacheniy`
--

LOCK TABLES `shablonicritticeskihznacheniy` WRITE;
/*!40000 ALTER TABLE `shablonicritticeskihznacheniy` DISABLE KEYS */;
/*!40000 ALTER TABLE `shablonicritticeskihznacheniy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shabloniuvedomliniy`
--

DROP TABLE IF EXISTS `shabloniuvedomliniy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shabloniuvedomliniy` (
  `idShablonYvedomleniy` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idShablonYvedomleniy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shabloniuvedomliniy`
--

LOCK TABLES `shabloniuvedomliniy` WRITE;
/*!40000 ALTER TABLE `shabloniuvedomliniy` DISABLE KEYS */;
/*!40000 ALTER TABLE `shabloniuvedomliniy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusdogovora`
--

DROP TABLE IF EXISTS `statusdogovora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusdogovora` (
  `idstatusDogovora` int NOT NULL AUTO_INCREMENT,
  `naznanye` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstatusDogovora`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusdogovora`
--

LOCK TABLES `statusdogovora` WRITE;
/*!40000 ALTER TABLE `statusdogovora` DISABLE KEYS */;
INSERT INTO `statusdogovora` VALUES (1,'Подписан'),(2,'Не подписан');
/*!40000 ALTER TABLE `statusdogovora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusi`
--

DROP TABLE IF EXISTS `statusi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusi` (
  `idStatus` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusi`
--

LOCK TABLES `statusi` WRITE;
/*!40000 ALTER TABLE `statusi` DISABLE KEYS */;
INSERT INTO `statusi` VALUES (1,'Работает'),(2,'Не работает'),(3,'На обслуживании');
/*!40000 ALTER TABLE `statusi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tovari`
--

DROP TABLE IF EXISTS `tovari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tovari` (
  `idTovar` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(200) DEFAULT NULL,
  `opisaniye` varchar(255) DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `colichestvo` int DEFAULT NULL,
  `minimalnoeZnacenie` int DEFAULT NULL,
  `srednieProdashi` double DEFAULT NULL,
  PRIMARY KEY (`idTovar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tovari`
--

LOCK TABLES `tovari` WRITE;
/*!40000 ALTER TABLE `tovari` DISABLE KEYS */;
/*!40000 ALTER TABLE `tovari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tovarniimatrici`
--

DROP TABLE IF EXISTS `tovarniimatrici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tovarniimatrici` (
  `idTovarnayaMatrica` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTovarnayaMatrica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tovarniimatrici`
--

LOCK TABLES `tovarniimatrici` WRITE;
/*!40000 ALTER TABLE `tovarniimatrici` DISABLE KEYS */;
/*!40000 ALTER TABLE `tovarniimatrici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendingovieavtomati`
--

DROP TABLE IF EXISTS `vendingovieavtomati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendingovieavtomati` (
  `idAvtomat` int NOT NULL AUTO_INCREMENT,
  `idModel` int DEFAULT NULL,
  `idMarka` int DEFAULT NULL,
  `idStatus` int DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `idMestoUstanovki` int DEFAULT NULL,
  `dataUstanovki` date DEFAULT NULL,
  `sovokupniDohod` int DEFAULT NULL,
  `dataPoslednegoObslushivaniya` date DEFAULT NULL,
  `idReshimRaboti` int DEFAULT NULL,
  `nazvaniye` varchar(100) DEFAULT NULL,
  `coordinati` varchar(70) DEFAULT NULL,
  `vremyaRaboti` varchar(30) DEFAULT NULL,
  `idChasovoyPoyas` int DEFAULT NULL,
  `idTovarnayaMatrica` int DEFAULT NULL,
  `idCritichescoeZnacheniye` int DEFAULT NULL,
  `idShablonYvedomleniy` int DEFAULT NULL,
  `idKlient` int DEFAULT NULL,
  `oplataMonetami` varchar(1) DEFAULT '0',
  `oplataQR` varchar(1) DEFAULT '0',
  `oplataKupurami` varchar(1) DEFAULT '0',
  `oplataKartoi` varchar(1) DEFAULT '0',
  `RFIDcartiObclushivaniya` varchar(100) DEFAULT NULL,
  `RFIDcartiInkasacii` varchar(100) DEFAULT NULL,
  `RFIDcartiZagruzki` varchar(100) DEFAULT NULL,
  `primechaniya` varchar(255) DEFAULT NULL,
  `prioritetObslushivaniya` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Средний',
  `idModem` int DEFAULT NULL,
  `idCompanya` int DEFAULT NULL,
  PRIMARY KEY (`idAvtomat`),
  KEY `vendingovieavtomati_modeli_FK` (`idModel`),
  KEY `vendingovieavtomati_statusi_FK` (`idStatus`),
  KEY `vendingovieavtomati_mestaustanovki_FK` (`idMestoUstanovki`),
  KEY `vendingovieavtomati_marki_FK` (`idMarka`),
  KEY `vendingovieavtomati_reshimiraboti_FK` (`idReshimRaboti`),
  KEY `vendingovieavtomati_chasoviepiyasa_FK` (`idChasovoyPoyas`),
  KEY `vendingovieavtomati_tovarniimatrici_FK` (`idTovarnayaMatrica`),
  KEY `vendingovieavtomati_shablonicritticeskihznacheniy_FK` (`idCritichescoeZnacheniye`),
  KEY `vendingovieavtomati_shabloniuvedomliniy_FK` (`idShablonYvedomleniy`),
  KEY `vendingovieavtomati_klienti_FK` (`idKlient`),
  KEY `vendingovieavtomati_modemi_FK` (`idModem`),
  KEY `vendingovieavtomati_companii_FK` (`idCompanya`),
  CONSTRAINT `vendingovieavtomati_chasoviepiyasa_FK` FOREIGN KEY (`idChasovoyPoyas`) REFERENCES `chasoviepiyasa` (`idChasovoyPoyas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_companii_FK` FOREIGN KEY (`idCompanya`) REFERENCES `companii` (`idCompanya`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_marki_FK` FOREIGN KEY (`idMarka`) REFERENCES `marki` (`idMarka`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_mestaustanovki_FK` FOREIGN KEY (`idMestoUstanovki`) REFERENCES `mestaustanovki` (`idMestoUstanovki`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_modeli_FK` FOREIGN KEY (`idModel`) REFERENCES `modeli` (`idModel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_modemi_FK` FOREIGN KEY (`idModem`) REFERENCES `modemi` (`idModem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_reshimiraboti_FK` FOREIGN KEY (`idReshimRaboti`) REFERENCES `reshimiraboti` (`idReshimRaboti`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_shablonicritticeskihznacheniy_FK` FOREIGN KEY (`idCritichescoeZnacheniye`) REFERENCES `shablonicritticeskihznacheniy` (`idCritichescoeZnacheniye`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_shabloniuvedomliniy_FK` FOREIGN KEY (`idShablonYvedomleniy`) REFERENCES `shabloniuvedomliniy` (`idShablonYvedomleniy`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_statusi_FK` FOREIGN KEY (`idStatus`) REFERENCES `statusi` (`idStatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingovieavtomati_tovarniimatrici_FK` FOREIGN KEY (`idTovarnayaMatrica`) REFERENCES `tovarniimatrici` (`idTovarnayaMatrica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=903873 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendingovieavtomati`
--

LOCK TABLES `vendingovieavtomati` WRITE;
/*!40000 ALTER TABLE `vendingovieavtomati` DISABLE KEYS */;
INSERT INTO `vendingovieavtomati` VALUES (903820,1,NULL,NULL,'Кирова 1 3 этаж',NULL,'2018-05-11',NULL,NULL,NULL,'ТК «21 Век»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','1',NULL,NULL,NULL,NULL,'Средний',-1,1),(903821,2,NULL,NULL,'Кирова 1 3 этаж',NULL,'2018-05-11',NULL,NULL,NULL,'ТК «21 Век» (с)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903822,3,NULL,NULL,'Грабцевское шоссе 45 вход',NULL,'2018-05-11',NULL,NULL,NULL,'Рынок',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903823,4,NULL,NULL,'Суворова 121 у входа',NULL,'2018-05-12',NULL,NULL,NULL,'БЦ «Московский»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100025,1),(903824,5,NULL,NULL,'Карла Либкнехта 31 в зале',NULL,'2018-05-13',NULL,NULL,NULL,'Mohta «У Гризли»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903825,6,NULL,NULL,'Баррикад 174 у входа',NULL,'2018-05-13',NULL,NULL,NULL,'ДОСАФ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100027,1),(903826,7,NULL,NULL,'Грабцевское шоссе 174',NULL,'2018-05-13',NULL,NULL,NULL,'МТВ МРГ Соль.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100028,1),(903827,8,NULL,NULL,'пер. Воскресенский 28',NULL,'2018-05-13',NULL,NULL,NULL,'Налоговая',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903828,9,NULL,NULL,'Академическая 15 улица, вход',NULL,'2018-05-13',NULL,NULL,NULL,'ГП «Магнит»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100029,1),(903829,10,NULL,NULL,'Ленинградское шоссе 45',NULL,'2018-05-14',NULL,NULL,NULL,'АЗС «Shell»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100031,1),(903830,11,NULL,NULL,'Мичуринский проспект 21',NULL,'2018-05-14',NULL,NULL,NULL,'Университет',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100032,1),(903831,12,NULL,NULL,'Новый Арбат 32',NULL,'2018-05-15',NULL,NULL,NULL,'Бизнес-центр «Омега»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100033,1),(903832,13,NULL,NULL,'Пресненская наб. 2',NULL,'2018-05-15',NULL,NULL,NULL,'ТЦ «Галерея»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100034,1),(903833,14,NULL,NULL,'Новый Арбат 24',NULL,'2018-05-16',NULL,NULL,NULL,'Кинотеатр «Октябрь»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100035,1),(903834,15,NULL,NULL,'Шереметьевское шоссе',NULL,'2018-05-16',NULL,NULL,NULL,'Аэропорт Шереметьево',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100036,1),(903835,16,NULL,NULL,'Проспект Мира 150',NULL,'2018-05-17',NULL,NULL,NULL,'Гостиница «Космос»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100037,1),(903836,17,NULL,NULL,'Лужнецкая наб. 2/4',NULL,'2018-05-17',NULL,NULL,NULL,'Фитнес-клуб «World Class»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903837,18,NULL,NULL,'Льва Толстого 16',NULL,'2018-05-18',NULL,NULL,NULL,'Офис Яндекс',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100039,1),(903838,19,NULL,NULL,'Тверская ул.',NULL,'2018-05-18',NULL,NULL,NULL,'Метро «Маяковская»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100040,1),(903839,20,NULL,NULL,'Крымский Вал 9',NULL,'2018-05-19',NULL,NULL,NULL,'Парк Горького',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100041,1),(903840,21,NULL,NULL,'Проспект Мира 119',NULL,'2018-05-19',NULL,NULL,NULL,'ВДНХ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100042,1),(903841,22,NULL,NULL,'Ходынский бульвар 4',NULL,'2018-05-20',NULL,NULL,NULL,'ТРЦ «Авиапарк»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100043,1),(903842,23,NULL,NULL,'Щелковское шоссе 5',NULL,'2018-05-20',NULL,NULL,NULL,'МФЦ «Мои документы»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100044,1),(903843,24,NULL,NULL,'Кутузовский проспект 32',NULL,'2018-05-21',NULL,NULL,NULL,'Сбербанк',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100045,1),(903844,25,NULL,NULL,'Земляной Вал 27',NULL,'2018-05-21',NULL,NULL,NULL,'Метро «Курская»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',-1,1),(903845,26,NULL,NULL,'Арбат 15',NULL,'2018-05-22',NULL,NULL,NULL,'Кафе «Шоколадница»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100047,1),(903846,27,NULL,NULL,'Воздвиженка 3/5',NULL,'2018-05-22',NULL,NULL,NULL,'Библиотека им. Ленина',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100048,1),(903847,28,NULL,NULL,'Манежная пл. 1',NULL,'2018-05-23',NULL,NULL,NULL,'ТЦ «Охотный ряд»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100049,1),(903848,29,NULL,NULL,'Мосфильмовская ул. 1',NULL,'2018-05-23',NULL,NULL,NULL,'Киностудия «Мосфильм»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100050,1),(903849,30,NULL,NULL,'Красная пл. 3',NULL,'2018-05-24',NULL,NULL,NULL,'ГУМ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100051,1),(903850,31,NULL,NULL,'Петровка 2',NULL,'2018-05-24',NULL,NULL,NULL,'ЦУМ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100052,1),(903851,32,NULL,NULL,'Тверская ул. 20',NULL,'2018-05-25',NULL,NULL,NULL,'Метро «Пушкинская»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100053,1),(903852,33,NULL,NULL,'Новый Арбат 11',NULL,'2018-05-25',NULL,NULL,NULL,'Кафе «Му-Му»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100054,1),(903853,34,NULL,NULL,'Тверской бульвар 26',NULL,'2018-05-26',NULL,NULL,NULL,'Ресторан «Турандот»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100055,1),(903854,35,NULL,NULL,'Кремль',NULL,'2018-05-26',NULL,NULL,NULL,'Кремль',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100056,1),(903855,36,NULL,NULL,'Академика Королева 15',NULL,'2018-05-27',NULL,NULL,NULL,'Останкинская телебашня',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100057,1),(903856,37,NULL,NULL,'Комсомольская пл.',NULL,'2018-05-27',NULL,NULL,NULL,'Метро «Комсомольская»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100058,1),(903857,38,NULL,NULL,'Комсомольская пл. 3',NULL,'2018-05-28',NULL,NULL,NULL,'Ленинградский вокзал',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100059,1),(903858,39,NULL,NULL,'Комсомольская пл. 2',NULL,'2018-05-28',NULL,NULL,NULL,'Казанский вокзал',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100060,1),(903859,40,NULL,NULL,'Комсомольская пл. 5',NULL,'2018-05-29',NULL,NULL,NULL,'Ярославский вокзал',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100061,1),(903860,41,NULL,NULL,'Пл. Киевского вокзала 2',NULL,'2018-05-29',NULL,NULL,NULL,'ТРЦ «Европейский»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100062,1),(903861,42,NULL,NULL,'Пл. Киевского вокзала',NULL,'2018-05-30',NULL,NULL,NULL,'Киевский вокзал',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100063,1),(903862,43,NULL,NULL,'Пр-т Андропова 18',NULL,'2018-05-30',NULL,NULL,NULL,'ТЦ «Океания»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100064,1),(903863,44,NULL,NULL,'Андропова пр-т 39',NULL,'2018-05-31',NULL,NULL,NULL,'Коломенское',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100065,1),(903864,45,NULL,NULL,'Дольская ул. 1',NULL,'2018-05-31',NULL,NULL,NULL,'Царицыно',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100066,1),(903865,46,NULL,NULL,'Воробьевское шоссе',NULL,'2018-06-01',NULL,NULL,NULL,'Воробьевы горы',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100067,1),(903866,47,NULL,NULL,'Ленинские горы 1',NULL,'2018-06-01',NULL,NULL,NULL,'МГУ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100068,1),(903867,48,NULL,NULL,'Новодевичий пр. 1',NULL,'2018-06-02',NULL,NULL,NULL,'Новодевичий монастырь',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100069,1),(903868,49,NULL,NULL,'Братьев Фонченко 7',NULL,'2018-06-02',NULL,NULL,NULL,'Парк Победы',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100070,1),(903869,50,NULL,NULL,'Кутузовский пр-т',NULL,'2018-06-03',NULL,NULL,NULL,'Кутузовский проспект',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100071,1),(903870,1,NULL,NULL,'Кутузовский пр-т',NULL,'2018-06-03',NULL,NULL,NULL,'Триумфальная арка',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100072,1),(903871,2,NULL,NULL,'Кутузовский пр-т 38',NULL,'2018-06-04',NULL,NULL,NULL,'Бородинская панорама',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100073,1),(903872,3,NULL,NULL,'Пл. Победы',NULL,'2018-06-04',NULL,NULL,NULL,'Метро «Парк Победы»',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL,NULL,NULL,NULL,'Средний',1824100074,1);
/*!40000 ALTER TABLE `vendingovieavtomati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vishayacompanii`
--

DROP TABLE IF EXISTS `vishayacompanii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vishayacompanii` (
  `idVishayaCompaniya` int NOT NULL AUTO_INCREMENT,
  `nazvaniye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idVishayaCompaniya`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vishayacompanii`
--

LOCK TABLES `vishayacompanii` WRITE;
/*!40000 ALTER TABLE `vishayacompanii` DISABLE KEYS */;
INSERT INTO `vishayacompanii` VALUES (1,'ООО \"Рога и Копыта\"'),(2,'ЗАО \"Солнышко\"'),(3,'ИП Петров А.А.'),(4,'ОАО \"Газпром\"'),(5,'ООО \"Системы Безопасности\"'),(6,'ООО \"СтройИнвест\"'),(7,'ЗАО \"ЭнергоСбыт\"'),(8,'ИП Сидоров И.П.'),(9,'ОАО \"РЖД\"'),(10,'ООО \"ТрансЛогистик\"'),(11,'ООО \"Пищевые Технологии\"'),(12,'ЗАО \"АгроСервис\"'),(13,'ИП Иванова Е.В.'),(14,'ОАО \"Сбербанк\"'),(15,'ООО \"Маркетинг Плюс\"'),(16,'ООО \"Мебель Комфорт\"'),(17,'ЗАО \"Телекоммуникации\"'),(18,'ИП Кузнецов Д.А.'),(19,'ОАО \"Роснефть\"'),(20,'ООО \"АвтоТранс\"'),(21,'ООО \"IT Решения\"'),(22,'ЗАО \"Медиа Холдинг\"'),(23,'ИП Смирнов В.С.'),(24,'ОАО \"ВТБ\"'),(25,'ООО \"Консалтинг Групп\"'),(26,'ООО \"Окна Сервис\"'),(27,'ЗАО \"Электроника\"'),(28,'ИП Васильев О.И.'),(29,'ОАО \"Лукойл\"'),(30,'ООО \"Текстиль Торг\"'),(31,'ООО \"ХимПром\"'),(32,'ЗАО \"Полиграфия\"'),(33,'ИП Федоров А.Н.'),(34,'ОАО \"Аэрофлот\"'),(35,'ООО \"Рекламное Агентство\"'),(36,'ООО \"Сантехника Мастер\"'),(37,'ЗАО \"Недвижимость\"'),(38,'ИП Волков С.П.'),(39,'ОАО \"Магнит\"'),(40,'ООО \"СпецТехника\"'),(41,'ООО \"Охранные Системы\"'),(42,'ЗАО \"Фармацевтика\"'),(43,'ИП Новиков Р.М.'),(44,'ОАО \"Норникель\"'),(45,'ООО \"Юридические Услуги\"'),(46,'ООО \"Книжный Мир\"'),(47,'ЗАО \"Обувь Стиль\"'),(48,'ИП Михайлов А.А.'),(49,'ОАО \"Северсталь\"'),(50,'ООО \"Туристическое Агентство\"');
/*!40000 ALTER TABLE `vishayacompanii` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 14:04:10
