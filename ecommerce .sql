CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,'Hamada@gmail.com','2019-03-29 13:35:47'),(4,'Hamada@gmail.com','2019-03-29 13:35:47'),(5,'Fares@gmail.com','2019-04-13 11:16:34'),(14,'Fares@gmail.com','2019-04-13 11:24:47'),(15,'Fares@gmail.com','2019-04-13 11:46:13'),(16,'Fares@gmail.com','2019-04-13 12:25:27'),(17,'Fares@gmail.com','2019-04-13 12:26:06'),(18,'Fares@gmail.com','2019-04-13 13:14:00'),(19,'Fares@gmail.com','2019-04-13 13:25:28'),(20,'Fares@gmail.com','2019-04-13 13:43:39');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
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
  `image` varchar(1000) NOT NULL,
  `amount` double DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `description` varchar(1000) DEFAULT 'No description available.',
  `items_sold` int(11) NOT NULL DEFAULT '0',
  `entrance_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_categoryid_fk_idx` (`category_id`),
  CONSTRAINT `product_categoryid_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Aussie Beef Burger',74.25,3,1,'/ecommerce/img/products/2011080000000_aussie-beef-burger.jpg',270,'g',10,'The star at any BBQ! These juicy burgers are made of 100% pure Australian beef. Our burgers are what you make them! We recommend serving them grilled, topped with cheddar cheese slices, onions, sliced tomato, iceberg lettuce, ketchup and mayo. Hold it all together in one of our Foodland freshly baked burger buns! About our Beef: The Australian beef industry produces some of the finest beef in the world. The industry is geared to producing high quality grass-fed, grain-fed and organic beef and breed-specific products, such as Wagu and Angus. Australian beef has the natural-advantage, where the cattle graze on open pasture and most are exclusively grass-fed. Our top-quality meat is assessed for its rib fat, meat colour, eye muscle area, fat colour and marbling. All our beef is 100% halal. Our burgers are what you make them! ',0,'2019-04-15 10:29:46'),(2,'Aussie Beef Oven Kofta',134.75,3,1,'/ecommerce/img/products/2011083000000_aussie-beef-kofta-oven.jpg',490,'g',10,'Our traditional oven kofta is made of 100% pure Australian beef and infused with a delicious blend of spices that gives it its special, restaurant-like taste. They are easy to prepare and loved by both kids and adults. A must grill item at BBQs and gatherings. Our oven kofta can also be pan fried or oven roasted. About our Beef: The Australian beef industry produces some of the finest beef in the world. The industry is geared to producing high quality grass-fed, grain-fed and organic beef and breed-specific products, such as Wagu and Angus. Australian beef has the natural-advantage, where the cattle graze on open pasture and most are exclusively grass-fed. Our top-quality meat is assessed for its rib fat, meat colour, eye muscle area, fat colour and marbling. All our beef is 100% halal. ',0,'2019-04-15 10:33:56'),(3,'Eastern Sea Scallops',449,3,2,'/ecommerce/img/products/834522006253_2.jpg',454,'g',10,'The delicate texture and sweet taste make these scallops an absolute must in any kitchen. Great as starters, on sea food platters or served in a ceviche. For best results, make sure your pan is set on high heat, add a clove of crushed garlic and a drizzle of olive oil. Sear your scallops to give them a gorgeous golden brown colour on each side. Scallops are best fried in a little butter for a few seconds on each side. ',0,'2019-04-15 10:51:49'),(4,'Poseidon Calamari',195,3,2,'/ecommerce/img/products/calamari.jpg',400,'g',10,'Soft, tender and sushi-grade calamari rings (75%) and tentacles (25%). We love these breaded and deep fried for a few seconds for a delicious appetiser. Serve with lemon & Maldon Sea Salt and make sure to only cook them for a few seconds for the most tender results. Alternatively, add them in your seafood pasta, risotto or soup. ',0,'2019-04-15 11:14:19'),(5,'Balaika Organic Bananas',33,3,3,'/ecommerce/img/products/6027102000008_5.jpg',1,'kg',10,'Premium organic Balaika bananas full of flavour. Enjoy them on the go as a healthy snack, or added to your breakfast cereal.',0,'2019-04-15 11:17:46'),(6,'Organic Green Onion',20,3,3,'/ecommerce/img/products/6027701000003.jpg',250,'g',10,'Onions are a good source of vitamin C and help boost immunity with their many health properties. They contain chromium, which assists in regulating blood sugar and for centuries, onions have been used to reduce inflammation and heal infections. Incorporating onions into a diet is very simple, with a versatile range of ways they can be prepared and cooked in regular foods. ',0,'2019-04-15 11:20:08'),(7,'California Jam Sable',72,3,4,'/ecommerce/img/products/california-kitchen-sable-6224008115076_2.jpg',400,'g',10,'Sable by California Kitchen literally jam-packed with flavor.',0,'2019-04-15 11:29:32'),(8,'Frozen Chicken Pies',150,3,4,'/ecommerce/img/products/7011163000007.jpg',200,'g',10,'Our NEW handcrafted frozen chicken pies are made from scratch by our talented chefs (not machines)! They are made from buttery puff pastry, chunks of tender chicken breasts mixed with a scrumptious medley of fresh vegetables, making every bite deliciously delightful. The savoury pies are perfect for gatherings and festive dinners, where a homemade and rich taste is guaranteed! Defrost the pies and place in preheated oven at 160 for 20 minutes. Stick a toothpick in the pie, make sure it comes out hot and the puff pastry browns to a golden hue. ',0,'2019-04-15 11:33:06'),(9,'Dina Full Cream Milk',16.25,3,5,'/ecommerce/img/products/6224000432003.jpg',850,'ml',10,'Full cream fresh milk, produced straight from the farm to your table.',0,'2019-04-15 11:36:10'),(10,'Juhayna 0% Milk',18.5,3,5,'/ecommerce/img/products/6222014310805.jpg',1,'l',10,'Our zero milk is produced with 0% fat. It is the ultimate choice for those looking to minimize their fat intake while maintaining a rich supply of vitamins to ensure a healthy lifestyle. There are no added preservatives, and all of our milk products should be kept refrigerated once opened. ',0,'2019-04-15 11:38:22'),(11,'Stroopwafel Caramel Waffel',4.5,3,6,'/ecommerce/img/products/6223000228036.jpg',30,'g',10,'The perfect marriage between waffle dough and caramel. Our tip: Lightly toast or microwave it before pairing it with our homemade ice cream! ',0,'2019-04-15 11:51:14'),(12,'Loacker White Chocolate',12,3,6,'/ecommerce/img/products/80001799.jpg',21,'g',10,'The unique hazelnut tartlet in white. Maximum pleasure for lovers of white chocolate creations! Be enchanted by delicious white chocolate, a tender heart of light, crispy wafers and a filling of the finest hazelnut cream! ',0,'2019-04-15 11:53:03'),(13,'Large Mortar',140,3,7,'/ecommerce/img/products/mortar.jpg',6,'Inch',10,'Handsome granite pestle and mortar. Perfect for quickly crushing spices, herbs, and more. Measures approximately 6 inches in diameter. ',0,'2019-04-15 11:57:08'),(14,'Poseidon White Clams',95,3,2,'/ecommerce/img/products/6224000591755_white_clams_product.jpg',450,'G',10,'These clams have been cleaned and have no sand in them. We love these clams in the simple light and delicious dish \"spaghetti vongole\" meaning spaghetti with clams ',0,'2019-04-15 14:02:46'),(15,'Chilean Whole Shell Mussels',95,3,2,'/ecommerce/img/products/4992303011196.jpg',500,'G',10,'Mussels are one most sustainable types of shellfish, easy to cook and taste wonderful in a variety of recipes. Devour these Premium Chilean whole shell mussels bursting with flavour! We recommend pairing with a hearty tomato sauce, squid ink linguini and a garnish of fresh basil. ',0,'2019-04-15 14:02:46'),(16,'Indian White Grapes',73,3,3,'/ecommerce/img/products/6028003000005.jpg',500,'G',10,' The world\'s oldest known grape variety. Known for their delicious sweet and slightly tart taste. Perfect to snack on. ',0,'2019-04-15 14:02:46'),(17,'Dutch Red Currant',120,3,3,'/ecommerce/img/products/6221034090322.jpg',125,'G',10,' Red currants may be small, but they are actually tiny powerhouses of essential vitamins, minerals and antioxidants. ',0,'2019-04-15 14:02:46'),(18,' Coco Loves Cake',60,3,4,'/ecommerce/img/products/7011389000003_1.jpg',400,'G',10,'This classic Marble Cake recipe will take you straight back to your childhood! Our newly launched Marble Cake is moist and buttery with rich chocolate swirls, so every bite is chocolatey and sweet. Cut into thick slices and pair with your favourite warm beverage for a homemade luscious bite! ',0,'2019-04-15 14:02:46'),(19,'Panache Chocolate Sable',230,3,4,'/ecommerce/img/products/6224007376492_panache-chocolate-sable.jpg',475,'G',10,'Straight from the oven, indulge in these rich chocolate sable, made with premium quality ingredients. Infused and dipped in chocolate, serve these delicate biscuits with a cup of coffee for pure satisfaction. ',0,'2019-04-15 14:02:46'),(20,'Juhayna Zabado Peach',10,3,5,'/ecommerce/img/products/6223000352656.jpg',440,'G',10,' A healthy peach flavoured yogurt drink, it offers a rich in proteins, carbohydrates, vitamins, and minerals that restore vitality to the body and mind. ',0,'2019-04-15 14:02:46'),(21,'Juhayna Zabado Strawberry',10,3,5,'/ecommerce/img/products/6223000352625.jpg',440,'G',10,' A healthy strawberry flavoured yogurt drink that offers a number of proteins, carbohydrates, vitamins, and minerals that restore vitality to the body and mind. ',0,'2019-04-15 14:02:46'),(22,'Gullon Moment Biscuit',49,3,6,'/ecommerce/img/products/8410376048391.jpg',235.8,'G',10,' Delicious mini cookies filled with soft milk cream topped with milk chocolate. An irresistible snack appease your appetite anytime and anywhere. ',0,'2019-04-15 14:02:46'),(23,'Milk Belgian Chocolate Coins',135,3,6,'/ecommerce/img/products/7011221000000_2.jpg',200,'G',10,'Velvety Belgian milk chocolate coins with a soft brown and rich texture. This is a handy and tasty solution whenever you are craving something sweet.',0,'2019-04-15 14:02:46'),(24,'Dr. Oetker Muffin Cases',63,3,7,'/ecommerce/img/products/5000254001162_1_1.jpg',75,'Cases',10,' Dr. Oetker Muffin cases are perfect for everyday baking - sweet and savoury recipes. They are made from quality baking paper and are suitable for use with all standard muffin trays. Each pack contains 75 white muffin cases. ',0,'2019-04-15 14:02:46'),(25,'Samurai Bamboo Flat Sushi',55,3,7,'/ecommerce/img/products/8850147511158.jpg',1,'item',10,' This bamboo sushi rolling mat - known in Japanese as a makisu. will help you achieve sushi rolls uniformly bamboo mat is smoothed with string and provides a non-stick surface for rolling Place a piece of seaweed on the carpet, add your rice and other desired ingredients, roll and serve. ',0,'2019-04-15 14:02:46'),(26,'Frozen Prime Beef Burger',115,3,1,'/ecommerce/img/products/6224007376805.jpg',600,'G',10,' Our NEW frozen prime burgers guarantee a juicier patty and a scrumptious bite. Comes in a pack of four delicious beefy patties. Make the ultimate burger by using Gourmet Fresh Baked Buns, top with Emmmental, Gruyere, Provolone or Cheddar cheese and your favourite condiments. Defrost thr patties in the fridge before cooking. Don’t poke or sqeeze the burgers while cooking, as this dries them up and nothing beats juicy burgers! ',0,'2019-04-15 14:05:34'),(27,'Zaatar Whole Chicken',108,3,1,'/ecommerce/img/products/2043067000000_-_marinated_whole_chicken.jpg',1.2,'KG',10,'Our NEW marinated whole chicken will make roasted chicken your family’s favourite! Marinated with premium Jordanian thyme, flavourful garlic and sweet pomegranate molasses makes it delicious. Brushed with vegetable oil makes it juicy inside and crisp on the outside. Pre-heat your oven, then place the chicken to roast. Carve the chicken in a plate, spoon the pan sauce on top and serve with Gourmet Mashed Potato, Gourmet Roasted Vegetables or Gourmet Aromatic Basmati Rice for a mouthwatering rotisserie-like meal! Our chicken are is sources from premium quality suppliers, they are hormone free and grain fed. ',0,'2019-04-15 14:02:46'),(28,'Frozen Smoked Mackerel Fillet',185,4,2,'/ecommerce/img/products/makril.jpg',2,'item',15,'Delicious smoked Mackerel fish fillet, with a typical smoked aroma',0,'2019-04-19 16:02:46'),(29,'Norwegian Salmon Whole Fillet ',500,4,2,'/ecommerce/img/products/2025028000000.jpg',1.5,'KG',10,'Rich in color and taste, this Norwegian Salmon Fillet is one our favorites',0,'2019-04-19 16:02:46'),(30,'Fresh Food Parsley ',8,3,3,'/ecommerce/img/products/parsley2.jpg',100,'G',20,'Parsley pairs well with almost all foods. Add to your salads, omelettes, roasts, soups and curries. ',0,'2019-04-19 16:02:46'),(31,'Belco Tomatoes',14,4,3,'/ecommerce/img/products/tomatoes.jpg',500,'G',12,'Organic fresh ripe tomatoes perfect for chopping, slicing, stewing, roasting and grilling',0,'2019-04-19 16:02:46'),(32,'Brown Multi-Seed Toast',30,3,4,'/ecommerce/img/products/7011438000008.jpg',500,'G',10,'Our NEW brown multi-seed toast is light, fluffy, loaded with whole grain goodness and toasted',0,'2019-04-19 16:02:46'),(33,'Bakery Fresh Cinnamon Roll',25,4,4,'/ecommerce/img/products/fresh-bakes-cinnamon-roll.jpg',85,'G',20,'Enjoy our freshly baked cinnamon roll, handcrafted with Italian flour and all natural ingredients',0,'2019-04-19 16:02:46'),(34,'Anchor Unsalted Butter',32,3,5,'/ecommerce/img/products/6223003699109.jpg',200,'G',10,'Discover the great all-purpose butter and also the perfect companion in the kitchen',0,'2019-04-19 17:02:46'),(35,'Red Cheddar Cheese',40,4,5,'/ecommerce/img/products/red-cheddar.jpg',200,'G',14,'Smooth yet firm in texture. Creamy but gentle in taste',1,'2019-04-19 17:02:46'),(36,'Haribo Gold-Bears',9,3,6,'/ecommerce/img/products/8691216020627_1.jpg',85,'G',10,'Enjoy these deliciously small gummy bears.',0,'2019-04-19 17:02:46'),(37,'Salted Caramel Brownies',90,4,6,'/ecommerce/img/products/7011404000001.jpg',190,'G',8,'Belgian chocolate brownies to the next level with a layer of oozing salted caramel',2,'2019-04-19 17:02:46'),(38,'Reusable Shopping Bag',95,3,7,'/ecommerce/img/products/6061012000000.jpg',1,'item',10,'Our NEW reusable shopping bags are made in collaboration with The Doodle Factory',0,'2019-04-19 17:02:46'),(39,'6 Rectangle Containers',150,3,7,'/ecommerce/img/products/9414202817655.jpg',1,'item',10,'storage range features a utility container to suit all your kitchen storage requirements ',0,'2019-04-19 17:02:46'),(40,'Premium Egyptian Duck ',196,3,1,'/ecommerce/img/products/bataa.jpg',4,'KG',20,'Rich, meaty and juicy',0,'2019-04-19 16:02:46'),(41,'Smoked Turkey Strips',78,3,1,'/ecommerce/img/products/2051139000000.jpg',200,'G',10,'Smoked turkey perfect for a quick lunchbox or a cheese platter',0,'2019-04-19 16:03:46'),(42,'Poseidon Basa Fillets',120,4,2,'/ecommerce/img/products/white_basa_fillet_product.jpg',1,'KG',59,'Our Poseidon basa fillets are flaky, tender and ideal for kids. They could be cooked in so many ways, breaded & fried',30,'2019-04-19 09:56:40'),(43,'Norwegian Salmon Steaks',230,3,2,'/ecommerce/img/products/7042540002413_2.jpg',700,'G',33,'infused with Omega 3 and is also a great source of protein and vitamin B. We love these steaks, baked, poached or grilled.',33,'2019-04-19 10:07:48'),(44,'Pico Avocado',15.5,5,3,'/ecommerce/img/products/avocado.jpg',250,'G',80,'Avocados are loaded with healthy fats (omega-3), which makes them a great brain booster. Perfect addition to your breakfast eggs and guacamole dips.',20,'2019-04-19 10:45:37'),(45,'Belco Yellow Capsicum',15.99,4,3,'/ecommerce/img/products/6222771737235.jpg',600,'G',40,'More mature than green capsicums, yellow capsicums have a fruity taste yet milder than their orange or red counterparts.',30,'2019-04-19 10:45:37'),(46,'Gourmet Easter Brioche',65,4,4,'/ecommerce/img/products/brioche.jpg',1,'PCS',22,'The fun Easter classic is brought to you by Gourmet. Enjoy the brioche freshness with its buttery-rich flavour',12,'2019-04-19 10:45:37'),(47,'Gourmet Apricot Jam Sable',100,4,4,'/ecommerce/img/products/7011127000005.jpg',40,'PCS',59,'Enjoy these scrumptious handcrafted sables with your favourite hot beverage for an indulging morning treat or an uplifting afternoon delight! ',20,'2019-04-19 10:45:37'),(48,'Isigny Sainte Mere Brie',70,3,5,'/ecommerce/img/products/2031412000000.jpg',250,'G',40,'This Brie is made exclusively from the best Normandy milks, which are distinguishable by their exceptional richness in cream',10,'2019-04-19 10:45:37'),(49,'Philadelphia Cream Cheese',60,4,5,'/ecommerce/img/products/5000224013676.jpg',250,'G',40,'Made with milk and real cream, Philadelphia Original\'s distinct fresh and creamy taste makes it a delicious soft cheese for the whole family to enjoy.',10,'2019-04-19 10:45:37'),(50,'Hershey\'s Premier White Chips',100,4,6,'/ecommerce/img/products/premier_white_chips.jpg',340,'G',30,'Bring the taste of rich, white creme to your next baking project. These baking chips are a sweet way to add unique color and white creme flavor',20,'2019-04-19 11:04:20'),(51,'Villars Blonde Chocolate',70,4,6,'/ecommerce/img/products/7610036002706.jpg',100,'G',50,'Villars blonde chocolate is a perfectly balanced original creation with subtle notes of caramelised biscuit.',20,'2019-04-19 11:04:20'),(52,'Sistema 3 Pack TakeAlongs',100,3,7,'/ecommerce/img/products/9414202541253.jpg',14,'L',66,'With the Quik Clik Seal, TakeAlongs lids click into place letting you know when contents are secured. The lids have ridges for easy stacking',20,'2019-04-19 11:04:20'),(53,'Sistema 6 Pack Klip IT',120,3,7,'/ecommerce/img/products/9414202017604.jpg',1,'PCS',88,'Stackable, versatile & easy-to-use food storage container boxes made with durable plastic. The plastic boxes are Phthalate & BPA free.',20,'2019-04-19 11:04:20'),(54,'NZ Boneless Baby Veal Shank',86.63,4,1,'/ecommerce/img/products/nz_boneless_baby_veal_shank.jpg',700,'G',50,'These boneless veal shanks are best cooked on a low heat for a minimum of 1.5-2 hours',0,'2019-04-19 09:42:27'),(55,'Young Angus Beef Ribeye Roast',130,4,1,'/ecommerce/img/products/2013101000000_2_1.jpg',950,'G',40,'This delicious Young Angus beef cut is thick tender and juicy. Simply rub with a bit of sea salt, pepper and fresh herbs such as rosemary',20,'2019-04-19 09:50:43');
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
  `credit_limit` int(11) NOT NULL DEFAULT '0',
  `role` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Admin@gmail.com','Fares','Admin','2010-01-31 22:00:00','asdfasd','Cairo',1000,'admin'),('Ahmed@gmail.com','Ahmed','Ahmed',NULL,'Engineer','Cairo',0,'user'),('Fares@gmail.com','Fares','Fares',NULL,'asdfasd','Cairo',100,'user'),('Gemy@gmail.com','Gemy','123','2010-10-09 22:00:00','alsdkfjlskd','Cairo',10000,'user'),('Hamada@gmail.com','Hamada','Password',NULL,'copier',NULL,1000,'user');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2019-04-19 18:47:48
