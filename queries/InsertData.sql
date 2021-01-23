-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: soup_schema
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `main_id` int(11) NOT NULL,
  `name_ch` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`main_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (1,'豬','pork',1),(2,'牛','beef',2),(3,'羊','lamb',3),(4,'雞','chicken',4),(5,'魚','fish',5),(6,'菜','vegetables',6);
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `method` (
  `method_id` int(11) NOT NULL,
  `name_ch` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `description_ch` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `icon_ch` varchar(1000) DEFAULT NULL,
  `icon_en` varchar(1000) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'老火湯(2小時以上）','Slow boil (for more than 2 hours)','(2小時以上）','slow cook','test','test',1),(2,'老火湯(2小時以下）','Slow boil (for under 2 hours)','(2小時以下）','cookedcookedcooked','test','test',2),(3,'燉湯','Double steam','','','test','test',3),(4,'滾湯','Quick boil','','dundundun','test','test',4);
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `name_ch` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `servings` int(11) DEFAULT NULL,
  `summary_ch` text,
  `summary_en` text,
  `photo_url` varchar(1000) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `photo_sort_order` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `fk_recipe_method_id` (`method_id`),
  CONSTRAINT `fk_recipe_method_id` FOREIGN KEY (`method_id`) REFERENCES `method` (`method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'海底椰蘋果湯','Sea coconut and apple soup',1,4,'海底椰, 蘋果, 蜜棗, 南北杏, 瘦肉','Sea coconut, apple, candied jujube, apricot kernel, lean pork','https://i.pinimg.com/originals/3c/d8/cf/3cd8cfda108f72a581d5fcf742388fc8.jpg',3,4,1,1),(2,'蓮藕粟米紅蘿蔔湯','Lotus root and corn soup',1,4,'蓮藕, 粟米, 紅蘿蔔, 腰果, 南北杏','Lotus root, corn, carrots, cashew nuts, apricot kernel','https://embed.widencdn.net/img/mccormick/rvr1iyzale/1318x1318px/chinese_chicken_noodle_soup_with_garlic_&_ginger_6247.jpg?crop=true&anchor=727,26&q=80&r=270&color=ffffffff&u=o2hyef',864,648,2,2),(3,'花膠瑤柱螺頭燉湯','Giant Sea conch and fish maw soup',3,2,'花膠, 瑤柱, 螺頭, 金華火腿, 豬肉眼, 圓肉, 杞子, 淮山','Fish maw, dried scallops, sea conch, Chinese ham, pork, dried longans, goji berries, dried Japanese yam or dried Chinese yam ','https://www.recipetineats.com/wp-content/uploads/2016/09/Wontons_1-1.jpg',864,1152,3,3),(4,'節瓜瑤柱湯','Hairy gourd and dried scallops soup',2,2,'止渴生津、消暑、健脾和胃、補中益氣之效。 節瓜，瑤柱，豬骨，紅棗，南杏','Hairy Gourd also known as Fuzzy Gourd is an oblong, dumb-bell-shaped vegetable loaded with nutrient, minerals and vitamins. It is used in numerous food recipes due to its delicate, almost bland taste. Hairy Gourd, died scallops, pork bone,dates, apricot kernel','https://www.sayweee.com/static_img/2015-11/LVNCJiAqQ-O8fGr7ZTRW0A.jpg',864,1152,4,4),(5,'蟲草花淮山杞子湯','Chicken soup with Cordyceps flower',2,4,'蟲草花能提升上呼吸道免疫力，止咳、預防氣管炎等, 可降低膽固醇. 蟲草花, 淮山, 杞子,雞 , 紅棗','Cordyceps flower are known for helping boost immunity and help prevent bronchitis. Cordyceps flower, Chinese yam, goji berry, dates, chicken','https://healthynibblesandbits.com/wp-content/uploads/2019/10/Chinese-Chicken-Broth-FF.jpg',864,681,5,5),(6,'魚湯浸津白','Tilapia and chinese cabbage soup',4,4,'魚湯的營養豐富，經常飲用健康有益，皮膚光滑.鰂魚, 津白 ','Fish soup is very nutritious. Tilapia, Chinese cabbage.','https://www.gimmesomeoven.com/wp-content/uploads/2017/01/Chinese-Hot-and-Sour-Soup-Recipe-1-2.jpg',864,648,6,6),(7,'白背黑木耳紅棗湯','White back black fungus soup',2,2,'白背黑木耳一面白一面黑，由於木耳含有可溶性纖維，增加膽固醇的排出，是有助清腸食材. 白背黑木耳, 紅棗, 豬肉 ','White Back Black Fungus can promote vital energy, activate the brain, clean the lungs, nourish the blood and regulate blood cholesterol level.','https://www.thespruceeats.com/thmb/i_pbDByxAG88XA-0A0GHjT8LQjA=/3656x2742/smart/filters:no_upscale()/chinese-noodle-soup-147454944-58331a205f9b58d5b13260c9.jpg',715,720,7,7),(8,'黑豆紅棗杞子湯','Black bean and date soup',2,2,'黑豆含豐富蛋白質,胡蘿蔔素,維生素等,補腎强身,滋陰明目. 黑豆, 紅棗,杞子  ','Black beans are a great source of fiber, protein and folate. They help regulate blood pressure, blood sugar and cholesterol. Black beans, dates, goji berry.  ','https://www.seriouseats.com/recipes/images/2017/12/20171115-chicken-soup-vicky-wasik-11-1500x1125.jpg',864,980,8,8),(9,'響螺乾冬瓜鷄脚湯','Sea conch and winter melon soup with chicken feet',2,4,'響螺乾滋潤養顏,補益氣血，冬瓜能利尿,降血糖，響螺乾，冬瓜，鷄脚 ','Dried sea conch is a good source of lean protein, iron and calcium. Winter melon helps regulate blood sugar. Sea conch, winter melon, chicken feet, ','https://images.media-allrecipes.com/userphotos/7813460.jpg',864,648,9,9),(10,'木瓜雪耳排骨湯','Snow fungus papaya soup',2,4,'鮮百合、魚腥草、棕櫚果、椰棗、龍脷葉、腰果、南北杏、青欖','date pork liver soup Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTVncrJr1WuuFompKv5ZrDPDBpHhnFMcixUKw&usqp=CAU',864,717,10,10);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_ingredients`
--

DROP TABLE IF EXISTS `recipe_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_ingredients` (
  `recipe_ingredient_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `ingredient_ch` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity_ch` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ingredient_en` varchar(255) DEFAULT NULL,
  `quantity_en` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_ingredient_id`),
  KEY `fk_recipe_ingredients_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_recipe_ingredients_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredients`
--

LOCK TABLES `recipe_ingredients` WRITE;
/*!40000 ALTER TABLE `recipe_ingredients` DISABLE KEYS */;
INSERT INTO `recipe_ingredients` VALUES (1,1,'豬 肉','500 克','Pork','500 g',1),(2,1,'紅 蘋 果','兩 個','Red apples','2',2),(3,1,'海 底 椰 ','250 克 ','Sea coconut','250 g',3),(4,1,'蜜 棗','四 - 六 粒','Candied jujube','4 - 6 pieces',4),(5,1,'南北杏','少 許','Apricot kernel','some',5),(6,2,'蓮藕','一大節 或約170-200 克','Lotus root','one large section, about 170-200g',1),(7,2,'粟米','1 條','Corn','1',2),(8,2,'紅蘿蔔','2-3 條','Carrots','2-3',3),(9,2,'腰果','150 克','Cashew nuts','150g',4),(10,2,'南北杏','30 克','apricot kernel','30g',5),(11,2,'薑','幾片','ginger','a few slices',6),(12,3,'花膠','1 - 2 個','Fish maw','1 - 2 ',1),(13,3,'瑤柱','4 粒','Dried scallops','4',2),(14,3,'螺頭','2 隻','Sea conch','2',3),(15,3,'金華火腿','100 克','Chinese ham','100g',4),(16,3,'豬肉','200 克','Pork','200g',5),(17,3,'圓肉','9-10粒','Dried longans','9-10',6),(18,3,'杞子','適量','Goji berries','a handful',7),(19,3,'淮山','幾片','Dried Chinese yam','a few slices',8),(20,4,'節瓜','3 條','Hairy gourd','3',1),(21,4,'瑤柱','4 粒','Dried scallops','4',2),(22,4,'豬骨','500 克','Pork bones','500g',3),(23,4,'紅棗','1 杯','Dates','1 cup',4),(24,4,'南杏','1/3 杯','Apricot kernel','1/3 cup',5),(25,5,'蟲草花','10 克','Cordyceps flower','10g',1),(26,5,'乾淮山','10 克','Dried Chinese yam','10g',2),(27,5,'雞','1 隻','Chicken','1',3),(28,5,'杞子','適量','Goji berry','a handful',4),(29,5,'薑','20 克','Ginger','20g',5),(30,6,'鰂魚','1 條','Tilapia','1',1),(31,6,'津白','1/4 棵','Chinese cabbage','1/4  head',2),(32,6,'紅棗','10 粒','Dates','10',3),(33,6,'薑','幾片','Ginger','a few slices',4),(34,6,'葱粒','適量','Chopped green onions','a handful',5),(35,7,'白背黑木耳','30 克','White-backed black fungus','30g',1),(36,7,'紅棗','8 粒','Dates','8',2),(37,7,'薑','幾片','Ginger','a few slices',3),(38,7,'豬肉','250 克','Pork','250 g',4),(39,8,'黑豆','150 克','Black beans','150 g',1),(40,8,'紅棗','12 粒','Dates','12',2),(41,8,'杞子','5 克','Goji berry','5 g',3),(42,9,'響螺乾','2 隻','Dried sea conch','2',1),(43,9,'鷄脚','250 克','Chicken feet','250 g',2),(44,9,'冬瓜','500 克 ','Winter melon','500 g',3),(45,9,'陳皮','1 - 2 片','Mandarin peel','1-2 slices',4),(46,9,'薑','幾片','Ginger','a few slices',5),(47,10,'木瓜 ','1 個','Papaya','1',1),(48,10,'排骨','400 克','Pork short ribs','400 g',2),(49,10,'雪耳 ','20 克','Snow fungus','20 g',3),(50,10,'南北杏','30 克','Apricot kernel','30 g',4),(51,10,'蜜棗 ','1-2 粒','Candied jujube','1-2',5);
/*!40000 ALTER TABLE `recipe_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_main`
--

DROP TABLE IF EXISTS `recipe_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_main` (
  `recipe_main_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_main_id`),
  KEY `main_id` (`main_id`),
  KEY `fk_recipe_main_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_recipe_main_main_id` FOREIGN KEY (`main_id`) REFERENCES `main` (`main_id`),
  CONSTRAINT `fk_recipe_main_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_main`
--

LOCK TABLES `recipe_main` WRITE;
/*!40000 ALTER TABLE `recipe_main` DISABLE KEYS */;
INSERT INTO `recipe_main` VALUES (1,1,1),(2,2,5),(3,3,3),(4,4,4),(5,5,2),(6,6,3),(7,7,2),(8,8,3),(9,9,1),(10,10,1);
/*!40000 ALTER TABLE `recipe_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_season`
--

DROP TABLE IF EXISTS `recipe_season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_season` (
  `recipe_season_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_season_id`),
  KEY `season_id` (`season_id`),
  KEY `fk_recipe_season_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_recipe_season_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
  CONSTRAINT `fk_recipe_season_season_id` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_season`
--

LOCK TABLES `recipe_season` WRITE;
/*!40000 ALTER TABLE `recipe_season` DISABLE KEYS */;
INSERT INTO `recipe_season` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,2),(7,7,4),(8,8,1),(9,9,1),(10,10,2);
/*!40000 ALTER TABLE `recipe_season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_steps`
--

DROP TABLE IF EXISTS `recipe_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_steps` (
  `recipe_step_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `step_ch` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `step_en` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`recipe_step_id`),
  KEY `fk_recipe_steps_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_recipe_steps_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_steps`
