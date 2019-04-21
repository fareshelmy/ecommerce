-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Meat & Poultry'),(2,'Seafood'),(3,'Fruits & Vegetables'),(4,'Bakery & Pastry'),(5,'Cheese, Dairy & Deli'),(6,'Desserts & Sweets'),(7,'Home & Garden');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_fk_idx` (`user_id`),
  CONSTRAINT `order_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,'Hamada@gmail.com','2019-03-29 13:35:47'),(3,'Mohamed@gmail.com','2019-03-29 13:35:47'),(4,'Hamada@gmail.com','2019-03-29 13:35:47');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `order_item_product_fk_idx` (`product_id`),
  CONSTRAINT `order_item_order_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `order_item_product_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (2,12,10,200),(2,13,3,300),(3,14,1,100),(3,15,5,25);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `rating` double DEFAULT '3',
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(1000) NOT NULL DEFAULT '/ecommerce/img/products/No_Image_Available.jpg',
  `amount` double DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `description` varchar(1000) DEFAULT 'No description available.',
  `items_sold` int(11) NOT NULL DEFAULT '0',
  `entrance_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_categoryid_fk_idx` (`category_id`),
  CONSTRAINT `product_categoryid_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12,'Frozen Prime Beef Burger',115,3,1,'/ecommerce/img/products/6224007376805.jpg',600,'G',10,' Our NEW frozen prime burgers guarantee a juicier patty and a scrumptious bite. Comes in a pack of four delicious beefy patties. Make the ultimate burger by using Gourmet Fresh Baked Buns, top with Emmmental, Gruyere, Provolone or Cheddar cheese and your favourite condiments. Defrost thr patties in the fridge before cooking. Don’t poke or sqeeze the burgers while cooking, as this dries them up and nothing beats juicy burgers! ',0,'2019-04-15 16:05:34'),(13,'Zaatar Marinated Whole Chicken',108,3,1,'/ecommerce/img/products/2043067000000_-_marinated_whole_chicken.jpg',1.2,'KG',10,'Our NEW marinated whole chicken will make roasted chicken your family’s favourite! Marinated with premium Jordanian thyme, flavourful garlic and sweet pomegranate molasses makes it delicious. Brushed with vegetable oil makes it juicy inside and crisp on the outside. Pre-heat your oven, then place the chicken to roast. Carve the chicken in a plate, spoon the pan sauce on top and serve with Gourmet Mashed Potato, Gourmet Roasted Vegetables or Gourmet Aromatic Basmati Rice for a mouthwatering rotisserie-like meal! Our chicken are is sources from premium quality suppliers, they are hormone free and grain fed. ',0,'2019-04-15 16:02:46'),(14,'Poseidon White Clams',95,3,2,'/ecommerce/img/products/6224000591755_white_clams_product.jpg',450,'G',10,'These clams have been cleaned and have no sand in them. We love these clams in the simple light and delicious dish \"spaghetti vongole\" meaning spaghetti with clams ',0,'2019-04-15 16:02:46'),(15,'Chilean Whole Shell Mussels',95,3,2,'/ecommerce/img/products/4992303011196.jpg',500,'G',10,'Mussels are one most sustainable types of shellfish, easy to cook and taste wonderful in a variety of recipes. Devour these Premium Chilean whole shell mussels bursting with flavour! We recommend pairing with a hearty tomato sauce, squid ink linguini and a garnish of fresh basil. ',0,'2019-04-15 16:02:46'),(16,'Indian White Grapes',73,3,3,'/ecommerce/img/products/6028003000005.jpg',500,'G',10,' The world\'s oldest known grape variety. Known for their delicious sweet and slightly tart taste. Perfect to snack on. ',0,'2019-04-15 16:02:46'),(17,'Dutch Red Currant',120,3,3,'/ecommerce/img/products/6221034090322.jpg',125,'G',10,' Red currants may be small, but they are actually tiny powerhouses of essential vitamins, minerals and antioxidants. ',0,'2019-04-15 16:02:46'),(18,' Coco Loves Cake Classic Marble Cake',60,3,4,'/ecommerce/img/products/7011389000003_1.jpg',400,'G',10,'This classic Marble Cake recipe will take you straight back to your childhood! Our newly launched Marble Cake is moist and buttery with rich chocolate swirls, so every bite is chocolatey and sweet. Cut into thick slices and pair with your favourite warm beverage for a homemade luscious bite! ',0,'2019-04-15 16:02:46'),(19,'Panache Chocolate Sable',230,3,4,'/ecommerce/img/products/6224007376492_panache-chocolate-sable.jpg',475,'G',10,'Straight from the oven, indulge in these rich chocolate sable, made with premium quality ingredients. Infused and dipped in chocolate, serve these delicate biscuits with a cup of coffee for pure satisfaction. ',0,'2019-04-15 16:02:46'),(20,'Juhayna Zabado Peach',10,3,5,'/ecommerce/img/products/6223000352656.jpg',440,'G',10,' A healthy peach flavoured yogurt drink, it offers a rich in proteins, carbohydrates, vitamins, and minerals that restore vitality to the body and mind. ',0,'2019-04-15 16:02:46'),(21,'Juhayna Zabado Strawberry',10,3,5,'/ecommerce/img/products/6223000352625.jpg',440,'G',10,' A healthy strawberry flavoured yogurt drink that offers a number of proteins, carbohydrates, vitamins, and minerals that restore vitality to the body and mind. ',0,'2019-04-15 16:02:46'),(22,'Gullon Moment Choco Star Biscuit',49,3,6,'/ecommerce/img/products/8410376048391.jpg',235.8,'G',10,' Delicious mini cookies filled with soft milk cream topped with milk chocolate. An irresistible snack appease your appetite anytime and anywhere. ',0,'2019-04-15 16:02:46'),(23,'Milk Belgian Chocolate Coins',135,3,6,'/ecommerce/img/products/7011221000000_2.jpg',200,'G',10,'Velvety Belgian milk chocolate coins with a soft brown and rich texture. This is a handy and tasty solution whenever you are craving something sweet.',0,'2019-04-15 16:02:46'),(24,'Dr. Oetker Muffin Cases',63,3,7,'/ecommerce/img/products/5000254001162_1_1.jpg',75,'Cases',10,' Dr. Oetker Muffin cases are perfect for everyday baking - sweet and savoury recipes. They are made from quality baking paper and are suitable for use with all standard muffin trays. Each pack contains 75 white muffin cases. ',0,'2019-04-15 16:02:46'),(25,'Samurai Bamboo Flat Sushi Mat',55,3,7,'/ecommerce/img/products/8850147511158.jpg',1,'item',10,' This bamboo sushi rolling mat - known in Japanese as a makisu. will help you achieve sushi rolls uniformly bamboo mat is smoothed with string and provides a non-stick surface for rolling Place a piece of seaweed on the carpet, add your rice and other desired ingredients, roll and serve. ',0,'2019-04-15 16:02:46');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `email` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `role` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Ahmed@gmail.com','Ahmed','Ahmed',NULL,'Engineer','asdfasdf',0,'user'),('Alaa@gmail.com','Alaa','Alaa','2012-10-09 22:00:00','asdfasdfasdf','asdfasdfasdf',1000,'user'),('Albert@gmail.com','Albert','Einstein','2019-03-31 22:00:00','Scientist','Fayoum, Cairo',1000,'user'),('Amr@gmail.com','Amr','Amr','2019-03-31 22:00:00','Engineer','Fayoum, Cairo',1000,'user'),('Aziz@gmail.com','Aziz','Man','2010-10-09 22:00:00','Eng','asdfasdf',1000,'user'),('Emad@gmail.com','Emad','asdf','2012-12-11 22:00:00','Engineer','Fayoum, Cairo',1000,'user'),('Far@gmail.com','Fares','asdfasd','2010-01-31 22:00:00','asdfasd','asdfa',1000,'user'),('Fares@gmail.com','Fares','Fares','2010-01-31 22:00:00','asdfasd','asdfa',1000,'user'),('Gemy@gmail.com','Gemy','123','2010-10-09 22:00:00','alsdkfjlskd','sdflkjasldkj',10000,'user'),('Hamada@gmail.com','Hamada','Password',NULL,'copier','',2000,NULL),('HamadaAbdrabou96@gmail.com','','',NULL,'','',0,'user'),('Mohamed@gmail.com','Mohamed','Password',NULL,'Engineer',NULL,0,'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_category` (
  `user_id` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_id_fk_idx` (`category_id`),
  CONSTRAINT `category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 19:50:33