--

LOCK TABLES `recipe_steps` WRITE;
/*!40000 ALTER TABLE `recipe_steps` DISABLE KEYS */;
INSERT INTO `recipe_steps` VALUES (1,1,'豬肉洗乾淨 ，出水備用；','Wash the pork and blanch.',1),(2,1,'蘋果洗乾淨 、 去皮去心.','Clean, peel and core the apples.',2),(3,1,'海底椰 、蜜棗 、南北杏洗乾淨.','Clean the sea coconut, candied jujube, apricot kernels and set aside.',3),(4,1,'將所有材料放入己煲滾的水中煲十分鐘後 ，改用慢火煲約3小時 ，加鹽調味 ，即可飲用.','Bring a pot of water to a boil, add all the ingredients and cook on high heat for 10 mins, then lower the heat and cook for another 3 hours. Season with salt and enjoy!',4),(5,2,'將腰果浸半小時備用.','Wash and soak cashew nuts for 30 minutes.',1),(6,2,'洗乾净其餘材料.','Wash the rest of the ingredients.',2),(7,2,'煲滾水後，放進所有材料，水再滾後轉中火再煲1小時. 加鹽調味即成.','Bring a pot of water to a boil and add all the ingredients. Turn the heat down to simmer for 1 hour after it comes to a boil again. Season to taste',3),(8,3,'花膠先浸發, 然後切成小片.','Soak and prepare the fish maw. Then cut into smaller pieces. ',1),(9,3,'瑤柱用清水洗淨,浸半日至軟.','Wash and soak dried scallops at least 6-8 hours till soft.',2),(10,3,'螺頭刷洗淨，金華火腿、螺頭、豬肉眼加薑片及蔥氽水.','Clean the sea conch with a brush. Add sea conch, Chinese ham, pork with scallions & ginger in a pot of water to blanch.',3),(11,3,'圓肉、杞子、淮山洗淨.','Rinse the dried longans, goji berries and dried Chinese yam.',4),(12,3,'所有材料放入燉盅 (除花膠)，加蓋加熱水至9成滿坐水燉，大火燉10分鐘，轉中小火燉2小時，放入花膠再燉1小時，加鹽即可.','Put everything except fish maw into a double steamer, add hot water till 90% full, double steam in high heat for 10 mins, then for 2 hours in medium heat. Add fish maw and double steam for another hour. Season with salt and serve.',5),(13,4,'節瓜去皮去子切件.','Peel the hairy gourd, remove seeds and cut into bite-size chunks ',1),(14,4,'瑤柱用清水洗淨,浸半日至軟.','Wash and soak dried scallops at least 6-8 hours till soft.',2),(15,4,'豬骨洗乾淨 ，出水備用；','Wash the pork bones and blanch.',3),(16,4,'紅棗 、南杏洗乾淨.','Clean the date and apricot kernel, then set aside.',4),(17,4,'將所有材料放入己煲滾的水中煲十分鐘後 ，改用慢火煲約45 分鐘，加鹽調味 ，即可飲用.','Bring a pot of water to a boil, add all the ingredients and cook on high heat for 10 mins, then lower the heat and cook for another 45 mins. Season with salt and enjoy!',5),(18,5,'雞洗淨切件，汆水後撈出瀝乾備用。','Wash the chicken, cut into bigger pieces and blanch.',1),(19,5,'蟲草花浸水10分鐘後瀝乾備用；','Soak Cordyceps flower for 10 mins and drain.',2),(20,5,'杞子洗淨瀝乾備用；薑去皮切片。','Rinse Goji berry; peel ginger and cut into slices.',3),(21,5,'燒熱鍋加少許油，炒香薑片，加入雞件翻炒至金黃色。','Heat some oil in the pot, add ginger and stir fry for a few minutes, add the chicken and pan fry till golden brown',4),(22,5,'加入淮山、蟲草花及足夠份量的水.','Add Chinese yam, Cordyceps flower and enough water to cover.',5),(23,5,'用大火煮滾，然後轉小火，蓋上鍋蓋煮2小時.','Bring the pot to a boil on high heat, then simmer for 2 hours.',6),(24,5,'加入杞子再煮15分鐘。加鹽調味即成.','Add Goji berry and simmer for another 15 minutes. Salt to taste.',7),(25,6,'鰂魚洗淨用鹽醃魚身30分鐘.','Clean the fish and rub it with salt, set aside for 30 mins.',1),(26,6,'燒紅鑊，下油炒香薑片,加入魚將兩邊煎至金黃色.','Heat some oil in the pot, stir fry ginger for a few minutes, add the fish and fry till golden brown on both sides.',2),(27,6,'加入滾水，紅棗，用慢火煎湯約20分鐘.','Add hot boiling water and the dates, simmer for 20 mins.',3),(28,6,'隔去魚骨後，放入津白一起煮10分鐘，加少許鹽調味和葱粒，即成.','Remove the fish, add Chinese cabbage and simmer for another 10 mins. Salt to taste.',4),(29,7,'白背黑木耳熱水浸泡15分鐘洗淨.','Clean the black fungus and soak in hot water for 15 mins.',1),(30,7,'豬肉洗乾淨 ，出水備用.','Wash the pork and blanch.',2),(31,7,'薑去皮, 紅棗洗淨去核','Peel the ginger, wash and core the dates. ',3),(32,7,'煲內加入材料加水(約2公升)，滾起轉小火煲1.5小時即可','Put all ingredients and water(about 2L) and bring to a boil, simmer for 1.5 hours and enjoy!',4),(33,8,'黑豆,紅棗,杞子洗淨瀝乾備用','Rinse all the ingredients.',1),(34,8,'煲內加入材料加水，滾起轉小火煲至黑豆熟爛即可.','Put all ingredients and water in a pot, bring to a boil in high heat and simmer till the beans are soft. Season to taste.',2),(35,9,'響螺乾浸洗.','Soak dried sea conch for half an hour.',1),(36,9,'陳皮浸洗.','Soak mandarin peel for 15 mins and .',2),(37,9,'冬瓜連皮洗淨,切塊.','Wash winter melon and cut into bigger chunks with skin on.',3),(38,9,'將全部材料放入煲內,用1.5公升水煮個半小時即成','Put all ingredients and water(about 1.5L) and bring to a boil, simmer for 1.5 hours and enjoy!',5),(39,9,'鷄脚洗乾淨 ，出水備用；','Clean chicken feet and blanch.',4),(40,10,'木瓜去皮去籽後切件.','Wash/ peel the papaya, remove seeds and cut into chunks.',1),(41,10,'雪耳浸水至軟身,瀝乾水份後切件備用.','Soak snow fungus till soft, then drain.',2),(42,10,'排骨汆水10分鐘,  瀝乾水份備用.','Blanch the short ribs for 10 mins, wash and drain',3),(43,10,'湯鍋加入1公斤水，加入排骨、雪耳、南北杏及蜜棗，煮至水滾後用中火煲1小時.','Put all ingredients except papaya into a pot with about 1L water, bring to a boil and then turn down heat to simmer for about an hour.',4),(44,10,'加入木瓜，再煲30-40分鐘即可.','Add papaya and simmer for another 30-40 mins. Add salt to season.',5);
/*!40000 ALTER TABLE `recipe_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `season_id` int(11) NOT NULL,
  `name_ch` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `icon_ch` varchar(1000) DEFAULT NULL,
  `icon_en` varchar(1000) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'冬','winter','test','test',4),(2,'夏','summer','test','test',2),(3,'秋','fall','test','test',3),(4,'春','spring','test','test',1);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 23:34:09
