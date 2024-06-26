-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bitrix
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_admin_notify` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb3_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_agent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8mb3_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `USER_ID` int DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `RETRY_COUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100)),
  KEY `ix_agent_act_period_next_exec` (`ACTIVE`,`IS_PERIOD`,`NEXT_EXEC`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2024-05-17 14:18:36','2024-05-17 14:19:36',NULL,60,'N',NULL,'N',0),(2,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(3,'main',100,'CSiteCheckerTest::CommonTest();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(4,'main',100,'CEvent::CleanUpAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(5,'main',100,'CUser::CleanUpHitAuthAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(6,'main',100,'CUndo::CleanUpOld();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(7,'main',100,'CUserCounter::DeleteOld();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(8,'main',100,'\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(9,'main',100,'CUser::AuthActionsCleanUpAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(10,'main',100,'CUser::CleanUpAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(11,'main',100,'CUser::DeactivateAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(12,'main',100,'CEventLog::CleanUpAgent();','Y','2024-05-17 10:37:56','2024-05-18 10:37:56',NULL,86400,'N',NULL,'N',0),(14,'clouds',100,'CCloudStorage::CleanUp();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(15,'landing',100,'Bitrix\\Landing\\Agent::clearRecycle();','Y','2024-05-17 12:38:14','2024-05-17 14:38:14',NULL,7200,'N',NULL,'N',0),(16,'landing',100,'Bitrix\\Landing\\Agent::clearFiles(30);','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(17,'landing',100,'Bitrix\\Landing\\Agent::sendRestStatistic();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(18,'landing',100,'Bitrix\\Landing\\Agent::clearTempFiles();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(21,'messageservice',100,'\\Bitrix\\MessageService\\Queue::cleanUpAgent();','Y','2024-05-17 10:37:57','2024-05-18 00:00:00',NULL,86400,'Y',NULL,'N',0),(22,'messageservice',100,'\\Bitrix\\MessageService\\IncomingMessage::cleanUpAgent();','Y','2024-05-17 10:37:57','2024-05-18 00:00:00',NULL,86400,'Y',NULL,'N',0),(23,'rest',100,'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(24,'rest',100,'\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(25,'rest',100,'\\Bitrix\\Rest\\LogTable::cleanUpAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(26,'rest',100,'\\Bitrix\\Rest\\Configuration\\Helper::sendStatisticAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(27,'rest',100,'\\Bitrix\\Rest\\UsageStatTable::sendAgent();','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(28,'rest',100,'\\Bitrix\\Rest\\UsageStatTable::cleanUpAgent();','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(29,'rest',100,'\\Bitrix\\Rest\\Marketplace\\Notification::checkAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(30,'rest',100,'\\Bitrix\\Rest\\Marketplace\\Immune::load();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(31,'rest',100,'\\Bitrix\\Rest\\Configuration\\Structure::clearContentAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(32,'rest',100,'\\Bitrix\\Rest\\Helper::recoveryAgents();','Y','2024-05-16 17:28:22','2024-05-23 17:28:22',NULL,604800,'N',NULL,'N',0),(33,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(34,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(35,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(36,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2024-05-16 17:28:22','2024-05-17 17:28:22',NULL,86400,'N',NULL,'N',0),(37,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2024-05-17 14:07:26','2024-05-17 15:07:26',NULL,3600,'N',NULL,'N',0),(38,'ui',100,'\\Bitrix\\UI\\FileUploader\\TempFileAgent::clearOldRecords();','Y','2024-05-17 14:07:26','2024-05-17 14:37:26',NULL,1800,'N',NULL,'N',0);
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_app_password` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_button_site`
--

DROP TABLE IF EXISTS `b_b24connector_button_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_b24connector_button_site` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BUTTON_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BUTTON_ID` (`BUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_button_site`
--

LOCK TABLES `b_b24connector_button_site` WRITE;
/*!40000 ALTER TABLE `b_b24connector_button_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_button_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_buttons`
--

DROP TABLE IF EXISTS `b_b24connector_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int NOT NULL,
  `APP_ID` int NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_buttons`
--

LOCK TABLES `b_b24connector_buttons` WRITE;
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SORT` int NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1715932032'),(4,'monitoring_expire_time',0,'0','1715946433');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_cache_tag` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (2,NULL,NULL,'0:1715939182','**'),(17,'s1','/e25','/s1/bitrix/news.list/e25','iblock_id_1');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_checklist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PICTURE` int DEFAULT NULL,
  `TOTAL` int DEFAULT NULL,
  `SUCCESS` int DEFAULT NULL,
  `FAILED` int DEFAULT NULL,
  `PENDING` int DEFAULT NULL,
  `SKIP` int DEFAULT NULL,
  `STATE` longtext COLLATE utf8mb3_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8mb3_unicode_ci,
  `REPORT` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_copy_queue`
--

DROP TABLE IF EXISTS `b_clouds_copy_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_copy_queue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `OP` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_SIZE` int NOT NULL DEFAULT '-1',
  `FILE_POS` int NOT NULL DEFAULT '0',
  `FAIL_COUNTER` int NOT NULL DEFAULT '0',
  `STATUS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_copy_queue`
--

LOCK TABLES `b_clouds_copy_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_delete_queue`
--

DROP TABLE IF EXISTS `b_clouds_delete_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_delete_queue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_delete_queue`
--

LOCK TABLES `b_clouds_delete_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `SORT` int DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int DEFAULT '0',
  `FILE_SIZE` double DEFAULT '0',
  `LAST_FILE_ID` int DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  `FILE_RULES` text COLLATE utf8mb3_unicode_ci,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_hash`
--

DROP TABLE IF EXISTS `b_clouds_file_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_file_hash` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BUCKET_ID` int NOT NULL,
  `FILE_PATH` varchar(760) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_SIZE` bigint DEFAULT NULL,
  `FILE_MTIME` datetime DEFAULT NULL,
  `FILE_HASH` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_file_hash` (`BUCKET_ID`,`FILE_PATH`(190))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_hash`
--

LOCK TABLES `b_clouds_file_hash` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `ERROR_CODE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int DEFAULT NULL,
  `PARAMS` text COLLATE utf8mb3_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_save`
--

DROP TABLE IF EXISTS `b_clouds_file_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_file_save` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_save`
--

LOCK TABLES `b_clouds_file_save` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_SIZE` bigint DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int NOT NULL,
  `PART_SIZE` int NOT NULL,
  `PART_NO` int NOT NULL,
  `PART_FAIL_COUNTER` int NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_component_params` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `START_CHAR` int NOT NULL,
  `END_CHAR` int NOT NULL,
  `PARAMETERS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
INSERT INTO `b_component_params` VALUES (10,'s1','bitrix:news.list','index','/index.php','N',NULL,13312,15034,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"N\";s:12:\"DISPLAY_NAME\";s:1:\"N\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:3:{i:0;s:4:\"NAME\";i:1;s:15:\"PREVIEW_PICTURE\";i:2;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"1\";s:11:\"IBLOCK_TYPE\";s:5:\"index\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"N\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:4:{i:0;s:3:\"fio\";i:1;s:4:\"post\";i:2;s:6:\"review\";i:3;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"N\";s:17:\"SET_META_KEYWORDS\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:4:\"SORT\";s:8:\"SORT_BY2\";s:11:\"TIMESTAMP_X\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:4:\"DESC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:5:\"index\";}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_log`
--

DROP TABLE IF EXISTS `b_composite_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_composite_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8mb3_unicode_ci,
  `AJAX` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int NOT NULL DEFAULT '0',
  `PAGE_ID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_log`
--

LOCK TABLES `b_composite_log` WRITE;
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_page`
--

DROP TABLE IF EXISTS `b_composite_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_composite_page` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int NOT NULL DEFAULT '0',
  `REWRITES` int NOT NULL DEFAULT '0',
  `SIZE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_page`
--

LOCK TABLES `b_composite_page` WRITE;
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_agreement`
--

DROP TABLE IF EXISTS `b_consent_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_consent_agreement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8mb3_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USE_URL` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IS_AGREEMENT_TEXT_HTML` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_agreement`
--

LOCK TABLES `b_consent_agreement` WRITE;
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_field`
--

DROP TABLE IF EXISTS `b_consent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_consent_field` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int NOT NULL,
  `CODE` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_field`
--

LOCK TABLES `b_consent_field` WRITE;
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent`
--

DROP TABLE IF EXISTS `b_consent_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_consent_user_consent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int NOT NULL,
  `USER_ID` int DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`),
  KEY `IX_CONSENT_USER_CONSENT_USER_ORIGIN` (`USER_ID`,`ORIGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent`
--

LOCK TABLES `b_consent_user_consent` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent_item`
--

DROP TABLE IF EXISTS `b_consent_user_consent_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_consent_user_consent_item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_CONSENT_ID` int NOT NULL,
  `VALUE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_ITEM_AG_ID` (`USER_CONSENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent_item`
--

LOCK TABLES `b_consent_user_consent_item` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_culture` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WEEK_START` int DEFAULT '1',
  `CHARSET` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'F j',
  `DAY_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'M j',
  `DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'l, F j',
  `SHORT_DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'D, F j',
  `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'D, M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint DEFAULT '2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y','d.m.Y','j M Y','j F Y','l, j F Y','j F','j M','l, j F','D, j F','D, j M','H:i','H:i:s','am','pm',' ',',',2),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y','n/j/Y','M j, Y','F j, Y','l, F j, Y','F j','M j','l, F j','D, F j','D, M j','g:i a','g:i:s a','am','pm',',','.',2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_entity_usage`
--

DROP TABLE IF EXISTS `b_entity_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_entity_usage` (
  `USER_ID` int NOT NULL,
  `CONTEXT` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_ID_INT` int NOT NULL DEFAULT '0',
  `PREFIX` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `LAST_USE_DATE` datetime NOT NULL,
  PRIMARY KEY (`USER_ID`,`CONTEXT`,`ENTITY_ID`,`ITEM_ID`),
  KEY `IX_ENTITY_USAGE_ITEM_ID_INT` (`ITEM_ID_INT`),
  KEY `IX_ENTITY_USAGE_LAST_USE_DATE` (`LAST_USE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_entity_usage`
--

LOCK TABLES `b_entity_usage` WRITE;
/*!40000 ALTER TABLE `b_entity_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_entity_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE_ID` int DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8mb3_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int NOT NULL,
  `FILE_ID` int NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SEVERITY` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8mb3_unicode_ci,
  `REQUEST_URI` text COLLATE utf8mb3_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `GUEST_ID` int DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
INSERT INTO `b_event_log` VALUES (1,'2024-05-17 07:37:56','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/','s1',NULL,NULL,''),(2,'2024-05-17 09:02:50','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(3,'2024-05-17 09:03:21','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(4,'2024-05-17 09:06:12','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(5,'2024-05-17 09:06:39','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_message` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8mb3_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8mb3_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8mb3_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8mb3_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2024-05-16 14:25:49','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(2,'2024-05-16 14:25:50','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(3,'2024-05-16 14:25:50','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(4,'2024-05-16 14:25:50','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(5,'2024-05-16 14:25:50','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(6,'2024-05-16 14:25:50','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(7,'2024-05-16 14:25:50','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(8,'2024-05-16 14:25:50','MAIN_MAIL_CONFIRM_CODE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#MESSAGE_SUBJECT#','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_join',NULL,NULL),(9,'2024-05-16 14:25:50','EVENT_LOG_NOTIFICATION','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','Оповещение журнала событий: #NAME#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: #AUDIT_TYPE_ID#\nОбъект: #ITEM_ID#\nПользователь: #USER_ID# \nIP-адрес: #REMOTE_ADDR#\nБраузер: #USER_AGENT#\nСтраница: #REQUEST_URI# \n\nКоличество записей: #EVENT_COUNT# \n\n#ADDITIONAL_TEXT#\n\nПерейти в журнал событий:\nhttp://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#','Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: <?=$arParams[\"AUDIT_TYPE_ID\"];?>\n\nОбъект: <?=$arParams[\"ITEM_ID\"];?>\n\nПользователь: <?=$arParams[\"USER_ID\"];?> \nIP-адрес: <?=$arParams[\"REMOTE_ADDR\"];?>\n\nБраузер: <?=$arParams[\"USER_AGENT\"];?>\n\nСтраница: <?=$arParams[\"REQUEST_URI\"];?> \n\nКоличество записей: <?=$arParams[\"EVENT_COUNT\"];?> \n\n<?=$arParams[\"ADDITIONAL_TEXT\"];?>\n\n\nПерейти в журнал событий:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=<?=$arParams[\"AUDIT_TYPE_ID\"];?>','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(10,'2024-05-16 14:25:50','USER_CODE_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос кода авторизации','Используйте для авторизации код:\n\n#CHECKWORD#\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nЛогин: #LOGIN#\n\nСообщение создано автоматически.','Используйте для авторизации код:\n\n<?=$arParams[\"CHECKWORD\"];?>\n\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nЛогин: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение создано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(11,'2024-05-16 14:25:50','NEW_DEVICE_LOGIN','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','Вход с нового устройства','Здравствуйте, #NAME#,\n\nНовое устройство авторизовалось под вашим логином #LOGIN#.\n \nУстройство: #DEVICE# \nБраузер: #BROWSER#\nПлатформа: #PLATFORM#\nМестоположение: #LOCATION# (может быть неточным)\nДата: #DATE#\n\nЕсли вы не знаете, кто это был, рекомендуем немедленно сменить пароль.\n','Здравствуйте, <?=$arParams[\"NAME\"];?>,\n\nНовое устройство авторизовалось под вашим логином <?=$arParams[\"LOGIN\"];?>.\n \nУстройство: <?=$arParams[\"DEVICE\"];?> \nБраузер: <?=$arParams[\"BROWSER\"];?>\n\nПлатформа: <?=$arParams[\"PLATFORM\"];?>\n\nМестоположение: <?=$arParams[\"LOCATION\"];?> (может быть неточным)\nДата: <?=$arParams[\"DATE\"];?>\n\n\nЕсли вы не знаете, кто это был, рекомендуем немедленно сменить пароль.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru');
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int NOT NULL,
  `FILE_ID` int NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1'),(8,'s1'),(9,'s1'),(10,'s1'),(11,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_event_type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `SORT` int NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1,'email'),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2,'email'),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3,'email'),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4,'email'),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5,'email'),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6,'email'),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7,'email'),(8,'ru','MAIN_MAIL_CONFIRM_CODE','Подтверждение email-адреса отправителя','\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения',8,'email'),(9,'ru','EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#EMAIL# - Email получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',9,'email'),(10,'ru','USER_CODE_REQUEST','Запрос кода авторизации','#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#LOGIN# - Логин\n#CHECKWORD# - Код для авторизации\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - Email пользователя\n',10,'email'),(11,'ru','NEW_DEVICE_LOGIN','Вход с нового устройства','#USER_ID# - ID пользователя\n#EMAIL# - Email пользователя\n#LOGIN# - Логин пользователя\n#NAME# - Имя пользователя\n#LAST_NAME# - Фамилия пользователя\n#DEVICE# - Устройство\n#BROWSER# - Браузер\n#PLATFORM# - Платформа\n#USER_AGENT# - User agent\n#IP# - IP-адрес\n#DATE# - Дата\n#COUNTRY# - Страна\n#REGION# - Регион\n#CITY# - Город\n#LOCATION# - Объединенные город, регион, страна\n',11,'email'),(12,'ru','SMS_USER_CONFIRM_NUMBER','Подтверждение номера телефона по СМС','#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n',100,'sms'),(13,'ru','SMS_USER_RESTORE_PASSWORD','Восстановление пароля через СМС','#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n',100,'sms'),(14,'ru','SMS_EVENT_LOG_NOTIFICATION','Оповещение журнала событий','#PHONE_NUMBER# - Номер телефона получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей',100,'sms'),(15,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1,'email'),(16,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2,'email'),(17,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3,'email'),(18,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4,'email'),(19,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5,'email'),(20,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6,'email'),(21,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7,'email'),(22,'en','MAIN_MAIL_CONFIRM_CODE','Confirm sender\'s email address','\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code',8,'email'),(23,'en','EVENT_LOG_NOTIFICATION','Event log notification','#EMAIL# - Recipient email\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',9,'email'),(24,'en','USER_CODE_REQUEST','Request for verification code','#USER_ID# - user ID\n#STATUS# - Login status\n#LOGIN# - Login\n#CHECKWORD# - Verification code\n#NAME# - First name\n#LAST_NAME# - Last name\n#EMAIL# - User email\n',10,'email'),(25,'en','NEW_DEVICE_LOGIN','New device signed in','#USER_ID# - User ID\n#EMAIL# - User email:\n#LOGIN# - User login\n#NAME# - User first name\n#LAST_NAME# - User last name\n#DEVICE# - Device\n#BROWSER# - Browser\n#PLATFORM# - Platform\n#USER_AGENT# - User agent\n#IP# - IP address\n#DATE# - Date\n#COUNTRY# - Country\n#REGION# - Region\n#CITY# - City\n#LOCATION# - Full location (city, region, country)\n',11,'email'),(26,'en','SMS_USER_CONFIRM_NUMBER','Verify phone number using SMS','#USER_PHONE# - phone number\n#CODE# - confirmation code',100,'sms'),(27,'en','SMS_USER_RESTORE_PASSWORD','Recover password using SMS','#USER_PHONE# - phone number\n#CODE# - recovery confirmation code',100,'sms'),(28,'en','SMS_EVENT_LOG_NOTIFICATION','Event log notification','#PHONE_NUMBER# - Recipient phone number\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events',100,'sms');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_favorite` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int NOT NULL DEFAULT '100',
  `MODIFIED_BY` int DEFAULT NULL,
  `CREATED_BY` int DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8mb3_unicode_ci,
  `COMMENTS` text COLLATE utf8mb3_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `CODE_ID` int DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `HEIGHT` int DEFAULT NULL,
  `WIDTH` int DEFAULT NULL,
  `FILE_SIZE` bigint DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
INSERT INTO `b_file` VALUES (1,'2024-05-17 08:39:01','iblock',100,100,16391,'image/png','iblock/dea','wsc231ibsilw3xk1uy23cy7at57qdq0a.png','kirill.png','',NULL,'2afc5852f7705671c18fa068d93640b7'),(2,'2024-05-17 08:39:33','iblock',193,192,44326,'image/png','iblock/6d1','wp5tjicvjuykn4ilv33m34d777c3296a.png','guido_horing.png','',NULL,'b9969637d2c65e2d30fb7f4d485fa6e0'),(3,'2024-05-17 08:40:17','iblock',100,100,18329,'image/png','iblock/a13','e22c6tzvh7mmyqdvueh99x0slx7ooai3.png','alina.png','',NULL,'51d2d04527ac17626b6062528d27f4b9');
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_duplicate`
--

DROP TABLE IF EXISTS `b_file_duplicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file_duplicate` (
  `DUPLICATE_ID` int NOT NULL,
  `ORIGINAL_ID` int NOT NULL,
  `COUNTER` int NOT NULL DEFAULT '1',
  `ORIGINAL_DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`DUPLICATE_ID`,`ORIGINAL_ID`),
  KEY `ix_file_duplicate_duplicate` (`ORIGINAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_duplicate`
--

LOCK TABLES `b_file_duplicate` WRITE;
/*!40000 ALTER TABLE `b_file_duplicate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_duplicate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_hash`
--

DROP TABLE IF EXISTS `b_file_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file_hash` (
  `FILE_ID` int NOT NULL,
  `FILE_SIZE` bigint NOT NULL,
  `FILE_HASH` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `ix_file_hash_size_hash` (`FILE_SIZE`,`FILE_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_hash`
--

LOCK TABLES `b_file_hash` WRITE;
/*!40000 ALTER TABLE `b_file_hash` DISABLE KEYS */;
INSERT INTO `b_file_hash` VALUES (1,16391,'a2ce4627f7250ed145c315e4d1336669'),(3,18329,'6ffd21b4fc000a66fe6253d42d4a8f20'),(2,44326,'b0c11c1c2193da65a0b601789a239779');
/*!40000 ALTER TABLE `b_file_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_preview`
--

DROP TABLE IF EXISTS `b_file_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file_preview` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FILE_ID` int NOT NULL,
  `PREVIEW_ID` int DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_preview`
--

LOCK TABLES `b_file_preview` WRITE;
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file_search` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `F_PATH` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `B_DIR` int NOT NULL DEFAULT '0',
  `F_SIZE` int NOT NULL DEFAULT '0',
  `F_TIME` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_version`
--

DROP TABLE IF EXISTS `b_file_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_file_version` (
  `ORIGINAL_ID` int NOT NULL,
  `VERSION_ID` int NOT NULL,
  `META` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ORIGINAL_ID`),
  UNIQUE KEY `ux_file_version_version` (`VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_version`
--

LOCK TABLES `b_file_version` WRITE;
/*!40000 ALTER TABLE `b_file_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_filters` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int NOT NULL,
  `CODE` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE_USER_ID` int DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoip_handlers`
--

DROP TABLE IF EXISTS `b_geoip_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_geoip_handlers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SORT` int NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoip_handlers`
--

LOCK TABLES `b_geoip_handlers` WRITE;
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
INSERT INTO `b_geoip_handlers` VALUES (1,100,'Y','\\Bitrix\\Main\\Service\\GeoIp\\GeoIP2',NULL),(2,110,'N','\\Bitrix\\Main\\Service\\GeoIp\\MaxMind',NULL),(3,120,'N','\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo',NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoname`
--

DROP TABLE IF EXISTS `b_geoname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_geoname` (
  `ID` bigint unsigned NOT NULL,
  `LANGUAGE_CODE` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(600) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`,`LANGUAGE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoname`
--

LOCK TABLES `b_geoname` WRITE;
/*!40000 ALTER TABLE `b_geoname` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_geoname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8mb3_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,NULL,'Y',1,'N','Y','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,NULL,'Y',2,'Y','Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,NULL,'Y',3,'N','Y','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,NULL,'Y',4,'N','Y','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int NOT NULL,
  `TASK_ID` int NOT NULL,
  `COLLECTION_ID` int NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int NOT NULL,
  `TASK_ID` int NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_lang`
--

DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int unsigned NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_lang`
--

LOCK TABLES `b_hlblock_entity_lang` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_rights`
--

DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int unsigned NOT NULL,
  `TASK_ID` int unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_rights`
--

LOCK TABLES `b_hlblock_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_hot_keys` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE_ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0),(13,'Ctrl+Alt+85',139,1),(14,'Ctrl+Alt+80',17,1),(15,'Ctrl+Alt+70',120,1),(16,'Ctrl+Alt+68',117,1),(17,'Ctrl+Alt+81',3,1),(18,'Ctrl+Alt+75',106,1),(19,'Ctrl+Alt+79',133,1),(20,'Ctrl+Alt+70',121,1),(21,'Ctrl+Alt+69',118,1),(22,'Ctrl+Shift+83',87,1),(23,'Ctrl+Shift+88',88,1),(24,'Ctrl+Shift+76',89,1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `API_CODE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REST_ON` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PICTURE` int DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int DEFAULT NULL,
  `RSS_FILE_DAYS` int DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VERSION` int NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_api_code` (`API_CODE`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
INSERT INTO `b_iblock` VALUES (1,'2024-05-17 08:32:18','index','s1','slider',NULL,'N','Слайдер','Y',500,'#SITE_DIR#/index/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/index/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/index/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,NULL,'Y','Y','N','N','L','','S','N','N',1,0,NULL,'','','Разделы','Раздел','Отзывы','Отзыв');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_element` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int DEFAULT NULL,
  `IBLOCK_ID` int NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8mb3_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8mb3_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8mb3_unicode_ci,
  `WF_STATUS_ID` int DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8mb3_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int DEFAULT NULL,
  `SHOW_COUNTER` int DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
INSERT INTO `b_iblock_element` VALUES (1,'2024-05-17 11:39:01',1,'2024-05-17 11:39:01',1,1,NULL,'Y',NULL,NULL,500,'Our income from partnering with iSpring has been increasing every year!',1,'','text',NULL,'','text','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','1','','','0',NULL,NULL,NULL),(2,'2024-05-17 11:39:33',1,'2024-05-17 11:39:33',1,1,NULL,'Y',NULL,NULL,500,'Our income from partnering with iSpring has been increasing every year!',2,'','text',NULL,'','text','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','2','','','0',NULL,NULL,NULL),(3,'2024-05-17 11:40:17',1,'2024-05-17 11:40:17',1,1,NULL,'Y',NULL,NULL,500,'Our income from partnering with iSpring has been increasing every year!',3,'','text',NULL,'','text','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','3','','','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int NOT NULL,
  `SECTION_ID` int NOT NULL,
  `ELEMENT_ID` int NOT NULL,
  `IPROP_ID` int NOT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int NOT NULL,
  `IBLOCK_ELEMENT_ID` int NOT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_val` (`VALUE`(50),`IBLOCK_PROPERTY_ID`,`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
INSERT INTO `b_iblock_element_property` VALUES (1,1,1,'Kirill Timofeev','text',NULL,0.0000,''),(2,2,1,'Founder and director of lern.link','text',NULL,0.0000,''),(3,3,1,'Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.','text',NULL,0.0000,''),(4,1,2,'Guido Hornig','text',NULL,0.0000,''),(5,2,2,'Founder and director of lern.link','text',NULL,0.0000,''),(6,3,2,'Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.','text',NULL,0.0000,''),(7,1,3,'Alina Bogdanova','text',NULL,0.0000,''),(8,2,3,'Founder and director of lern.link','text',NULL,0.0000,''),(9,3,3,'Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.','text',NULL,0.0000,'');
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int NOT NULL,
  `SECTION_ID` int NOT NULL,
  `ELEMENT_ID` int NOT NULL,
  `RIGHT_ID` int NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
INSERT INTO `b_iblock_fields` VALUES (1,'ACTIVE','Y','Y'),(1,'ACTIVE_FROM','N',''),(1,'ACTIVE_TO','N',''),(1,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(1,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(1,'DETAIL_TEXT','N',''),(1,'DETAIL_TEXT_TYPE','Y','text'),(1,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(1,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(1,'LOG_ELEMENT_ADD','N',NULL),(1,'LOG_ELEMENT_DELETE','N',NULL),(1,'LOG_ELEMENT_EDIT','N',NULL),(1,'LOG_SECTION_ADD','N',NULL),(1,'LOG_SECTION_DELETE','N',NULL),(1,'LOG_SECTION_EDIT','N',NULL),(1,'NAME','Y',''),(1,'PREVIEW_PICTURE','Y','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(1,'PREVIEW_TEXT','N',''),(1,'PREVIEW_TEXT_TYPE','Y','text'),(1,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','N'),(1,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(1,'SECTION_DESCRIPTION','N',''),(1,'SECTION_DESCRIPTION_TYPE','Y','text'),(1,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(1,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";}'),(1,'SECTION_NAME','Y',''),(1,'SECTION_PICTURE','N','a:20:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";s:0:\"\";s:11:\"FROM_DETAIL\";s:1:\"N\";s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";}'),(1,'SECTION_XML_ID','N',''),(1,'SORT','N','500'),(1,'TAGS','N',''),(1,'XML_ID','Y',''),(1,'XML_IMPORT_START_TIME','N',NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int NOT NULL,
  `GROUP_ID` int NOT NULL,
  `PERMISSION` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
INSERT INTO `b_iblock_group` VALUES (1,1,'X');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int NOT NULL,
  `IPROP_ID` int NOT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int NOT NULL,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `TEMPLATE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
INSERT INTO `b_iblock_messages` VALUES (1,'ELEMENT_ADD','Добавить отзыв'),(1,'ELEMENT_DELETE','Удалить отзыв'),(1,'ELEMENT_EDIT','Изменить отзыв'),(1,'ELEMENT_NAME','Отзыв'),(1,'ELEMENTS_NAME','Отзывы'),(1,'SECTION_ADD','Добавить раздел'),(1,'SECTION_DELETE','Удалить раздел'),(1,'SECTION_EDIT','Изменить раздел'),(1,'SECTION_NAME','Раздел'),(1,'SECTIONS_NAME','Разделы');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_property` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8mb3_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int NOT NULL DEFAULT '1',
  `COL_COUNT` int NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VERSION` int NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8mb3_unicode_ci,
  `HINT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
INSERT INTO `b_iblock_property` VALUES (1,'2024-05-17 09:46:17',1,'ФИО','Y',500,'fio','','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',1,NULL,'a:0:{}',''),(2,'2024-05-17 09:46:17',1,'Должность','Y',505,'post','','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',1,NULL,'a:0:{}',''),(3,'2024-05-17 09:46:17',1,'Отзыв','Y',510,'review','','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',1,NULL,'a:0:{}','');
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int NOT NULL,
  `VALUE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_feature`
--

DROP TABLE IF EXISTS `b_iblock_property_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_property_feature` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_feature`
--

LOCK TABLES `b_iblock_property_feature` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_right` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TASK_ID` int NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int NOT NULL,
  `NODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_section` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int DEFAULT NULL,
  `IBLOCK_ID` int NOT NULL,
  `IBLOCK_SECTION_ID` int DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PICTURE` int DEFAULT NULL,
  `LEFT_MARGIN` int DEFAULT NULL,
  `RIGHT_MARGIN` int DEFAULT NULL,
  `DEPTH_LEVEL` int DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8mb3_unicode_ci,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int DEFAULT NULL,
  `SOCNET_GROUP_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`),
  KEY `ix_iblock_section_left_margin2` (`IBLOCK_ID`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_right_margin2` (`IBLOCK_ID`,`RIGHT_MARGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int NOT NULL,
  `IBLOCK_ELEMENT_ID` int NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int NOT NULL,
  `SECTION_ID` int NOT NULL,
  `IPROP_ID` int NOT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int NOT NULL,
  `SECTION_ID` int NOT NULL,
  `PROPERTY_ID` int NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int NOT NULL,
  `SECTION_ID` int NOT NULL,
  `RIGHT_ID` int NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int NOT NULL,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SEQ_VALUE` int DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
INSERT INTO `b_iblock_site` VALUES (1,'s1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int NOT NULL DEFAULT '500',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('index','Y','','','N',500),('rest_entity','Y',NULL,NULL,'N',1000);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('rest_entity','ru','Хранилище данных для приложений','Разделы','Элементы'),('index','ru','Компании','',''),('index','en','Сompanies','','');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing`
--

DROP TABLE IF EXISTS `b_landing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SYS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `VIEWS` int NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TPL_ID` int DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SITE_ID` int NOT NULL,
  `SITEMAP` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8mb3_unicode_ci,
  `VERSION` int NOT NULL DEFAULT '1',
  `HISTORY_STEP` int NOT NULL DEFAULT '0',
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_CODE` (`CODE`),
  KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  KEY `IX_B_LAND_DELETED` (`DELETED`),
  KEY `IX_B_LAND_SYS` (`SYS`),
  KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  KEY `IX_B_LAND_SITE_ID` (`SITE_ID`),
  KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`),
  FULLTEXT KEY `IX_B_LANDING_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing`
--

LOCK TABLES `b_landing` WRITE;
/*!40000 ALTER TABLE `b_landing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_binding`
--

DROP TABLE IF EXISTS `b_landing_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_binding` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `BINDING_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `BINDING_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BINDING` (`BINDING_ID`,`BINDING_TYPE`),
  KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_B_BINDING_TYPE` (`BINDING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_binding`
--

LOCK TABLES `b_landing_binding` WRITE;
/*!40000 ALTER TABLE `b_landing_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_block`
--

DROP TABLE IF EXISTS `b_landing_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_block` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int DEFAULT NULL,
  `LID` int NOT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE_ORIGINAL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int DEFAULT '500',
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DESIGNED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext COLLATE utf8mb3_unicode_ci,
  `CONTENT` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8mb3_unicode_ci,
  `ASSETS` text COLLATE utf8mb3_unicode_ci,
  `FAVORITE_META` text COLLATE utf8mb3_unicode_ci,
  `HISTORY_STEP_DESIGNER` int NOT NULL DEFAULT '0',
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LID` (`LID`),
  KEY `IX_B_BLOCK_LID_PUBLIC` (`LID`,`PUBLIC`),
  KEY `IX_B_BLOCK_CODE` (`CODE`),
  KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`,`DATE_CREATE`),
  KEY `IX_B_BLOCK_DELETED` (`DELETED`),
  FULLTEXT KEY `IX_B_BLOCK_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_block`
--

LOCK TABLES `b_landing_block` WRITE;
/*!40000 ALTER TABLE `b_landing_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_block_last_used`
--

DROP TABLE IF EXISTS `b_landing_block_last_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_block_last_used` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_CREATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LU_USER` (`USER_ID`),
  KEY `IX_B_BLOCK_LU_CODE` (`CODE`),
  KEY `IX_B_BLOCK_LU_USER_CODE` (`USER_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_block_last_used`
--

LOCK TABLES `b_landing_block_last_used` WRITE;
/*!40000 ALTER TABLE `b_landing_block_last_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_block_last_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_chat`
--

DROP TABLE IF EXISTS `b_landing_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_chat` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CHAT_ID` int NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AVATAR` int DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHAT` (`CHAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_chat`
--

LOCK TABLES `b_landing_chat` WRITE;
/*!40000 ALTER TABLE `b_landing_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_chat_binding`
--

DROP TABLE IF EXISTS `b_landing_chat_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_chat_binding` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INTERNAL_CHAT_ID` int NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHAT` (`INTERNAL_CHAT_ID`),
  KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_chat_binding`
--

LOCK TABLES `b_landing_chat_binding` WRITE;
/*!40000 ALTER TABLE `b_landing_chat_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_chat_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_cookies_agreement`
--

DROP TABLE IF EXISTS `b_landing_cookies_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_cookies_agreement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` int NOT NULL,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE` (`SITE_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_cookies_agreement`
--

LOCK TABLES `b_landing_cookies_agreement` WRITE;
/*!40000 ALTER TABLE `b_landing_cookies_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_cookies_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_demo`
--

DROP TABLE IF EXISTS `b_landing_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_demo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8mb3_unicode_ci,
  `LANG` text COLLATE utf8mb3_unicode_ci,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_demo`
--

LOCK TABLES `b_landing_demo` WRITE;
/*!40000 ALTER TABLE `b_landing_demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_designer_repo`
--

DROP TABLE IF EXISTS `b_landing_designer_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_designer_repo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int DEFAULT '100',
  `HTML` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `MANIFEST` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_designer_repo`
--

LOCK TABLES `b_landing_designer_repo` WRITE;
/*!40000 ALTER TABLE `b_landing_designer_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_designer_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_domain`
--

DROP TABLE IF EXISTS `b_landing_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_domain` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PREV_DOMAIN` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PROVIDER` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FAIL_COUNT` int DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  KEY `IX_B_DOMAIN_PROVIDER` (`PROVIDER`),
  KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_domain`
--

LOCK TABLES `b_landing_domain` WRITE;
/*!40000 ALTER TABLE `b_landing_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_lock`
--

DROP TABLE IF EXISTS `b_landing_entity_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_entity_lock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LOCK_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_TYPE` (`LOCK_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_lock`
--

LOCK TABLES `b_landing_entity_lock` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_rights`
--

DROP TABLE IF EXISTS `b_landing_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_entity_rights` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TASK_ID` int NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ROLE_ID` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_rights`
--

LOCK TABLES `b_landing_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_file`
--

DROP TABLE IF EXISTS `b_landing_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_file` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_ID` int NOT NULL,
  `TEMP` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`),
  KEY `IX_TEMP` (`TEMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_file`
--

LOCK TABLES `b_landing_file` WRITE;
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_block`
--

DROP TABLE IF EXISTS `b_landing_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_filter_block` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int NOT NULL,
  `BLOCK_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_block`
--

LOCK TABLES `b_landing_filter_block` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_entity`
--

DROP TABLE IF EXISTS `b_landing_filter_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_filter_entity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SOURCE_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILTER_HASH` char(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILTER` text COLLATE utf8mb3_unicode_ci,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_entity`
--

LOCK TABLES `b_landing_filter_entity` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_folder`
--

DROP TABLE IF EXISTS `b_landing_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_folder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int DEFAULT NULL,
  `SITE_ID` int NOT NULL,
  `INDEX_ID` int DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FOLDER_SITE_ID` (`SITE_ID`),
  KEY `IX_B_FOLDER_ACTIVE` (`ACTIVE`),
  KEY `IX_B_FOLDER_DELETED` (`DELETED`),
  KEY `IX_B_FOLDER_PARENT_ID` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_folder`
--

LOCK TABLES `b_landing_folder` WRITE;
/*!40000 ALTER TABLE `b_landing_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_history`
--

DROP TABLE IF EXISTS `b_landing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'L',
  `ENTITY_ID` int NOT NULL,
  `ACTION` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTION_PARAMS` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `MULTIPLY_ID` int DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_HISTORY_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_history`
--

LOCK TABLES `b_landing_history` WRITE;
/*!40000 ALTER TABLE `b_landing_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_hook_data`
--

DROP TABLE IF EXISTS `b_landing_hook_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_hook_data` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8mb3_unicode_ci,
  `PUBLIC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `K_HOOK_CODE` (`HOOK`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_hook_data`
--

LOCK TABLES `b_landing_hook_data` WRITE;
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_placement`
--

DROP TABLE IF EXISTS `b_landing_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_placement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` int DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_placement`
--

LOCK TABLES `b_landing_placement` WRITE;
/*!40000 ALTER TABLE `b_landing_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_repo`
--

DROP TABLE IF EXISTS `b_landing_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_repo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8mb3_unicode_ci,
  `CONTENT` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_repo`
--

LOCK TABLES `b_landing_repo` WRITE;
/*!40000 ALTER TABLE `b_landing_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_role`
--

DROP TABLE IF EXISTS `b_landing_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACCESS_CODES` text COLLATE utf8mb3_unicode_ci,
  `ADDITIONAL_RIGHTS` text COLLATE utf8mb3_unicode_ci,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_B_ROLE_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_role`
--

LOCK TABLES `b_landing_role` WRITE;
/*!40000 ALTER TABLE `b_landing_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_site`
--

DROP TABLE IF EXISTS `b_landing_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_site` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DOMAIN_ID` int NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int DEFAULT NULL,
  `LANDING_ID_404` int DEFAULT NULL,
  `LANDING_ID_503` int DEFAULT NULL,
  `LANG` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SPECIAL` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `VERSION` int DEFAULT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE_CODE` (`CODE`),
  KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  KEY `IX_B_SITE_DELETED` (`DELETED`),
  KEY `IX_B_SITE_XML_ID` (`XML_ID`),
  KEY `IX_B_SITE_SPECIAL` (`SPECIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_site`
--

LOCK TABLES `b_landing_site` WRITE;
/*!40000 ALTER TABLE `b_landing_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_syspage`
--

DROP TABLE IF EXISTS `b_landing_syspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_syspage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` int NOT NULL,
  `TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LANDING_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_syspage`
--

LOCK TABLES `b_landing_syspage` WRITE;
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template`
--

DROP TABLE IF EXISTS `b_landing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_template` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SORT` int DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `AREA_COUNT` int NOT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template`
--

LOCK TABLES `b_landing_template` WRITE;
/*!40000 ALTER TABLE `b_landing_template` DISABLE KEYS */;
INSERT INTO `b_landing_template` VALUES (1,'Y','#EMPTY#',100,'empty','#CONTENT#',0,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(2,'Y','#SIDEBAR_LEFT#',200,'sidebar_left','<div class=\"landing-layout-flex\">\n								<div class=\"landing-sidebar g-max-width-100x g-overflow-hidden\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(3,'Y','#SIDEBAR_RIGHT#',300,'sidebar_right','<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"landing-sidebar g-max-width-100x\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>',1,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(4,'Y','#HEADER_ONLY#',400,'header_only','<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div>',1,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(5,'Y','#HEADER_FOOTER#',500,'header_footer','<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>',2,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(6,'Y','#WITHOUT_LEFT#',600,'without_left','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08'),(7,'Y','#WITHOUT_RIGHT#',700,'without_right','<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>',3,1,1,'2024-05-16 14:26:08','2024-05-16 14:26:08');
/*!40000 ALTER TABLE `b_landing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template_ref`
--

DROP TABLE IF EXISTS `b_landing_template_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_template_ref` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AREA` int NOT NULL,
  `LANDING_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template_ref`
--

LOCK TABLES `b_landing_template_ref` WRITE;
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_update_block`
--

DROP TABLE IF EXISTS `b_landing_update_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_update_block` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int DEFAULT '0',
  `PARAMS` text COLLATE utf8mb3_unicode_ci,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_update_block`
--

LOCK TABLES `b_landing_update_block` WRITE;
/*!40000 ALTER TABLE `b_landing_update_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_update_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_host`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_urlchecker_host` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `STATUS_ID` int NOT NULL,
  `HOST` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_STATUS_HOST` (`STATUS_ID`,`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_host`
--

LOCK TABLES `b_landing_urlchecker_host` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_status`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_urlchecker_status` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `URL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `HASH` char(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `STATUS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_HASH` (`HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_status`
--

LOCK TABLES `b_landing_urlchecker_status` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlchecker_whitelist`
--

DROP TABLE IF EXISTS `b_landing_urlchecker_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_urlchecker_whitelist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DOMAIN` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CHECKER_DOMAIN` (`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlchecker_whitelist`
--

LOCK TABLES `b_landing_urlchecker_whitelist` WRITE;
/*!40000 ALTER TABLE `b_landing_urlchecker_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlchecker_whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_urlrewrite`
--

DROP TABLE IF EXISTS `b_landing_urlrewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_urlrewrite` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` int NOT NULL,
  `RULE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LANDING_ID` int NOT NULL,
  `CREATED_BY_ID` int NOT NULL,
  `MODIFIED_BY_ID` int NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_urlrewrite`
--

LOCK TABLES `b_landing_urlrewrite` WRITE;
/*!40000 ALTER TABLE `b_landing_urlrewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_urlrewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_view`
--

DROP TABLE IF EXISTS `b_landing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_landing_view` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `VIEWS` int NOT NULL,
  `FIRST_VIEW` datetime NOT NULL,
  `LAST_VIEW` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_VIEW_LIDUID` (`LID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_view`
--

LOCK TABLES `b_landing_view` WRITE;
/*!40000 ALTER TABLE `b_landing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WEEK_START` int DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Тест','/',NULL,NULL,NULL,NULL,NULL,'ru',NULL,'N',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WEEK_START` int DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int DEFAULT NULL,
  `CODE` varchar(35) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2,'en'),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1,'ru');
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location`
--

DROP TABLE IF EXISTS `b_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SOURCE_CODE` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LATITUDE` decimal(8,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `TYPE` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`),
  UNIQUE KEY `IX_LOC_SE` (`EXTERNAL_ID`,`SOURCE_CODE`),
  KEY `IX_LOC_LAT` (`LATITUDE`),
  KEY `IX_LOC_LON` (`LONGITUDE`),
  KEY `IX_LOC_T` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location`
--

LOCK TABLES `b_location` WRITE;
/*!40000 ALTER TABLE `b_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_addr_fld`
--

DROP TABLE IF EXISTS `b_location_addr_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_addr_fld` (
  `ADDRESS_ID` int NOT NULL,
  `TYPE` int NOT NULL,
  `VALUE` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VALUE_NORMALIZED` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_addr_fld`
--

LOCK TABLES `b_location_addr_fld` WRITE;
/*!40000 ALTER TABLE `b_location_addr_fld` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_addr_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_addr_link`
--

DROP TABLE IF EXISTS `b_location_addr_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_addr_link` (
  `ADDRESS_ID` int NOT NULL,
  `ENTITY_ID` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`,`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IDX_BLAL_EI_ET` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_addr_link`
--

LOCK TABLES `b_location_addr_link` WRITE;
/*!40000 ALTER TABLE `b_location_addr_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_addr_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_address`
--

DROP TABLE IF EXISTS `b_location_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_address` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LATITUDE` decimal(8,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_LOC_BLA_LOC` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_address`
--

LOCK TABLES `b_location_address` WRITE;
/*!40000 ALTER TABLE `b_location_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_area`
--

DROP TABLE IF EXISTS `b_location_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_area` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL,
  `GEOMETRY` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TYPE` (`TYPE`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_area`
--

LOCK TABLES `b_location_area` WRITE;
/*!40000 ALTER TABLE `b_location_area` DISABLE KEYS */;
INSERT INTO `b_location_area` VALUES (1,'DISPUTED','CRIMEA',0,'{\"type\":\"Polygon\",\"coordinates\":[[[32.201579,45.396892],[32.2052178,45.3690507],[32.2090567,45.3553206],[32.2172905,45.3355145],[32.2240585,45.3025866],[32.235686,45.2758033],[32.2434204,45.2628881],[32.2625503,45.2383126],[32.2738567,45.2267674],[32.2996887,45.2054331],[32.329404,45.1867687],[32.3624492,45.1711247],[32.3982085,45.1587952],[32.4168995,45.1539484],[32.4554687,45.1470047],[32.4878048,45.1442331],[32.5164102,45.1327887],[32.5532795,45.1222016],[32.5918488,45.115254],[32.6313994,45.1120768],[32.6711947,45.1127297],[32.729727,45.1208441],[32.8314558,45.1507864],[32.853076,45.1219934],[32.8767811,45.0994253],[32.8902144,45.0890467],[32.9199297,45.0703442],[32.9451894,45.0580954],[32.9796287,45.0321305],[33.0110823,45.0148866],[33.0279839,45.0074406],[33.0637432,44.9950757],[33.0879643,44.989073],[33.1342119,44.9689946],[33.192902,44.9506562],[33.2511697,44.9416162],[33.2951871,44.9405202],[33.5542562,44.8402319],[33.5621787,44.8410979],[33.5671526,44.838601],[33.5736666,44.8238183],[33.5866523,44.807848],[33.6044231,44.8103433],[33.6586481,44.7965631],[33.6693271,44.7918226],[33.6774224,44.7858657],[33.6827993,44.7703386],[33.6355485,44.7529449],[33.6136625,44.7497551],[33.6148368,44.7391957],[33.6111957,44.738286],[33.6105707,44.7329396],[33.611606,44.7296545],[33.6146258,44.729927],[33.6161203,44.711976],[33.6589663,44.7142533],[33.6708014,44.7097439],[33.7006932,44.7148119],[33.7072434,44.7105734],[33.7051533,44.7086069],[33.7050933,44.7049158],[33.7145084,44.705868],[33.715643,44.715848],[33.7265921,44.716636],[33.7348624,44.7075832],[33.7462868,44.7010307],[33.7518027,44.6987863],[33.7615132,44.7009902],[33.7769711,44.690265],[33.7674787,44.6820761],[33.754625,44.6753399],[33.7518666,44.6637439],[33.7300323,44.6470751],[33.7254762,44.6401041],[33.7176817,44.6375914],[33.7168675,44.6332156],[33.7218757,44.631584],[33.7162703,44.6204383],[33.7272166,44.6085501],[33.7286926,44.6046812],[33.735653,44.6009246],[33.7419126,44.6053835],[33.7496197,44.60791],[33.7651672,44.6091022],[33.7795796,44.6131096],[33.7828306,44.6059825],[33.781845,44.5971035],[33.7872108,44.5856602],[33.7920091,44.5848619],[33.7951987,44.5802969],[33.8004378,44.5814222],[33.8056839,44.5753186],[33.8093847,44.5769972],[33.8114458,44.5738111],[33.8139036,44.5771175],[33.8173303,44.577274],[33.8272108,44.5712636],[33.8273394,44.563316],[33.8310821,44.5548411],[33.8345552,44.5499395],[33.8372152,44.548782],[33.8337314,44.5416787],[33.8394649,44.5384748],[33.8401482,44.5304315],[33.8494976,44.5306195],[33.8572702,44.5258757],[33.8456566,44.519124],[33.85315,44.5154015],[33.8603572,44.5067568],[33.868911,44.5073968],[33.8707581,44.5054113],[33.8673484,44.5025419],[33.8672494,44.5003522],[33.8736292,44.4926938],[33.8869091,44.4822103],[33.8971535,44.4787873],[33.8934902,44.4732254],[33.8972198,44.4692246],[33.9262025,44.4213251],[33.9094099,44.4188846],[33.9024805,44.4193681],[33.8980569,44.4214726],[33.8828051,44.4210572],[33.8706281,44.4188467],[33.8591887,44.4199143],[33.8469623,44.4171293],[33.8292787,44.4089158],[33.8245729,44.411664],[33.8140922,44.4100258],[33.797829,44.4041246],[33.781585,44.4057444],[33.7840022,44.402866],[33.7855572,44.3968776],[33.7623083,44.3900862],[33.696591,44.1910397],[33.7357422,44.1858835],[33.7755079,44.184598],[33.8151473,44.1872073],[33.8567133,44.1943491],[33.9116725,44.1858835],[33.9514382,44.184598],[33.9910776,44.1872073],[34.0298524,44.1936623],[34.0670401,44.2038415],[34.0927335,44.2136353],[34.1417952,44.2137713],[34.2003274,44.2220125],[34.2375152,44.2321868],[34.2552959,44.2386127],[34.2888171,44.2539909],[34.3191029,44.2724903],[34.3328536,44.282804],[34.3551268,44.3032135],[34.3834932,44.3128241],[34.4170144,44.3281829],[34.4325985,44.3370516],[34.4579166,44.3546118],[34.4947227,44.3688605],[34.5111166,44.3769423],[34.5414024,44.3954029],[34.5678887,44.4166315],[34.590082,44.4402299],[34.607569,44.4657558],[34.6144422,44.4790935],[34.6220858,44.4994412],[34.6450122,44.5206113],[34.6661359,44.547163],[34.7006849,44.5628297],[34.735755,44.5848013],[34.7764494,44.5934492],[34.8085382,44.6038903],[34.8324881,44.6023351],[34.8722834,44.6029938],[34.9291911,44.6108698],[34.963432,44.598995],[35.0012394,44.590126],[35.0602428,44.5838827],[35.1197957,44.5863196],[35.1774068,44.5973337],[35.1957581,44.6028408],[35.2306662,44.6164595],[35.2586785,44.6310857],[35.2852182,44.6416945],[35.3171962,44.6585585],[35.3318979,44.668113],[35.3583842,44.6892424],[35.3805775,44.7127305],[35.3975542,44.7373268],[35.4116276,44.7442895],[35.4626979,44.7517865],[35.4998857,44.7618689],[35.5176664,44.7682366],[35.5511876,44.7834757],[35.5667717,44.7922754],[35.5952241,44.8120281],[35.6196208,44.8343376],[35.6322493,44.8491155],[35.670408,44.8272773],[35.7048906,44.8131714],[35.7230689,44.8074017],[35.7803291,44.7955387],[35.8397932,44.7921897],[35.8794326,44.7947719],[35.9241291,44.8026019],[35.9742343,44.8026778],[36.013533,44.8071728],[36.051603,44.8154218],[36.1028199,44.8336163],[36.1372853,44.8256548],[36.1764365,44.8205545],[36.2162022,44.8192829],[36.2558416,44.821864],[36.3134527,44.8328333],[36.3630225,44.8503296],[36.4154063,44.8528108],[36.454181,44.8591924],[36.4913688,44.869256],[36.5262768,44.8828121],[36.5426707,44.8908227],[36.5729565,44.9091205],[36.5994428,44.9301619],[36.6097225,44.9406672],[36.5679872,45.0506562],[36.5428648,45.1340402],[36.5338353,45.1751824],[36.530486,45.1992024],[36.5542469,45.2216309],[36.5859391,45.2441721],[36.5941742,45.252542],[36.5937019,45.2823897],[36.6030245,45.3093876],[36.6227602,45.3280113],[36.6635019,45.3599397],[36.6815681,45.4566115],[36.6684499,45.6266206],[36.583205,45.635158],[36.3387005,45.6715002],[36.1353542,45.6476547],[36.1034835,45.638376],[36.0723795,45.6256431],[36.028427,45.6242237],[35.9817734,45.6167329],[35.9534794,45.6280572],[35.9215589,45.6372534],[35.8711492,45.6454011],[35.8366954,45.6469342],[35.8022501,45.6453103],[35.7518847,45.6370298],[35.7200141,45.6277494],[35.6901483,45.6156372],[35.6627986,45.6008987],[35.6384328,45.5837842],[35.6174678,45.5645842],[35.6002625,45.5436256],[35.587111,45.5212652],[35.5764936,45.4903874],[35.5747509,45.4895333],[35.5487365,45.5142538],[35.5242787,45.5313252],[35.4968497,45.5460096],[35.459695,45.5603381],[35.4555162,45.5730522],[35.4443574,45.5959169],[35.4290297,45.6175579],[35.4198817,45.6278035],[35.3869834,45.6557223],[35.3609843,45.6715964],[35.3373014,45.6827713],[35.3237297,45.7127561],[35.3165721,45.7237303],[35.299254,45.7445762],[35.2663557,45.7724368],[35.2334204,45.7917299],[34.9750748,45.7619919],[34.9597746,45.7565682],[34.9411705,45.7658247],[34.876163,45.7904304],[34.7990874,45.8104643],[34.8021689,45.9006479],[34.7540112,45.9088363],[34.6699108,45.9676437],[34.628541,45.9864034],[34.6011392,45.9941699],[34.5816123,45.9956678],[34.5611691,45.9943843],[34.5542176,45.9904652],[34.5448398,45.9790277],[34.5443875,45.9761218],[34.5269998,45.9590021],[34.5109022,45.9480281],[34.4985264,45.9425606],[34.4762212,45.9441393],[34.459176,45.9512094],[34.4430184,45.9618096],[34.4233801,45.9786713],[34.4131796,45.9897359],[34.4107666,45.9992636],[34.4049875,46.0092864],[34.3471695,46.0549489],[34.3326403,46.0598467],[34.320021,46.0682092],[34.2648618,46.0548851],[34.2521968,46.0531749],[34.1843736,46.0668628],[34.1450093,46.0866862],[34.1359107,46.0966617],[34.1218931,46.1057194],[34.0809285,46.117556],[34.0695052,46.1166994],[34.0526389,46.1091293],[33.9982336,46.1264504],[33.971714,46.1411991],[33.9405553,46.1546515],[33.8973358,46.1706248],[33.86133,46.1945116],[33.8486859,46.1996667],[33.811324,46.203796],[33.7968936,46.2030156],[33.7726027,46.1976249],[33.7503231,46.18772],[33.7399776,46.1852474],[33.6995994,46.2028553],[33.6892658,46.2047794],[33.670864,46.2117939],[33.6661371,46.2207141],[33.6467708,46.22958],[33.6152408,46.2262179],[33.6177993,46.215981],[33.6135506,46.2139172],[33.6185932,46.213932],[33.6355706,46.1463365],[33.6412746,46.1424429],[33.6147111,46.1346624],[33.5870932,46.1191796],[33.5721329,46.1025643],[33.5911874,46.0612472],[33.5407189,46.0120312],[32.7727018,45.8266419],[32.7396744,45.8073204],[32.7259238,45.7972779],[32.7026395,45.7764183],[32.6659033,45.7625368],[32.6339252,45.7459969],[32.6054729,45.7265666],[32.5890615,45.7123247],[32.5685226,45.7063996],[32.5336146,45.6930389],[32.5016366,45.6764785],[32.4779329,45.660501],[32.4354921,45.6517736],[32.39936,45.6400966],[32.3822327,45.6329918],[32.3502547,45.6164136],[32.3218024,45.5969383],[32.2974057,45.5749258],[32.2868735,45.5630938],[32.2775192,45.5507836],[32.2643049,45.5283722],[32.2405042,45.5038633],[32.2230173,45.4787954],[32.2105624,45.4522796],[32.2062983,45.4386318],[32.2017961,45.4108733],[32.201579,45.396892]]]}'),(2,'DISPUTED','SEVASTOPOL',0,'{\"type\":\"Polygon\",\"coordinates\":[[[33.3779569,44.5838462],[33.3930152,44.5681987],[33.3996503,44.5643423],[33.4016594,44.5610614],[33.4004612,44.5592715],[33.4071732,44.5565894],[33.4100748,44.5535486],[33.414671,44.5526219],[33.4163465,44.5493377],[33.4274077,44.5457891],[33.4284008,44.543313],[33.4350539,44.5419983],[33.4348217,44.5409146],[33.4497224,44.5320144],[33.4573813,44.5290313],[33.464198,44.5233092],[33.4788113,44.5192613],[33.4788555,44.5174026],[33.4814623,44.5157171],[33.4897719,44.5122984],[33.4927974,44.5125433],[33.4930381,44.5174183],[33.4889039,44.5249823],[33.5078625,44.5311455],[33.5264968,44.5459033],[33.5395687,44.539262],[33.542912,44.5395173],[33.5372403,44.5484954],[33.5389717,44.5502823],[33.5485239,44.554409],[33.5500686,44.5525636],[33.5478351,44.5516093],[33.5487427,44.5497441],[33.5539774,44.5515491],[33.562927,44.5488265],[33.5684734,44.5559147],[33.5608581,44.55859],[33.563492,44.5617802],[33.5728005,44.5610282],[33.5747846,44.5592686],[33.5792988,44.5620965],[33.5702383,44.5724854],[33.578923,44.5730758],[33.5847547,44.5754084],[33.5895307,44.5805367],[33.5923472,44.5877529],[33.5923331,44.5924807],[33.5842788,44.5996505],[33.576377,44.6033141],[33.5738875,44.606603],[33.5673845,44.6074099],[33.5672286,44.6088974],[33.5706902,44.6149581],[33.5828279,44.6132154],[33.5835438,44.6150882],[33.5782058,44.6192201],[33.5859866,44.6374677],[33.5960725,44.6407591],[33.6034952,44.651651],[33.5993199,44.6632008],[33.6103428,44.6726833],[33.5991785,44.6709085],[33.5935735,44.67909],[33.5975627,44.6990734],[33.5945586,44.7071473],[33.5873092,44.7054915],[33.5868975,44.7004837],[33.5518827,44.711301],[33.5560938,44.7201787],[33.5554076,44.7221413],[33.5466985,44.7220158],[33.5474959,44.6897199],[33.5424577,44.6576964],[33.5313548,44.6400224],[33.5168858,44.636586],[33.5105038,44.6309138],[33.5075866,44.6209989],[33.5047582,44.6165579],[33.5013126,44.6151564],[33.5019782,44.6118966],[33.4973069,44.6098852],[33.5001394,44.6082374],[33.5007351,44.603576],[33.4993233,44.6074879],[33.4978317,44.607504],[33.4957525,44.6109471],[33.4981029,44.6121538],[33.4952779,44.6148727],[33.4864865,44.612926],[33.4843169,44.6092739],[33.4812423,44.6085388],[33.4805395,44.6110345],[33.4739853,44.6119977],[33.4730492,44.6057619],[33.4706817,44.6050402],[33.4746431,44.6017974],[33.4707787,44.6005913],[33.4714544,44.5926046],[33.4684703,44.5946123],[33.4680171,44.6001056],[33.4662354,44.6009409],[33.4662572,44.6065902],[33.468789,44.6078146],[33.4681762,44.6119631],[33.4636229,44.6117513],[33.4602628,44.6093012],[33.4571182,44.6105217],[33.4482092,44.6078374],[33.4475432,44.6041441],[33.4498455,44.6016442],[33.4468175,44.5979061],[33.4481208,44.5973543],[33.4476833,44.5948093],[33.4441644,44.5987997],[33.4404307,44.599419],[33.4413997,44.6015135],[33.4400636,44.605054],[33.4339409,44.6038632],[33.4313517,44.5969346],[33.4262966,44.5989669],[33.4198732,44.5924681],[33.4241188,44.5947288],[33.4264939,44.5934479],[33.4248662,44.581237],[33.4314365,44.574999],[33.4359306,44.5745808],[33.4376948,44.572334],[33.4353869,44.571057],[33.4344226,44.5719787],[33.4366416,44.5730618],[33.4356493,44.573903],[33.4267301,44.5733978],[33.428097,44.5756042],[33.419624,44.5838806],[33.4191592,44.5871545],[33.4170871,44.5878755],[33.4168157,44.5928239],[33.4161384,44.587998],[33.4136207,44.5857566],[33.412809,44.5782986],[33.4143867,44.5766282],[33.4119291,44.572169],[33.4136588,44.5699718],[33.4122288,44.564404],[33.4110539,44.5650361],[33.4098393,44.5712544],[33.4107359,44.575972],[33.4094392,44.5779911],[33.4065798,44.5767197],[33.4024217,44.5708259],[33.4043875,44.5825173],[33.4024193,44.5834106],[33.4030967,44.5911368],[33.3984799,44.5914294],[33.395001,44.5875713],[33.383653,44.5863156],[33.3779569,44.5838462]]]}');
/*!40000 ALTER TABLE `b_location_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_field`
--

DROP TABLE IF EXISTS `b_location_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_field` (
  `LOCATION_ID` int NOT NULL,
  `TYPE` int NOT NULL,
  `VALUE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`,`TYPE`),
  KEY `IDX_BLLFL_VAL` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_field`
--

LOCK TABLES `b_location_field` WRITE;
/*!40000 ALTER TABLE `b_location_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_hierarchy`
--

DROP TABLE IF EXISTS `b_location_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_hierarchy` (
  `ANCESTOR_ID` int NOT NULL,
  `DESCENDANT_ID` int NOT NULL,
  `LEVEL` int NOT NULL,
  PRIMARY KEY (`ANCESTOR_ID`,`DESCENDANT_ID`),
  KEY `IX_LOC_LH_D` (`DESCENDANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_hierarchy`
--

LOCK TABLES `b_location_hierarchy` WRITE;
/*!40000 ALTER TABLE `b_location_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_name`
--

DROP TABLE IF EXISTS `b_location_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_name` (
  `LOCATION_ID` int NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME_NORMALIZED` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`LOCATION_ID`,`LANGUAGE_ID`),
  KEY `IX_LOC_LNN` (`NAME_NORMALIZED`(200),`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_name`
--

LOCK TABLES `b_location_name` WRITE;
/*!40000 ALTER TABLE `b_location_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_location_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_location_source`
--

DROP TABLE IF EXISTS `b_location_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_location_source` (
  `CODE` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONFIG` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_location_source`
--

LOCK TABLES `b_location_source` WRITE;
/*!40000 ALTER TABLE `b_location_source` DISABLE KEYS */;
INSERT INTO `b_location_source` VALUES ('GOOGLE','Google','a:4:{i:0;a:4:{s:4:\"code\";s:16:\"API_KEY_FRONTEND\";s:4:\"type\";s:6:\"string\";s:4:\"sort\";i:10;s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"code\";s:15:\"API_KEY_BACKEND\";s:4:\"type\";s:6:\"string\";s:4:\"sort\";i:20;s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"code\";s:18:\"SHOW_PHOTOS_ON_MAP\";s:4:\"type\";s:4:\"bool\";s:4:\"sort\";i:30;s:5:\"value\";b:1;}i:3;a:4:{s:4:\"code\";s:21:\"USE_GEOCODING_SERVICE\";s:4:\"type\";s:4:\"bool\";s:4:\"sort\";i:40;s:5:\"value\";b:1;}}'),('OSM','OpenStreetMap','a:3:{i:0;a:5:{s:4:\"code\";s:11:\"SERVICE_URL\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:1;s:4:\"sort\";i:10;s:5:\"value\";s:30:\"https://osm-ru-002.bitrix.info\";}i:1;a:5:{s:4:\"code\";s:15:\"MAP_SERVICE_URL\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:1;s:4:\"sort\";i:15;s:5:\"value\";s:30:\"https://osm-ru-001.bitrix.info\";}i:2;a:5:{s:4:\"code\";s:5:\"TOKEN\";s:4:\"type\";s:6:\"string\";s:10:\"is_visible\";b:0;s:4:\"sort\";i:20;s:5:\"value\";N;}}');
/*!40000 ALTER TABLE `b_location_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification`
--

DROP TABLE IF EXISTS `b_log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_log_notification` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int DEFAULT NULL,
  `ALERT_COUNT` int DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification`
--

LOCK TABLES `b_log_notification` WRITE;
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification_action`
--

DROP TABLE IF EXISTS `b_log_notification_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_log_notification_action` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `NOTIFICATION_ID` int unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification_action`
--

LOCK TABLES `b_log_notification_action` WRITE;
/*!40000 ALTER TABLE `b_log_notification_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_blacklist`
--

DROP TABLE IF EXISTS `b_main_mail_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_main_mail_blacklist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint unsigned NOT NULL DEFAULT '0',
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_blacklist`
--

LOCK TABLES `b_main_mail_blacklist` WRITE;
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender`
--

DROP TABLE IF EXISTS `b_main_mail_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_main_mail_sender` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `USER_ID` int NOT NULL,
  `IS_CONFIRMED` tinyint NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender`
--

LOCK TABLES `b_main_mail_sender` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender_send_counter`
--

DROP TABLE IF EXISTS `b_main_mail_sender_send_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_main_mail_sender_send_counter` (
  `DATE_STAT` date NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CNT` int NOT NULL,
  PRIMARY KEY (`DATE_STAT`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender_send_counter`
--

LOCK TABLES `b_main_mail_sender_send_counter` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender_send_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender_send_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int DEFAULT NULL,
  `PARENT_ID` int DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int DEFAULT NULL,
  `ML_TYPE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_medialib_item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_medialib_type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_incoming_message`
--

DROP TABLE IF EXISTS `b_messageservice_incoming_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_messageservice_incoming_message` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `REQUEST_BODY` longtext COLLATE utf8mb3_unicode_ci,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(128) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_MS_INCOMING_MESSAGE_1` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_incoming_message`
--

LOCK TABLES `b_messageservice_incoming_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_incoming_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_incoming_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_message`
--

DROP TABLE IF EXISTS `b_messageservice_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_messageservice_message` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AUTHOR_ID` int NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8mb3_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `STATUS_ID` int NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EXTERNAL_STATUS` varchar(128) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLUSTER_GROUP` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`,`CLUSTER_GROUP`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_message`
--

LOCK TABLES `b_messageservice_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app`
--

LOCK TABLES `b_messageservice_rest_app` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app_lang`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` int NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app_lang`
--

LOCK TABLES `b_messageservice_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('b24connector',NULL),('bitrix.sitecorporate',NULL),('bitrixcloud',NULL),('clouds',NULL),('fileman',NULL),('highloadblock',NULL),('iblock',NULL),('landing',NULL),('location',NULL),('main',NULL),('messageservice',NULL),('perfmon',NULL),('rest',NULL),('search',NULL),('seo',NULL),('ui',NULL);
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_module_group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `GROUP_ID` int NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_module_to_module` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VERSION` int DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,NULL,100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1,'2b30c309bf87645959b9bfbed51b49c6'),(2,NULL,100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1,'f437e170e4daf957766b0b0579f08fb4'),(3,NULL,100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1,'9211999c5cfc3a4d374e4f957d5079f6'),(4,NULL,100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1,'9ef4e969f975b6425c7113444d210a90'),(5,NULL,100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1,'332179402f77c4d41c6c2e524acde4d0'),(6,NULL,100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1,'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),(7,NULL,100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1,'a2986b9f6e9a99c0351c2ba858dafc85'),(8,NULL,100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1,'f9b70c6a75b6341063b23bde5d32e582'),(9,NULL,100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1,'a0aecef95a192ec3dd134f71f0f4f175'),(10,NULL,100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1,'6476f96ffba6ab2b4a7dbe644f42edf6'),(11,NULL,100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1,'6122bee2ad083f8f72e35655cee48859'),(12,NULL,100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1,'f8f806e33dc35737bdbe6b9bc42626a4'),(13,NULL,100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1,'9244ca7fd6964757ca191c9407cb1218'),(14,NULL,100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1,'d8ae8e1f8889b1fbb6af276fb14c8411'),(15,NULL,100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1,'129315715250c195ee115002b445a156'),(16,NULL,100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1,'bf1f5deaa1532fe9a28acd6d19d23a80'),(17,NULL,100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1,'298e763431f7f7d6c3af9798663f410d'),(18,NULL,100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1,'4ecdc4a15e24c49f0fa8f44064bf1511'),(19,NULL,100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1,'6ac10928b76183004ba0e88ace0a1b5b'),(20,NULL,100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1,'06769c4f6bbba4fad79c1619a874ee97'),(21,NULL,100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1,'ecb9ae0476db69da6c95b06bcb3aebbb'),(22,NULL,100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1,'9fe6984fd29b7ab9508ac02c23690094'),(23,NULL,100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1,'02f2fe70b9068a6b307192321fe74430'),(24,NULL,100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1,'ef0f2e4d0ae7bbf59d0798e8078143f9'),(25,NULL,100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1,'d3ec9527c0e77709402a05ae4249afca'),(26,NULL,100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1,'0de6c5b48e9382f6e857d79f76d95f25'),(27,NULL,100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1,'ac0b8b7a5e703131a3bd41b4399bc032'),(28,NULL,100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1,'1ddb38ccf35a8a9da5d3b2bc80591ad6'),(29,NULL,100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1,'c1f65f88d449e8b8a3b7af9d54ef3f50'),(30,NULL,100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1,'8af99568465a1ccdb6a84e868cf5aad8'),(31,NULL,110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1,'09f8200652932044934bd3c522e920c5'),(32,NULL,120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1,'71ef247b3eb3b07e4bd6940791b89497'),(33,NULL,130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1,'4fe2008255fe567423cc0c2f080ca741'),(34,NULL,140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1,'686c0679e60bee52dbcc27f5502277b6'),(35,NULL,145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1,'7e19b5fc5fc48b1cd317a6ac44d84236'),(36,NULL,150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1,'4d5e1dd2369089f2db9480549241205f'),(37,NULL,155,'main','OnUserTypeBuildList','main','','CUserTypeUrl','GetUserTypeDescription','',1,'79fcd650625b296abf13216cd5af2428'),(38,NULL,160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1,'67b9a4fbc45240a7887b73e3a246eba0'),(39,NULL,170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1,'fbebdb289fe38c1fbfeda4d3d8ee43ef'),(40,NULL,180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1,'2065f8305645790970bac0b99f127f47'),(41,NULL,190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1,'65bda5818e3545f1683a3ff5271cc891'),(42,NULL,200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1,'47e3cf1c280e01dbaed43f9989a6747b'),(43,NULL,210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1,'719d15ee5f60f6348d2bd6a8911aeed1'),(44,NULL,100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1,'ff5eb984fe6ce3e8d769bf3ba646b902'),(45,NULL,100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1,'0782f5a6df6dd52d834caea88c3ba3a7'),(46,NULL,100,'main','OnFileDelete','main','','\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable','onFileDelete','',1,'54c80cd94412db221338aeb59902f059'),(47,NULL,100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1,'33e603755a0bc07abd51a1f8ed52966e'),(48,NULL,100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1,'51ee2214895be904a880046f43e84138'),(49,NULL,100,'main','OnAdminInformerInsertItems','main','','CMpNotifications','OnAdminInformerInsertItemsHandlerMP','',1,'c89c0e94ac1110c334a24c70e1773daa'),(50,NULL,100,'rest','OnRestServiceBuildDescription','main','','\\Bitrix\\Main\\Rest\\Handlers','onRestServiceBuildDescription','',1,'c0b0c358a21b648d4f9c5d29d17a5ab2'),(51,NULL,100,'main','OnBeforeUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeAdd','',1,'e204684efc0764af9431ca94b950619a'),(52,NULL,100,'main','OnAfterUserTypeAdd','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onAfterUserTypeAdd','',1,'50932fb244caf7af686fac906caf3e73'),(53,NULL,100,'main','OnBeforeUserTypeDelete','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','OnBeforeUserTypeDelete','',1,'d22a86deba0ff4bd031d022e331033b4'),(54,NULL,100,'main','OnAuthProvidersBuildList','main','','\\Bitrix\\Main\\Access\\Auth\\AccessAuthProvider','getProviders','',1,'3a2839dac113bf47bce01812903e768a'),(55,NULL,100,'iblock','OnBeforeIBlockSectionUpdate','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionUpdate','',1,'dde505dba68c59bd4661b7680c329485'),(56,NULL,100,'iblock','OnBeforeIBlockSectionAdd','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionAdd','',1,'d3a665b1890dabbba32ff01e3e46ec57'),(57,NULL,100,'iblock','OnBeforeIBlockSectionDelete','main','','\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler','onBeforeIBlockSectionDelete','',1,'157add4b02621a60fabf1369c3e7ea9b'),(58,NULL,100,'sale','OnSaleBasketItemSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',2,'fa4fc3924ff2585e92f8bdabaf287864'),(59,NULL,100,'sale','OnSaleOrderSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',2,'6b358bb17b30da91b105fb1451ed9aaa'),(60,NULL,100,'sale','OnSaleOrderPaid','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',2,'8f5ca6e1c5136cb4bbf30474f0ff4183'),(61,NULL,1000,'sale','onBuildDiscountConditionInterfaceControls','main','','\\Bitrix\\Main\\Discount\\UserConditionControl','onBuildDiscountConditionInterfaceControls','',1,'9f0d91c081704e52b52f540b3acaf52e'),(62,NULL,100,'main','OnBeforePhpMail','main','','\\Bitrix\\Main\\Mail\\Sender','applyCustomSmtp','',2,'10fbf5b8dec05a02d8d7010e594f16ec'),(63,NULL,100,'main','OnBuildFilterFactoryMethods','main','','\\Bitrix\\Main\\Filter\\FactoryMain','onBuildFilterFactoryMethods','',2,'19f10c2686a955bd8b8116ea1f1ad829'),(64,NULL,100,'main','onGetUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onGetUserFieldValues','',2,'7f9a5e25d638a6bff29f0bf4666da1a9'),(65,NULL,100,'main','onUpdateUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onUpdateUserFieldValues','',2,'d78761f994d74258421d271810f03ebf'),(66,NULL,100,'main','onDeleteUserFieldValues','main','','\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper','onDeleteUserFieldValues','',2,'074b2e25238a00ffc809ad12b609db2c'),(67,NULL,100,'main','OnAfterUserTypeAdd','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'37b1b1538fa6a6c5f41c9ce4afbf2789'),(68,NULL,100,'main','OnAfterUserTypeUpdate','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'6a53bbd6e85686f4aa8a69d3d75f7e37'),(69,NULL,100,'main','OnAfterUserTypeDelete','main','','\\Bitrix\\Main\\ORM\\Entity','onUserTypeChange','',2,'010cc1e3107418a1fd9f9a4cde7d93b9'),(70,NULL,100,'main','OnBuildGlobalMenu','b24connector','','\\Bitrix\\B24Connector\\Helper','onBuildGlobalMenu','',1,'9c4452a442bacc2d4d70635962485be1'),(71,NULL,100,'main','OnBeforeProlog','b24connector','','\\Bitrix\\B24Connector\\Helper','onBeforeProlog','',1,'641053ff6ee8ff57518d7c30724530e5'),(72,NULL,100,'main','OnBeforeProlog','bitrix.sitecorporate','','CSiteCorporate','ShowPanel','',1,'bc7c322534797a9ed3493c40e1b8fdac'),(73,NULL,100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1,'5499039afdd0fdb38d4b245c8b886dcb'),(74,NULL,100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1,'5828a8cdb2cc45e2724ef1c76139df88'),(75,NULL,100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1,'da69722ba95497cf263381b46e24df40'),(76,NULL,90,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1,'f8c39ff182ad873715f10a7091f928a4'),(77,NULL,100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1,'8ddf4f578e7229a63cba4d2124c7643c'),(78,NULL,100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1,'d6d308843a6521ad50bfa230a2fcef8f'),(79,NULL,100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1,'1e4f94a842d6166359ed1789a6f21245'),(80,NULL,100,'main','OnAfterFileSave','clouds','','CCloudStorage','OnAfterFileSave','',1,'c36bae07a3080f9b5bc5d422ec96933f'),(81,NULL,100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1,'7ec03b3b7ad3f2f54c1e438a1172e5a8'),(82,NULL,100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1,'6880b56c76f7d3c5d09f887fca6341ca'),(83,NULL,100,'main','OnPhysicalFileDelete','clouds','','CCloudStorage','OnFileDelete','',1,'3151c487c747a57d7817f68e97fd1c94'),(84,NULL,100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1,'713ea8a7a25764b1af60f7a1ec3032d5'),(85,NULL,100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1,'705cd310c52f9c7e8e0c8a0578a22667'),(86,NULL,100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1,'a403ad2328227153475df0c478a465cc'),(87,NULL,100,'main','OnAfterFileDeleteDuplicate','clouds','','CCloudStorage','OnAfterFileDeleteDuplicate','',1,'c5f3eb3991b50d4f80c2ccbdc94f8656'),(88,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObjectInstance','',1,'a4eb7ed1f50b5931474c565f448a4069'),(89,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObjectInstance','',1,'1e559e2225608e8d40eeede5b7526f2a'),(90,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObjectInstance','',1,'5ad09feff5dab28ab571ad034ccdf2ea'),(91,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObjectInstance','',1,'cc976773610cf809bb56871ac7dd9f01'),(92,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObjectInstance','',1,'faadad31436e94c420ed787e4424714b'),(93,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObjectInstance','',1,'5e63a8eebed42bd099b4a9ef62e8d52b'),(94,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_HotBox','GetObjectInstance','',1,'1913169adcd6d6f3b7fb5f3b70ba1fd8'),(95,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Yandex','GetObjectInstance','',1,'12bd1d4f0d145d5b1681955612fe61c8'),(96,NULL,100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_S3','GetObjectInstance','',1,'4af3f0ba1f50ed9be6efcdb55dfbee4e'),(97,NULL,100,'perfmon','OnGetTableSchema','clouds','','clouds','OnGetTableSchema','',1,'d31a1f80f07441976eb1711db4902a71'),(98,NULL,100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1,'d10f791d422ba0e7551ab267db50404c'),(99,NULL,100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1,'b00a6174fb1763684c299ccf5e054c65'),(100,NULL,100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1,'58ae853e2b7c230b5cdb51129efd8a05'),(101,NULL,100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1,'7bdbd354eab11f376fa257a998587277'),(102,NULL,100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1,'d9d06fd05f80b33379359ebd8e36e655'),(103,NULL,100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1,'20ca1d02998884b5abec68b32fdb561d'),(104,NULL,100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1,'991c32062e05844708a5cf7aba37bf9a'),(105,NULL,100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1,'41bc5efb49ebf8d165acd4e4d556f60c'),(106,NULL,100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1,'e0a610651ffec1fbddb2f261223fb2e9'),(107,NULL,100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1,'fbfef1ef99530f6eae191da293f9566c'),(108,NULL,154,'main','OnUserTypeBuildList','fileman','','\\Bitrix\\Fileman\\UserField\\Address','getUserTypeDescription','',1,'f0583a376e38d3d2675513b1a367ed3c'),(109,NULL,100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1,'f9dcff287cf7753e5c56974d37975507'),(110,NULL,100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1,'d1fa2865e72eca144b964b6fb1eefc15'),(111,NULL,100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1,'1bf13707e1a45b8320c2ecd35534cbb4'),(112,NULL,100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1,'2ac4a2154f4fd85d67b50f412ed5ed48'),(113,NULL,100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1,'a6f7df502db8a04590e43188d7cbfc99'),(114,NULL,100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1,'f2320df213f38adf32364d3169d5b197'),(115,NULL,100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1,'46aef774958db327c1170a12d3a70ee5'),(116,NULL,100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1,'861f6ee2ca56bf63c3af07db0553606b'),(117,NULL,100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1,'2a6d446893d46f04f2c151f458d2908c'),(118,NULL,100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1,'c6c8111f129e0eb19e558106e354e6f6'),(119,NULL,100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1,'0ae9fc756bfb1273309240cd8f535672'),(120,NULL,100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1,'182d19c163e3a5a965bca170c3fb0e83'),(121,NULL,100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1,'f7a182e8d9b204970d111e4703b9f523'),(122,NULL,200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1,'6da245944e376d586a3fa2aaee02c70b'),(123,NULL,100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1,'01b3f9984fa07b1dfb4bc35d107d5672'),(124,NULL,100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1,'2dbbccdee3f2e7bd86446bec02be1d54'),(125,NULL,100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1,'78f090ee29030c54788098b0782d28f9'),(126,NULL,100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1,'4b71a345c136beed338aa7137943d80b'),(127,NULL,100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1,'3de75587a47352dd3cb6d10866f69385'),(128,NULL,10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDate','GetUserTypeDescription','',1,'fa608e2c397b6793c54ad296619a22e2'),(129,NULL,20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDateTime','GetUserTypeDescription','',1,'78554c9e3c38ac383d51f0ee4d013120'),(130,NULL,30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyXmlID','GetUserTypeDescription','',1,'952fe5f2ea67493fb9f9b924ce1b992b'),(131,NULL,40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyFileMan','GetUserTypeDescription','',1,'fd688441d5e8203751fb47374931e011'),(132,NULL,50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyHTML','GetUserTypeDescription','',1,'27645f81ce5d6d9f19a47cc171860beb'),(133,NULL,60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementList','GetUserTypeDescription','',1,'c53e9314ae43c30267b32310a02d7df4'),(134,NULL,70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySequence','GetUserTypeDescription','',1,'3ff9528d1264fc77697248957aafdab5'),(135,NULL,80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementAutoComplete','GetUserTypeDescription','',1,'0d233a1e7a0d6a52a52e13df88291024'),(136,NULL,90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySKU','GetUserTypeDescription','',1,'8678bc826ced4f66640fba3775b18516'),(137,NULL,100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySectionAutoComplete','GetUserTypeDescription','',1,'26ff6f651cb94a1fe4ce9827566f0730'),(138,NULL,100,'main','onVirtualClassBuildList','iblock','','Bitrix\\Iblock\\IblockTable','compileAllEntities','',2,'8a4e85071d25e6ba7f9ed315874c411b'),(139,NULL,100,'ai','onTuningLoad','landing','','\\Bitrix\\Landing\\Connector\\Ai','onTuningLoad','',2,'64d7f5f3d8a372fb0d441d82a49f369b'),(140,NULL,100,'ai','onBeforeCompletions','landing','','\\Bitrix\\Landing\\Connector\\Ai','onBeforeCompletions','',2,'9192985f1e2da4ddd7a3328eb95a975e'),(141,NULL,100,'crm','onAfterCrmCompanyAdd','landing','','\\Bitrix\\Landing\\Connector\\Crm','onAfterCompanyChange','',2,'7e8fed841380d8075d45525f328e8940'),(142,NULL,100,'crm','onAfterCrmCompanyUpdate','landing','','\\Bitrix\\Landing\\Connector\\Crm','onAfterCompanyChange','',2,'688027a0f389137b02ac0a834f0a8495'),(143,NULL,100,'iblock','onAfterIBlockSectionDelete','landing','','\\Bitrix\\Landing\\Connector\\Iblock','onAfterIBlockSectionDelete','',2,'ffe8a984ae7ff50064ac74e788a80118'),(144,NULL,100,'intranet','onBuildBindingMenu','landing','','\\Bitrix\\Landing\\Connector\\Intranet','onBuildBindingMenu','',2,'d5464da9aea2308d3d5f13c2387c4c40'),(145,NULL,100,'landing','onBuildSourceList','landing','','\\Bitrix\\Landing\\Connector\\Landing','onSourceBuildHandler','',2,'fc391addc82a816df68510b0ae3363a5'),(146,NULL,100,'main','onBeforeSiteDelete','landing','','\\Bitrix\\Landing\\Site','onBeforeMainSiteDelete','',2,'5faa9b5de931dbb101e2e0aef6fc594b'),(147,NULL,100,'main','onSiteDelete','landing','','\\Bitrix\\Landing\\Site','onMainSiteDelete','',2,'af029bceca7ea9cc809515e95bd3a710'),(148,NULL,100,'main','onUserConsentProviderList','landing','','\\Bitrix\\Landing\\Site\\Cookies','onUserConsentProviderList','',2,'f59a96e272348f934d62ba5d3ee79f21'),(149,NULL,100,'main','OnAfterFileDeleteDuplicate','landing','','\\Bitrix\\Landing\\Update\\Block\\DuplicateImages','onAfterFileDeleteDuplicate','',2,'b80f7597db6200591a0e0e41c14e0ee0'),(150,NULL,100,'mobile','onMobileMenuStructureBuilt','landing','','\\Bitrix\\Landing\\Connector\\Mobile','onMobileMenuStructureBuilt','',2,'01fd8a44b83b5f7fcd2f36a626657ad0'),(151,NULL,100,'rest','onRestServiceBuildDescription','landing','','\\Bitrix\\Landing\\Publicaction','restBase','',2,'9af99ddecf2dd8c3c5b14721f23e8fef'),(152,NULL,100,'rest','onBeforeApplicationUninstall','landing','','\\Bitrix\\Landing\\Publicaction','beforeRestApplicationDelete','',2,'ef1f080a088ad54298a4ba9bf2896313'),(153,NULL,100,'rest','onRestAppDelete','landing','','\\Bitrix\\Landing\\Publicaction','restApplicationDelete','',2,'031cfc016e3be91368376a391c351dea'),(154,NULL,100,'rest','onRestApplicationConfigurationGetManifest','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','getManifestList','',2,'b88124aac7c2c8ddecf2ce127a9c6ef8'),(155,NULL,100,'rest','onRestApplicationConfigurationExport','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onEventExportController','',2,'917b00a9f82e6b8f7899a6e8c3b22236'),(156,NULL,100,'rest','onRestApplicationConfigurationGetManifestSetting','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onInitManifest','',2,'99fa9aa37a23a371cca0153c840c7802'),(157,NULL,100,'rest','onRestApplicationConfigurationEntity','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','getEntityList','',2,'820df699b9abf22ce0356fc9957be794'),(158,NULL,100,'rest','onRestApplicationConfigurationImport','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onEventImportController','',2,'e65daaed01b2c52e6098ee47ddb7f07a'),(159,NULL,100,'rest','onRestApplicationConfigurationFinish','landing','','\\Bitrix\\Landing\\Transfer\\AppConfiguration','onFinish','',2,'45343e5617dca2ad06a5d13050232caf'),(160,NULL,100,'seo','onExtensionInstall','landing','','\\Bitrix\\Landing\\Hook\\Page\\PixelFb','changeBusinessPixel','',2,'27bf01f04349ff82ede423de62df5384'),(161,NULL,100,'socialnetwork','onFillSocNetFeaturesList','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetFeaturesList','',2,'9825d91c89b53b69655aa98ea4f3a6cf'),(162,NULL,100,'socialnetwork','onFillSocNetMenu','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onFillSocNetMenu','',2,'14ecfb8fb4fc20f22ddb5ac64783461d'),(163,NULL,100,'socialnetwork','onSocNetGroupDelete','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onSocNetGroupDelete','',2,'78202f1461a8822a105a19f45502c327'),(164,NULL,100,'socialnetwork','onSocNetFeaturesUpdate','landing','','\\Bitrix\\Landing\\Connector\\SocialNetwork','onSocNetFeaturesUpdate','',2,'d385df085957d9e418b63017d75630fe'),(165,NULL,100,'ui','onUIFormInitialize','location','','\\Bitrix\\Location\\Infrastructure\\EventHandler','onUIFormInitialize','',2,'462272192a150e16b28f1e1bd33ed62b'),(166,NULL,100,'main','OnAfterEpilog','messageservice','','\\Bitrix\\MessageService\\Queue','run','',1,'6bcb21b0ccc5ac89d9531ddf8b94683c'),(167,NULL,100,'rest','OnRestServiceBuildDescription','messageservice','','\\Bitrix\\MessageService\\RestService','onRestServiceBuildDescription','',1,'7524628243223e572590eea87cc03f73'),(168,NULL,100,'rest','OnRestAppDelete','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppDelete','',1,'5febc41cd526ecba95dbb4843dd9c134'),(169,NULL,100,'rest','OnRestAppUpdate','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppUpdate','',1,'7e77b4d550c200a4ec06872af7857ee6'),(170,NULL,100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1,'3a4da255b44f05899b64e66a40c12662'),(171,NULL,49,'main','OnBeforeProlog','rest','','CRestEventHandlers','OnBeforeProlog','',2,'395c9c42c3cc9392de1e5887617afe6d'),(172,NULL,100,'rest','OnRestServiceBuildDescription','rest','','CBitrixRestEntity','OnRestServiceBuildDescription','',2,'f63068b1eb62c36219518206e1e2827c'),(173,NULL,100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\User','onRestServiceBuildDescription','',2,'c9a03e9019564649e55f5409b661e050'),(174,NULL,100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Placement','onRestServiceBuildDescription','',2,'9751a266c2b6f6be5c34b1541bf7c194'),(175,NULL,100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Event','onRestServiceBuildDescription','',2,'842ad63f19aff6d810059c7e56739aae'),(176,NULL,100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\UserFieldType','onRestServiceBuildDescription','',2,'4caf68a5256aabe4abef37f24562e59b'),(177,NULL,100,'rest','onFindMethodDescription','rest','','\\Bitrix\\Rest\\Engine\\RestManager','onFindMethodDescription','',2,'4d0614f880674af333326dd5ba9b2828'),(178,NULL,100,'main','OnApplicationsBuildList','main','modules/rest/lib/apauth/application.php','\\Bitrix\\Rest\\APAuth\\Application','onApplicationsBuildList','',2,'9c39129872987f8dcc8baacc0c446ed7'),(179,NULL,100,'im','OnAfterConfirmNotify','rest','','\\Bitrix\\Rest\\NotifyIm','receive','',2,'2ac9c19fe69d4e106deaa6f4a7a4371b'),(180,NULL,100,'rest','\\Bitrix\\Rest\\APAuth\\Password::OnDelete','rest','','\\Bitrix\\Rest\\APAuth\\PermissionTable','onPasswordDelete','',2,'f04447ca635f045ec1a64e593964fc90'),(181,NULL,100,'perfmon','OnGetTableSchema','rest','','rest','OnGetTableSchema','',2,'47a76003c8f9f2d8c820f446e084ff39'),(182,NULL,100,'rest','OnRestApplicationConfigurationImport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventImportController','',2,'3fc1dd7e523b33f9d76c19e54d45c2fb'),(183,NULL,100,'rest','OnRestApplicationConfigurationExport','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventExportController','',2,'b90a349060c693506b740c4d36f75f5f'),(184,NULL,100,'rest','OnRestApplicationConfigurationClear','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','onEventClearController','',2,'75dccda637a740c033b2d014a84a8009'),(185,NULL,100,'rest','OnRestApplicationConfigurationEntity','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getEntityList','',2,'8d83d219eaf2f415d55fb67e221b7c3d'),(186,NULL,100,'rest','OnRestApplicationConfigurationGetManifest','rest','','\\Bitrix\\Rest\\Configuration\\AppConfiguration','getManifestList','',2,'6ba35b1f4b01d1e358e1b3a79ac437d6'),(187,NULL,100,'main','OnAfterSetOption_~mp24_paid_date','rest','','\\Bitrix\\Rest\\Marketplace\\Client','onChangeSubscriptionDate','',2,'b6ab5bafe2befd82726761f5a8b38a0b'),(188,NULL,100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\OAuth\\Auth','onRestCheckAuth','',2,'70e923729089b8cba69bb3b4311da11e'),(189,NULL,100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\APAuth\\Auth','onRestCheckAuth','',2,'3550e6c95772564101770e0c9cb54470'),(190,NULL,100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\SessionAuth\\Auth','onRestCheckAuth','',2,'8e33ae5a47b59d21df7d26f916d19e38'),(191,NULL,100,'main','OnAfterRegisterModule','rest','','\\Bitrix\\Rest\\Engine\\ScopeManager','onChangeRegisterModule','',2,'900fb8bbf0d59d1924bedae5da1b6eb1'),(192,NULL,100,'main','OnAfterUnRegisterModule','rest','','\\Bitrix\\Rest\\Engine\\ScopeManager','onChangeRegisterModule','',2,'e97e569fe3fc7775aa4ece09cdf209bc'),(193,NULL,100,'main','OnAfterRegisterModule','rest','','\\Bitrix\\Rest\\Marketplace\\TagTable','onAfterRegisterModule','',2,'80afec537db1eeda99462f0676dbb835'),(194,NULL,100,'main','OnAfterUnRegisterModule','rest','','\\Bitrix\\Rest\\Marketplace\\TagTable','onAfterUnRegisterModule','',2,'fe9cb5af7e8ca277ca29b4a5423bd08b'),(195,NULL,100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1,'1c37aedc2ec89f94624291d097fe7adf'),(196,NULL,100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1,'d51170fc3433fde7eab8edc1c2b933a0'),(197,NULL,100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1,'05382d7448b1ba259b89bf9e87e4eb44'),(198,NULL,100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1,'15ebda82514af5a966b3466cd26992a4'),(199,NULL,100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1,'9e0cea5039973193afc706ec8978d674'),(200,NULL,100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1,'524a910f381ba144bf50caa152222ed6'),(201,NULL,100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1,'a40ffd36df151e2c0294b5639e81d665'),(202,NULL,100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1,'9c8df2577e0cb80c68afa2030e193efb'),(203,NULL,90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1,'6b3591ad78ac2a3ce6ad411f0aff47fe'),(204,NULL,100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2,'79688b0b4a106b805d09e63ffe88f580'),(205,NULL,100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2,'7995eac5813e40f6b3e82b146631397e'),(206,NULL,100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2,'313b34609f1fa34d34cde1c2103c09ff'),(207,NULL,100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2,'c61de21b0b0873525fa5c39427324664'),(208,NULL,100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2,'1b167ab85d6d744bba456e559546f13e'),(209,NULL,100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2,'148ce014df9dd9f99f17ebfc5d766e8a'),(210,NULL,100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2,'4b1e9896d9f0aa37a7039a321f25f9a5'),(211,NULL,100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2,'b699c1c0d6665f9cffe7ff76ab108a24'),(212,NULL,100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2,'ff3a36654015c53890f4cf2204b030c4'),(213,NULL,100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2,'aa5f8c360ed88eb5e2884c57b6f1f2f3'),(214,NULL,100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2,'a1022e0619263c0e91139fb3f9837085'),(215,NULL,100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2,'27930cffcd40b84666d0a22e1a953c41'),(216,NULL,100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2,'f0151e07363564774d45acba4100aebe'),(217,NULL,100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2,'d4d54756116942c9ee0bda9b31e9d0e7'),(218,NULL,100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2,'3e0a8569016a4c941f3eb4aa9fca6e8b'),(219,NULL,100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2,'7f4379c818231561b41589d3de41e36b'),(220,NULL,100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2,'c894d167ef03c35375b8eb8f2551a798'),(221,NULL,100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2,'5fdf8dd9fd70719e442efcb589175bf0'),(222,NULL,100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2,'07d4ab0b1aa0aa130a0cbc06403f6eae'),(223,NULL,100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2,'cf6298b090e92e955b32c358c1d14b25'),(224,NULL,100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2,'745afed820778e33d5cd3e91cbd622f1'),(225,NULL,100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2,'12861bd5c6c27ffa2abe5cac90ea58d8'),(226,NULL,100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2,'ead8fb64fece572d1fabd3d6fd27af27'),(227,NULL,100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2,'b7b9ac4bbf458d433e1cf3835ff4cb6c'),(228,NULL,100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2,'c19eb7659342fabc34b953f69e8b9eee'),(229,NULL,100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2,'379294eefad289e474bf0c5ce2a281d8'),(230,NULL,100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'0f4deda4d57adb4389d85a19e5bbcf2b'),(231,NULL,100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'3d040ae51f0f6a4b2a08be0e6e1494d4'),(232,NULL,100,'bitrix24','onDomainChange','seo','','\\Bitrix\\Seo\\Service','changeRegisteredDomain','',2,'fcb2dadb8b7ff1863c0ad86320e9e521'),(246,NULL,100,'main','OnUserDelete','ui','','\\Bitrix\\UI\\Integration\\Main\\User','onDelete','',2,'5e748ff204d0dac471be127b136eeb1d'),(247,NULL,100,'main','OnFileDelete','ui','','\\Bitrix\\UI\\Avatar\\Mask\\Item','onFileDelete','',2,'bdf678d45b7e9f3ce906099a5e4fc975'),(248,NULL,100,'rest','onRestAppDelete','ui','','\\Bitrix\\UI\\Integration\\Rest\\App','onRestAppDelete','',2,'b213605cfa38675d5e4b60f257f6acce'),(249,NULL,100,'rest','OnRestAppInstall','ui','','\\Bitrix\\UI\\Integration\\Rest\\App','OnRestAppInstall','',2,'206ce4eafe25cc4b5fbaddfa36eaba47'),(250,NULL,100,'rest','onRestApplicationConfigurationGetManifest','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationGetManifest','',2,'daad84620a1a84daef4884f1162e2099'),(251,NULL,100,'rest','onRestApplicationConfigurationGetManifestSetting','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationGetManifestSetting','',2,'b3290d964ad532e24a892bae6001146c'),(252,NULL,100,'rest','onRestApplicationConfigurationExport','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationExport','',2,'ac9b60f1d69d98c3980413800a3524f7'),(253,NULL,100,'rest','onRestApplicationConfigurationEntity','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationEntity','',2,'8d609b415b9bfa097d137ab69ba6903f'),(254,NULL,100,'rest','onRestApplicationConfigurationImport','ui','','\\Bitrix\\UI\\Integration\\Rest\\MaskManifest','onRestApplicationConfigurationImport','',2,'b1a5ce1bd868f8c86462c5b60eec1307'),(255,NULL,100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1,'bbd7b8c1e518a0b3eae815eb91a95c11');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator`
--

DROP TABLE IF EXISTS `b_numerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_numerator` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_numerator_code` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator`
--

LOCK TABLES `b_numerator` WRITE;
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator_sequence`
--

DROP TABLE IF EXISTS `b_numerator_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int DEFAULT NULL,
  `LAST_INVOCATION_TIME` int DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator_sequence`
--

LOCK TABLES `b_numerator_sequence` WRITE;
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_operation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'bitrixcloud_monitoring','bitrixcloud',NULL,'module'),(37,'bitrixcloud_backup','bitrixcloud',NULL,'module'),(38,'clouds_browse','clouds',NULL,'module'),(39,'clouds_upload','clouds',NULL,'module'),(40,'clouds_config','clouds',NULL,'module'),(41,'fileman_view_all_settings','fileman','','module'),(42,'fileman_edit_menu_types','fileman','','module'),(43,'fileman_add_element_to_menu','fileman','','module'),(44,'fileman_edit_menu_elements','fileman','','module'),(45,'fileman_edit_existent_files','fileman','','module'),(46,'fileman_edit_existent_folders','fileman','','module'),(47,'fileman_admin_files','fileman','','module'),(48,'fileman_admin_folders','fileman','','module'),(49,'fileman_view_permissions','fileman','','module'),(50,'fileman_edit_all_settings','fileman','','module'),(51,'fileman_upload_files','fileman','','module'),(52,'fileman_view_file_structure','fileman','','module'),(53,'fileman_install_control','fileman','','module'),(54,'medialib_view_collection','fileman','','medialib'),(55,'medialib_new_collection','fileman','','medialib'),(56,'medialib_edit_collection','fileman','','medialib'),(57,'medialib_del_collection','fileman','','medialib'),(58,'medialib_access','fileman','','medialib'),(59,'medialib_new_item','fileman','','medialib'),(60,'medialib_edit_item','fileman','','medialib'),(61,'medialib_del_item','fileman','','medialib'),(62,'sticker_view','fileman','','stickers'),(63,'sticker_edit','fileman','','stickers'),(64,'sticker_new','fileman','','stickers'),(65,'sticker_del','fileman','','stickers'),(66,'hl_element_read','highloadblock',NULL,'module'),(67,'hl_element_write','highloadblock',NULL,'module'),(68,'hl_element_delete','highloadblock',NULL,'module'),(69,'section_read','iblock',NULL,'iblock'),(70,'element_read','iblock',NULL,'iblock'),(71,'section_element_bind','iblock',NULL,'iblock'),(72,'iblock_admin_display','iblock',NULL,'iblock'),(73,'element_edit','iblock',NULL,'iblock'),(74,'element_edit_price','iblock',NULL,'iblock'),(75,'element_delete','iblock',NULL,'iblock'),(76,'element_bizproc_start','iblock',NULL,'iblock'),(77,'section_edit','iblock',NULL,'iblock'),(78,'section_delete','iblock',NULL,'iblock'),(79,'section_section_bind','iblock',NULL,'iblock'),(80,'element_edit_any_wf_status','iblock',NULL,'iblock'),(81,'iblock_edit','iblock',NULL,'iblock'),(82,'iblock_delete','iblock',NULL,'iblock'),(83,'iblock_rights_edit','iblock',NULL,'iblock'),(84,'iblock_export','iblock',NULL,'iblock'),(85,'section_rights_edit','iblock',NULL,'iblock'),(86,'element_rights_edit','iblock',NULL,'iblock'),(87,'landing_read','landing',NULL,'module'),(88,'landing_edit','landing',NULL,'module'),(89,'landing_sett','landing',NULL,'module'),(90,'landing_public','landing',NULL,'module'),(91,'landing_delete','landing',NULL,'module'),(92,'seo_settings','seo','','module'),(93,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8mb3_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('fileman','GROUP_DEFAULT_TASK','18',NULL,NULL),('fileman','stickers_use_hotkeys','N',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('fileman','use_pspell','N',NULL,NULL),('landing','pub_path_s1','/lp/',NULL,NULL),('location','address_format_code','RU',NULL,NULL),('main','~crypto_b_socialservices_user','a:2:{s:7:\"OATOKEN\";b:1;s:13:\"REFRESH_TOKEN\";b:1;}',NULL,NULL),('main','~crypto_b_user_auth_code','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~crypto_b_user_phone_auth','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~new_license18_0_sign','Y',NULL,NULL),('main','~update_autocheck_result','a:4:{s:10:\"check_date\";i:1715869701;s:6:\"result\";b:0;s:5:\"error\";s:0:\"\";s:7:\"modules\";a:0:{}}',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','admin_passwordh','FVkQfmYUBgUtCUVcAxcCCgsTAQ==',NULL,NULL),('main','control_file_duplicates','Y',NULL,NULL),('main','email_from','bravo4ek@gmail.com',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','last_mp_modules_result','a:4:{s:10:\"check_date\";i:1715932031;s:13:\"update_module\";a:0:{}s:10:\"end_update\";a:0:{}s:10:\"new_module\";a:0:{}}',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','PARAM_MAX_SITES','2',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_authority_rating','2',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_authority','30',NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_community_size','1',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_vote_type','like',NULL,NULL),('main','rating_vote_weight','10',NULL,NULL),('main','secure_logout','Y',NULL,NULL),('main','server_uniq_id','T',NULL,NULL),('main','signer_default_key','a8a5f23fcd7b959d4cdf7bcf976440c1b414ac17cdaa998cfd2bb6805b50132750e856e877861aaa308ea7e5f72df7feaf1421f95e169c49d8507250c7022342',NULL,NULL),('main','site_checker_success','N',NULL,NULL),('main','smile_last_update','1715869549',NULL,NULL),('main','update_site','www.1c-bitrix.ru',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('messageservice','clean_up_period','14',NULL,NULL),('perfmon','bitrix_optimal','N',NULL,NULL),('rest','app_immune','[\"infoservice.migrator_amocrm\",\"informunity.excel\",\"integrations24ru.pipedrive\",\"integrations24ru.asana\",\"integrations24ru.sugar\",\"bitrix.eshop\",\"bitrix.1cdoc\",\"bitrix.assistant\",\"bitrix.denominationby\",\"bitrix.propertiesbot\",\"bitrix.giphybot\",\"bitrix.1c\",\"bitrix.restapi\",\"bitrix.partnerlandingexport\",\"bitrix.partnerapplication\",\"bitrix.partnerlanding\",\"bitrix.1ctotal\",\"integrations24.pipedrive\",\"integrations24ru.pipedrive\",\"integrations24.zoho\",\"integrations24.asana\",\"integrations24ru.asana\",\"integrations24.sugar\",\"integrations24ru.sugar\",\"integrations24.jira_migration\",\"integrations24.qbinventory\",\"integrations24.zohoinventory\",\"integrations24.trello\",\"integrations24ru.slack_migration\",\"SEVERCODE.trello_migrator\",\"htmls.ms_migrator\",\"integrations24.mns_kazakhstan_poisk_po_bin\",\"integrations24.portal_nalog_gov_by\",\"integrations24ru.microsoft_teams_migration\",\"bitrix.pbi_all\",\"bitrix.pbi_company\",\"bitrix.pbi_company_uf\",\"bitrix.pbi_contact\",\"bitrix.pbi_contact_uf\",\"bitrix.pbi_crm_activity\",\"bitrix.pbi_deal_product_row\",\"bitrix.pbi_deal_stage_history\",\"bitrix.pbi_deals_ru\",\"bitrix.pbi_lead\",\"bitrix.pbi_lead_product_row\",\"bitrix.pbi_lead_uf\",\"bitrix.pbi_leads_ru\",\"bitrix.pbi_socialnetwork_group\",\"bitrix.pbi_telephony\",\"bitrix.pbi_user\",\"bitrix.gds_all\",\"bitrix.gds_company\",\"bitrix.gds_company_uf\",\"bitrix.gds_contact\",\"bitrix.gds_contact_uf\",\"bitrix.gds_crm_activity\",\"bitrix.gds_deal_product_row\",\"bitrix.gds_deal_stage_history\",\"bitrix.gds_deals_ru\",\"bitrix.gds_lead\",\"bitrix.gds_lead_product_row\",\"bitrix.gds_lead_uf\",\"bitrix.gds_leads_ru\",\"bitrix.gds_socialnetwork_group\",\"bitrix.gds_telephony\",\"bitrix.gds_user\",\"bitrix.gds_activity\",\"bitrix.gds_deal_uf\",\"bitrix.gds_telephony_call\",\"itsolutionru.gptconnector\",\"asmo.ai\",\"bitrix.bic_datasets_en\",\"bitrix.bic_datasets_kz\",\"bitrix.bic_datasets_ru\",\"bitrix.bic_deals_en\",\"bitrix.bic_deals_kz\",\"bitrix.bic_deals_ru\",\"bitrix.bic_leads_en\",\"bitrix.bic_leads_kz\",\"bitrix.bic_leads_ru\",\"bitrix.bic_sales_en\",\"bitrix.bic_sales_kz\",\"bitrix.bic_sales_ru\",\"bitrix.bic_sales_struct_en\",\"bitrix.bic_sales_struct_kz\",\"bitrix.bic_sales_struct_ru\",\"bitrix.bic_telephony_en\",\"bitrix.bic_telephony_kz\",\"bitrix.bic_telephony_ru\",\"bitrix.bic_deals_complex\",\"bitrix.bic_general_stat\",\"bitrix.bic_lead_generation\",\"bitrix.kompleksnaya_analitika_sdelok\",\"integrations24.telegram_repost\",\"bitrix.bic_telephony_ru\",\"bitrix.bic_sales_struct_ru\",\"bitrix.bic_sales_ru\",\"bitrix.bic_leads_ru\",\"bitrix.bic_deals_ru\",\"bitrix.bic_datasets_ru\",\"bitrix.bic_datasets_en\",\"bitrix.bic_deals_en\",\"bitrix.bic_leads_en\",\"bitrix.bic_sales_en\",\"bitrix.bic_sales_struct_en\",\"bitrix.bic_telephony_en\",\"bitrix.bic_datasets_kz\",\"bitrix.bic_deals_kz\",\"bitrix.bic_leads_kz\",\"bitrix.bic_sales_kz\",\"bitrix.bic_sales_struct_kz\",\"bitrix.bic_telephony_kz\",\"bitrix.bic_deals_complex\",\"bitrix.bic_general_stat\",\"bitrix.bic_lead_generation\",\"bitrix.bic_retention\",\"bitrix.bic_abcanalysis\",\"bitrix.bic_bizproc\",\"bitrix.bic_catdeal\",\"bitrix.khellouin_ru\",\"bitrix.den_zashchitnika_otechestva_2_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_ua\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_ua\",\"bitrix.mezhdunarodnyy_zhenskiy_den_ua\",\"bitrix.den_smekha_ua\",\"bitrix.den_svyatogo_valentina_ua\",\"bitrix.den_vsekh_vlyublyennykh_ua\",\"bitrix.katolicheskaya_paskha_ua\",\"bitrix.novyy_god_ua\",\"bitrix.rozhdestvo_ua\",\"bitrix.valentinov_den_ua\",\"bitrix.pravoslavnaya_paskha_ua\",\"bitrix.chernaya_pyatnitsa_ua\",\"bitrix.khellouin_ua\",\"bitrix.den_zashchitnika_otechestva_3_ru\",\"bitrix.den_zashchitnika_otechestva_ru\",\"bitrix.den_zashchitnika_otechestva_by\",\"bitrix.den_zashchitnika_otechestva_2_by\",\"bitrix.den_zashchitnika_otechestva_3_by\",\"bitrix.den_zashchitnika_otechestva_kz\",\"bitrix.den_zashchitnika_otechestva_2_kz\",\"bitrix.den_zashchitnika_otechestva_3_kz\",\"bitrix.pravoslavnaya_paskha_ru\",\"bitrix.pravoslavnaya_paskha_by\",\"bitrix.pravoslavnaya_paskha_kz\",\"bitrix.den_smekha_ru\",\"bitrix.den_smekha_by\",\"bitrix.den_smekha_kz\",\"bitrix.valentinov_den_ru\",\"bitrix.valentinov_den_by\",\"bitrix.valentinov_den_kz\",\"bitrix.rozhdestvo_ru\",\"bitrix.rozhdestvo_by\",\"bitrix.rozhdestvo_kz\",\"bitrix.novyy_god_ru\",\"bitrix.novyy_god_by\",\"bitrix.novyy_god_kz\",\"bitrix.katolicheskaya_paskha_ru\",\"bitrix.katolicheskaya_paskha_by\",\"bitrix.katolicheskaya_paskha_kz\",\"bitrix.den_vsekh_vlyublyennykh_ru\",\"bitrix.den_vsekh_vlyublyennykh_by\",\"bitrix.den_vsekh_vlyublyennykh_kz\",\"bitrix.den_svyatogo_valentina_ru\",\"bitrix.den_svyatogo_valentina_by\",\"bitrix.den_svyatogo_valentina_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_2_kz\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_ru\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_by\",\"bitrix.mezhdunarodnyy_zhenskiy_den_3_kz\",\"bitrix.thanksgiving_day_en\",\"bitrix.april_fools_day_en\",\"bitrix.valentine_s_day_en\",\"bitrix.valentine_s_day_2_en\",\"bitrix.valentine_s_day_3_en\",\"bitrix.chernaya_pyatnitsa_ru\",\"bitrix.chernaya_pyatnitsa_by\",\"bitrix.chernaya_pyatnitsa_kz\",\"bitrix.khellouin_by\",\"bitrix.khellouin_kz\",\"bitrix.easter_en\",\"bitrix.halloween_en\",\"bitrix.christmas_en\",\"bitrix.new_year_en\",\"bitrix.black_friday_en\",\"bitrix.kraytvirtualtravel_ru\",\"bitrix.kraytvirtualtravel_by\",\"bitrix.kraytvirtualtravel_kz\",\"bitrix.kraytvirtualtravel_ua\",\"bitrix.kraytnutritionist_ru\",\"bitrix.kraytnutritionist_by\",\"bitrix.delobotcorporatetraining_en\",\"bitrix.delobotblackfriday_en\",\"bitrix.delobotcleaningcompany_en\",\"bitrix.delobotfitness_en\",\"bitrix.delobotfooddelivery_en\",\"bitrix.delobotvisagiste_en\",\"bitrix.delobotpsychologist_en\",\"bitrix.delobotflorist_en\",\"bitrix.delobotdecoration_en\",\"bitrix.delobotcarservice_en\",\"bitrix.kraytagency_en\",\"bitrix.kraytagriculture_en\",\"bitrix.kraytarchitecture_en\",\"bitrix.kraytbusiness_en\",\"bitrix.kraytdelivery_en\",\"bitrix.kraytevents_en\",\"bitrix.kraythalloween_en\",\"bitrix.kraytvetclinic_en\",\"bitrix.kraytmasterforhour_en\",\"bitrix.kraytinstagramcontacts_en\",\"bitrix.kraytinstagramstock_en\",\"bitrix.kraytinstagramtarget_en\",\"bitrix.kraytonlinebabysitter_en\",\"bitrix.kraytpetservice_en\",\"bitrix.kraytsolarenergy_en\",\"bitrix.kraytsportonline_en\",\"bitrix.kraytsummersale_en\",\"bitrix.krayttravelblog_en\",\"bitrix.kraytvebinar_en\",\"bitrix.kraytartificialintelligence_en\",\"bitrix.kraytbakeryproducts_en\",\"bitrix.kraytchildrensschool_en\",\"bitrix.kraytfooddelivery_en\",\"bitrix.kraytfurniture_en\",\"bitrix.kraytvirtualtravel_en\",\"bitrix.kraytyoutubechannel_en\",\"bitrix.kraytknitting_en\",\"bitrix.kraytnutritionist_en\",\"bitrix.kraytnailservice_en\",\"bitrix.kraytmedicine_en\",\"bitrix.kraytprofipage_en\",\"bitrix.kraytsale11_en\",\"bitrix.delobotblackfriday_ua\",\"bitrix.delobotcleaning_ua\",\"bitrix.delobotcorporatetraining_ua\",\"bitrix.delobotfitness_ua\",\"bitrix.delobotfooddelivery_ua\",\"bitrix.delobotvisagiste_ua\",\"bitrix.kraytagency_ua\",\"bitrix.kraytagriculture_ua\",\"bitrix.kraytarchitecture_ua\",\"bitrix.kraytbusiness_ua\",\"bitrix.kraytevents_ua\",\"bitrix.kraythalloween_ua\",\"bitrix.kraytinstagramcontacts_ua\",\"bitrix.kraytinstagramstock_ua\",\"bitrix.kraytinstagramtarget_ua\",\"bitrix.kraytpetservice_ua\",\"bitrix.kraytsolarenergy_ua\",\"bitrix.kraytsummersale_ua\",\"bitrix.krayttravelblog_ua\",\"bitrix.kraytvebinar_ua\",\"bitrix.kraytvetclinic_ua\",\"bitrix.kraytnutritionist_ua\",\"bitrix.kraytnutritionist_kz\",\"bitrix.kraytfurniture_by\",\"bitrix.kraytfurniture_ru\",\"bitrix.kraytfurniture_kz\",\"bitrix.kraytfurniture_ua\",\"bitrix.kraytmedicine_ru\",\"bitrix.kraytmedicine_by\",\"bitrix.kraytmedicine_kz\",\"bitrix.kraytmedicine_ua\",\"bitrix.kraytsale11_ru\",\"bitrix.kraytsale11_by\",\"bitrix.kraytsale11_kz\",\"bitrix.kraytsale11_ua\",\"bitrix.kraytnailservice_ru\",\"bitrix.kraytnailservice_by\",\"bitrix.kraytnailservice_kz\",\"bitrix.kraytnailservice_ua\",\"bitrix.kraytknitting_ru\",\"bitrix.kraytknitting_by\",\"bitrix.kraytknitting_kz\",\"bitrix.kraytknitting_ua\",\"bitrix.kraytfooddelivery_ru\",\"bitrix.kraytfooddelivery_by\",\"bitrix.kraytfooddelivery_kz\",\"bitrix.kraytfooddelivery_ua\",\"bitrix.kraytbakeryproducts_ru\",\"bitrix.kraytbakeryproducts_by\",\"bitrix.kraytbakeryproducts_kz\",\"bitrix.kraytbakeryproducts_ua\",\"bitrix.kraytschoolmusic_ru\",\"bitrix.kraytschoolmusic_by\",\"bitrix.kraytschoolmusic_kz\",\"bitrix.kraytschoolmusic_ua\",\"bitrix.kraytautomechanic_ru\",\"bitrix.kraytautomechanic_by\",\"bitrix.kraytautomechanic_kz\",\"bitrix.kraytautomechanic_ua\",\"bitrix.kraytpresents_ru\",\"bitrix.kraytpresents_by\",\"bitrix.kraytpresents_kz\",\"bitrix.kraytpresents_ua\",\"bitrix.kraytportfoliophotographer_ru\",\"bitrix.kraytportfoliophotographer_by\",\"bitrix.kraytportfoliophotographer_kz\",\"bitrix.kraytportfoliophotographer_ua\",\"bitrix.kraytcrm_ru\",\"bitrix.delobotcleaningcompany_ru\",\"bitrix.delobotblackfriday_ru\",\"bitrix.delobotblackfriday_by\",\"bitrix.delobotblackfriday_kz\",\"bitrix.delobotcleaningcompany_by\",\"bitrix.delobotcleaningcompany_kz\",\"bitrix.delobotcorporatetraining_ru\",\"bitrix.delobotcorporatetraining_by\",\"bitrix.delobotcorporatetraining_kz\",\"bitrix.delobotfitness_ru\",\"bitrix.delobotfitness_by\",\"bitrix.delobotfitness_kz\",\"bitrix.delobotfooddelivery_ru\",\"bitrix.delobotfooddelivery_by\",\"bitrix.delobotfooddelivery_kz\",\"bitrix.delobotvisagiste_ru\",\"bitrix.delobotvisagiste_by\",\"bitrix.delobotvisagiste_kz\",\"bitrix.delobotgiftsforwomensday_ru\",\"bitrix.delobotgiftsforwomensday_by\",\"bitrix.delobotgiftsforwomensday_kz\",\"bitrix.delobotgiftsforwomensday_ua\",\"bitrix.delobotwebdesigner_ru\",\"bitrix.delobotwebdesigner_by\",\"bitrix.delobotwebdesigner_kz\",\"bitrix.delobotwebdesigner_ua\",\"bitrix.delobotatelier_ru\",\"bitrix.delobotatelier_by\",\"bitrix.delobotatelier_kz\",\"bitrix.delobotatelier_ua\",\"bitrix.delobotconstructioncompany_ru\",\"bitrix.delobotconstructioncompany_by\",\"bitrix.delobotconstructioncompany_ua\",\"bitrix.delobotlanguageschool_ru\",\"bitrix.delobotlanguageschool_by\",\"bitrix.delobotlanguageschool_kz\",\"bitrix.delobotlanguageschool_ua\",\"bitrix.delobotcoffee_ru\",\"bitrix.delobotcoffee_by\",\"bitrix.delobotcoffee_kz\",\"bitrix.delobotcoffee_ua\",\"bitrix.kraytcrm_by\",\"bitrix.kraytcrm_kz\",\"bitrix.kraytcrm_ua\",\"bitrix.kraytonlinebabysitter_ru\",\"bitrix.kraytonlinebabysitter_by\",\"bitrix.kraytonlinebabysitter_kz\",\"bitrix.kraytonlinebabysitter_uaa\",\"bitrix.kraytsportonline_ru\",\"bitrix.kraytsportonline_by\",\"bitrix.kraytsportonline_kz\",\"bitrix.kraytsportonline_ua\",\"bitrix.kraytmasterforhour_ru\",\"bitrix.kraytmasterforhour_by\",\"bitrix.kraytmasterforhour_kz\",\"bitrix.kraytmasterforhour_ua\",\"bitrix.kraytdelivery_ru\",\"bitrix.kraytdelivery_by\",\"bitrix.kraytdelivery_kz\",\"bitrix.kraytdelivery_ua\",\"bitrix.kraytrepairservice_ru\",\"bitrix.kraytrepairservice_by\",\"bitrix.kraytrepairservice_kz\",\"bitrix.kraytrepairservice_ua\",\"bitrix.kraytprofipage_ru\",\"bitrix.kraytprofipage_by\",\"bitrix.kraytprofipage_kz\",\"bitrix.kraytprofipage_ua\",\"bitrix.krayttutor_ru\",\"bitrix.krayttutor_by\",\"bitrix.krayttutor_kz\",\"bitrix.krayttutor_ua\",\"bitrix.kraytartificialintelligence_ru\",\"bitrix.kraytartificialintelligence_by\",\"bitrix.kraytartificialintelligence_kz\",\"bitrix.kraytartificialintelligence_ua\",\"bitrix.kraytyoutubechannel_ru\",\"bitrix.kraytyoutubechannel_by\",\"bitrix.kraytyoutubechannel_kz\",\"bitrix.kraytyoutubechannel_ua\",\"bitrix.kraytchildrensschool_ru\",\"bitrix.kraytchildrensschool_by\",\"bitrix.kraytchildrensschool_kz\",\"bitrix.kraytchildrensschool_ua\",\"bitrix.krayttravelagency_ru\",\"bitrix.krayttravelagency_by\",\"bitrix.krayttravelagency_kz\",\"bitrix.krayttravelagency_ua\",\"bitrix.krayttranslator_ru\",\"bitrix.krayttranslator_by\",\"bitrix.krayttranslator_kz\",\"bitrix.krayttranslator_ua\",\"bitrix.kraytstylist_ru\",\"bitrix.kraytstylist_by\",\"bitrix.kraytstylist_kz\",\"bitrix.kraytstylist_ua\",\"bitrix.kraytstretchingstudio_ru\",\"bitrix.kraytstretchingstudio_by\",\"bitrix.kraytstretchingstudio_kz\",\"bitrix.kraytstretchingstudio_ua\",\"bitrix.kraytsportschool_ru\",\"bitrix.kraytsportschool_by\",\"bitrix.kraytsportschool_kz\",\"bitrix.kraytsportschool_ua\",\"bitrix.kraytsitedesigner_ru\",\"bitrix.kraytsitedesigner_by\",\"bitrix.kraytsitedesigner_kz\",\"bitrix.kraytsitedesigner_ua\",\"bitrix.kraytsport_ru\",\"bitrix.kraytsport_by\",\"bitrix.kraytsport_kz\",\"bitrix.kraytsport_ua\",\"bitrix.kraytmobileapp_ru\",\"bitrix.kraytmobileapp_by\",\"bitrix.kraytmobileapp_kz\",\"bitrix.kraytmobileapp_ua\",\"bitrix.kraytrealestate_ru\",\"bitrix.kraytrealestate_by\",\"bitrix.kraytrealestate_kz\",\"bitrix.kraytrealestate_ua\",\"bitrix.delobotnewyearsale_ru\",\"bitrix.delobotnewyearsale_by\",\"bitrix.delobotnewyearsale_kz\",\"bitrix.delobotnewyearsale_ua\",\"bitrix.delobotyoga_ru\",\"bitrix.delobotyoga_by\",\"bitrix.delobotyoga_kz\",\"bitrix.delobotyoga_ua\",\"bitrix.delobotcake_ru\",\"bitrix.delobotcake_by\",\"bitrix.delobotcake_kz\",\"bitrix.delobotcake_ua\",\"bitrix.delobotveterinarian_ru\",\"bitrix.delobotveterinarian_by\",\"bitrix.delobotveterinarian_kz\",\"bitrix.delobotveterinarian_ua\",\"bitrix.delobotpsychologist_ru\",\"bitrix.delobotpsychologist_by\",\"bitrix.delobotpsychologist_kz\",\"bitrix.delobotpsychologist_ua\",\"bitrix.delobotdecoration_ru\",\"bitrix.delobotdecoration_by\",\"bitrix.delobotdecoration_kz\",\"bitrix.delobotdecoration_ua\",\"bitrix.delobotflorist_ru\",\"bitrix.delobotflorist_by\",\"bitrix.delobotflorist_kz\",\"bitrix.delobotflorist_ua\",\"bitrix.delobotcarservice_ru\",\"bitrix.delobotcarservice_by\",\"bitrix.delobotcarservice_kz\",\"bitrix.delobotcarservice_ua\",\"bitrix.delobotcargotransportation_ru\",\"bitrix.delobotcargotransportation_by\",\"bitrix.delobotcargotransportation_kz\",\"bitrix.delobotcargotransportation_ua\",\"bitrix.delobotrealtor_ru\",\"bitrix.delobotrealtor_by\",\"bitrix.delobotrealtor_kz\",\"bitrix.delobotrealtor_ua\",\"bitrix.delobotfurnituremanufacturing_ru\",\"bitrix.delobotfurnituremanufacturing_by\",\"bitrix.delobotfurnituremanufacturing_kz\",\"bitrix.delobotfurnituremanufacturing_ua\",\"bitrix.delobotorganizationofholidays_ru\",\"bitrix.delobotorganizationofholidays_by\",\"bitrix.delobotorganizationofholidays_kz\",\"bitrix.delobotorganizationofholidays_ua\",\"bitrix.delobotconcertannounce_ru\",\"bitrix.delobotconcertannounce_by\",\"bitrix.delobotconcertannounce_kz\",\"bitrix.delobotconcertannounce_ua\",\"bitrix.delobotphotographersservice_ru\",\"bitrix.delobotphotographersservice_by\",\"bitrix.delobotphotographersservice_kz\",\"bitrix.delobotphotographersservice_ua\",\"bitrix.kraytsecurityagency_ru\",\"bitrix.kraytsecurityagency_by\",\"bitrix.kraytsecurityagency_kz\",\"bitrix.kraytsecurityagency_ua\",\"bitrix.kraytrecordingstudio_ru\",\"bitrix.kraytrecordingstudio_by\",\"bitrix.kraytrecordingstudio_kz\",\"bitrix.kraytrecordingstudio_ua\",\"bitrix.kraytrealestateagent_ru\",\"bitrix.kraytrealestateagent_by\",\"bitrix.kraytrealestateagent_kz\",\"bitrix.kraytrealestateagent_ua\",\"bitrix.delobotdecorationhouses_ru\",\"bitrix.delobotdecorationhouses_by\",\"bitrix.delobotdecorationhouses_kz\",\"bitrix.delobotdecorationhouses_ua\",\"bitrix.delobotairconditioners_ru\",\"bitrix.delobotairconditioners_by\",\"bitrix.delobotairconditioners_kz\",\"bitrix.delobotairconditioners_ua\",\"bitrix.delobotdesignworkshop_ru\",\"bitrix.delobotdesignworkshop_by\",\"bitrix.delobotdesignworkshop_kz\",\"bitrix.delobotdesignworkshop_ua\",\"bitrix.delobotcitygreeningproject_ru\",\"bitrix.delobotcitygreeningproject_by\",\"bitrix.delobotcitygreeningproject_kz\",\"bitrix.delobotcitygreeningproject_ua\",\"bitrix.delobotecoproducts_ru\",\"bitrix.delobotecoproducts_by\",\"bitrix.delobotecoproducts_kz\",\"bitrix.delobotecoproducts_ua\",\"bitrix.delobotsoundrecordingservices_ru\",\"bitrix.delobotsoundrecordingservices_by\",\"bitrix.delobotsoundrecordingservices_kz\",\"bitrix.delobotsoundrecordingservices_ua\",\"bitrix.delobotsecurityservice_ru\",\"bitrix.delobotsecurityservice_by\",\"bitrix.delobotsecurityservice_kz\",\"bitrix.delobotsecurityservice_ua\",\"bitrix.delobotsportschool_ru\",\"bitrix.delobotsportschool_by\",\"bitrix.delobotsportschool_kz\",\"bitrix.delobotsportschool_ua\",\"bitrix.delobotfamilyleisure_ru\",\"bitrix.delobotfamilyleisure_by\",\"bitrix.delobotfamilyleisure_kz\",\"bitrix.delobotfamilyleisure_ua\",\"bitrix.delobotdoctortherapist_ru\",\"bitrix.delobotdoctortherapist_by\",\"bitrix.delobotdoctortherapist_kz\",\"bitrix.delobotdoctortherapist_ua\",\"bitrix.kraytagency_ru\",\"bitrix.kraytagency_by\",\"bitrix.kraytagency_kz\",\"bitrix.kraytarchitecture_ru\",\"bitrix.kraytarchitecture_by\",\"bitrix.kraytarchitecture_kz\",\"bitrix.kraytagriculture_ru\",\"bitrix.kraytagriculture_by\",\"bitrix.kraytagriculture_kz\",\"bitrix.kraytbusiness_ru\",\"bitrix.kraytbusiness_by\",\"bitrix.kraytbusiness_kz\",\"bitrix.kraytevents_ru\",\"bitrix.kraytevents_by\",\"bitrix.kraytevents_kz\",\"bitrix.kraythalloween_ru\",\"bitrix.kraythalloween_by\",\"bitrix.kraythalloween_kz\",\"bitrix.kraytinstagramtarget_ru\",\"bitrix.kraytinstagramtarget_by\",\"bitrix.kraytinstagramtarget_kz\",\"bitrix.kraytinstagramcontacts_ru\",\"bitrix.kraytinstagramcontacts_by\",\"bitrix.kraytinstagramcontacts_kz\",\"bitrix.kraytinstagramstock_ru\",\"bitrix.kraytinstagramstock_by\",\"bitrix.kraytinstagramstock_kz\",\"bitrix.kraytpetservice_ru\",\"bitrix.kraytpetservice_by\",\"bitrix.kraytpetservice_kz\",\"bitrix.kraytsolarenergy_ru\",\"bitrix.kraytsolarenergy_by\",\"bitrix.kraytsolarenergy_kz\",\"bitrix.kraytsummersale_ru\",\"bitrix.kraytsummersale_by\",\"bitrix.kraytsummersale_kz\",\"bitrix.krayttravelblog_ru\",\"bitrix.krayttravelblog_by\",\"bitrix.krayttravelblog_kz\",\"bitrix.kraytvebinar_ru\",\"bitrix.kraytvebinar_by\",\"bitrix.kraytvebinar_kz\",\"bitrix.kraytvetclinic_ru\",\"bitrix.kraytvetclinic_by\",\"bitrix.kraytvetclinic_kz\",\"bitrix.kraytrestaurant_ru\",\"bitrix.kraytrestaurant_by\",\"bitrix.kraytrestaurant_kz\",\"bitrix.kraytrestaurant_ua\",\"bitrix.kraytweddingservices_ru\",\"bitrix.kraytweddingservices_by\",\"bitrix.kraytweddingservices_kz\",\"bitrix.kraytweddingservices_ua\",\"bitrix.kraytoptics_ru\",\"bitrix.kraytoptics_by\",\"bitrix.kraytoptics_kz\",\"bitrix.kraytoptics_ua\",\"bitrix.krayt3dprint_ru\",\"bitrix.krayt3dprint_by\",\"bitrix.krayt3dprint_kz\",\"bitrix.krayt3dprint_ua\",\"bitrix.kraytbusinesspremisesdesign_ru\",\"bitrix.kraytbusinesspremisesdesign_by\",\"bitrix.kraytbusinesspremisesdesign_kz\",\"bitrix.kraytbusinesspremisesdesign_ua\",\"bitrix.kraytcentersproject_ru\",\"bitrix.kraytcentersproject_by\",\"bitrix.kraytcentersproject_kz\",\"bitrix.kraytcentersproject_ua\",\"bitrix.kraytcitygreening_ru\",\"bitrix.kraytcitygreening_by\",\"bitrix.kraytcitygreening_kz\",\"bitrix.kraytcitygreening_ua\",\"bitrix.kraytclimatesystems_ru\",\"bitrix.kraytclimatesystems_by\",\"bitrix.kraytclimatesystems_kz\",\"bitrix.kraytclimatesystems_ua\",\"bitrix.kraytclinicmomandbaby_ru\",\"bitrix.kraytclinicmomandbaby_by\",\"bitrix.kraytclinicmomandbaby_kz\",\"bitrix.kraytclinicmomandbaby_ua\",\"bitrix.kraytdesignerclothing_ru\",\"bitrix.kraytdesignerclothing_by\",\"bitrix.kraytdesignerclothing_kz\",\"bitrix.kraytdesignerclothing_ua\",\"bitrix.kraytprivatedoctor_ru\",\"bitrix.kraytprivatedoctor_by\",\"bitrix.kraytprivatedoctor_kz\",\"bitrix.kraytprivatedoctor_ua\",\"bitrix.kraytprintinghouse_ru\",\"bitrix.kraytprintinghouse_by\",\"bitrix.kraytprintinghouse_kz\",\"bitrix.kraytprintinghouse_ua\",\"bitrix.kraytpersonalcoach_ru\",\"bitrix.kraytpersonalcoach_by\",\"bitrix.kraytpersonalcoach_kz\",\"bitrix.kraytpersonalcoach_ua\",\"bitrix.kraytperfumer_ru\",\"bitrix.kraytperfumer_by\",\"bitrix.kraytperfumer_kz\",\"bitrix.kraytperfumer_ua\",\"bitrix.kraytnewsblog_ru\",\"bitrix.kraytnewsblog_by\",\"bitrix.kraytnewsblog_kz\",\"bitrix.kraytnewsblog_ua\",\"bitrix.kraytmakeupstudio_ru\",\"bitrix.kraytmakeupstudio_by\",\"bitrix.kraytmakeupstudio_kz\",\"bitrix.kraytmakeupstudio_ua\",\"bitrix.kraytlawyer_ru\",\"bitrix.kraytlawyer_by\",\"bitrix.kraytlawyer_kz\",\"bitrix.kraytlawyer_ua\",\"bitrix.kraytlandscapedesign_ru\",\"bitrix.kraytlandscapedesign_by\",\"bitrix.kraytlandscapedesign_kz\",\"bitrix.kraytlandscapedesign_ua\",\"bitrix.kraytjewelryrepairshop_ru\",\"bitrix.kraytjewelryrepairshop_by\",\"bitrix.kraytjewelryrepairshop_kz\",\"bitrix.kraytjewelryrepairshop_ua\",\"bitrix.kraytinteriordesign_ru\",\"bitrix.kraytinteriordesign_by\",\"bitrix.kraytinteriordesign_kz\",\"bitrix.kraytinsurancecompany_ru\",\"bitrix.kraytinsurancecompany_kz\",\"bitrix.kraytinsurancecompany_ua\",\"bitrix.kraytillustrator_ru\",\"bitrix.kraytillustrator_by\",\"bitrix.kraytillustrator_kz\",\"bitrix.kraytillustrator_ua\",\"bitrix.kraytgiftsvalentineday_ru\",\"bitrix.kraytgiftsvalentineday_by\",\"bitrix.kraytgiftsvalentineday_kz\",\"bitrix.kraytgiftsvalentineday_ua\",\"bitrix.kraytfebruary23_ru\",\"bitrix.kraytfebruary23_by\",\"bitrix.kraytfebruary23_kz\",\"bitrix.kraytfebruary23_ua\",\"bitrix.kraytequipmentrepair_ru\",\"bitrix.kraytequipmentrepair_by\",\"bitrix.kraytequipmentrepair_kz\",\"bitrix.kraytequipmentrepair_ua\",\"bitrix.kraytdentistry_ru\",\"bitrix.kraytdentistry_by\",\"bitrix.kraytdentistry_kz\",\"bitrix.kraytdentistry_ua\",\"bitrix.kraytdancemarathon_ru\",\"bitrix.kraytdancemarathon_by\",\"bitrix.kraytdancemarathon_kz\",\"bitrix.kraytdancemarathon_ua\",\"bitrix.kraytcourseformothers_ru\",\"bitrix.kraytcourseformothers_by\",\"bitrix.kraytcourseformothers_kz\",\"bitrix.kraytcourseformothers_ua\",\"bitrix.kraytcosmetologist_ru\",\"bitrix.kraytcosmetologist_by\",\"bitrix.kraytcosmetologist_kz\",\"bitrix.kraytcosmetologist_ua\",\"bitrix.kraytconstructionofprivatehouses_ru\",\"bitrix.kraytconstructionofprivatehouses_by\",\"bitrix.kraytconstructionofprivatehouses_kz\",\"bitrix.kraytconstructionofprivatehouses_ua\",\"bitrix.kraytconfectionery_ru\",\"bitrix.kraytconfectionery_by\",\"bitrix.kraytconfectionery_kz\",\"bitrix.kraytconfectionery_ua\",\"bitrix.kraytcoffeehouse_ru\",\"bitrix.kraytcoffeehouse_by\",\"bitrix.kraytcoffeehouse_kz\",\"bitrix.kraytcoffeehouse_ua\",\"bitrix.kraytcleaningservice_ru\",\"bitrix.kraytcleaningservice_by\",\"bitrix.kraytcleaningservice_kz\",\"bitrix.kraytcleaningservice_ua\",\"bitrix.kraytbeautystudio_ru\",\"bitrix.kraytbeautystudio_by\",\"bitrix.kraytbeautystudio_kz\",\"bitrix.kraytbeautystudio_ua\",\"bitrix.kraytbarbershop_ru\",\"bitrix.kraytbarbershop_by\",\"bitrix.kraytartworkshop_by\",\"bitrix.kraytbarbershop_kz\",\"bitrix.kraytbarbershop_ua\",\"bitrix.kraytartworkshop_ru\",\"bitrix.kraytartworkshop_kz\",\"bitrix.kraytartworkshop_ua\",\"bitrix.kraytaprilfoolsdaygifts_ru\",\"bitrix.kraytaprilfoolsdaygifts_by\",\"bitrix.kraytaprilfoolsdaygifts_kz\",\"bitrix.kraytaprilfoolsdaygifts_ua\",\"bitrix.kraytwindowinstallation_ru\",\"bitrix.kraytwindowinstallation_by\",\"bitrix.kraytwindowinstallation_kz\",\"bitrix.kraytwindowinstallation_ua\",\"bitrix.kraytwindowdesign_ru\",\"bitrix.kraytwindowdesign_by\",\"bitrix.kraytwindowdesign_kz\",\"bitrix.kraytwindowdesign_ua\",\"bitrix.krayttelecommunications_ru\",\"bitrix.krayttelecommunications_by\",\"bitrix.krayttelecommunications_kz\",\"bitrix.krayttelecommunications_ua\",\"bitrix.kraytsportsnutritionorder_ru\",\"bitrix.kraytsportsnutritionorder_by\",\"bitrix.kraytsportsnutritionorder_kz\",\"bitrix.kraytsportsnutritionorder_ua\",\"bitrix.kraytreconstructionoffices_ru\",\"bitrix.kraytreconstructionoffices_by\",\"bitrix.kraytreconstructionoffices_kz\",\"bitrix.kraytreconstructionoffices_ua\",\"bitrix.kraytpremisestrade_ru\",\"bitrix.kraytpremisestrade_by\",\"bitrix.kraytpremisestrade_ua\",\"bitrix.kraytinsulationhouses_ru\",\"bitrix.kraytinsulationhouses_by\",\"bitrix.kraytinsulationhouses_kz\",\"bitrix.kraytinsulationhouses_ua\",\"bitrix.kraytinstallsecuritysystems_ru\",\"bitrix.kraytinstallsecuritysystems_by\",\"bitrix.kraytinstallsecuritysystems_kz\",\"bitrix.kraytinstallsecuritysystems_ua\",\"bitrix.kraytinstallbathrooms_ru\",\"bitrix.kraytinstallbathrooms_by\",\"bitrix.kraytinstallbathrooms_kz\",\"bitrix.kraytinstallbathrooms_ua\",\"bitrix.kraythousedesign_ru\",\"bitrix.kraythousedesign_by\",\"bitrix.kraythousedesign_kz\",\"bitrix.kraythousedesign_ua\",\"bitrix.kraythospitalforfamily_ru\",\"bitrix.kraythospitalforfamily_by\",\"bitrix.kraythospitalforfamily_kz\",\"bitrix.kraythospitalforfamily_ua\",\"bitrix.kraythomedecoration_ru\",\"bitrix.kraythomedecoration_by\",\"bitrix.kraythomedecoration_kz\",\"bitrix.kraythomedecoration_ua\",\"bitrix.kraytfurniturettransformer_ru\",\"bitrix.kraytfurniturettransformer_by\",\"bitrix.kraytfurniturettransformer_kz\",\"bitrix.kraytfurniturettransformer_ua\",\"bitrix.kraytfloristics_ru\",\"bitrix.kraytfloristics_by\",\"bitrix.kraytfloristics_kz\",\"bitrix.kraytfloristics_ua\",\"bitrix.kraytfestiveevents_ru\",\"bitrix.kraytfestiveevents_by\",\"bitrix.kraytfestiveevents_kz\",\"bitrix.kraytfestiveevents_ua\",\"bitrix.kraytecogreen_ru\",\"bitrix.kraytecogreen_by\",\"bitrix.kraytecogreen_kz\",\"bitrix.kraytecogreen_ua\",\"bitrix.kraytdoorinstallation_ru\",\"bitrix.kraytdoorinstallation_by\",\"bitrix.kraytdoorinstallation_kz\",\"bitrix.kraytdoorinstallation_ua\",\"bitrix.kraytdoordesign_ru\",\"bitrix.kraytdoordesign_by\",\"bitrix.kraytdoordesign_kz\",\"bitrix.kraytdoordesign_ua\",\"bitrix.kraytdesigningpeopledisabilities_ru\",\"bitrix.kraytdesigningpeopledisabilities_by\",\"bitrix.kraytdesigningpeopledisabilities_kz\",\"bitrix.kraytdesigningpeopledisabilities_ua\",\"bitrix.delobotkindergarten_ru\",\"bitrix.kraytvideostudio_ru\",\"bitrix.kraytlegalservices_ru\",\"bitrix.kraytaccountingservices_ru\",\"bitrix.kraytbookannouncement_ru\",\"bitrix.kraytcharity_ru\",\"bitrix.kraytspa_ru\",\"bitrix.kraythandmadecosmetics_ru\",\"bitrix.delobotmusic_ru\",\"bitrix.kraythotelforanimals_ru\",\"bitrix.kraytcityguide_ru\",\"bitrix.delobotfoodblog_ru\",\"bitrix.delobotgamedeveloper_ru\",\"bitrix.delobotrenovationoffices_ru\",\"bitrix.delobotcourses_ru\",\"bitrix.delobotcityb__beautification_ru\",\"bitrix.delobotaidfund_ru\",\"bitrix.delobotnewsblog_ru\",\"bitrix.delobottransportservices_ru\",\"bitrix.delobotguide_ru\",\"bitrix.delobotnnturalcosmetic_ru\",\"bitrix.delobotboutiqueforsale_ru\",\"bitrix.delobotorganizationweddings_ru\",\"bitrix.delobotbeautyandrecreationcenter_ru\",\"bitrix.delobotwriter_ru\",\"bitrix.kraytotel\",\"bitrix.kraytigrovoyklub\",\"bitrix.kraytbazaotdykha\",\"bitrix.kraytkurspotiktoku\",\"bitrix.kraytkadrovoeagenstvo\",\"bitrix.kraytportfoliomodeli\",\"bitrix.kraytminecraftserver\",\"bitrix.kraytigrovayakompaniya\",\"bitrix.delobotuslugivideoproizvodstva\",\"bitrix.delobotportfolioaktera\",\"bitrix.delobotpub\",\"bitrix.delobotminihotel\",\"bitrix.delobotcamping\",\"bitrix.delobotcafe\",\"bitrix.delobotizgotovlenieduxov\",\"bitrix.delobotbuhgalterskoeobslujivanie\",\"bitrix.delobotarendanedvizimosti\",\"bitrix.delobotalternativnayaenergetika\",\"bitrix.delobotagentstvoponaimy\",\"bitrix.kraytpodarkikjenskomydny\",\"bitrix.kraytinstagramcontacts_ru1\",\"bitrix.kraytinstagramstock_ru1\",\"bitrix.kraytinstagramtarget_ru1\",\"bitrix.kraytkhimchistka\",\"bitrix.krayt_detskaya_odezhda_na_zakaz\",\"bitrix.krayt_retsepty_blyud\",\"bitrix.krayt_detskaya_mebel\",\"bitrix.krayt_biblioteka\",\"bitrix.krayt_pitomnik_rasteniy\",\"bitrix.delobot_lawyer\",\"bitrix.delobot_oformlenie_dverey\",\"bitrix.delobot_montaj_dverey\",\"bitrix.delobot_manicure_and_pedicure\",\"bitrix.delobot_printing_services\",\"bitrix.delobot_plants\",\"bitrix.delobot_nutritionist\",\"bitrix.delobot_designer_tableware\",\"bitrix.delobot_montaj_okon\",\"bitrix.delobot_oformlenie_okon\",\"bitrix.krayt_zhurnalist\",\"bitrix.krayt_tato_salon\",\"bitrix.krayt_massajist\",\"bitrix.krayt_consulting\",\"bitrix.krayt_elektromontazh\",\"bitrix.krayt_rezyume_spetsialista\",\"bitrix.kraytportfoliophotographer\",\"bitrix.kraytbeautystudio_en\",\"bitrix.kraytautomechanic_en\",\"bitrix.kraytequipmentrepair_en\",\"bitrix.delobot_furniture_for_children\",\"bitrix.delobot_architectural_projects\",\"bitrix.delobot_scientists_page\",\"bitrix.delobot_tatoo_studio\",\"bitrix.delobot_journalist_resume\",\"bitrix.delobot_leather_goods\",\"bitrix.delobot_dance_marathon\",\"bitrix.krayt_art_gallery\",\"bitrix.krayt_leather_products\",\"bitrix.krayt_scientific_researcher\",\"bitrix.krayt_bureau_of_architecture\",\"bitrix.krayt_jewelry_designer\",\"bitrix.krayt_food_photographer\",\"bitrix.krayt_acting_studio\",\"bitrix.krayt_farm\",\"bitrix.krayt_fashion_blog\",\"bitrix.krayt_birthday_cakes\",\"bitrix.krayt_plussize_fashion\",\"bitrix.krayt_diving\",\"bitrix.krayt_it_services\",\"bitrix.krayt_beauty_blog\",\"bitrix.krayt_aquarium\",\"bitrix.krayt_sport_blog\",\"bitrix.delobot_online_library\",\"bitrix.delobot_diving_center\",\"bitrix.delobot_designer_jewelry\",\"bitrix.delobot_nail_art_course\",\"bitrix.delobot_art_galery\",\"bitrix.delobot_fashion_for_everyone\",\"bitrix.delobot_handmade_chocolate\",\"bitrix.krayt_chocolate_shop\",\"bitrix.krayt_advertising_agency\",\"bitrix.krayt_asian_food\",\"bitrix.krayt_avtorskiy_master_klass\",\"bitrix.krayt_utilizatsiya_otkhodov\",\"bitrix.krayt_italyanskaya_kukhnya\",\"bitrix.krayt_kurs_po_nogtevomu_servisu\",\"bitrix.krayt_begovoy_klub\",\"bitrix.krayt_gornyy_turizm\",\"bitrix.krayt_biznes_prostranstvo\",\"bitrix.krayt_shkola_iskusstv\",\"bitrix.krayt_onlayn_intensiv_inostrannogo_yazyka\",\"bitrix.delobot_reklama_brenda\",\"bitrix.delobot_italyanskiy_restoran\",\"bitrix.delobot_modnaya_stranichka\",\"bitrix.delobot_fotografiya_edy\",\"bitrix.krayt_pishchevoe_proizvodstvo\",\"bitrix.krayt_appetitnyy_blog\",\"bitrix.krayt_uslugi_remonta\",\"bitrix.krayt_onlayn_kurs_kreativnogo_prodyusera\",\"bitrix.krayt_detskie_prazdniki\",\"bitrix.krayt_svetotekhnika\",\"bitrix.krayt_urbanistika\",\"bitrix.krayt_otdykh_na_prirode\",\"bitrix.krayt_sportivnye_ploshchadki\",\"bitrix.krayt_oborudovanie_dlya_turizma\",\"bitrix.krayt_meksikanskaya_kukhnya\",\"bitrix.delobot_sports_blog_20\",\"bitrix.delobot_aziatskie_blyuda\",\"bitrix.delobot_beauty_blog\",\"bitrix.delobot_meksikanskiy_restoran_2_0\",\"bitrix.delobot_urban_project\",\"bitrix.delobot_drawing_school\",\"bitrix.delobot_tourism\",\"bitrix.delobot_runnig_club\",\"bitrix.delobot_lighting_company\",\"bitrix.delobot_garbage_disposal\",\"bitrix.delobot_master_class\",\"bitrix.delobot_it_outsourcing\",\"bitrix.krayt_rent_car\",\"bitrix.krayt_aviation\",\"bitrix.krayt_street_sport_club\",\"bitrix.krayt_kofemaniya\",\"bitrix.krayt_corporate_events\",\"bitrix.krayt_cooking_school\",\"bitrix.krayt_blacksmith_craft\",\"bitrix.krayt_med_lab\",\"bitrix.krayt_music_studio\",\"bitrix.krayt_web_application_development\",\"bitrix.krayt_tennis_club\",\"bitrix.krayt_bank_services\",\"bitrix.krayt_smart_furniture\",\"bitrix.krayt_dom_pod_klyuch\",\"bitrix.krayt_uslugi_mediatora\",\"bitrix.krayt_child_club\",\"bitrix.delobot_custom_made_cakes\",\"bitrix.delobot_online_yoga_classes\",\"bitrix.krayt_pevitsa\",\"bitrix.krayt_ozelenenie_pomeshcheniy\",\"bitrix.krayt_internet_agentstvo\",\"bitrix.krayt_kinolog\",\"bitrix.krayt_poleznye_sneki\",\"bitrix.krayt_oformlenie_interera\",\"bitrix.delobot_tourist_equipment\",\"bitrix.delobot_creative_producer\",\"bitrix.delobot_aviation_services\",\"bitrix.delobot_blacksmith_services\",\"bitrix.delobot_coffee_subscription\",\"bitrix.delobot_construction_company\",\"bitrix.delobot_business_premises\",\"bitrix.delobot_pet_hotel\",\"bitrix.delobot_food_industry\",\"bitrix.delobot_cars_for_rent\",\"bitrix.krayt_klub_dlya_geymerov\",\"bitrix.krayt_relaks_uslugi\",\"bitrix.krayt_sportivnyy_inventar\",\"bitrix.krayt_universitet\",\"bitrix.delobot_uslugi_kinologa\",\"bitrix.delobot_business_training\",\"bitrix.krayt_vebinar\",\"bitrix.krayt_kurs_po_iskusstvennomu_intellektu\",\"bitrix.delobot_vypechka_na_zakaz\",\"bitrix.delobot_osennaya_rasprodazh\",\"bitrix.krayt_onlayn_shkola_dlya_detey\",\"bitrix.krayt_arkhitekturnaya_kompaniya\",\"bitrix.krayt_den_blagodareniya\",\"bitrix.krayt_uslugi_nyani\",\"bitrix.krayt_uslugi_repetitora\",\"bitrix.krayt_logoped\",\"bitrix.krayt_chyernaya_pyatnitsa\",\"bitrix.krayt_sladosti_na_rozhdestvo\",\"bitrix.krayt_podarki_na_novyy_god\",\"bitrix.delobot_laboratory\",\"bitrix.delobot_street_sports_grounds\",\"bitrix.delobot_about_webinar\",\"bitrix.krayt_dostavka_gruza\",\"bitrix.delobot_online_travel\",\"bitrix.delobot_youtube_channel\",\"bitrix.delobot_interior_design\",\"bitrix.krayt_kursy_po_interesam\",\"bitrix.krayt_zimnyaya_rasprodazha\",\"bitrix.krayt_tsifrovye_kommunikatsii\",\"bitrix.krayt_avtosalon\",\"bitrix.krayt_uslugi_stroitelnoy_kompanii\",\"bitrix.krayt_vysshee_uchebnoe_zavedenie\",\"bitrix.krayt_veterinar\",\"bitrix.krayt_akademiya_iskusstv\",\"bitrix.krayt_master_po_domu\",\"bitrix.krayt_onlayn_trenirovki\",\"bitrix.krayt_apart_otel\",\"bitrix.krayt_tsvety_i_bukety_na_zakaz\",\"bitrix.krayt_biznes_forum\",\"bitrix.krayt_uslugi_stomatologii\",\"bitrix.krayt_uslugi_avtoservisa\",\"bitrix.delobot_winter_sale\",\"bitrix.krayt_christmas_treats\",\"bitrix.krayt_eksperty_tochnogo_zemledeliya\",\"bitrix.krayt_servis_ukhoda_za_domom\",\"bitrix.delobot_repetitor\",\"bitrix.delobot_babysitter_for_children\",\"bitrix.delobot_speech_therapist_services\",\"bitrix.empty_template\",\"bitrix.krayt_gift_wrapping\",\"bitrix.delobot_fitness_clothes\",\"bitrix.delobot_bathroom_renovation\",\"bitrix.delobot_travel_arrangements\",\"bitrix.krayt_music_classes\",\"bitrix.delobot_klinika_dlya_mam_i_detok\",\"bitrix.delobot_bankovskie_uslugi\",\"bitrix.krayt_videoproizvodstvo\",\"bitrix.krayt_manikyur\",\"bitrix.krayt_meditsinskaya_pomoshch_onlayn\",\"bitrix.krayt_oblagorazhivanie_goroda\",\"bitrix.krayt_uslugi_barbershopa\",\"bitrix.krayt_taksi\",\"bitrix.delobot_optika\",\"bitrix.delobot_klinika_stomatologii\",\"bitrix.delobot_konditer\",\"bitrix.delobot_3d_print_services\",\"bitrix.delobot_uslugi_khimchistki\",\"bitrix.delobot_obuchenie_po_iskusstvennomu_intellektu\",\"bitrix.krayt_nutritsiologiya\",\"bitrix.krayt_salon_krasoty\",\"bitrix.krayt_uslugi_perevoda\",\"bitrix.krayt_landshaftnyy_dizayner\",\"bitrix.krayt_mebel_gotovaya_i_na_zakaz\",\"bitrix.krayt_uslugi_yurista\",\"bitrix.krayt_uslugi_po_bukhgalterii\",\"bitrix.krayt_yuvelir\",\"bitrix.krayt_stranichka_s_aktsiey\",\"bitrix.krayt_den_vsekh_vlyublennykh\",\"bitrix.krayt_stranichka_kontaktov\",\"bitrix.krayt_uslugi_massazhista\",\"bitrix.krayt_dostavka_edy_i_napitkov\",\"bitrix.krayt_podarki_na_zhenskiy_den\",\"bitrix.krayt_ekskursii\",\"bitrix.krayt_proizvodstvo_kosmetiki\",\"bitrix.krayt_logistika\",\"bitrix.krayt_fotograf\",\"bitrix.krayt_arenda_zhilya\",\"bitrix.krayt_kliningovye_uslugi\",\"bitrix.krayt_agentstvo_po_naymu\",\"bitrix.krayt_dukhi_na_zakaz\",\"bitrix.delobot_event_anounce\",\"bitrix.delobot_barbershop\",\"bitrix.delobot_italian_cafe\",\"bitrix.delobot_application_development\",\"bitrix.delobot_construction\",\"bitrix.delobot_uslugi_khudozhnika\",\"bitrix.krayt_prepodavatel\",\"bitrix.krayt_dveri_na_zakaz\",\"bitrix.krayt_kursy_po_gotovke\",\"bitrix.krayt_interernyy_dizayn\",\"bitrix.krayt_konsultatsii_po_zdorovyu\",\"bitrix.krayt_uslugi_atele\",\"bitrix.krayt_vizitka\",\"bitrix.krayt_remont_zhilya\",\"bitrix.krayt_voskhozhdenie_s_alpinistami\",\"bitrix.krayt_vesennyaya_rasprodazha\",\"bitrix.krayt_svadebnyy_salon\",\"bitrix.kraytlawyer_en\",\"bitrix.kraytinsurancecompany_en\",\"bitrix.krayt_interior_designer\",\"bitrix.delobot_bank\",\"bitrix.delobot_custom_made_clothes\",\"bitrix.delobot_telemedicine\",\"bitrix.krayt_spetsialist_po_nedvizhimosti\",\"bitrix.krayt_sportzal\",\"bitrix.krayt_mebel\",\"bitrix.krayt_tvorcheskie_kursy\",\"bitrix.krayt_kosmetologiya\",\"bitrix.krayt_remont_bytovoy_tekhniki\",\"bitrix.delobot_stylist_services\",\"bitrix.delobot_holidays_for_children\",\"bitrix.delobot_logistics_services\",\"bitrix.krayt_remont_avto\",\"bitrix.krayt_torgovoe_oborudovanie\",\"bitrix.krayt_rasteniya_i_zhivye_izgorodi\",\"bitrix.krayt_organizatsiya_meropriyatiy\",\"bitrix.krayt_o_psikhologe\",\"bitrix.krayt_prozhivanie_v_otele\",\"bitrix.krayt_dental_clinic\",\"bitrix.krayt_barbershop\",\"bitrix.krayt_personal_stylist\",\"bitrix.delobot_muzykalnaya_shkola\",\"bitrix.delobot_parfumer_services\",\"bitrix.delobot_uslugi_po_upakovke_podarkov\",\"bitrix.delobot_insurance\",\"bitrix.delobot_zabota_o_zhivotnyh\",\"bitrix.delobot_landscape_studio\",\"bitrix.krayt_dizayn_saytov\",\"bitrix.krayt_arenda_tekhniki\",\"bitrix.krayt_kursy_dlya_sotrudnikov\",\"bitrix.krayt_konditsionery_v_dom\",\"bitrix.krayt_promyshlennost\",\"bitrix.krayt_tantsy\",\"bitrix.krayt_pechat_3d_figur\",\"bitrix.krayt_o_biblioteke\",\"bitrix.krayt_vyrashchivanie_zeleni\",\"bitrix.krayt_okhrannye_sistemy\",\"bitrix.krayt_zvukozapis\",\"bitrix.krayt_rasprodazha\",\"bitrix.form_template_with_product_galery_for_social_media\",\"bitrix.form_template_with_offer\",\"bitrix.facebook_form_template_with_offer\",\"bitrix.facebook_form_template_with_product_images\",\"bitrix.facebook_form_template_with_extra_communication_channels\",\"bitrix.shablon_dlya_formy_v_vk_s_kartinkami_tovarov\",\"bitrix.shablon_dlya_formy_v_vk_s_kanalami_svyazi\",\"bitrix.shablon_dlya_formy_v_vk_s_promo_aktsiey\",\"bitrix.form_template_with_offer_for_social_media\",\"bitrix.form_template_with_contacts_for_social_media\",\"bitrix.form_template_with_product_images_for_social_media\",\"bitrix.form_template_with_communication_channels_for_social_media\",\"bitrix.krayt_vypechka\",\"bitrix.krayt_it_spetsialisty\",\"bitrix.krayt_modnyy_konsultant\",\"bitrix.krayt_agentstvo_po_turizmu\",\"bitrix.krayt_uslugi_vizazhista\",\"bitrix.krayt_fotostudiya\",\"bitrix.krayt_vyazanie\",\"bitrix.krayt_blagotvoritelnaya_organizatsiya\",\"bitrix.krayt_uslugi_illyustratora\",\"bitrix.delobot_intensiv_po_inostrannomu_yazyku\",\"bitrix.delobot_uslugi_po_remontu_tekhniki\",\"bitrix.delobot_stranichka_mobilnogo_prilozheniya\",\"bitrix.delobot_kreativnaya_mebel\",\"bitrix.delobot_klub_tsifrovykh_igr\",\"bitrix.delobot_dizayn_dlya_doma\",\"bitrix.krayt_studiya_spa\",\"bitrix.krayt_proekt_po_utepleniyu_doma\",\"bitrix.krayt_klining_kompaniya\",\"bitrix.krayt_arkhitektor\",\"bitrix.krayt_sladosti_na_zakaz\",\"bitrix.krayt_fotografiya\",\"bitrix.krayt_poligraficheskie_uslugi\",\"bitrix.krayt_manikyur_i_pedikyur\",\"bitrix.krayt_vyazanie_2\",\"bitrix.krayt_kofe\",\"bitrix.krayt_obuchenie_muzyke\",\"bitrix.krayt_novosti\",\"bitrix.delobot_spetsialist_po_tekstam\",\"bitrix.delobot_uslugi_elektrika\",\"bitrix.delobot_otslezhivanie_zdorovya\",\"bitrix.delobot_studiya_dlya_aktyerov\",\"bitrix.delobot_uslugi_kosmetologa\",\"bitrix.delobot_kottedzhnyy_posyelok\",\"bitrix.delobot_izdeliya_ot_yuvelira\",\"bitrix.krayt_montazh_panelnykh_domov\",\"bitrix.krayt_masterskaya_tekstilya\",\"bitrix.krayt_razrabotka_igr\",\"bitrix.krayt_organizatsiya_prazdnika\",\"bitrix.krayt_stilnaya_odezhda_na_zakaz\",\"bitrix.krayt_posuda_ot_dizaynera\",\"bitrix.krayt_pomeshchenie_dlya_kovorkinga\",\"bitrix.krayt_shokoladnaya_masterskaya\",\"bitrix.krayt_podbor_personala\",\"bitrix.krayt_uslugi_po_massazhu\",\"bitrix.krayt_prirodnyy_otdykh\",\"bitrix.krayt_agentstvo_po_reklame\",\"bitrix.krayt_stomatolog\",\"bitrix.krayt_povar_konditer\",\"bitrix.krayt_uslugi_po_strakhovaniyu\",\"bitrix.krayt_rasprodazha_osenyu\",\"bitrix.krayt_kukhni_na_zakaz\",\"bitrix.krayt_avtorskie_puteshestviya\",\"bitrix.krayt_remont_gadzhetov\",\"bitrix.krayt_proizvodstvo_produktsii\",\"bitrix.krayt_mezhdunarodnaya_biznes_konferentsiya\",\"bitrix.krayt_studiya_gibkosti\",\"bitrix.krayt_biznes_konsultatsii\",\"bitrix.krayt_brendingovoe_agentstvo\",\"bitrix.krayt_thanksgiving_day\",\"bitrix.krayt_architectural_company\",\"bitrix.krayt_online_school_for_children\",\"bitrix.krayt_ai_course\",\"bitrix.krayt_it_services_2\",\"bitrix.krayt_accounting_services\",\"bitrix.krayt_gaming_club\",\"bitrix.krayt_architectural_company_ru\",\"bitrix.delobot_beauty_blog_en\",\"bitrix.delobot_sladkoe_na_halloween\",\"bitrix.krayt_biznes_ru\",\"bitrix.krayt_business_en\",\"bitrix.krayt_vebinar_ru\",\"bitrix.delobot_music_band\",\"bitrix.delobot_courses\",\"bitrix.delobot_tours\",\"bitrix.krayt_uslugi_okhrany\",\"bitrix.krayt_agentstvo_nedvizhimosti\",\"bitrix.krayt_didzhital_illyustrator\",\"bitrix.krayt_landshaftnyy_dizayn\",\"bitrix.krayt_ochki_i_linzy_na_zakaz\",\"bitrix.krayt_organizatsiya_svadeb\",\"bitrix.krayt_pitanie_s_dietologom\",\"bitrix.krayt_uslugi_logistiki\",\"bitrix.krayt_uslugi_pekarya\",\"bitrix.krayt_uslugi_videostudii\",\"bitrix.krayt_home_construction_company\",\"bitrix.delobot_natural_cosmetics\",\"bitrix.krayt_real_estate_agent\",\"bitrix.krayt_spa_salon\",\"bitrix.krayt_yoga\",\"bitrix.krayt_uslugi_po_makiyajy\",\"bitrix.krayt_uslugi_psikhoterapevta\",\"bitrix.krayt_uslugi_advokat\",\"bitrix.krayt_uchitel_matematiki\",\"bitrix.krayt_portfolio_aktrisy\",\"bitrix.krayt_online_shkola_dlya_detey\",\"bitrix.krayt_odezhda_dlya_fitnesa\",\"bitrix.krayt_obuchenie_sotrudnikov\",\"bitrix.krayt_nabory_pravilnogo_pitaniya\",\"bitrix.krayt_kurs_po_ii\",\"bitrix.krayt_kontsert_gruppy\",\"bitrix.krayt_kokteylnyy_bar\",\"bitrix.krayt_khudozhnik\",\"bitrix.delobot_arenduemaya_tekhnika\",\"bitrix.delobot_franshiza_sportivnykh_zalov\",\"bitrix.delobot_massazh\",\"bitrix.delobot_oborudovanie_dlya_torgovli\",\"bitrix.delobot_remontnye_raboty\",\"bitrix.delobot_uslugi_po_remontu_avto\",\"bitrix.delobot_yuridicheskaya_kompaniya\",\"bitrix.delobot_yuridicheskiy_universitet\",\"bitrix.krayt_kiberponedelnik\",\"bitrix.krayt_koncert_gruppy\",\"bitrix.krayt_kurs_po_neyrosetyam\",\"bitrix.krayt_arenda_nedvizhimosti\",\"bitrix.krayt_nyanya_dlya_detok\",\"bitrix.krayt_uslugi_bukhgalterii\",\"bitrix.krayt_ozelenenie_goroda\",\"bitrix.krayt_proektirovanie_domov\",\"bitrix.krayt_ustanovka_konditsionerov\",\"bitrix.krayt_posuda\",\"bitrix.krayt_furniture_manufacturer\",\"bitrix.krayt_logistics\",\"bitrix.krayt_renovations\",\"bitrix.krayt_travel_agency\",\"bitrix.krayt_electrical_services\",\"bitrix.krayt_home_design_and_construction\",\"bitrix.krayt_legal_services\",\"bitrix.delobot_bathroom_renovations\",\"bitrix.delobot_it_services\",\"bitrix.delobot_konsaltingovaya_kompaniya\",\"bitrix.delobot_branding\",\"bitrix.delobot_mebel_dlya_rabochego_prostranstva\",\"bitrix.delobot_stroitelstvo_zhilya\",\"bitrix.delobot_zubnoy_vrach\",\"bitrix.delobot_furnituremanufacturing_en\",\"bitrix.krayt_university_en\",\"bitrix.delobot_newsblog_en\",\"bitrix.krayt_mobileapp_en\",\"bitrix.krayt_hotel_en\",\"bitrix.krayt_realestate_en\",\"bitrix.delobot_banking_services\",\"bitrix.krayt_website_designer\",\"bitrix.delobot_transport_services\",\"bitrix.krayt_recruitment_agency\",\"bitrix.krayt_camping_retreat\",\"bitrix.delobot_master_na_vse_ruki\",\"bitrix.delobot_apart_gostinitsa\",\"bitrix.delobot_tantsevalnye_kursy\",\"bitrix.delobot_zakaz_dverey\",\"bitrix.delobot_mediator\",\"bitrix.delobot_istoricheskiy_muzey\",\"bitrix.delobot_onlayn_vrach\",\"bitrix.delobot_uslugi_po_reklame\",\"bitrix.delobot_knigi_na_zakaz\"]',NULL,NULL),('rest','entity_iblock_type','rest_entity',NULL,NULL),('rest','server_path','/rest',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('search','version','v2.0',NULL,NULL),('socialservices','allow_encrypted_tokens','1',NULL,NULL),('socialservices','bitrix24net_domain','http://bitrix',NULL,NULL),('socialservices','bitrix24net_id','ext.6646178e257707.61404322',NULL,NULL),('socialservices','bitrix24net_secret','MBnUBr380AflhRad7Nconh4MMXKaEUqoHGaKRNMKAPCEcY6aka',NULL,NULL),('socialservices','google_api_key','AIzaSyA7puwZwGDJgOjcAWsFsY7hQcrioC13A18',NULL,NULL),('socialservices','google_appid','798910771106.apps.googleusercontent.com',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option_site`
--

DROP TABLE IF EXISTS `b_option_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option_site`
--

LOCK TABLES `b_option_site` WRITE;
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_cache` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HIT_ID` int DEFAULT NULL,
  `COMPONENT_ID` int DEFAULT NULL,
  `NN` int DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8mb3_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8mb3_unicode_ci,
  `BASE_DIR` text COLLATE utf8mb3_unicode_ci,
  `INIT_DIR` text COLLATE utf8mb3_unicode_ci,
  `FILE_NAME` text COLLATE utf8mb3_unicode_ci,
  `FILE_PATH` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `THREADS` int DEFAULT NULL,
  `HITS` int DEFAULT NULL,
  `ERRORS` int DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_component` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HIT_ID` int DEFAULT NULL,
  `NN` int DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int DEFAULT NULL,
  `CACHE_COUNT_R` int DEFAULT NULL,
  `CACHE_COUNT_W` int DEFAULT NULL,
  `CACHE_COUNT_C` int DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_error` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HIT_ID` int DEFAULT NULL,
  `ERRNO` int DEFAULT NULL,
  `ERRSTR` text COLLATE utf8mb3_unicode_ci,
  `ERRFILE` text COLLATE utf8mb3_unicode_ci,
  `ERRLINE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_hit` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8mb3_unicode_ci,
  `REQUEST_URI` text COLLATE utf8mb3_unicode_ci,
  `INCLUDED_FILES` int DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int DEFAULT NULL,
  `CACHE_COUNT_R` int DEFAULT NULL,
  `CACHE_COUNT_W` int DEFAULT NULL,
  `CACHE_COUNT_C` int DEFAULT NULL,
  `QUERIES` int DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8mb3_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int NOT NULL,
  `SQL_ID` int NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_sql` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HIT_ID` int DEFAULT NULL,
  `COMPONENT_ID` int DEFAULT NULL,
  `NN` int DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8mb3_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8mb3_unicode_ci,
  `SQL_TEXT` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int NOT NULL,
  `NN` int NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LINE_NO` int DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_perf_test` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (1,'N','Рейтинг','USER','SUM','2024-05-16 17:25:49',NULL,NULL,'Y','N','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(2,'N','Авторитет','USER','SUM','2024-05-16 17:25:49',NULL,NULL,'Y','Y','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_component` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_ID` int NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int NOT NULL,
  `CONFIG` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_ID` int NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_results` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_ID` int NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int DEFAULT '0',
  `PREVIOUS_POSITION` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_rule` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8mb3_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8mb3_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2024-05-16 17:25:49','2024-05-16 17:25:49',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2024-05-16 17:25:49','2024-05-16 17:25:49',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2024-05-16 17:25:49','2024-05-16 17:25:49',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2024-05-16 17:25:49','2024-05-16 17:25:49',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2024-05-16 17:25:49','2024-05-16 17:25:49',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RULE_ID` int NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_ID` int NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (1,2,1,3.0000,30.0000,13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_vote` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `OWNER_ID` int NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_10` (`USER_ID`,`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int NOT NULL,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_voting` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `OWNER_ID` int NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int NOT NULL,
  `TOTAL_POSITIVE_VOTES` int NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int NOT NULL,
  `TOTAL_POSITIVE_VOTES` int NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_reaction`
--

DROP TABLE IF EXISTS `b_rating_voting_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `REACTION` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_reaction`
--

LOCK TABLES `b_rating_voting_reaction` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rating_weight` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap`
--

DROP TABLE IF EXISTS `b_rest_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_ap` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap`
--

LOCK TABLES `b_rest_ap` WRITE;
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap_permission`
--

DROP TABLE IF EXISTS `b_rest_ap_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int NOT NULL,
  `PERM` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap_permission`
--

LOCK TABLES `b_rest_ap_permission` WRITE;
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app`
--

DROP TABLE IF EXISTS `b_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_app` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app`
--

LOCK TABLES `b_rest_app` WRITE;
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_lang`
--

DROP TABLE IF EXISTS `b_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_app_lang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` int NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_lang`
--

LOCK TABLES `b_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_log`
--

DROP TABLE IF EXISTS `b_rest_app_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_app_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `USER_ID` int NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_log`
--

LOCK TABLES `b_rest_app_log` WRITE;
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_configuration_storage`
--

DROP TABLE IF EXISTS `b_rest_configuration_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_configuration_storage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `CONTEXT` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_configuration_storage`
--

LOCK TABLES `b_rest_configuration_storage` WRITE;
/*!40000 ALTER TABLE `b_rest_configuration_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_configuration_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event`
--

DROP TABLE IF EXISTS `b_rest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_event` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` int DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `USER_ID` int DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `INTEGRATION_ID` int DEFAULT NULL,
  `OPTIONS` varchar(1024) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event`
--

LOCK TABLES `b_rest_event` WRITE;
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event_offline`
--

DROP TABLE IF EXISTS `b_rest_event_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_event_offline` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `APP_ID` int NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8mb3_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8mb3_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `ERROR` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`),
  KEY `ix_b_rest_event_offline3` (`APP_ID`,`CONNECTOR_ID`),
  KEY `ix_b_rest_event_offline4` (`PROCESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event_offline`
--

LOCK TABLES `b_rest_event_offline` WRITE;
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_integration`
--

DROP TABLE IF EXISTS `b_rest_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_integration` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `ELEMENT_CODE` varchar(256) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(256) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PASSWORD_ID` int DEFAULT NULL,
  `APP_ID` int DEFAULT NULL,
  `SCOPE` text COLLATE utf8mb3_unicode_ci,
  `QUERY` text COLLATE utf8mb3_unicode_ci,
  `OUTGOING_EVENTS` text COLLATE utf8mb3_unicode_ci,
  `OUTGOING_NEEDED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `OUTGOING_HANDLER_URL` varchar(2048) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WIDGET_NEEDED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WIDGET_HANDLER_URL` varchar(2048) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WIDGET_LIST` text COLLATE utf8mb3_unicode_ci,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `APPLICATION_NEEDED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `APPLICATION_ONLY_API` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BOT_ID` int DEFAULT NULL,
  `BOT_HANDLER_URL` varchar(2048) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_integration`
--

LOCK TABLES `b_rest_integration` WRITE;
/*!40000 ALTER TABLE `b_rest_integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_log`
--

DROP TABLE IF EXISTS `b_rest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8mb3_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8mb3_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_log`
--

LOCK TABLES `b_rest_log` WRITE;
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_owner_entity`
--

DROP TABLE IF EXISTS `b_rest_owner_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_owner_entity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER` int NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_rest_owner_entity` (`ENTITY_TYPE`,`ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_owner_entity`
--

LOCK TABLES `b_rest_owner_entity` WRITE;
/*!40000 ALTER TABLE `b_rest_owner_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_owner_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement`
--

DROP TABLE IF EXISTS `b_rest_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_placement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APP_ID` int DEFAULT NULL,
  `USER_ID` int DEFAULT '0',
  `PLACEMENT` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ICON_ID` int DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `OPTIONS` varchar(2048) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100)),
  KEY `ix_b_rest_placement4` (`PLACEMENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement`
--

LOCK TABLES `b_rest_placement` WRITE;
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement_lang`
--

DROP TABLE IF EXISTS `b_rest_placement_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_placement_lang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PLACEMENT_ID` int NOT NULL,
  `LANGUAGE_ID` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `GROUP_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `b_rest_placement_lang_unique` (`PLACEMENT_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement_lang`
--

LOCK TABLES `b_rest_placement_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_placement_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat`
--

DROP TABLE IF EXISTS `b_rest_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int NOT NULL,
  `METHOD_ID` int NOT NULL,
  `HOUR_0` int NOT NULL DEFAULT '0',
  `HOUR_1` int NOT NULL DEFAULT '0',
  `HOUR_2` int NOT NULL DEFAULT '0',
  `HOUR_3` int NOT NULL DEFAULT '0',
  `HOUR_4` int NOT NULL DEFAULT '0',
  `HOUR_5` int NOT NULL DEFAULT '0',
  `HOUR_6` int NOT NULL DEFAULT '0',
  `HOUR_7` int NOT NULL DEFAULT '0',
  `HOUR_8` int NOT NULL DEFAULT '0',
  `HOUR_9` int NOT NULL DEFAULT '0',
  `HOUR_10` int NOT NULL DEFAULT '0',
  `HOUR_11` int NOT NULL DEFAULT '0',
  `HOUR_12` int NOT NULL DEFAULT '0',
  `HOUR_13` int NOT NULL DEFAULT '0',
  `HOUR_14` int NOT NULL DEFAULT '0',
  `HOUR_15` int NOT NULL DEFAULT '0',
  `HOUR_16` int NOT NULL DEFAULT '0',
  `HOUR_17` int NOT NULL DEFAULT '0',
  `HOUR_18` int NOT NULL DEFAULT '0',
  `HOUR_19` int NOT NULL DEFAULT '0',
  `HOUR_20` int NOT NULL DEFAULT '0',
  `HOUR_21` int NOT NULL DEFAULT '0',
  `HOUR_22` int NOT NULL DEFAULT '0',
  `HOUR_23` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat`
--

LOCK TABLES `b_rest_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_app`
--

DROP TABLE IF EXISTS `b_rest_stat_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_stat_app` (
  `APP_ID` int NOT NULL,
  `APP_CODE` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`APP_ID`),
  KEY `ix_b_rest_stat_app_code` (`APP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_app`
--

LOCK TABLES `b_rest_stat_app` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_method`
--

DROP TABLE IF EXISTS `b_rest_stat_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_stat_method` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_method`
--

LOCK TABLES `b_rest_stat_method` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_entity`
--

DROP TABLE IF EXISTS `b_rest_usage_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_usage_entity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `ENTITY_CODE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_rest_usage_entity` (`ENTITY_TYPE`,`ENTITY_ID`,`SUB_ENTITY_TYPE`,`SUB_ENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_entity`
--

LOCK TABLES `b_rest_usage_entity` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_usage_stat`
--

DROP TABLE IF EXISTS `b_rest_usage_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_rest_usage_stat` (
  `STAT_DATE` date NOT NULL,
  `ENTITY_ID` int NOT NULL DEFAULT '0',
  `IS_SENT` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `HOUR_0` int NOT NULL DEFAULT '0',
  `HOUR_1` int NOT NULL DEFAULT '0',
  `HOUR_2` int NOT NULL DEFAULT '0',
  `HOUR_3` int NOT NULL DEFAULT '0',
  `HOUR_4` int NOT NULL DEFAULT '0',
  `HOUR_5` int NOT NULL DEFAULT '0',
  `HOUR_6` int NOT NULL DEFAULT '0',
  `HOUR_7` int NOT NULL DEFAULT '0',
  `HOUR_8` int NOT NULL DEFAULT '0',
  `HOUR_9` int NOT NULL DEFAULT '0',
  `HOUR_10` int NOT NULL DEFAULT '0',
  `HOUR_11` int NOT NULL DEFAULT '0',
  `HOUR_12` int NOT NULL DEFAULT '0',
  `HOUR_13` int NOT NULL DEFAULT '0',
  `HOUR_14` int NOT NULL DEFAULT '0',
  `HOUR_15` int NOT NULL DEFAULT '0',
  `HOUR_16` int NOT NULL DEFAULT '0',
  `HOUR_17` int NOT NULL DEFAULT '0',
  `HOUR_18` int NOT NULL DEFAULT '0',
  `HOUR_19` int NOT NULL DEFAULT '0',
  `HOUR_20` int NOT NULL DEFAULT '0',
  `HOUR_21` int NOT NULL DEFAULT '0',
  `HOUR_22` int NOT NULL DEFAULT '0',
  `HOUR_23` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`STAT_DATE`,`ENTITY_ID`),
  KEY `ix_b_rest_usage` (`ENTITY_ID`,`STAT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_usage_stat`
--

LOCK TABLES `b_rest_usage_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_usage_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_usage_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CUSTOM_RANK` int NOT NULL DEFAULT '0',
  `USER_ID` int DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8mb3_unicode_ci,
  `TITLE` text COLLATE utf8mb3_unicode_ci,
  `BODY` longtext COLLATE utf8mb3_unicode_ci,
  `TAGS` text COLLATE utf8mb3_unicode_ci,
  `PARAM1` text COLLATE utf8mb3_unicode_ci,
  `PARAM2` text COLLATE utf8mb3_unicode_ci,
  `UPD` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
INSERT INTO `b_search_content` VALUES (1,'2024-05-17 11:39:01','iblock','1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=1&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=index&IBLOCK_ID=1&IBLOCK_CODE=slider&IBLOCK_EXTERNAL_ID=&CODE=','Our income from partnering with iSpring has been increasing every year!','','','index','1',NULL,NULL,NULL),(2,'2024-05-17 11:39:33','iblock','2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=2&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=index&IBLOCK_ID=1&IBLOCK_CODE=slider&IBLOCK_EXTERNAL_ID=&CODE=','Our income from partnering with iSpring has been increasing every year!','','','index','1',NULL,NULL,NULL),(3,'2024-05-17 11:40:17','iblock','3',0,NULL,NULL,NULL,'=ID=3&EXTERNAL_ID=3&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=index&IBLOCK_ID=1&IBLOCK_CODE=slider&IBLOCK_EXTERNAL_ID=&CODE=','Our income from partnering with iSpring has been increasing every year!','','','index','1',NULL,NULL,NULL),(4,'2024-05-17 13:26:33','main','s1|/index.php',0,NULL,NULL,NULL,'/index.php','Grow your revenue with iSpring','Partner Program\nGrow your revenue with iSpring\rOffer your customers award-winning software for eLearning authoring and training management.\nBecome a Partner\rJoin the team of eLearning enthusiasts\rTap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n198 clients\nfrom Fortune 500 companies\n20 years\non the market\n59,000 customers\nfrom 172 countries\nBenefits of partnering with iSpring\nRecurring revenue and bonuses\nGet profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n24/7 customer support\nWe take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\nExpanded product offering\niSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\nBecome a Partner\rJump-start your business growth with iSpring\nWhether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\nBecome a Partner\r01\nSign up as a partner\nFill in the \rPartner Program form\rto join our partner network. We will contact you shortly with all the details and reseller account information.\n02\nGet welcome training\nIn just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n03\nClose your first deal\nSelling iSpring software is easy because it is both powerful and user-friendly.\nPromote iSpring software easily\nFree demo licenses\nYou will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\nMarketing aids\nWe support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\nCo-marketing activities\nWe are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\nManage all your sales online\nAll partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\nBecome a Partner\rProducts available in 17 languages\niSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\nEnglish\nSpanish\nFrench\nGerman\nItalian\nJapanese\nPortuguese\nRussian\nPolish\nUzbek\nChinese Simplified\nChinese Traditional\nMongolian\nNorwegian\nUkrainian\nIndonesian\nFinnish\nAzerbaijani\nHave questions? Reach out!\nWe provide our partners with fast tech and sales assistance, including pre-sales and sales support.\nContact us any time at \rpartner@ispring.com\r.\nBecome an iSpring Partner\nTell us about yourself and your company.\nCompany Information\nBy clicking \"Become a Partner,\" you confirm that you\'re agreeing to our \rTerms\rand \rPrivacy Policy\r.','','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
INSERT INTO `b_search_content_right` VALUES (1,'G1'),(2,'G1'),(3,'G1'),(4,'G2');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URL` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
INSERT INTO `b_search_content_site` VALUES (1,'s1',''),(2,'s1',''),(3,'s1',''),(4,'s1','');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `STEM` int NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
INSERT INTO `b_search_content_stem` VALUES (1,'ru',1,0.2314,1),(1,'ru',2,0.2314,2),(1,'ru',3,0.2314,3),(1,'ru',4,0.2314,4),(1,'ru',5,0.2314,5),(1,'ru',6,0.2314,6),(1,'ru',7,0.2314,7),(1,'ru',8,0.2314,8),(1,'ru',9,0.2314,9),(1,'ru',10,0.2314,10),(1,'ru',11,0.2314,11),(2,'ru',1,0.2314,1),(2,'ru',2,0.2314,2),(2,'ru',3,0.2314,3),(2,'ru',4,0.2314,4),(2,'ru',5,0.2314,5),(2,'ru',6,0.2314,6),(2,'ru',7,0.2314,7),(2,'ru',8,0.2314,8),(2,'ru',9,0.2314,9),(2,'ru',10,0.2314,10),(2,'ru',11,0.2314,11),(3,'ru',1,0.2314,1),(3,'ru',2,0.2314,2),(3,'ru',3,0.2314,3),(3,'ru',4,0.2314,4),(3,'ru',5,0.2314,5),(3,'ru',6,0.2314,6),(3,'ru',7,0.2314,7),(3,'ru',8,0.2314,8),(3,'ru',9,0.2314,9),(3,'ru',10,0.2314,10),(3,'ru',11,0.2314,11),(4,'ru',1,0.3138,396.833),(4,'ru',3,0.3138,203.333),(4,'ru',4,0.1118,80),(4,'ru',5,0.3714,220.889),(4,'ru',6,0.4569,276.938),(4,'ru',9,0.1118,207),(4,'ru',12,0.2236,142),(4,'ru',13,0.4256,249.308),(4,'ru',14,0.289,80.4),(4,'ru',15,0.4137,304.75),(4,'ru',16,0.2236,146.667),(4,'ru',17,0.1118,13),(4,'ru',18,0.1772,44.5),(4,'ru',19,0.1118,16),(4,'ru',20,0.3354,251.857),(4,'ru',21,0.1772,175),(4,'ru',22,0.2596,71.5),(4,'ru',23,0.1772,35.5),(4,'ru',24,0.5057,346.227),(4,'ru',25,0.1772,142),(4,'ru',26,0.1772,38.5),(4,'ru',27,0.3138,358.667),(4,'ru',28,0.1772,132),(4,'ru',29,0.4008,201.909),(4,'ru',30,0.1118,34),(4,'ru',31,0.3544,219.625),(4,'ru',32,0.1118,37),(4,'ru',33,0.1118,38),(4,'ru',34,0.1118,39),(4,'ru',35,0.1118,41),(4,'ru',36,0.1118,42),(4,'ru',37,0.2236,178),(4,'ru',38,0.1118,47),(4,'ru',39,0.1118,48),(4,'ru',40,0.3354,302),(4,'ru',41,0.1118,50),(4,'ru',42,0.1118,53),(4,'ru',43,0.1118,61),(4,'ru',44,0.1772,211.5),(4,'ru',45,0.1118,64),(4,'ru',46,0.1118,65),(4,'ru',47,0.1118,66),(4,'ru',48,0.1118,67),(4,'ru',49,0.1118,68),(4,'ru',50,0.2236,241),(4,'ru',51,0.1118,72),(4,'ru',52,0.1118,73),(4,'ru',53,0.1118,76),(4,'ru',54,0.1772,297.5),(4,'ru',55,0.1118,78),(4,'ru',56,0.1772,89),(4,'ru',57,0.1118,86),(4,'ru',58,0.2596,282.75),(4,'ru',59,0.1118,88),(4,'ru',60,0.1118,90),(4,'ru',61,0.3354,424.143),(4,'ru',62,0.2236,136),(4,'ru',63,0.1118,93),(4,'ru',64,0.1118,98),(4,'ru',65,0.1118,99),(4,'ru',66,0.2236,350.667),(4,'ru',67,0.1118,102),(4,'ru',68,0.1118,104),(4,'ru',69,0.1118,110),(4,'ru',70,0.2236,218),(4,'ru',71,0.3138,304.5),(4,'ru',72,0.3138,349.667),(4,'ru',73,0.2236,249),(4,'ru',74,0.1118,116),(4,'ru',75,0.1118,118),(4,'ru',76,0.1118,121),(4,'ru',77,0.4008,332.273),(4,'ru',78,0.2596,235.5),(4,'ru',79,0.1118,124),(4,'ru',80,0.2236,155),(4,'ru',81,0.1118,135),(4,'ru',82,0.2596,314.75),(4,'ru',83,0.1772,274.5),(4,'ru',84,0.1118,138),(4,'ru',85,0.4008,353.364),(4,'ru',86,0.1772,277.5),(4,'ru',87,0.1118,146),(4,'ru',88,0.1118,147),(4,'ru',89,0.1118,148),(4,'ru',90,0.1118,153),(4,'ru',91,0.1118,155),(4,'ru',92,0.1772,340.5),(4,'ru',93,0.1118,159),(4,'ru',94,0.1118,160),(4,'ru',95,0.1118,163),(4,'ru',96,0.1118,165),(4,'ru',97,0.1118,166),(4,'ru',98,0.1118,168),(4,'ru',99,0.1118,169),(4,'ru',100,0.1118,178),(4,'ru',101,0.1118,181),(4,'ru',102,0.1118,184),(4,'ru',103,0.1772,399),(4,'ru',104,0.1118,189),(4,'ru',105,0.1118,190),(4,'ru',106,0.2596,297.25),(4,'ru',107,0.1118,193),(4,'ru',108,0.1118,194),(4,'ru',109,0.1118,195),(4,'ru',110,0.1118,199),(4,'ru',111,0.1118,206),(4,'ru',112,0.1118,210),(4,'ru',113,0.1118,219),(4,'ru',114,0.1118,220),(4,'ru',115,0.1118,221),(4,'ru',116,0.1118,225),(4,'ru',117,0.1118,230),(4,'ru',118,0.1118,235),(4,'ru',119,0.2596,297.75),(4,'ru',120,0.1772,417.5),(4,'ru',121,0.1118,245),(4,'ru',122,0.289,371.6),(4,'ru',123,0.1118,249),(4,'ru',124,0.2236,293.667),(4,'ru',125,0.1772,440),(4,'ru',126,0.1118,259),(4,'ru',127,0.1118,261),(4,'ru',128,0.1118,264),(4,'ru',129,0.1118,266),(4,'ru',130,0.1118,270),(4,'ru',131,0.1118,272),(4,'ru',132,0.1118,274),(4,'ru',133,0.1118,275),(4,'ru',134,0.1772,310.5),(4,'ru',135,0.1118,281),(4,'ru',136,0.1118,283),(4,'ru',137,0.1118,289),(4,'ru',138,0.1118,290),(4,'ru',139,0.1118,291),(4,'ru',140,0.1118,297),(4,'ru',141,0.1118,298),(4,'ru',142,0.1118,300),(4,'ru',143,0.1118,301),(4,'ru',144,0.1118,302),(4,'ru',145,0.1772,307),(4,'ru',146,0.1118,306),(4,'ru',147,0.1118,307),(4,'ru',148,0.1118,308),(4,'ru',149,0.1118,310),(4,'ru',150,0.1118,311),(4,'ru',151,0.1118,313),(4,'ru',152,0.1118,319),(4,'ru',153,0.1118,322),(4,'ru',154,0.2236,330.333),(4,'ru',155,0.1118,324),(4,'ru',156,0.1772,328),(4,'ru',157,0.1118,330),(4,'ru',158,0.1118,335),(4,'ru',159,0.1772,415.5),(4,'ru',160,0.1118,342),(4,'ru',161,0.1118,349),(4,'ru',162,0.1118,350),(4,'ru',163,0.1118,352),(4,'ru',164,0.1118,354),(4,'ru',165,0.1118,355),(4,'ru',166,0.1118,357),(4,'ru',167,0.1118,360),(4,'ru',168,0.2236,398),(4,'ru',169,0.1772,382.5),(4,'ru',170,0.2596,459.75),(4,'ru',171,0.1772,484.5),(4,'ru',172,0.1118,375),(4,'ru',173,0.1772,425),(4,'ru',174,0.1118,381),(4,'ru',175,0.1118,382),(4,'ru',176,0.1118,384),(4,'ru',177,0.1118,386),(4,'ru',178,0.1118,393),(4,'ru',179,0.2236,492.333),(4,'ru',180,0.1118,395),(4,'ru',181,0.1118,398),(4,'ru',182,0.1118,399),(4,'ru',183,0.1118,401),(4,'ru',184,0.1118,402),(4,'ru',185,0.1118,408),(4,'ru',186,0.1772,424),(4,'ru',187,0.1118,413),(4,'ru',188,0.1118,421),(4,'ru',189,0.1118,424),(4,'ru',190,0.1118,432),(4,'ru',191,0.1118,433),(4,'ru',192,0.1118,435),(4,'ru',193,0.1118,438),(4,'ru',194,0.1118,440),(4,'ru',195,0.1118,441),(4,'ru',196,0.1118,443),(4,'ru',197,0.1118,449),(4,'ru',198,0.1118,453),(4,'ru',199,0.1118,457),(4,'ru',200,0.1118,462),(4,'ru',201,0.1118,468),(4,'ru',202,0.1118,472),(4,'ru',203,0.1118,475),(4,'ru',204,0.1118,476),(4,'ru',205,0.1118,478),(4,'ru',206,0.1118,480),(4,'ru',207,0.1118,482),(4,'ru',208,0.1118,484),(4,'ru',209,0.1118,486),(4,'ru',210,0.1118,496),(4,'ru',211,0.1118,498),(4,'ru',212,0.2236,510.667),(4,'ru',213,0.1118,503),(4,'ru',214,0.1118,506),(4,'ru',215,0.1118,511),(4,'ru',216,0.1118,512),(4,'ru',217,0.1118,513),(4,'ru',218,0.1118,515),(4,'ru',219,0.1118,517),(4,'ru',220,0.1118,527),(4,'ru',221,0.1118,528),(4,'ru',222,0.1118,531),(4,'ru',223,0.1118,532),(4,'ru',224,0.1118,538),(4,'ru',225,0.1118,539),(4,'ru',226,0.1118,540),(4,'ru',227,0.1118,541),(4,'ru',228,0.1118,542),(4,'ru',229,0.1118,543),(4,'ru',230,0.1118,544),(4,'ru',231,0.1118,545),(4,'ru',232,0.1118,546),(4,'ru',233,0.1118,547),(4,'ru',234,0.1772,549),(4,'ru',235,0.1118,549),(4,'ru',236,0.1118,551),(4,'ru',237,0.1118,552),(4,'ru',238,0.1118,553),(4,'ru',239,0.1118,554),(4,'ru',240,0.1118,555),(4,'ru',241,0.1118,556),(4,'ru',242,0.1118,557),(4,'ru',243,0.1118,558),(4,'ru',244,0.1118,559),(4,'ru',245,0.1118,565),(4,'ru',246,0.1118,566),(4,'ru',247,0.1118,577),(4,'ru',248,0.1118,578),(4,'ru',249,0.1118,581),(4,'ru',250,0.1118,582),(4,'ru',251,0.1118,583),(4,'ru',252,0.1772,604),(4,'ru',253,0.1118,594),(4,'ru',254,0.1118,595),(4,'ru',255,0.1118,604),(4,'ru',279,0.1118,614),(4,'ru',280,0.1118,616),(4,'ru',281,0.1118,617),(4,'ru',282,0.1772,623),(4,'ru',283,0.1118,628),(4,'ru',284,0.1118,629),(4,'ru',285,0.1118,634),(4,'ru',286,0.1118,635),(4,'ru',287,0.1118,637),(4,'ru',288,0.1118,638),(4,'ru',289,0.1118,641),(4,'ru',290,0.1118,643),(4,'ru',291,0.1118,644);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
INSERT INTO `b_search_content_text` VALUES (1,'26f30cccbeecb2438320ab4ded68b89a','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n'),(2,'26f30cccbeecb2438320ab4ded68b89a','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n'),(3,'26f30cccbeecb2438320ab4ded68b89a','OUR INCOME FROM PARTNERING WITH ISPRING HAS BEEN INCREASING EVERY YEAR!\r\n\r\n'),(4,'a9b5b1cd546df67a209c063bef1d9303','GROW YOUR REVENUE WITH ISPRING\r\nPARTNER PROGRAM\nGROW YOUR REVENUE WITH ISPRING\rOFFER YOUR CUSTOMERS AWARD-WINNING SOFTWARE FOR ELEARNING AUTHORING AND TRAINING MANAGEMENT.\nBECOME A PARTNER\rJOIN THE TEAM OF ELEARNING ENTHUSIASTS\rTAP INTO THE RAPIDLY GROWING ELEARNING MARKET WITH THE INDUSTRY LEADER IN COURSE AUTHORING AND LEARNING MANAGEMENT — ISPRING.\n198 CLIENTS\nFROM FORTUNE 500 COMPANIES\n20 YEARS\nON THE MARKET\n59,000 CUSTOMERS\nFROM 172 COUNTRIES\nBENEFITS OF PARTNERING WITH ISPRING\nRECURRING REVENUE AND BONUSES\nGET PROFIT FROM INITIAL SALES, AS WELL AS RECURRING REVENUE FROM SUBSCRIPTION UPGRADES AND LICENSE EXTENSIONS AND RENEWALS.\n24/7 CUSTOMER SUPPORT\nWE TAKE CARE OF POST-SALE CUSTOMER SUPPORT SO YOU CAN FOCUS ON YOUR BUSINESS. OUR SUPPORT ENGINEERS ARE ALWAYS READY TO HELP.\nEXPANDED PRODUCT OFFERING\nISPRING’S SOFTWARE CAN OPEN A DOOR TO NEW BUSINESS OPPORTUNITIES, ENABLING YOU TO COVER A WIDER RANGE OF CLIENT NEEDS.\nBECOME A PARTNER\rJUMP-START YOUR BUSINESS GROWTH WITH ISPRING\nWHETHER YOU ARE AN ELEARNING CONSULTANT, VAR, SOFTWARE RESELLER, DISTRIBUTOR, OR TENDERER, YOU CAN TAKE ADVANTAGE OF THE ISPRING PARTNER PROGRAM AND START INCREASING YOUR REVENUE TODAY.\nBECOME A PARTNER\r01\nSIGN UP AS A PARTNER\nFILL IN THE \rPARTNER PROGRAM FORM\rTO JOIN OUR PARTNER NETWORK. WE WILL CONTACT YOU SHORTLY WITH ALL THE DETAILS AND RESELLER ACCOUNT INFORMATION.\n02\nGET WELCOME TRAINING\nIN JUST 2 WEBINARS, YOU AND YOUR EMPLOYEES WILL MASTER THE KEY FEATURES OF ISPRING SOFTWARE AND LEARN HOW TO USE YOUR RESELLER ACCOUNT IN THE MOST EFFECTIVE WAY.\n03\nCLOSE YOUR FIRST DEAL\nSELLING ISPRING SOFTWARE IS EASY BECAUSE IT IS BOTH POWERFUL AND USER-FRIENDLY.\nPROMOTE ISPRING SOFTWARE EASILY\nFREE DEMO LICENSES\nYOU WILL GET FREE NFR LICENSES FOR ALL ISPRING DESKTOP PRODUCTS AND A FREE ISPRING LEARN LMS ACCOUNT. THESE RESOURCES WILL BE A USEFUL AID IN NEGOTIATIONS WITH YOUR PROSPECTIVE CLIENTS.\nMARKETING AIDS\nWE SUPPORT OUR PARTNERS AT ALL STAGES OF THE SALES PROCESS: FROM LEAD GENERATION TO CLOSING AND FOLLOW-UP. WE ALSO PROVIDE READY-MADE MARKETING AIDS: GUIDELINES, PRESENTATIONS, SALES PROPOSALS, ETC.\nCO-MARKETING ACTIVITIES\nWE ARE ALWAYS HERE TO HELP YOU GROW THE MARKET AND EXPAND YOUR CUSTOMER BASE. OUR MARKETING SPECIALISTS GLADLY TAKE PART IN PARTNERS’ PROMOTIONAL ACTIVITIES, LIKE WORKSHOPS AND CONFERENCES.\nMANAGE ALL YOUR SALES ONLINE\nALL PARTNERS GET ACCESS TO ISPRING’S RESELLER PORTAL. THERE YOU CAN PROCESS ORDERS AND LICENSE DELIVERY, DOWNLOAD LICENSE CERTIFICATES AND RECEIPTS, AND VIEW SALES HISTORY WITH EASE.\nBECOME A PARTNER\rPRODUCTS AVAILABLE IN 17 LANGUAGES\nISPRING SOFTWARE AND SERVICES SUPPORT A VARIETY OF LANGUAGES TO PROVIDE EXCEPTIONAL USER EXPERIENCE TO USERS FROM DIFFERENT COUNTRIES. NEW LANGUAGES ARE BEING COVERED ON A REGULAR BASIS.\nENGLISH\nSPANISH\nFRENCH\nGERMAN\nITALIAN\nJAPANESE\nPORTUGUESE\nRUSSIAN\nPOLISH\nUZBEK\nCHINESE SIMPLIFIED\nCHINESE TRADITIONAL\nMONGOLIAN\nNORWEGIAN\nUKRAINIAN\nINDONESIAN\nFINNISH\nAZERBAIJANI\nHAVE QUESTIONS? REACH OUT!\nWE PROVIDE OUR PARTNERS WITH FAST TECH AND SALES ASSISTANCE, INCLUDING PRE-SALES AND SALES SUPPORT.\nCONTACT US ANY TIME AT \rPARTNER@ISPRING.COM\r.\nBECOME AN ISPRING PARTNER\nTELL US ABOUT YOURSELF AND YOUR COMPANY.\nCOMPANY INFORMATION\nBY CLICKING \"BECOME A PARTNER,\" YOU CONFIRM THAT YOU\'RE AGREEING TO OUR \rTERMS\rAND \rPRIVACY POLICY\r.\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `POS` int NOT NULL,
  `WORD` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
INSERT INTO `b_search_content_title` VALUES (1,'s1',44,'BEEN'),(1,'s1',60,'EVERY'),(1,'s1',11,'FROM'),(1,'s1',40,'HAS'),(1,'s1',4,'INCOME'),(1,'s1',49,'INCREASING'),(1,'s1',32,'ISPRING'),(1,'s1',0,'OUR'),(1,'s1',16,'PARTNERING'),(1,'s1',27,'WITH'),(1,'s1',66,'YEAR'),(2,'s1',44,'BEEN'),(2,'s1',60,'EVERY'),(2,'s1',11,'FROM'),(2,'s1',40,'HAS'),(2,'s1',4,'INCOME'),(2,'s1',49,'INCREASING'),(2,'s1',32,'ISPRING'),(2,'s1',0,'OUR'),(2,'s1',16,'PARTNERING'),(2,'s1',27,'WITH'),(2,'s1',66,'YEAR'),(3,'s1',44,'BEEN'),(3,'s1',60,'EVERY'),(3,'s1',11,'FROM'),(3,'s1',40,'HAS'),(3,'s1',4,'INCOME'),(3,'s1',49,'INCREASING'),(3,'s1',32,'ISPRING'),(3,'s1',0,'OUR'),(3,'s1',16,'PARTNERING'),(3,'s1',27,'WITH'),(3,'s1',66,'YEAR'),(4,'s1',0,'GROW'),(4,'s1',23,'ISPRING'),(4,'s1',10,'REVENUE'),(4,'s1',18,'WITH'),(4,'s1',5,'YOUR');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8mb3_unicode_ci,
  `PARAM2` text COLLATE utf8mb3_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_phrase` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RESULT_COUNT` int NOT NULL,
  `PAGES` int NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8mb3_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_stem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
INSERT INTO `b_search_stem` VALUES (52,'000'),(113,'01'),(126,'02'),(140,'03'),(211,'17'),(53,'172'),(43,'198'),(48,'20'),(69,'24'),(46,'500'),(51,'59'),(280,'ABOUT'),(199,'ACCESS'),(124,'ACCOUNT'),(186,'ACTIVITIES'),(110,'ADVANTAGE'),(288,'AGREEING'),(165,'AID'),(169,'AIDS'),(277,'ALINA'),(122,'ALL'),(178,'ALSO'),(83,'ALWAYS'),(103,'AN'),(24,'AND'),(253,'ANY'),(82,'ARE'),(62,'AS'),(249,'ASSISTANCE'),(171,'AT'),(23,'AUTHORING'),(210,'AVAILABLE'),(19,'AWARD-WINNING'),(242,'AZERBAIJANI'),(189,'BASE'),(223,'BASIS'),(163,'BE'),(147,'BECAUSE'),(27,'BECOME'),(263,'BECOMES'),(8,'BEEN'),(220,'BEING'),(257,'BENEFIT'),(55,'BENEFITS'),(258,'BESIDES'),(278,'BOGDANOVA'),(57,'BONUSES'),(149,'BOTH'),(267,'BRINGS'),(80,'BUSINESS'),(283,'BY'),(78,'CAN'),(74,'CARE'),(205,'CERTIFICATES'),(234,'CHINESE'),(284,'CLICKING'),(98,'CLIENT'),(44,'CLIENTS'),(141,'CLOSE'),(176,'CLOSING'),(185,'CO-MARKETING'),(255,'COM'),(47,'COMPANIES'),(282,'COMPANY'),(196,'CONFERENCES'),(285,'CONFIRM'),(104,'CONSULTANT'),(120,'CONTACT'),(54,'COUNTRIES'),(41,'COURSE'),(95,'COVER'),(221,'COVERED'),(70,'CUSTOMER'),(18,'CUSTOMERS'),(143,'DEAL'),(203,'DELIVERY'),(155,'DEMO'),(158,'DESKTOP'),(123,'DETAILS'),(219,'DIFFERENT'),(273,'DIRECTOR'),(260,'DISCOUNT'),(107,'DISTRIBUTOR'),(91,'DOOR'),(204,'DOWNLOAD'),(209,'EASE'),(153,'EASILY'),(146,'EASY'),(138,'EFFECTIVE'),(22,'ELEARNING'),(130,'EMPLOYEES'),(94,'ENABLING'),(81,'ENGINEERS'),(224,'ENGLISH'),(32,'ENTHUSIASTS'),(184,'ETC'),(10,'EVERY'),(215,'EXCEPTIONAL'),(188,'EXPAND'),(87,'EXPANDED'),(217,'EXPERIENCE'),(67,'EXTENSIONS'),(247,'FAST'),(133,'FEATURES'),(116,'FILL'),(241,'FINNISH'),(142,'FIRST'),(79,'FOCUS'),(177,'FOLLOW-UP'),(21,'FOR'),(117,'FORM'),(45,'FORTUNE'),(272,'FOUNDER'),(154,'FREE'),(226,'FRENCH'),(3,'FROM'),(175,'GENERATION'),(227,'GERMAN'),(58,'GET'),(191,'GLADLY'),(12,'GROW'),(36,'GROWING'),(101,'GROWTH'),(181,'GUIDELINES'),(274,'GUIDO'),(7,'HAS'),(243,'HAVE'),(86,'HELP'),(187,'HERE'),(208,'HISTORY'),(275,'HORNIG'),(135,'HOW'),(40,'IN'),(250,'INCLUDING'),(2,'INCOME'),(9,'INCREASING'),(240,'INDONESIAN'),(38,'INDUSTRY'),(125,'INFORMATION'),(60,'INITIAL'),(34,'INTO'),(145,'IS'),(6,'ISPRING'),(148,'IT'),(228,'ITALIAN'),(229,'JAPANESE'),(28,'JOIN'),(100,'JUMP-START'),(128,'JUST'),(132,'KEY'),(270,'KIRILL'),(212,'LANGUAGES'),(174,'LEAD'),(39,'LEADER'),(134,'LEARN'),(42,'LEARNING'),(268,'LERN'),(66,'LICENSE'),(156,'LICENSES'),(194,'LIKE'),(269,'LINK'),(160,'LMS'),(276,'LRN'),(197,'MANAGE'),(26,'MANAGEMENT'),(37,'MARKET'),(168,'MARKETING'),(131,'MASTER'),(237,'MONGOLIAN'),(137,'MOST'),(99,'NEEDS'),(166,'NEGOTIATIONS'),(118,'NETWORK'),(92,'NEW'),(157,'NFR'),(238,'NORWEGIAN'),(31,'OF'),(17,'OFFER'),(89,'OFFERING'),(262,'OFTEN'),(50,'ON'),(198,'ONLINE'),(90,'OPEN'),(264,'OPENER'),(93,'OPPORTUNITIES'),(108,'OR'),(202,'ORDERS'),(1,'OUR'),(246,'OUT'),(192,'PART'),(15,'PARTNER'),(4,'PARTNERING'),(170,'PARTNERS'),(291,'POLICY'),(232,'POLISH'),(200,'PORTAL'),(230,'PORTUGUESE'),(75,'POST-SALE'),(150,'POWERFUL'),(251,'PRE-SALES'),(182,'PRESENTATIONS'),(290,'PRIVACY'),(173,'PROCESS'),(88,'PRODUCT'),(159,'PRODUCTS'),(59,'PROFIT'),(16,'PROGRAM'),(152,'PROMOTE'),(193,'PROMOTIONAL'),(183,'PROPOSALS'),(167,'PROSPECTIVE'),(179,'PROVIDE'),(244,'QUESTIONS'),(97,'RANGE'),(35,'RAPIDLY'),(287,'RE'),(245,'REACH'),(84,'READY'),(180,'READY-MADE'),(206,'RECEIPTS'),(56,'RECURRING'),(222,'REGULAR'),(68,'RENEWALS'),(106,'RESELLER'),(162,'RESOURCES'),(14,'REVENUE'),(231,'RUSSIAN'),(61,'SALES'),(256,'SEE'),(144,'SELLING'),(213,'SERVICES'),(121,'SHORTLY'),(114,'SIGN'),(235,'SIMPLIFIED'),(76,'SO'),(20,'SOFTWARE'),(225,'SPANISH'),(190,'SPECIALISTS'),(172,'STAGES'),(111,'START'),(64,'SUBSCRIPTION'),(71,'SUPPORT'),(261,'SYSTEM'),(265,'SYSTEMS'),(73,'TAKE'),(33,'TAP'),(30,'TEAM'),(248,'TECH'),(279,'TELL'),(109,'TENDERER'),(289,'TERMS'),(286,'THAT'),(29,'THE'),(201,'THERE'),(161,'THESE'),(254,'TIME'),(271,'TIMOFEEV'),(85,'TO'),(112,'TODAY'),(236,'TRADITIONAL'),(25,'TRAINING'),(259,'TRANSPARENT'),(239,'UKRAINIAN'),(115,'UP'),(65,'UPGRADES'),(252,'US'),(136,'USE'),(164,'USEFUL'),(216,'USER'),(151,'USER-FRIENDLY'),(218,'USERS'),(233,'UZBEK'),(105,'VAR'),(214,'VARIETY'),(207,'VIEW'),(139,'WAY'),(72,'WE'),(129,'WEBINARS'),(127,'WELCOME'),(63,'WELL'),(102,'WHETHER'),(266,'WHICH'),(96,'WIDER'),(119,'WILL'),(5,'WITH'),(195,'WORKSHOPS'),(11,'YEAR'),(49,'YEARS'),(77,'YOU'),(13,'YOUR'),(281,'YOURSELF');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_suggest` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `BANNER_ID` int NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CAUSE_CODE` int DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8mb3_unicode_ci,
  `CAMPAIGN_ID` int NOT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  `CAMPAIGN_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LINK_ID` int NOT NULL,
  `BANNER_ID` int NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `REQUEST_URI` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8mb3_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int NOT NULL,
  `BANNER_ID` int NOT NULL,
  `ORDER_ID` int NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  `PARENT_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `SORT` int DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_log`
--

DROP TABLE IF EXISTS `b_seo_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_service_log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_log`
--

LOCK TABLES `b_seo_service_log` WRITE;
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_queue`
--

DROP TABLE IF EXISTS `b_seo_service_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_service_queue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SERVICE_TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLIENT_ID` int NOT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_QUEUE_TYPE` (`TYPE`),
  KEY `IX_B_SEO_SERVICE_SERVICE_TYPE_CLIENT_ID` (`SERVICE_TYPE`,`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_queue`
--

LOCK TABLES `b_seo_service_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_rtg_queue`
--

DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PARENT_ID` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_rtg_queue`
--

LOCK TABLES `b_seo_service_rtg_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_subscription`
--

DROP TABLE IF EXISTS `b_seo_service_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_service_subscription` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_subscription`
--

LOCK TABLES `b_seo_service_subscription` WRITE;
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_webhook`
--

DROP TABLE IF EXISTS `b_seo_service_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_webhook`
--

LOCK TABLES `b_seo_service_webhook` WRITE;
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_ID` int NOT NULL,
  `SITEMAP_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int NOT NULL,
  `SITEMAP_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PID` int NOT NULL,
  `PROCESSED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ITEM_ID` int DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int NOT NULL,
  `BANNER_ID` int NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int DEFAULT '0',
  `CLICKS_SEARCH` int DEFAULT '0',
  `CLICKS_CONTEXT` int DEFAULT '0',
  `SHOWS` int DEFAULT '0',
  `SHOWS_SEARCH` int DEFAULT '0',
  `SHOWS_CONTEXT` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_short_uri` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URI_CRC` int NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int NOT NULL,
  `STATUS` int NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_site_template` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (1,'s1','',1,'empty');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sm_version_history`
--

DROP TABLE IF EXISTS `b_sm_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_sm_version_history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sm_version_history`
--

LOCK TABLES `b_sm_version_history` WRITE;
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_smile` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int NOT NULL DEFAULT '0',
  `SORT` int NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_smile_lang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_smile_set` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '150',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template`
--

DROP TABLE IF EXISTS `b_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_sms_template` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb3_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template`
--

LOCK TABLES `b_sms_template` WRITE;
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
INSERT INTO `b_sms_template` VALUES (1,'SMS_USER_CONFIRM_NUMBER','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код подтверждения #CODE#',NULL),(2,'SMS_USER_RESTORE_PASSWORD','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код для восстановления пароля #CODE#',NULL),(3,'SMS_EVENT_LOG_NOTIFICATION','Y','#DEFAULT_SENDER#','#PHONE_NUMBER#','#NAME#: #ADDITIONAL_TEXT# (событий: #EVENT_COUNT#)',NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template_site`
--

DROP TABLE IF EXISTS `b_sms_template_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template_site`
--

LOCK TABLES `b_sms_template_site` WRITE;
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
INSERT INTO `b_sms_template_site` VALUES (1,'s1'),(2,'s1'),(3,'s1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int NOT NULL,
  `CONTACT_USER_ID` int DEFAULT NULL,
  `CONTACT_XML_ID` int DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int DEFAULT NULL,
  `LINK_ID` int DEFAULT NULL,
  `CONTACT_PROFILE_ID` int NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_zoom_meeting_recording`
--

DROP TABLE IF EXISTS `b_socialservices_zoom_meeting_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_socialservices_zoom_meeting_recording` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EXTERNAL_ID` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MEETING_ID` int NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `FILE_TYPE` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_SIZE` int NOT NULL,
  `PLAY_URL` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DOWNLOAD_URL` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `RECORDING_TYPE` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOWNLOAD_TOKEN` text COLLATE utf8mb3_unicode_ci,
  `PASSWORD` text COLLATE utf8mb3_unicode_ci,
  `FILE_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_RECORDING_1` (`MEETING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_zoom_meeting_recording`
--

LOCK TABLES `b_socialservices_zoom_meeting_recording` WRITE;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_zoom_meeting_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_sticker` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int NOT NULL,
  `CREATED_BY` int NOT NULL,
  `PERSONAL` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8mb3_unicode_ci,
  `POS_TOP` int DEFAULT NULL,
  `POS_LEFT` int DEFAULT NULL,
  `WIDTH` int DEFAULT NULL,
  `HEIGHT` int DEFAULT NULL,
  `COLOR` int DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int DEFAULT NULL,
  `MARKER_LEFT` int DEFAULT NULL,
  `MARKER_WIDTH` int DEFAULT NULL,
  `MARKER_HEIGHT` int DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int NOT NULL,
  `TASK_ID` int NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_task` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'bitrixcloud_deny','D','bitrixcloud','Y',NULL,'module'),(13,'bitrixcloud_control','W','bitrixcloud','Y',NULL,'module'),(14,'clouds_denied','D','clouds','Y',NULL,'module'),(15,'clouds_browse','F','clouds','Y',NULL,'module'),(16,'clouds_upload','U','clouds','Y',NULL,'module'),(17,'clouds_full_access','W','clouds','Y',NULL,'module'),(18,'fileman_denied','D','fileman','Y','','module'),(19,'fileman_allowed_folders','F','fileman','Y','','module'),(20,'fileman_full_access','W','fileman','Y','','module'),(21,'medialib_denied','D','fileman','Y','','medialib'),(22,'medialib_view','F','fileman','Y','','medialib'),(23,'medialib_only_new','R','fileman','Y','','medialib'),(24,'medialib_edit_items','V','fileman','Y','','medialib'),(25,'medialib_editor','W','fileman','Y','','medialib'),(26,'medialib_full','X','fileman','Y','','medialib'),(27,'stickers_denied','D','fileman','Y','','stickers'),(28,'stickers_read','R','fileman','Y','','stickers'),(29,'stickers_edit','W','fileman','Y','','stickers'),(30,'hblock_denied','D','highloadblock','Y',NULL,'module'),(31,'hblock_read','R','highloadblock','Y',NULL,'module'),(32,'hblock_write','W','highloadblock','Y',NULL,'module'),(33,'iblock_deny','D','iblock','Y',NULL,'iblock'),(34,'iblock_read','R','iblock','Y',NULL,'iblock'),(35,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(36,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(37,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(38,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(39,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(40,'iblock_full','X','iblock','Y',NULL,'iblock'),(41,'landing_right_denied','D','landing','Y',NULL,'module'),(42,'landing_right_read','R','landing','Y',NULL,'module'),(43,'landing_right_edit','U','landing','Y',NULL,'module'),(44,'landing_right_sett','V','landing','Y',NULL,'module'),(45,'landing_right_public','W','landing','Y',NULL,'module'),(46,'landing_right_delete','X','landing','Y',NULL,'module'),(47,'seo_denied','D','seo','Y','','module'),(48,'seo_edit','F','seo','Y','','module'),(49,'seo_full_access','W','seo','Y','','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int NOT NULL,
  `OPERATION_ID` int NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(13,37),(15,38),(16,38),(16,39),(17,38),(17,39),(17,40),(19,43),(19,44),(19,45),(19,46),(19,47),(19,48),(19,49),(19,51),(19,52),(20,41),(20,42),(20,43),(20,44),(20,45),(20,46),(20,47),(20,48),(20,49),(20,50),(20,51),(20,52),(20,53),(22,54),(23,54),(23,55),(23,59),(24,54),(24,59),(24,60),(24,61),(25,54),(25,55),(25,56),(25,57),(25,59),(25,60),(25,61),(26,54),(26,55),(26,56),(26,57),(26,58),(26,59),(26,60),(26,61),(28,62),(29,62),(29,63),(29,64),(29,65),(31,66),(32,67),(32,68),(34,69),(34,70),(35,71),(36,69),(36,70),(36,72),(37,69),(37,70),(37,71),(37,72),(38,69),(38,70),(38,71),(38,72),(38,73),(38,74),(38,75),(38,76),(39,69),(39,70),(39,71),(39,72),(39,73),(39,74),(39,75),(39,76),(39,77),(39,78),(39,79),(39,80),(40,69),(40,70),(40,71),(40,72),(40,73),(40,74),(40,75),(40,76),(40,77),(40,78),(40,79),(40,80),(40,81),(40,82),(40,83),(40,84),(40,85),(40,86),(42,87),(43,88),(44,89),(45,90),(46,91),(48,93),(49,92),(49,93);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_access`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_access` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_UI_AVATAR_MASK_RIGHT_3` (`ITEM_ID`,`ACCESS_CODE`),
  KEY `B_UI_AVATAR_MASK_RIGHT_1` (`ITEM_ID`),
  KEY `B_UI_AVATAR_MASK_RIGHT_2` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_access`
--

LOCK TABLES `b_ui_avatar_mask_access` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_file_deleted`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_file_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_file_deleted` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ENTITY` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ORIGINAL_FILE_ID` int NOT NULL,
  `FILE_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_1` (`ENTITY`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_2` (`ITEM_ID`),
  KEY `B_UI_AVATAR_MASK_FILE_DELETED_3` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_file_deleted`
--

LOCK TABLES `b_ui_avatar_mask_file_deleted` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_file_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_file_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_group`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_group` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `TIMESTAMP_X` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_UI_AVATAR_MASK_GROUP_OWNER` (`OWNER_ID`,`OWNER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_group`
--

LOCK TABLES `b_ui_avatar_mask_group` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_item`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_item` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `OWNER_TYPE` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OWNER_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_ID` int NOT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int NOT NULL DEFAULT '100',
  `TIMESTAMP_X` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_UI_AVATAR_MASK_ITEM_OWNER` (`OWNER_TYPE`,`OWNER_ID`),
  KEY `B_UI_AVATAR_MASK_ITEM_FILE_ID` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_item`
--

LOCK TABLES `b_ui_avatar_mask_item` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_item_applied_to`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_item_applied_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_item_applied_to` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ORIGINAL_FILE_ID` int NOT NULL,
  `FILE_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `b_ui_avatar_mask_item_applied1` (`FILE_ID`,`ITEM_ID`),
  KEY `b_ui_avatar_mask_item_applied2` (`ITEM_ID`),
  KEY `b_ui_avatar_mask_item_applied3` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_item_applied_to`
--

LOCK TABLES `b_ui_avatar_mask_item_applied_to` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item_applied_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_item_applied_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_avatar_mask_recently_used`
--

DROP TABLE IF EXISTS `b_ui_avatar_mask_recently_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_avatar_mask_recently_used` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_UI_AVATAR_MASK_ITEM_R_OWNER` (`ITEM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_avatar_mask_recently_used`
--

LOCK TABLES `b_ui_avatar_mask_recently_used` WRITE;
/*!40000 ALTER TABLE `b_ui_avatar_mask_recently_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_avatar_mask_recently_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_entity_editor_config`
--

DROP TABLE IF EXISTS `b_ui_entity_editor_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_entity_editor_config` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `COMMON` varchar(1) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `CATEGORY` (`CATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_entity_editor_config`
--

LOCK TABLES `b_ui_entity_editor_config` WRITE;
/*!40000 ALTER TABLE `b_ui_entity_editor_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_entity_editor_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_entity_editor_config_ac`
--

DROP TABLE IF EXISTS `b_ui_entity_editor_config_ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_entity_editor_config_ac` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ACCESS_CODE` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONFIG_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ACCESS_CODE` (`ACCESS_CODE`),
  KEY `CONFIG_ID` (`CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_entity_editor_config_ac`
--

LOCK TABLES `b_ui_entity_editor_config_ac` WRITE;
/*!40000 ALTER TABLE `b_ui_entity_editor_config_ac` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_entity_editor_config_ac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_ui_file_uploader_temp_file`
--

DROP TABLE IF EXISTS `b_ui_file_uploader_temp_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_ui_file_uploader_temp_file` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GUID` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FILE_ID` int DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SIZE` bigint NOT NULL,
  `PATH` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MIMETYPE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RECEIVED_SIZE` bigint NOT NULL DEFAULT '0',
  `WIDTH` int NOT NULL DEFAULT '0',
  `HEIGHT` int NOT NULL DEFAULT '0',
  `BUCKET_ID` int DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONTROLLER` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLOUD` tinyint(1) NOT NULL DEFAULT '0',
  `UPLOADED` tinyint(1) NOT NULL DEFAULT '0',
  `DELETED` tinyint(1) NOT NULL DEFAULT '0',
  `CREATED_BY` int NOT NULL DEFAULT '0',
  `CREATED_AT` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_UI_UPLOADER_GUID` (`GUID`),
  KEY `IX_B_UI_UPLOADER_FILE_ID` (`FILE_ID`),
  KEY `IX_B_UI_UPLOADER_CREATED_AT` (`CREATED_AT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_ui_file_uploader_temp_file`
--

LOCK TABLES `b_ui_file_uploader_temp_file` WRITE;
/*!40000 ALTER TABLE `b_ui_file_uploader_temp_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_ui_file_uploader_temp_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8mb3_unicode_ci,
  `USER_ID` int DEFAULT NULL,
  `TIMESTAMP_X` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
INSERT INTO `b_undo` VALUES ('10cce9cb490dab3a12c7b7b45886e05f5','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:20111:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<p class=\"feedback__title title\">\n			<?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"index\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",\n		\"DISPLAY_DATE\" => \"N\",\n		\"DISPLAY_NAME\" => \"N\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"NAME\",\n			1 => \"PREVIEW_PICTURE\",\n			2 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"index\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"\",\n			1 => \"\",\n			2 => \"\",\n			3 => \"\",\n			4 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"SORT\",\n		\"SORT_BY2\" => \"TIMESTAMP_X\",\n		\"SORT_ORDER1\" => \"ASC\",\n		\"SORT_ORDER2\" => \"DESC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"index\"\n	),\n	false\n);?>\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n						</p>\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715939217),('14b7421f093826bd4a18aa09d9b983584','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:19977:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",\n		\"DISPLAY_DATE\" => \"N\",\n		\"DISPLAY_NAME\" => \"N\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\"NAME\",\"PREVIEW_PICTURE\",\"\"),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"index\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\"\",\"\"),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"SORT\",\n		\"SORT_BY2\" => \"TIMESTAMP_X\",\n		\"SORT_ORDER1\" => \"ASC\",\n		\"SORT_ORDER2\" => \"DESC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><br>\n		</p>\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n						</p>\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715936799),('14bafddd59b1e7afdb3a67058a3894c36','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:23218:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<p class=\"feedback__title title\">\n			<?$APPLICATION->IncludeComponent(\"bitrix:news.list\", \"index\", Array(\n	\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",	// Формат показа даты\n		\"ADD_SECTIONS_CHAIN\" => \"N\",	// Включать раздел в цепочку навигации\n		\"AJAX_MODE\" => \"N\",	// Включить режим AJAX\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",	// Дополнительный идентификатор\n		\"AJAX_OPTION_HISTORY\" => \"N\",	// Включить эмуляцию навигации браузера\n		\"AJAX_OPTION_JUMP\" => \"N\",	// Включить прокрутку к началу компонента\n		\"AJAX_OPTION_STYLE\" => \"Y\",	// Включить подгрузку стилей\n		\"CACHE_FILTER\" => \"N\",	// Кешировать при установленном фильтре\n		\"CACHE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"CACHE_TIME\" => \"36000000\",	// Время кеширования (сек.)\n		\"CACHE_TYPE\" => \"A\",	// Тип кеширования\n		\"CHECK_DATES\" => \"Y\",	// Показывать только активные на данный момент элементы\n		\"DETAIL_URL\" => \"\",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",	// Выводить под списком\n		\"DISPLAY_DATE\" => \"N\",	// Выводить дату элемента\n		\"DISPLAY_NAME\" => \"N\",	// Выводить название элемента\n		\"DISPLAY_PICTURE\" => \"Y\",	// Выводить изображение для анонса\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",	// Выводить текст анонса\n		\"DISPLAY_TOP_PAGER\" => \"N\",	// Выводить над списком\n		\"FIELD_CODE\" => array(	// Поля\n			0 => \"NAME\",\n			1 => \"PREVIEW_PICTURE\",\n			2 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",	// Фильтр\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",	// Скрывать ссылку, если нет детального описания\n		\"IBLOCK_ID\" => \"1\",	// Код информационного блока\n		\"IBLOCK_TYPE\" => \"index\",	// Тип информационного блока (используется только для проверки)\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",	// Включать инфоблок в цепочку навигации\n		\"INCLUDE_SUBSECTIONS\" => \"N\",	// Показывать элементы подразделов раздела\n		\"MESSAGE_404\" => \"\",	// Сообщение для показа (по умолчанию из компонента)\n		\"NEWS_COUNT\" => \"20\",	// Количество новостей на странице\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",	// Включить обработку ссылок\n		\"PAGER_DESC_NUMBERING\" => \"N\",	// Использовать обратную навигацию\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",	// Время кеширования страниц для обратной навигации\n		\"PAGER_SHOW_ALL\" => \"N\",	// Показывать ссылку \"Все\"\n		\"PAGER_SHOW_ALWAYS\" => \"N\",	// Выводить всегда\n		\"PAGER_TEMPLATE\" => \".default\",	// Шаблон постраничной навигации\n		\"PAGER_TITLE\" => \"Новости\",	// Название категорий\n		\"PARENT_SECTION\" => \"\",	// ID раздела\n		\"PARENT_SECTION_CODE\" => \"\",	// Код раздела\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",	// Максимальная длина анонса для вывода (только для типа текст)\n		\"PROPERTY_CODE\" => array(	// Свойства\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",	// Устанавливать заголовок окна браузера\n		\"SET_LAST_MODIFIED\" => \"N\",	// Устанавливать в заголовках ответа время модификации страницы\n		\"SET_META_DESCRIPTION\" => \"N\",	// Устанавливать описание страницы\n		\"SET_META_KEYWORDS\" => \"N\",	// Устанавливать ключевые слова страницы\n		\"SET_STATUS_404\" => \"N\",	// Устанавливать статус 404\n		\"SET_TITLE\" => \"N\",	// Устанавливать заголовок страницы\n		\"SHOW_404\" => \"N\",	// Показ специальной страницы\n		\"SORT_BY1\" => \"SORT\",	// Поле для первой сортировки новостей\n		\"SORT_BY2\" => \"TIMESTAMP_X\",	// Поле для второй сортировки новостей\n		\"SORT_ORDER1\" => \"ASC\",	// Направление для первой сортировки новостей\n		\"SORT_ORDER2\" => \"DESC\",	// Направление для второй сортировки новостей\n		\"STRICT_SECTION_CHECK\" => \"N\",	// Строгая проверка раздела для показа списка\n	),\n	false\n);?>\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n						</p>\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715938572),('17a68c98c87a7d07bf33de01406dcf4be','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:19932:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",\n		\"DISPLAY_DATE\" => \"N\",\n		\"DISPLAY_NAME\" => \"N\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\"NAME\",\"PREVIEW_PICTURE\",\"\"),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"index\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\"\",\"\"),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"SORT\",\n		\"SORT_BY2\" => \"TIMESTAMP_X\",\n		\"SORT_ORDER1\" => \"ASC\",\n		\"SORT_ORDER2\" => \"DESC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?><br>\n		</p>\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715936601),('181ccdf5ec8c7b0a93018013917c59cb7','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:20115:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<p class=\"feedback__title title\">\n			<?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\", \n	\"index\", \n	array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",\n		\"DISPLAY_DATE\" => \"N\",\n		\"DISPLAY_NAME\" => \"N\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\n			0 => \"NAME\",\n			1 => \"PREVIEW_PICTURE\",\n			2 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"index\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\n			0 => \"fio\",\n			1 => \"fio\",\n			2 => \"post\",\n			3 => \"review\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"SORT\",\n		\"SORT_BY2\" => \"TIMESTAMP_X\",\n		\"SORT_ORDER1\" => \"ASC\",\n		\"SORT_ORDER2\" => \"DESC\",\n		\"STRICT_SECTION_CHECK\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"index\"\n	),\n	false\n);?>\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n						</p>\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715939697),('1afd5636971b39125cdead29701fd49ea','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:19982:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n <br>\n		</p>\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 <?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",\n		\"DISPLAY_DATE\" => \"N\",\n		\"DISPLAY_NAME\" => \"N\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(\"NAME\",\"PREVIEW_PICTURE\",\"\"),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"1\",\n		\"IBLOCK_TYPE\" => \"index\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"N\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"20\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \".default\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(\"\",\"\"),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"N\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"SORT\",\n		\"SORT_BY2\" => \"TIMESTAMP_X\",\n		\"SORT_ORDER1\" => \"ASC\",\n		\"SORT_ORDER2\" => \"DESC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\n						</p>\n						<p class=\"feedback__quote\">\n							Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715936772),('1b68f33352e6345465e1fe1babcad4c3f','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:19584:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\"Grow your revenue with iSpring\");\n?><div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	\n			<?$APPLICATION->IncludeComponent(\"bitrix:news.list\", \"index\", Array(\n	\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",	// Формат показа даты\n		\"ADD_SECTIONS_CHAIN\" => \"N\",	// Включать раздел в цепочку навигации\n		\"AJAX_MODE\" => \"N\",	// Включить режим AJAX\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",	// Дополнительный идентификатор\n		\"AJAX_OPTION_HISTORY\" => \"N\",	// Включить эмуляцию навигации браузера\n		\"AJAX_OPTION_JUMP\" => \"N\",	// Включить прокрутку к началу компонента\n		\"AJAX_OPTION_STYLE\" => \"Y\",	// Включить подгрузку стилей\n		\"CACHE_FILTER\" => \"N\",	// Кешировать при установленном фильтре\n		\"CACHE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"CACHE_TIME\" => \"36000000\",	// Время кеширования (сек.)\n		\"CACHE_TYPE\" => \"A\",	// Тип кеширования\n		\"CHECK_DATES\" => \"Y\",	// Показывать только активные на данный момент элементы\n		\"DETAIL_URL\" => \"\",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",	// Выводить под списком\n		\"DISPLAY_DATE\" => \"N\",	// Выводить дату элемента\n		\"DISPLAY_NAME\" => \"N\",	// Выводить название элемента\n		\"DISPLAY_PICTURE\" => \"Y\",	// Выводить изображение для анонса\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",	// Выводить текст анонса\n		\"DISPLAY_TOP_PAGER\" => \"N\",	// Выводить над списком\n		\"FIELD_CODE\" => array(	// Поля\n			0 => \"NAME\",\n			1 => \"PREVIEW_PICTURE\",\n			2 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",	// Фильтр\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",	// Скрывать ссылку, если нет детального описания\n		\"IBLOCK_ID\" => \"1\",	// Код информационного блока\n		\"IBLOCK_TYPE\" => \"index\",	// Тип информационного блока (используется только для проверки)\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",	// Включать инфоблок в цепочку навигации\n		\"INCLUDE_SUBSECTIONS\" => \"N\",	// Показывать элементы подразделов раздела\n		\"MESSAGE_404\" => \"\",	// Сообщение для показа (по умолчанию из компонента)\n		\"NEWS_COUNT\" => \"20\",	// Количество новостей на странице\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",	// Включить обработку ссылок\n		\"PAGER_DESC_NUMBERING\" => \"N\",	// Использовать обратную навигацию\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",	// Время кеширования страниц для обратной навигации\n		\"PAGER_SHOW_ALL\" => \"N\",	// Показывать ссылку \"Все\"\n		\"PAGER_SHOW_ALWAYS\" => \"N\",	// Выводить всегда\n		\"PAGER_TEMPLATE\" => \".default\",	// Шаблон постраничной навигации\n		\"PAGER_TITLE\" => \"Новости\",	// Название категорий\n		\"PARENT_SECTION\" => \"\",	// ID раздела\n		\"PARENT_SECTION_CODE\" => \"\",	// Код раздела\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",	// Максимальная длина анонса для вывода (только для типа текст)\n		\"PROPERTY_CODE\" => array(	// Свойства\n			0 => \"fio\",\n			1 => \"post\",\n			2 => \"review\",\n			3 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",	// Устанавливать заголовок окна браузера\n		\"SET_LAST_MODIFIED\" => \"N\",	// Устанавливать в заголовках ответа время модификации страницы\n		\"SET_META_DESCRIPTION\" => \"N\",	// Устанавливать описание страницы\n		\"SET_META_KEYWORDS\" => \"N\",	// Устанавливать ключевые слова страницы\n		\"SET_STATUS_404\" => \"N\",	// Устанавливать статус 404\n		\"SET_TITLE\" => \"N\",	// Устанавливать заголовок страницы\n		\"SHOW_404\" => \"N\",	// Показ специальной страницы\n		\"SORT_BY1\" => \"SORT\",	// Поле для первой сортировки новостей\n		\"SORT_BY2\" => \"TIMESTAMP_X\",	// Поле для второй сортировки новостей\n		\"SORT_ORDER1\" => \"ASC\",	// Направление для первой сортировки новостей\n		\"SORT_ORDER2\" => \"DESC\",	// Направление для второй сортировки новостей\n		\"STRICT_SECTION_CHECK\" => \"N\",	// Строгая проверка раздела для показа списка\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false\n);?>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br><?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715941592),('1cc8096c350dcb3aede560718fbc6aa1a','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:35:\"R:/OSPanel/domains/bitrix/index.php\";s:7:\"content\";s:32496:\"<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/header.php\');\n$APPLICATION->SetTitle(\'Grow your revenue with iSpring\');\n?> \n\n<div class=\"content\">\n    <div class=\"content__partner-program partner\">\n        <div class=\"partner__text-block\">\n            <p class=\"partner__first-text\">Partner Program</p>\n            <h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n            <p class=\"partner__text\">Offer your customers award-winning software for eLearning authoring and\n                training management.</p>\n            <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n        </div>\n        <div class=\"partner__photo-block photo-block\">\n            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/top.png\" alt=\"Partner Program\">\n            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/handshake.svg\" class=\"photo-block__handshake\" alt=\"handshake\">\n            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\" alt=\"coin ladder\">\n        </div>\n    </div>\n    <div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n        <div class=\"enthusiasts__text-block\">\n            <h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n            <p class=\"enthusiasts__text text\">Tap into the rapidly growing eLearning market with the industry leader\n                in\n                course authoring and learning management — iSpring.\n            </p>\n            <div class=\"enthusiasts__logos logos\">\n                <div class=\"logos__up\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/amazon.svg\" alt=\"Amazon\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/visa.svg\" alt=\"Visa\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/dell.svg\" alt=\"Dell\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/google.svg\" alt=\"Google\">\n                </div>\n                <div class=\"logos__down\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/microsoft.svg\" alt=\"Microsoft\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/nike.svg\" alt=\"Nike\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/starbucks.svg\" alt=\"Starbucks\">\n                    <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/booking.svg\" alt=\"Booking\">\n                </div>\n            </div>\n        </div>\n        <div class=\"enthusiasts__information\">\n            <div class=\"enthusiasts__clients\">\n                <p class=\"enthusiasts__clients-title title title_color_white\">198 clients</p>\n                <p class=\"enthusiasts__clients-text text text_color_white\">from Fortune 500 companies</p>\n            </div>\n            <div class=\"enthusiasts__years\">\n                <p class=\"enthusiasts__years-title title title_color_white\">20 years</p>\n                <p class=\"enthusiasts__years-text text text_color_white\">on the market </p>\n            </div>\n            <div class=\"enthusiasts__customers\">\n                <p class=\"enthusiasts__customers-title title title_color_white\">59,000 customers</p>\n                <p class=\"enthusiasts__customers-text text text_color_white\">from 172 countries</p>\n            </div>\n        </div>\n    </div>\n    <div class=\"content__benefits benefits\">\n        <p class=\"benefits__title title\">Benefits of partnering with iSpring</p>\n        <div class=\"benefits__block\">\n            <div class=\"benefits__card benefits__card-one\">\n                <img class=\"benefits__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/bonuses.svg\" alt=\"bonuses\">\n                <p class=\"benefits__card-title card-title\">Recurring revenue and bonuses\n                </p>\n                <p class=\"benefits__text card-text\">\n                    Get profit from initial sales, as well as recurring revenue from subscription upgrades and\n                    license extensions and renewals.\n                </p>\n            </div>\n            <div class=\"benefits__card benefits__card-two\">\n                <img class=\"benefits__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/support.svg\" alt=\"support\">\n                <p class=\"benefits__card-title card-title\">\n                    24/7 customer support\n                </p>\n                <p class=\"benefits__text card-text\">\n                    We take care of post-sale customer support so you can focus on your business. Our support\n                    engineers are always ready to help.\n                </p>\n            </div>\n            <div class=\"benefits__card benefits__card-three\">\n                <img class=\"benefits__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/opportunities.svg\" alt=\"opportunities\">\n                <p class=\"benefits__card-title card-title\">Expanded product offering\n                </p>\n                <p class=\"benefits__text card-text\">\n                    iSpring’s software can open a door to new business opportunities, enabling you to cover a wider\n                    range of client needs.\n                </p>\n            </div>\n        </div>\n        <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n    </div>\n    <div class=\"content__jump-start jump-start\">\n        <div class=\"jump-start__text-block\">\n            <p class=\"jump-start__title title title_color_white\">Jump-start your business growth with iSpring</p>\n            <p class=\"jump-start__text text text_color_white\">\n                Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can\n                take advantage of the iSpring Partner Program and start increasing your revenue today.\n            </p>\n            <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n        </div>\n        <div class=\"jump-start__steps-block\">\n            <div class=\"jump-start__steps steps\">\n                <div class=\"circle__block\">\n                    <p class=\"steps__number steps__number_background_white\">01</p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                </div>\n                <div class=\"steps__text-block\">\n                    <p class=\"steps__title card-title card-title_color_white\">Sign up as a partner</p>\n                    <p class=\"steps__text text text text_color_white\">\n                        Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner\n                        network. We will contact you shortly with all the details and reseller account information.\n                    </p>\n                </div>\n            </div>\n            <div class=\"jump-start__steps steps\">\n                <div class=\"circle__block\">\n                    <p class=\"steps__number steps__number_color_white steps__number_background_orange\">02</p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                    <p class=\"circle\"></p>\n                </div>\n                <div class=\"steps__text-block\">\n                    <p class=\"steps__title card-title card-title_color_white\">Get welcome training</p>\n                    <p class=\"steps__text text text text_color_white\">\n                        In just 2 webinars, you and your employees will master the key features of iSpring software\n                        and learn how to use your reseller account in the most effective way.\n                    </p>\n                </div>\n            </div>\n            <div class=\"jump-start__steps steps\">\n                <p class=\"steps__number steps__number_color_white steps__number_background_blue\">03</p>\n                <div class=\"steps__text-block\">\n                    <p class=\"steps__title card-title card-title_color_white\">Close your first deal\n                    </p>\n                    <p class=\"steps__text text text text_color_white\">\n                        Selling iSpring software is easy because it is both powerful and user-friendly.\n                    </p>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"content__software software\">\n        <div class=\"software__block\">\n            <div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n                <p class=\"software__card-title title title_color_white\">Promote iSpring software easily\n                </p>\n            </div>\n            <div class=\"software__card software__card-two\">\n                <img class=\"software__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/licenses.svg\" alt=\"licenses\">\n                <p class=\"software__card-title card-title\">Free demo licenses\n                </p>\n                <p class=\"software__text card-text\">\n                    You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS\n                    account. These resources will be a useful aid in negotiations with your prospective clients.\n                </p>\n            </div>\n            <div class=\"software__card software__card-three\">\n                <img class=\"software__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/aids.svg\" alt=\"Marketing aids\">\n                <p class=\"software__card-title card-title\">\n                    Marketing aids\n                </p>\n                <p class=\"software__text card-text\">\n                    We support our partners at all stages of the sales process: from lead generation to closing and\n                    follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales\n                    proposals, etc.\n                </p>\n            </div>\n            <div class=\"software__card software__card-four\">\n                <img class=\"software__icon\" src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/activities.svg\" alt=\"Co-marketing activities\">\n                <p class=\"software__card-title card-title\">Co-marketing activities\n                </p>\n                <p class=\"software__text card-text\">\n                    We are always here to help you grow the market and expand your customer base. Our marketing\n                    specialists gladly take part in partners’ promotional activities, like workshops and\n                    conferences.\n                </p>\n            </div>\n        </div>\n    </div>\n    <div class=\"content__manager manager\">\n        <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/manage_sales.png\" alt=\"manage sales\">\n        <div class=\"manadger__text-block\">\n            <p class=\"manadger__title title\">Manage all your sales online\n            </p>\n            <p class=\"manadger__text card-text\">\n                All partners get access to iSpring’s reseller portal. There you can process orders and license\n                delivery, download license certificates and receipts, and view sales history with ease.\n            </p>\n            <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n        </div>\n    </div>\n    <div class=\"content__language language\">\n        <p class=\"language__title title\">Products available in 17 languages\n        </p>\n        <p class=\"language__text card-text\">\n            iSpring software and services support a variety of languages to provide exceptional user experience to\n            users from different countries. New languages are being covered on a regular basis.\n        </p>\n        <div class=\"language__block\">\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">English</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Spanish</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">French</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">German</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Italian</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Japanese</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Portuguese</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Russian</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Polish</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Uzbek</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Chinese Simplified </p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Chinese Traditional</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Mongolian</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Norwegian</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Ukrainian</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Indonesian </p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Finnish</p>\n            </div>\n            <div class=\"language__single-unit single-unit\">\n                <p class=\"single-unit__circle\"></p>\n                <p class=\"single-unit__language\">Azerbaijani </p>\n            </div>\n        </div>\n    </div>\n    <div class=\"content__questions questions\" id=\"questions\">\n        <div class=\"questions__block-title\">\n            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/hands.svg\" alt=\"hands\">\n            <p class=\"questions__title title title_color_white\">Have questions? Reach out!</p>\n        </div>\n        <div class=\"questions__block-text\">\n            <p class=\"questions__text\">We provide our partners with fast tech and sales assistance, including\n                pre-sales and sales support.\n            </p>\n            <p class=\"questions__text questions__text_margin\">Contact us any time at partner@ispring.com.</p>\n        </div>\n    </div>\n    <div class=\"content__feedback feedback\" id=\"companies\"> <!-- Here -->\n        <p class=\"feedback__title title\">See how companies benefit from partnering with iSpring</p>\n        <div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n            <span class=\"feedback__prev\"></span>\n            <span class=\"feedback__next\"></span>\n        </div>\n        <div class=\"feedback__block\" id=\"slider\">\n            <div class=\"feedback__card-wrapper\">\n                <div class=\"feedback__card\">\n                    <div class=\"feedback__phrase\">\n                        <p class=\"feedback__quote\">\n                            Our income from partnering with iSpring has been increasing every year!\n                        </p>\n                        <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\" alt=\"yellow blocks\">\n                    </div>\n                    <div class=\"feedback__reaction\">\n                        <p class=\"feedback__reaction-text text\">Besides iSpring’s transparent discount system for partners,\n                            the\n                            software often becomes a door opener to selling learning management systems, which brings\n                            lern.link new business opportunities.</p>\n                        <div class=\"feedback__name-block\">\n                            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/feedbacks/kirill.png\" alt=\"Kirill\" class=\"feedback__photo\">\n                            <div class=\"feedback__name-unit\">\n                                <p class=\"feedback__name\">Kirill Timofeev </p>\n                                <p class=\"feedback__post\">Founder and director of lern.link</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"feedback__card-wrapper\">\n                <div class=\"feedback__card\">\n                    <div class=\"feedback__phrase\">\n                        <p class=\"feedback__quote\">Our income from partnering with iSpring has been increasing every\n                            year!\n                        </p>\n                        <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\" alt=\"yellow blocks\">\n                    </div>\n                    <div class=\"feedback__reaction\">\n                        <p class=\"feedback__reaction-text text\">Besides iSpring’s transparent discount system for partners,\n                            the\n                            software often becomes a door opener to selling learning management systems, which brings\n                            lern.link new business opportunities.</p>\n                        <div class=\"feedback__name-block\">\n                            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/feedbacks/guido_horing.png\" alt=\"Guido Hornig\" class=\"feedback__photo\">\n                            <div class=\"feedback__name-unit\">\n                                <p class=\"feedback__name\">Guido Hornig </p>\n                                <p class=\"feedback__post\">Founder and director of lern.link</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"feedback__card-wrapper\">\n                <div class=\"feedback__card\">\n                    <div class=\"feedback__phrase\">\n                        <p class=\"feedback__quote\">Our income from partnering with iSpring has been increasing every\n                            year!\n                        </p>\n                        <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\" alt=\"yellow blocks\">\n                    </div>\n                    <div class=\"feedback__reaction\">\n                        <p class=\"feedback__reaction-text text\">Besides iSpring’s transparent discount system for partners,\n                            the\n                            software often becomes a door opener to selling learning management systems, which brings\n                            lrn.link new business opportunities.\n                        </p>\n                        <div class=\"feedback__name-block\">\n                            <img src=\"<?= SITE_TEMPLATE_PATH ?>/images/feedbacks/alina.png\" alt=\"Alina Bogdanova\" class=\"feedback__photo\">\n                            <div class=\"feedback__name-unit\">\n                                <p class=\"feedback__name\">Alina Bogdanova </p>\n                                <p class=\"feedback__post\">Founder and director of lern.link</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"content__form\">\n    <div class=\"content__form-size\">\n        <div class=\"content__form-block\">\n            <p class=\"content__form-vector\">\n                <svg width=\"231\" height=\"232\" viewBox=\"0 0 231 232\" fill=\"none\"\n                    xmlns=\"http://www.w3.org/2000/svg\">\n                    <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"\n                        d=\"M221.532 116.47L221.548 117.53L221.596 118.592L221.675 119.656L221.785 120.723L221.926 121.795L222.097 122.873L222.297 123.958L222.526 125.05L222.781 126.151L223.062 127.262L223.368 128.383L223.696 129.516L224.045 130.661L224.413 131.818L224.797 132.989L225.196 134.173L225.606 135.37L226.025 136.582L226.45 137.808L226.878 139.047L227.304 140.3L227.727 141.566L228.141 142.844L228.544 144.134L228.93 145.434L229.297 146.743L229.639 148.059L229.952 149.381L230.233 150.708L230.476 152.037L230.678 153.365L230.835 154.691L230.941 156.012L230.995 157.325L230.991 158.628L230.928 159.918L230.802 161.192L230.61 162.447L230.35 163.68L230.022 164.89L229.624 166.072L229.155 167.226L228.615 168.347L228.005 169.436L227.327 170.489L226.581 171.505L225.77 172.484L224.896 173.424L223.964 174.324L222.975 175.185L221.935 176.006L220.847 176.788L219.716 177.533L218.547 178.24L217.345 178.912L216.114 179.551L214.86 180.157L213.588 180.735L212.302 181.285L211.009 181.812L209.712 182.317L208.416 182.804L207.126 183.276L205.845 183.737L204.58 184.19L203.332 184.638L202.105 185.085L200.904 185.534L199.732 185.99L198.59 186.457L197.483 186.938L196.412 187.437L195.381 187.958L194.391 188.506L193.445 189.084L192.544 189.698L191.691 190.352L190.888 191.05L190.136 191.798L189.434 192.597L188.777 193.446L188.161 194.343L187.579 195.285L187.029 196.272L186.506 197.3L186.006 198.368L185.523 199.472L185.056 200.611L184.599 201.781L184.149 202.98L183.702 204.205L183.254 205.451L182.802 206.715L182.342 207.995L181.871 209.284L181.385 210.58L180.882 211.877L180.357 213.171L179.808 214.457L179.233 215.731L178.629 216.986L177.993 218.219L177.324 219.424L176.619 220.596L175.878 221.73L175.099 222.821L174.28 223.866L173.423 224.858L172.526 225.796L171.589 226.674L170.614 227.49L169.6 228.241L168.55 228.925L167.464 229.541L166.345 230.086L165.194 230.561L164.014 230.965L162.807 231.298L161.575 231.563L160.321 231.76L159.049 231.892L157.76 231.96L156.458 231.968L155.146 231.919L153.825 231.817L152.5 231.664L151.171 231.466L149.843 231.225L148.516 230.948L147.193 230.637L145.876 230.297L144.567 229.932L143.266 229.547L141.976 229.145L140.697 228.732L139.43 228.31L138.176 227.883L136.935 227.456L135.709 227.03L134.496 226.611L133.297 226.2L132.112 225.8L130.94 225.414L129.782 225.045L128.636 224.694L127.502 224.364L126.38 224.057L125.269 223.774L124.167 223.516L123.074 223.286L121.989 223.084L120.91 222.91L119.838 222.767L118.77 222.654L117.706 222.573L116.644 222.522L115.583 222.504L114.523 222.517L113.461 222.562L112.398 222.639L111.33 222.747L110.259 222.885L109.182 223.054L108.098 223.252L107.006 223.478L105.906 223.731L104.796 224.01L103.675 224.314L102.543 224.64L101.4 224.988L100.243 225.354L99.074 225.737L97.8911 226.135L96.6943 226.545L95.4837 226.963L94.2591 227.388L93.0207 227.815L91.7689 228.242L90.504 228.665L89.2268 229.08L87.9382 229.484L86.6392 229.872L85.3309 230.24L84.015 230.584L82.693 230.9L81.3667 231.184L80.0383 231.43L78.7097 231.635L77.3835 231.795L76.0622 231.906L74.7482 231.964L73.4444 231.965L72.1535 231.907L70.8783 231.786L69.6216 231.599L68.3862 231.345L67.1748 231.022L65.99 230.63L64.8343 230.166L63.7098 229.632L62.6187 229.028L61.5627 228.355L60.5433 227.614L59.5618 226.808L58.619 225.94L57.7156 225.012L56.8517 224.027L56.0272 222.991L55.2417 221.907L54.4943 220.779L53.784 219.613L53.1092 218.413L52.4682 217.184L51.859 215.932L51.2794 214.661L50.7268 213.376L50.1986 212.083L49.6917 210.786L49.2033 209.49L48.73 208.199L48.2685 206.918L47.8155 205.651L47.3673 204.402L46.9204 203.174L46.471 201.97L46.0155 200.795L45.55 199.651L45.0705 198.541L44.5731 197.467L44.0537 196.433L43.5082 195.44L42.9323 194.49L42.3215 193.586L41.6713 192.729L40.9768 191.922L40.2331 191.166L39.4379 190.46L38.5928 189.799L37.6998 189.18L36.7607 188.596L35.7776 188.043L34.7527 187.518L33.6882 187.016L32.5866 186.532L31.4504 186.064L30.2825 185.606L29.0857 185.156L27.8632 184.709L26.6186 184.261L25.3553 183.81L24.0772 183.35L22.7884 182.88L21.4932 182.396L20.196 181.894L18.9014 181.371L17.6144 180.824L16.3397 180.251L15.0824 179.649L13.8476 179.016L12.6403 178.35L11.4656 177.648L10.3284 176.909L9.23344 176.133L8.18532 175.318L7.18833 174.464L6.24647 173.57L5.36336 172.636L4.5422 171.664L3.78575 170.653L3.09627 169.606L2.4755 168.523L1.92464 167.406L1.44435 166.258L1.03472 165.08L0.695304 163.875L0.425125 162.645L0.222691 161.393L0.0860335 160.122L0.0127412 158.834L0 157.533L0.0446394 156.222L0.14318 154.902L0.291884 153.576L0.486804 152.248L0.723834 150.919L0.998756 149.592L1.30729 148.269L1.64512 146.952L2.00796 145.642L2.39157 144.34L2.7918 143.049L3.2046 141.769L3.62606 140.501L4.05242 139.246L4.48009 138.004L4.90565 136.776L5.32589 135.562L5.73777 134.362L6.13847 133.176L6.52535 132.004L6.89598 130.844L7.24812 129.697L7.57972 128.563L7.88893 127.44L8.17408 126.327L8.43366 125.225L8.66636 124.131L8.87101 123.045L9.04663 121.967L9.19239 120.894L9.3076 119.826L9.39172 118.761L9.44438 117.699L9.46534 116.638L9.45451 115.578L9.41192 114.517L9.33779 113.453L9.23243 112.386L9.09634 111.315L8.93015 110.238L8.73464 109.155L8.51076 108.064L8.2596 106.964L7.98245 105.855L7.68073 104.735L7.35607 103.604L7.01026 102.462L6.64528 101.306L6.26332 100.138L5.86675 98.9561L5.45813 97.7605L5.04024 96.5509L4.61603 95.3274L4.18867 94.0901L3.76151 92.8393L3.33809 91.5755L2.92212 90.2992L2.51745 89.0115L2.1281 87.7132L1.75818 86.4056L1.41192 85.0903L1.09359 83.7687L0.807496 82.4426L0.557935 81.1143L0.349149 79.7856L0.185287 78.4592L0.0703511 77.1373L0.00815147 75.8226L0.00225539 74.5179L0.055937 73.2258L0.172129 71.9492L0.353375 70.691L0.601791 69.4538L0.91902 68.2404L1.30621 67.0534L1.76398 65.8952L2.2924 64.7682L2.89101 63.6743L3.55877 62.6154L4.29411 61.5931L5.09493 60.6085L5.95863 59.6626L6.88216 58.7561L7.862 57.889L8.89429 57.0614L9.97481 56.2728L11.0991 55.5224L12.2624 54.8091L13.4598 54.1315L14.6864 53.4879L15.9371 52.8763L17.2067 52.2944L18.4904 51.7398L19.7831 51.2097L21.08 50.7013L22.3764 50.2114L23.6677 49.7371L24.9496 49.2748L26.218 48.8212L27.469 48.3728L28.6989 47.9259L29.9042 47.4768L31.0817 47.0219L32.2283 46.5573L33.3412 46.0791L34.4178 45.5833L35.4556 45.0658L36.4522 44.5226L37.4055 43.9492L38.3135 43.3413L39.174 42.6944L39.9853 42.0036L40.7454 41.264L41.4551 40.4728L42.1189 39.6317L42.7417 38.7424L43.3283 37.8069L43.883 36.8272L44.4102 35.8055L44.9142 34.7441L45.3989 33.6453L45.8685 32.5118L46.3268 31.3463L46.7777 30.1516L47.225 28.9311L47.6724 27.6881L48.1235 26.4261L48.5819 25.1491L49.051 23.861L49.5343 22.5661L50.0349 21.2688L50.556 19.9739L51.1006 18.686L51.6713 17.4102L52.2708 16.1513L52.9014 14.9145L53.5652 13.7048L54.2641 12.5274L54.9996 11.387L55.7728 10.2885L56.5848 9.23644L57.4361 8.23522L58.327 7.28882L59.2573 6.4009L60.2265 5.57469L61.2339 4.81299L62.2784 4.1181L63.3586 3.4918L64.4726 2.93534L65.6186 2.44941L66.7944 2.03416L67.9976 1.68918L69.2256 1.41353L70.4758 1.20577L71.7454 1.06395L73.0316 0.985713L74.3317 0.968262L75.6427 1.00846L76.962 1.10284L78.2869 1.24769L79.615 1.43908L80.9437 1.67291L82.2709 1.94498L83.5945 2.25099L84.9125 2.58665L86.2234 2.94766L87.5255 3.32978L88.8176 3.72884L90.0985 4.14079L91.3673 4.5617L92.6234 4.98781L93.8661 5.4155L95.0951 5.84136L96.3102 6.26214L97.5114 6.6748L98.6987 7.07649L99.8723 7.46457L101.033 7.83658L102.18 8.19027L103.316 8.52358L104.44 8.83464L105.553 9.12176L106.656 9.38343L107.751 9.61832L108.837 9.82525L109.916 10.0032L110.99 10.1514L112.058 10.269L113.123 10.3557L114.185 10.4108L115.246 10.4343L116.306 10.426L117.367 10.386L118.431 10.3143L119.497 10.2114L120.568 10.0778L121.645 9.91395L122.727 9.72074L123.818 9.49908L124.917 9.25005L126.025 8.97491L127.144 8.67509L128.274 8.35218L129.415 8.00798L130.57 7.64446L131.737 7.26376L132.918 6.86826L134.112 6.4605L135.321 6.04323L136.543 5.61941L137.779 5.19218L139.029 4.76487L140.292 4.34102L141.567 3.9243L142.854 3.51858L144.151 3.12786L145.458 2.75624L146.773 2.40793L148.094 2.08722L149.42 1.7984L150.748 1.54577L152.077 1.33358L153.404 1.16599L154.726 1.04701L156.041 0.98048L157.347 0.969977L158.64 1.0188L159.918 1.12992L161.178 1.3059L162.417 1.5489L163.632 1.86061L164.821 2.2422L165.982 2.69434L167.111 3.21716L168.208 3.81021L169.27 4.47252L170.295 5.20255L171.283 5.99826L172.232 6.85707L173.141 7.77596L174.011 8.75147L174.842 9.77974L175.634 10.8566L176.387 11.9776L177.103 13.1379L177.784 14.3328L178.43 15.5573L179.044 16.8062L179.628 18.0746L180.185 19.3574L180.717 20.6495L181.227 21.9463L181.718 23.2429L182.194 24.5348L182.657 25.8176L183.111 27.0873L183.56 28.3398L184.006 29.5715L184.455 30.7789L184.909 31.9587L185.373 33.1079L185.85 34.2236L186.344 35.3032L186.86 36.3442L187.401 37.3442L187.972 38.301L188.577 39.2127L189.22 40.0771L189.908 40.8923L190.643 41.6566L191.43 42.3701L192.267 43.0374L193.153 43.6633L194.085 44.2526L195.061 44.8097L196.079 45.339L197.138 45.8446L198.234 46.3308L199.365 46.8014L200.528 47.2605L201.72 47.7118L202.939 48.1593L204.18 48.6065L205.441 49.0572L206.716 49.5149L208.004 49.9831L209.298 50.4651L210.596 50.9642L211.891 51.4836L213.179 52.0262L214.456 52.5947L215.717 53.1919L216.956 53.8199L218.168 54.481L219.348 55.1771L220.491 55.9095L221.593 56.6798L222.649 57.4887L223.655 58.3369L224.605 59.2246L225.498 60.1517L226.329 61.1179L227.096 62.1223L227.797 63.1639L228.428 64.2413L228.99 65.3527L229.482 66.4963L229.903 67.6698L230.253 68.8709L230.535 70.0971L230.748 71.3456L230.895 72.6138L230.978 73.8988L231 75.1978L230.964 76.5081L230.874 77.8268L230.733 79.1514L230.545 80.4793L230.315 81.8081L230.046 83.1355L229.742 84.4595L229.409 85.778L229.049 87.0895L228.669 88.3924L228.271 89.6853L227.86 90.9672L227.44 92.237L227.014 93.4942L226.586 94.738L226.16 95.9681L225.739 97.1843L225.325 98.3866L224.923 99.575L224.533 100.75L224.16 101.911L223.805 103.06L223.47 104.196L223.157 105.321L222.868 106.435L222.604 107.539L222.367 108.634L222.158 109.721L221.977 110.801L221.827 111.875L221.707 112.944L221.618 114.009L221.56 115.071L221.534 116.132L221.532 116.47Z\"\n                        fill=\"#3D50F9\" />\n                </svg>\n            </p>\n            <p class=\"content__form-title title title_color_white\">\n                Become an iSpring Partner\n            </p>\n            <p class=\"content__form-text\">\n                Tell us about yourself and your company.\n            </p>\n        </div>\n        <form class=\"content__form-unit form\" id=\"form\">\n            <p class=\"form__title\">Company Information</p>\n            <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required>\n            <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\"\n                required placeholder=\"Phone\">\n            <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\">\n            <textarea name=\"message\"\n                placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \"\n                class=\"form__place textarea\"></textarea>\n            <p class=\"form__text\">By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a\n                    href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\"\n                    class=\"form__text form__text-link\">Privacy Policy</a>.</p>\n            <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n        </form>\n    </div>\n</div>\n\n<?\nrequire($_SERVER[\'DOCUMENT_ROOT\'].\'/bitrix/footer.php\');\n?>\";}',1,1715936570),('23593597394b1b1fdb6947e8ffe071048','main','autosave','CAutoSave::_Restore','a:11:{s:9:\"submitbtn\";s:0:\"\";s:4:\"mode\";s:6:\"public\";s:4:\"save\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:8:\"template\";s:0:\"\";s:10:\"templateID\";s:5:\"empty\";s:9:\"subdialog\";s:0:\"\";s:8:\"back_url\";s:38:\"/?bitrix_include_areas=Y&clear_cache=Y\";s:5:\"title\";s:30:\"Grow your revenue with iSpring\";s:4:\"path\";s:10:\"/index.php\";s:11:\"filesrc_pub\";s:23036:\"<div class=\"content\">\n	<div class=\"content__partner-program partner\">\n		<div class=\"partner__text-block\">\n			<p class=\"partner__first-text\">\n				 Partner Program\n			</p>\n			<h1 class=\"partner__title\">Grow your revenue with iSpring</h1>\n			<p class=\"partner__text\">\n				 Offer your customers award-winning software for eLearning authoring and training management.\n			</p>\n <a href=\"#form\" class=\"partner__button button\">Become a Partner</a>\n		</div>\n		<div class=\"partner__photo-block photo-block\">\n <img alt=\"Partner Program\" src=\"/local/templates/empty/images/top.png\"> <img alt=\"handshake\" src=\"/local/templates/empty/images/icons/handshake.svg\" class=\"photo-block__handshake\"> <img alt=\"coin ladder\" src=\"/local/templates/empty/images/icons/coin_ladder.svg\" class=\"photo-block__coin-ladder\">\n		</div>\n	</div>\n	<div class=\"content__enthusiasts enthusiasts\" id=\"enthusiasts\">\n		<div class=\"enthusiasts__text-block\">\n			<h2 class=\"enthusiasts__title title\">Join the team of eLearning enthusiasts</h2>\n			<p class=\"enthusiasts__text text\">\n				 Tap into the rapidly growing eLearning market with the industry leader in course authoring and learning management — iSpring.\n			</p>\n			<div class=\"enthusiasts__logos logos\">\n				<div class=\"logos__up\">\n <img alt=\"Amazon\" src=\"/local/templates/empty/images/icons/amazon.svg\"> <img alt=\"Visa\" src=\"/local/templates/empty/images/icons/visa.svg\"> <img alt=\"Dell\" src=\"/local/templates/empty/images/icons/dell.svg\"> <img alt=\"Google\" src=\"/local/templates/empty/images/icons/google.svg\">\n				</div>\n				<div class=\"logos__down\">\n <img alt=\"Microsoft\" src=\"/local/templates/empty/images/icons/microsoft.svg\"> <img alt=\"Nike\" src=\"/local/templates/empty/images/icons/nike.svg\"> <img alt=\"Starbucks\" src=\"/local/templates/empty/images/icons/starbucks.svg\"> <img alt=\"Booking\" src=\"/local/templates/empty/images/icons/booking.svg\">\n				</div>\n			</div>\n		</div>\n		<div class=\"enthusiasts__information\">\n			<div class=\"enthusiasts__clients\">\n				<p class=\"enthusiasts__clients-title title title_color_white\">\n					 198 clients\n				</p>\n				<p class=\"enthusiasts__clients-text text text_color_white\">\n					 from Fortune 500 companies\n				</p>\n			</div>\n			<div class=\"enthusiasts__years\">\n				<p class=\"enthusiasts__years-title title title_color_white\">\n					 20 years\n				</p>\n				<p class=\"enthusiasts__years-text text text_color_white\">\n					 on the market\n				</p>\n			</div>\n			<div class=\"enthusiasts__customers\">\n				<p class=\"enthusiasts__customers-title title title_color_white\">\n					 59,000 customers\n				</p>\n				<p class=\"enthusiasts__customers-text text text_color_white\">\n					 from 172 countries\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__benefits benefits\">\n		<p class=\"benefits__title title\">\n			 Benefits of partnering with iSpring\n		</p>\n		<div class=\"benefits__block\">\n			<div class=\"benefits__card benefits__card-one\">\n <img alt=\"bonuses\" src=\"/local/templates/empty/images/icons/bonuses.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Recurring revenue and bonuses\n				</p>\n				<p class=\"benefits__text card-text\">\n					 Get profit from initial sales, as well as recurring revenue from subscription upgrades and license extensions and renewals.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-two\">\n <img alt=\"support\" src=\"/local/templates/empty/images/icons/support.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 24/7 customer support\n				</p>\n				<p class=\"benefits__text card-text\">\n					 We take care of post-sale customer support so you can focus on your business. Our support engineers are always ready to help.\n				</p>\n			</div>\n			<div class=\"benefits__card benefits__card-three\">\n <img alt=\"opportunities\" src=\"/local/templates/empty/images/icons/opportunities.svg\" class=\"benefits__icon\">\n				<p class=\"benefits__card-title card-title\">\n					 Expanded product offering\n				</p>\n				<p class=\"benefits__text card-text\">\n					 iSpring’s software can open a door to new business opportunities, enabling you to cover a wider range of client needs.\n				</p>\n			</div>\n		</div>\n <a href=\"#form\" class=\"benefits__button button button_color_blue\">Become a Partner</a>\n	</div>\n	<div class=\"content__jump-start jump-start\">\n		<div class=\"jump-start__text-block\">\n			<p class=\"jump-start__title title title_color_white\">\n				 Jump-start your business growth with iSpring\n			</p>\n			<p class=\"jump-start__text text text_color_white\">\n				 Whether you are an eLearning consultant, VAR, software reseller, distributor, or tenderer, you can take advantage of the iSpring Partner Program and start increasing your revenue today.\n			</p>\n <a href=\"#form\" class=\"jump-start__button button\">Become a Partner</a>\n		</div>\n		<div class=\"jump-start__steps-block\">\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_background_white\">\n						 01\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Sign up as a partner\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Fill in the <a href=\"#form\" class=\"steps__link\">Partner Program form</a> to join our partner network. We will contact you shortly with all the details and reseller account information.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<div class=\"circle__block\">\n					<p class=\"steps__number steps__number_color_white steps__number_background_orange\">\n						 02\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n					<p class=\"circle\">\n					</p>\n				</div>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Get welcome training\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 In just 2 webinars, you and your employees will master the key features of iSpring software and learn how to use your reseller account in the most effective way.\n					</p>\n				</div>\n			</div>\n			<div class=\"jump-start__steps steps\">\n				<p class=\"steps__number steps__number_color_white steps__number_background_blue\">\n					 03\n				</p>\n				<div class=\"steps__text-block\">\n					<p class=\"steps__title card-title card-title_color_white\">\n						 Close your first deal\n					</p>\n					<p class=\"steps__text text text text_color_white\">\n						 Selling iSpring software is easy because it is both powerful and user-friendly.\n					</p>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__software software\">\n		<div class=\"software__block\">\n			<div class=\"software__card software__card-one software__card_color_blue software__card_vision\">\n				<p class=\"software__card-title title title_color_white\">\n					 Promote iSpring software easily\n				</p>\n			</div>\n			<div class=\"software__card software__card-two\">\n <img alt=\"licenses\" src=\"/local/templates/empty/images/icons/licenses.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Free demo licenses\n				</p>\n				<p class=\"software__text card-text\">\n					 You will get free NFR licenses for all iSpring desktop products and a free iSpring Learn LMS account. These resources will be a useful aid in negotiations with your prospective clients.\n				</p>\n			</div>\n			<div class=\"software__card software__card-three\">\n <img alt=\"Marketing aids\" src=\"/local/templates/empty/images/icons/aids.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Marketing aids\n				</p>\n				<p class=\"software__text card-text\">\n					 We support our partners at all stages of the sales process: from lead generation to closing and follow-up. We also provide ready-made marketing aids: guidelines, presentations, sales proposals, etc.\n				</p>\n			</div>\n			<div class=\"software__card software__card-four\">\n <img alt=\"Co-marketing activities\" src=\"/local/templates/empty/images/icons/activities.svg\" class=\"software__icon\">\n				<p class=\"software__card-title card-title\">\n					 Co-marketing activities\n				</p>\n				<p class=\"software__text card-text\">\n					 We are always here to help you grow the market and expand your customer base. Our marketing specialists gladly take part in partners’ promotional activities, like workshops and conferences.\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__manager manager\">\n <img alt=\"manage sales\" src=\"/local/templates/empty/images/manage_sales.png\">\n		<div class=\"manadger__text-block\">\n			<p class=\"manadger__title title\">\n				 Manage all your sales online\n			</p>\n			<p class=\"manadger__text card-text\">\n				 All partners get access to iSpring’s reseller portal. There you can process orders and license delivery, download license certificates and receipts, and view sales history with ease.\n			</p>\n <a href=\"#form\" class=\"manadger__button button button_color_blue\">Become a Partner</a>\n		</div>\n	</div>\n	<div class=\"content__language language\">\n		<p class=\"language__title title\">\n			 Products available in 17 languages\n		</p>\n		<p class=\"language__text card-text\">\n			 iSpring software and services support a variety of languages to provide exceptional user experience to users from different countries. New languages are being covered on a regular basis.\n		</p>\n		<div class=\"language__block\">\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 English\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Spanish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 French\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 German\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Italian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Japanese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Portuguese\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Russian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Polish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Uzbek\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Simplified\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Chinese Traditional\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Mongolian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Norwegian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Ukrainian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Indonesian\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Finnish\n				</p>\n			</div>\n			<div class=\"language__single-unit single-unit\">\n				<p class=\"single-unit__circle\">\n				</p>\n				<p class=\"single-unit__language\">\n					 Azerbaijani\n				</p>\n			</div>\n		</div>\n	</div>\n	<div class=\"content__questions questions\" id=\"questions\">\n		<div class=\"questions__block-title\">\n <img alt=\"hands\" src=\"/local/templates/empty/images/icons/hands.svg\">\n			<p class=\"questions__title title title_color_white\">\n				 Have questions? Reach out!\n			</p>\n		</div>\n		<div class=\"questions__block-text\">\n			<p class=\"questions__text\">\n				 We provide our partners with fast tech and sales assistance, including pre-sales and sales support.\n			</p>\n			<p class=\"questions__text questions__text_margin\">\n				 Contact us any time at <a href=\"mailto:partner@ispring.com\">partner@ispring.com</a>.\n			</p>\n		</div>\n	</div>\n	<div class=\"content__feedback feedback\" id=\"companies\">\n		 <!-- Here -->\n		<p class=\"feedback__title title\">\n			 See how companies benefit from partnering with iSpring\n		</p>\n		<p class=\"feedback__title title\">\n			<?$APPLICATION->IncludeComponent(\"bitrix:news.list\", \"index\", Array(\n	\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",	// Формат показа даты\n		\"ADD_SECTIONS_CHAIN\" => \"N\",	// Включать раздел в цепочку навигации\n		\"AJAX_MODE\" => \"N\",	// Включить режим AJAX\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",	// Дополнительный идентификатор\n		\"AJAX_OPTION_HISTORY\" => \"N\",	// Включить эмуляцию навигации браузера\n		\"AJAX_OPTION_JUMP\" => \"N\",	// Включить прокрутку к началу компонента\n		\"AJAX_OPTION_STYLE\" => \"Y\",	// Включить подгрузку стилей\n		\"CACHE_FILTER\" => \"N\",	// Кешировать при установленном фильтре\n		\"CACHE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"CACHE_TIME\" => \"36000000\",	// Время кеширования (сек.)\n		\"CACHE_TYPE\" => \"A\",	// Тип кеширования\n		\"CHECK_DATES\" => \"Y\",	// Показывать только активные на данный момент элементы\n		\"DETAIL_URL\" => \"\",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)\n		\"DISPLAY_BOTTOM_PAGER\" => \"N\",	// Выводить под списком\n		\"DISPLAY_DATE\" => \"N\",	// Выводить дату элемента\n		\"DISPLAY_NAME\" => \"N\",	// Выводить название элемента\n		\"DISPLAY_PICTURE\" => \"Y\",	// Выводить изображение для анонса\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",	// Выводить текст анонса\n		\"DISPLAY_TOP_PAGER\" => \"N\",	// Выводить над списком\n		\"FIELD_CODE\" => array(	// Поля\n			0 => \"NAME\",\n			1 => \"PREVIEW_PICTURE\",\n			2 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",	// Фильтр\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",	// Скрывать ссылку, если нет детального описания\n		\"IBLOCK_ID\" => \"1\",	// Код информационного блока\n		\"IBLOCK_TYPE\" => \"index\",	// Тип информационного блока (используется только для проверки)\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",	// Включать инфоблок в цепочку навигации\n		\"INCLUDE_SUBSECTIONS\" => \"N\",	// Показывать элементы подразделов раздела\n		\"MESSAGE_404\" => \"\",	// Сообщение для показа (по умолчанию из компонента)\n		\"NEWS_COUNT\" => \"20\",	// Количество новостей на странице\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",	// Включить обработку ссылок\n		\"PAGER_DESC_NUMBERING\" => \"N\",	// Использовать обратную навигацию\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",	// Время кеширования страниц для обратной навигации\n		\"PAGER_SHOW_ALL\" => \"N\",	// Показывать ссылку \"Все\"\n		\"PAGER_SHOW_ALWAYS\" => \"N\",	// Выводить всегда\n		\"PAGER_TEMPLATE\" => \".default\",	// Шаблон постраничной навигации\n		\"PAGER_TITLE\" => \"Новости\",	// Название категорий\n		\"PARENT_SECTION\" => \"\",	// ID раздела\n		\"PARENT_SECTION_CODE\" => \"\",	// Код раздела\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",	// Максимальная длина анонса для вывода (только для типа текст)\n		\"PROPERTY_CODE\" => array(	// Свойства\n			0 => \"\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",	// Устанавливать заголовок окна браузера\n		\"SET_LAST_MODIFIED\" => \"N\",	// Устанавливать в заголовках ответа время модификации страницы\n		\"SET_META_DESCRIPTION\" => \"N\",	// Устанавливать описание страницы\n		\"SET_META_KEYWORDS\" => \"N\",	// Устанавливать ключевые слова страницы\n		\"SET_STATUS_404\" => \"N\",	// Устанавливать статус 404\n		\"SET_TITLE\" => \"N\",	// Устанавливать заголовок страницы\n		\"SHOW_404\" => \"N\",	// Показ специальной страницы\n		\"SORT_BY1\" => \"SORT\",	// Поле для первой сортировки новостей\n		\"SORT_BY2\" => \"TIMESTAMP_X\",	// Поле для второй сортировки новостей\n		\"SORT_ORDER1\" => \"ASC\",	// Направление для первой сортировки новостей\n		\"SORT_ORDER2\" => \"DESC\",	// Направление для второй сортировки новостей\n		\"STRICT_SECTION_CHECK\" => \"N\",	// Строгая проверка раздела для показа списка\n	),\n	false\n);?>\n		</p>\n		<div class=\"feedback__gallery gallery\" id=\"sliderControls\">\n <span class=\"feedback__prev\"></span> <span class=\"feedback__next\"></span>\n		</div>\n		<div class=\"feedback__block\" id=\"slider\">\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n						</p>\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Kirill\" src=\"/local/templates/empty/images/feedbacks/kirill.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Kirill Timofeev\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lern.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Guido Hornig\" src=\"/local/templates/empty/images/feedbacks/guido_horing.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Guido Hornig\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<div class=\"feedback__card-wrapper\">\n				<div class=\"feedback__card\">\n					<div class=\"feedback__phrase\">\n						<p class=\"feedback__quote\">\n							 Our income from partnering with iSpring has been increasing every year!\n						</p>\n <img alt=\"yellow blocks\" src=\"/local/templates/empty/images/icons/yellow_blocks.svg\" class=\"feedback__yellow-blocks\">\n					</div>\n					<div class=\"feedback__reaction\">\n						<p class=\"feedback__reaction-text text\">\n							 Besides iSpring’s transparent discount system for partners, the software often becomes a door opener to selling learning management systems, which brings lrn.link new business opportunities.\n						</p>\n						<div class=\"feedback__name-block\">\n <img alt=\"Alina Bogdanova\" src=\"/local/templates/empty/images/feedbacks/alina.png\" class=\"feedback__photo\">\n							<div class=\"feedback__name-unit\">\n								<p class=\"feedback__name\">\n									 Alina Bogdanova\n								</p>\n								<p class=\"feedback__post\">\n									 Founder and director of lern.link\n								</p>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n		</div>\n	</div>\n</div>\n<div class=\"content__form\">\n	<div class=\"content__form-size\">\n		<div class=\"content__form-block\">\n			<p class=\"content__form-vector\">\n			</p>\n			<p class=\"content__form-title title title_color_white\">\n				 Become an iSpring Partner\n			</p>\n			<p class=\"content__form-text\">\n				 Tell us about yourself and your company.\n			</p>\n		</div>\n		<form class=\"content__form-unit form\" id=\"form\">\n			<p class=\"form__title\">\n				 Company Information\n			</p>\n <input type=\"text\" class=\"form__place name\" placeholder=\"Company name\" required=\"\"> <input type=\"tel\" class=\"form__place phone\" name=\"phone\" pattern=\"+ [7]-[0-9]{3}-[0-9]{3}-[0-9]{4}\" required=\"\" placeholder=\"Phone\"> <input type=\"email\" name=\"Email\" placeholder=\"Email\" class=\"form__place email\"> <textarea name=\"message\" placeholder=\"Brief company description (years in business, eLearning experience, and why you want to be an iSpring partner) \" class=\"form__place textarea\"></textarea>\n			<p class=\"form__text\">\n				 By clicking \"Become a Partner,\" you confirm that you\'re agreeing to our <a href=\"#\" class=\"form__text form__text-link\">Terms</a> and <a href=\"#\" class=\"form__text form__text-link\">Privacy Policy</a>.\n			</p>\n <input type=\"submit\" name=\"submit\" value=\"Become a Partner\" class=\"form__button\">\n		</form>\n	</div>\n</div>\n <br>\";}',1,1715938388),('28e09876fb770411e96187f194431a34f','main','autosave','CAutoSave::_Restore','a:287:{s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:6:\"Update\";s:1:\"Y\";s:2:\"ID\";s:1:\"1\";s:7:\"VERSION\";s:1:\"1\";s:6:\"ACTIVE\";s:1:\"Y\";s:4:\"save\";s:0:\"\";s:4:\"CODE\";s:6:\"slider\";s:8:\"API_CODE\";s:0:\"\";s:7:\"REST_ON\";s:0:\"\";s:19:\"LIDX000091XX000093X\";a:1:{i:0;s:2:\"s1\";}s:4:\"NAME\";s:14:\"Слайдер\";s:4:\"SORT\";s:3:\"500\";s:13:\"LIST_PAGE_URL\";s:41:\"#SITE_DIR#/index/index.php?ID=#IBLOCK_ID#\";s:16:\"SECTION_PAGE_URL\";s:49:\"#SITE_DIR#/index/list.php?SECTION_ID=#SECTION_ID#\";s:15:\"DETAIL_PAGE_URL\";s:43:\"#SITE_DIR#/index/detail.php?ID=#ELEMENT_ID#\";s:18:\"CANONICAL_PAGE_URL\";s:0:\"\";s:13:\"INDEX_SECTION\";s:1:\"Y\";s:13:\"INDEX_ELEMENT\";s:1:\"Y\";s:15:\"SECTION_CHOOSER\";s:1:\"L\";s:9:\"LIST_MODE\";s:0:\"\";s:16:\"EDIT_FILE_BEFORE\";s:0:\"\";s:6:\"browse\";s:0:\"\";s:15:\"EDIT_FILE_AFTER\";s:0:\"\";s:7:\"PICTURE\";s:0:\"\";s:16:\"DESCRIPTION_TYPE\";s:0:\"\";s:11:\"DESCRIPTION\";s:0:\"\";s:77:\"IPROPERTY_TEMPLATESX000091XSECTION_META_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:80:\"IPROPERTY_TEMPLATESX000091XSECTION_META_KEYWORDSX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:83:\"IPROPERTY_TEMPLATESX000091XSECTION_META_DESCRIPTIONX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:77:\"IPROPERTY_TEMPLATESX000091XSECTION_PAGE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:77:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:80:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_KEYWORDSX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:83:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_DESCRIPTIONX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:77:\"IPROPERTY_TEMPLATESX000091XELEMENT_PAGE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:83:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:85:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:84:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:81:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:84:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:81:\"IPROPERTY_TEMPLATESX000091XSECTION_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:90:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XSECTION_DETAIL_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:93:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:89:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:89:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:90:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:22:\"IPROPERTY_CLEAR_VALUES\";s:0:\"\";s:63:\"FIELDSX000091XIBLOCK_SECTIONX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:103:\"FIELDSX000091XIBLOCK_SECTIONX000093XX000091XDEFAULT_VALUEX000093XX000091XKEEP_IBLOCK_SECTION_IDX000093X\";s:0:\"\";s:55:\"FIELDSX000091XACTIVEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:57:\"FIELDSX000091XACTIVEX000093XX000091XDEFAULT_VALUEX000093X\";s:1:\"Y\";s:60:\"FIELDSX000091XACTIVE_FROMX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:62:\"FIELDSX000091XACTIVE_FROMX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:58:\"FIELDSX000091XACTIVE_TOX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:60:\"FIELDSX000091XACTIVE_TOX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:53:\"FIELDSX000091XSORTX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:55:\"FIELDSX000091XSORTX000093XX000091XDEFAULT_VALUEX000093X\";s:3:\"500\";s:53:\"FIELDSX000091XNAMEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:55:\"FIELDSX000091XNAMEX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:64:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:93:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XFROM_DETAILX000093X\";s:0:\"\";s:100:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUPDATE_WITH_DETAILX000093X\";s:0:\"\";s:100:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XDELETE_WITH_DETAILX000093X\";s:0:\"\";s:87:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XSCALEX000093X\";s:0:\"\";s:87:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWIDTHX000093X\";s:0:\"\";s:88:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XHEIGHTX000093X\";s:0:\"\";s:95:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XIGNORE_ERRORSX000093X\";s:0:\"\";s:88:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XMETHODX000093X\";s:8:\"resample\";s:93:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XCOMPRESSIONX000093X\";s:2:\"95\";s:100:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_FILEX000093X\";s:0:\"\";s:96:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILEX000093X\";s:0:\"\";s:102:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_ALPHAX000093X\";s:0:\"\";s:105:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_POSITIONX000093X\";s:2:\"tl\";s:100:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_TEXTX000093X\";s:0:\"\";s:96:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXTX000093X\";s:0:\"\";s:101:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_FONTX000093X\";s:0:\"\";s:102:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_COLORX000093X\";s:0:\"\";s:101:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_SIZEX000093X\";s:0:\"\";s:105:\"FIELDSX000091XPREVIEW_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_POSITIONX000093X\";s:2:\"tl\";s:66:\"FIELDSX000091XPREVIEW_TEXT_TYPEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:68:\"FIELDSX000091XPREVIEW_TEXT_TYPEX000093XX000091XDEFAULT_VALUEX000093X\";s:4:\"text\";s:81:\"FIELDSX000091XPREVIEW_TEXT_TYPE_ALLOW_CHANGEX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:61:\"FIELDSX000091XPREVIEW_TEXTX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:63:\"FIELDSX000091XPREVIEW_TEXTX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:63:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:86:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XSCALEX000093X\";s:0:\"\";s:86:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWIDTHX000093X\";s:0:\"\";s:87:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XHEIGHTX000093X\";s:0:\"\";s:94:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XIGNORE_ERRORSX000093X\";s:0:\"\";s:87:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XMETHODX000093X\";s:8:\"resample\";s:92:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XCOMPRESSIONX000093X\";s:2:\"95\";s:99:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_FILEX000093X\";s:0:\"\";s:95:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILEX000093X\";s:0:\"\";s:101:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_ALPHAX000093X\";s:0:\"\";s:104:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_POSITIONX000093X\";s:2:\"tl\";s:99:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_TEXTX000093X\";s:0:\"\";s:95:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXTX000093X\";s:0:\"\";s:100:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_FONTX000093X\";s:0:\"\";s:101:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_COLORX000093X\";s:0:\"\";s:100:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_SIZEX000093X\";s:0:\"\";s:104:\"FIELDSX000091XDETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_POSITIONX000093X\";s:2:\"tl\";s:65:\"FIELDSX000091XDETAIL_TEXT_TYPEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:67:\"FIELDSX000091XDETAIL_TEXT_TYPEX000093XX000091XDEFAULT_VALUEX000093X\";s:4:\"text\";s:80:\"FIELDSX000091XDETAIL_TEXT_TYPE_ALLOW_CHANGEX000093XX000091XDEFAULT_VALUEX000093X\";s:1:\"Y\";s:60:\"FIELDSX000091XDETAIL_TEXTX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:62:\"FIELDSX000091XDETAIL_TEXTX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:55:\"FIELDSX000091XXML_IDX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:57:\"FIELDSX000091XXML_IDX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:53:\"FIELDSX000091XCODEX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:77:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XUNIQUEX000093X\";s:0:\"\";s:86:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANSLITERATIONX000093X\";s:0:\"\";s:80:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_LENX000093X\";s:3:\"100\";s:81:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_CASEX000093X\";s:1:\"L\";s:82:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_SPACEX000093X\";s:1:\"-\";s:82:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_OTHERX000093X\";s:1:\"-\";s:80:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_EATX000093X\";s:1:\"Y\";s:81:\"FIELDSX000091XCODEX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_GOOGLEX000093X\";s:0:\"\";s:53:\"FIELDSX000091XTAGSX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:55:\"FIELDSX000091XTAGSX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:18:\"IB_PROPERTY_1_NAME\";s:6:\"ФИО\";s:22:\"IB_PROPERTY_1_PROPINFO\";s:692:\"YToxOTp7czo5OiJJQkxPQ0tfSUQiO3M6MToiMSI7czo5OiJGSUxFX1RZUEUiO3M6MDoiIjtzOjk6IkxJU1RfVFlQRSI7czoxOiJMIjtzOjk6IlJPV19DT1VOVCI7czoxOiIxIjtzOjk6IkNPTF9DT1VOVCI7czoyOiIzMCI7czoxNDoiTElOS19JQkxPQ0tfSUQiO3M6MToiMCI7czoxMzoiREVGQVVMVF9WQUxVRSI7czowOiIiO3M6MTg6IlVTRVJfVFlQRV9TRVRUSU5HUyI7czo2OiJhOjA6e30iO3M6MTY6IldJVEhfREVTQ1JJUFRJT04iO3M6MToiTiI7czoxMDoiU0VBUkNIQUJMRSI7czoxOiJOIjtzOjk6IkZJTFRSQUJMRSI7czoxOiJOIjtzOjEyOiJNVUxUSVBMRV9DTlQiO3M6MToiNSI7czo0OiJISU5UIjtzOjA6IiI7czoxNjoiU0VDVElPTl9QUk9QRVJUWSI7czoxOiJZIjtzOjEyOiJTTUFSVF9GSUxURVIiO3M6MToiTiI7czoxMjoiRElTUExBWV9UWVBFIjtzOjE6IkYiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:27:\"IB_PROPERTY_1_PROPERTY_TYPE\";s:1:\"S\";s:20:\"IB_PROPERTY_1_ACTIVE\";s:1:\"Y\";s:22:\"IB_PROPERTY_1_MULTIPLE\";s:0:\"\";s:25:\"IB_PROPERTY_1_IS_REQUIRED\";s:0:\"\";s:18:\"IB_PROPERTY_1_SORT\";s:3:\"500\";s:18:\"IB_PROPERTY_1_CODE\";s:3:\"fio\";s:17:\"IB_PROPERTY_1_BTN\";s:0:\"\";s:17:\"IB_PROPERTY_1_DEL\";s:0:\"\";s:18:\"IB_PROPERTY_2_NAME\";s:18:\"Должность\";s:22:\"IB_PROPERTY_2_PROPINFO\";s:692:\"YToxOTp7czo5OiJJQkxPQ0tfSUQiO3M6MToiMSI7czo5OiJGSUxFX1RZUEUiO3M6MDoiIjtzOjk6IkxJU1RfVFlQRSI7czoxOiJMIjtzOjk6IlJPV19DT1VOVCI7czoxOiIxIjtzOjk6IkNPTF9DT1VOVCI7czoyOiIzMCI7czoxNDoiTElOS19JQkxPQ0tfSUQiO3M6MToiMCI7czoxMzoiREVGQVVMVF9WQUxVRSI7czowOiIiO3M6MTg6IlVTRVJfVFlQRV9TRVRUSU5HUyI7czo2OiJhOjA6e30iO3M6MTY6IldJVEhfREVTQ1JJUFRJT04iO3M6MToiTiI7czoxMDoiU0VBUkNIQUJMRSI7czoxOiJOIjtzOjk6IkZJTFRSQUJMRSI7czoxOiJOIjtzOjEyOiJNVUxUSVBMRV9DTlQiO3M6MToiNSI7czo0OiJISU5UIjtzOjA6IiI7czoxNjoiU0VDVElPTl9QUk9QRVJUWSI7czoxOiJZIjtzOjEyOiJTTUFSVF9GSUxURVIiO3M6MToiTiI7czoxMjoiRElTUExBWV9UWVBFIjtzOjE6IkYiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:27:\"IB_PROPERTY_2_PROPERTY_TYPE\";s:1:\"S\";s:20:\"IB_PROPERTY_2_ACTIVE\";s:1:\"Y\";s:22:\"IB_PROPERTY_2_MULTIPLE\";s:0:\"\";s:25:\"IB_PROPERTY_2_IS_REQUIRED\";s:0:\"\";s:18:\"IB_PROPERTY_2_SORT\";s:3:\"505\";s:18:\"IB_PROPERTY_2_CODE\";s:4:\"post\";s:17:\"IB_PROPERTY_2_BTN\";s:0:\"\";s:17:\"IB_PROPERTY_2_DEL\";s:0:\"\";s:18:\"IB_PROPERTY_3_NAME\";s:10:\"Отзыв\";s:22:\"IB_PROPERTY_3_PROPINFO\";s:692:\"YToxOTp7czo5OiJJQkxPQ0tfSUQiO3M6MToiMSI7czo5OiJGSUxFX1RZUEUiO3M6MDoiIjtzOjk6IkxJU1RfVFlQRSI7czoxOiJMIjtzOjk6IlJPV19DT1VOVCI7czoxOiIxIjtzOjk6IkNPTF9DT1VOVCI7czoyOiIzMCI7czoxNDoiTElOS19JQkxPQ0tfSUQiO3M6MToiMCI7czoxMzoiREVGQVVMVF9WQUxVRSI7czowOiIiO3M6MTg6IlVTRVJfVFlQRV9TRVRUSU5HUyI7czo2OiJhOjA6e30iO3M6MTY6IldJVEhfREVTQ1JJUFRJT04iO3M6MToiTiI7czoxMDoiU0VBUkNIQUJMRSI7czoxOiJOIjtzOjk6IkZJTFRSQUJMRSI7czoxOiJOIjtzOjEyOiJNVUxUSVBMRV9DTlQiO3M6MToiNSI7czo0OiJISU5UIjtzOjA6IiI7czoxNjoiU0VDVElPTl9QUk9QRVJUWSI7czoxOiJZIjtzOjEyOiJTTUFSVF9GSUxURVIiO3M6MToiTiI7czoxMjoiRElTUExBWV9UWVBFIjtzOjE6IkYiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:27:\"IB_PROPERTY_3_PROPERTY_TYPE\";s:1:\"S\";s:20:\"IB_PROPERTY_3_ACTIVE\";s:1:\"Y\";s:22:\"IB_PROPERTY_3_MULTIPLE\";s:0:\"\";s:25:\"IB_PROPERTY_3_IS_REQUIRED\";s:0:\"\";s:18:\"IB_PROPERTY_3_SORT\";s:3:\"510\";s:18:\"IB_PROPERTY_3_CODE\";s:6:\"review\";s:17:\"IB_PROPERTY_3_BTN\";s:0:\"\";s:17:\"IB_PROPERTY_3_DEL\";s:0:\"\";s:19:\"IB_PROPERTY_n0_NAME\";s:0:\"\";s:23:\"IB_PROPERTY_n0_PROPINFO\";s:724:\"YToyMTp7czo5OiJJQkxPQ0tfSUQiO2k6MDtzOjk6IkZJTEVfVFlQRSI7czowOiIiO3M6OToiTElTVF9UWVBFIjtzOjE6IkwiO3M6OToiUk9XX0NPVU5UIjtzOjE6IjEiO3M6OToiQ09MX0NPVU5UIjtzOjI6IjMwIjtzOjE0OiJMSU5LX0lCTE9DS19JRCI7czoxOiIwIjtzOjEzOiJERUZBVUxUX1ZBTFVFIjtzOjA6IiI7czoxODoiVVNFUl9UWVBFX1NFVFRJTkdTIjthOjA6e31zOjE2OiJXSVRIX0RFU0NSSVBUSU9OIjtzOjA6IiI7czoxMDoiU0VBUkNIQUJMRSI7czowOiIiO3M6OToiRklMVFJBQkxFIjtzOjA6IiI7czoxMjoiTVVMVElQTEVfQ05UIjtzOjE6IjUiO3M6NDoiSElOVCI7czowOiIiO3M6NjoiWE1MX0lEIjtzOjA6IiI7czo2OiJWQUxVRVMiO2E6MDp7fXM6MTY6IlNFQ1RJT05fUFJPUEVSVFkiO3M6MToiWSI7czoxMjoiU01BUlRfRklMVEVSIjtzOjE6Ik4iO3M6MTI6IkRJU1BMQVlfVFlQRSI7czowOiIiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:28:\"IB_PROPERTY_n0_PROPERTY_TYPE\";s:1:\"S\";s:21:\"IB_PROPERTY_n0_ACTIVE\";s:1:\"Y\";s:23:\"IB_PROPERTY_n0_MULTIPLE\";s:0:\"\";s:26:\"IB_PROPERTY_n0_IS_REQUIRED\";s:0:\"\";s:19:\"IB_PROPERTY_n0_SORT\";s:3:\"500\";s:19:\"IB_PROPERTY_n0_CODE\";s:0:\"\";s:18:\"IB_PROPERTY_n0_BTN\";s:0:\"\";s:19:\"IB_PROPERTY_n1_NAME\";s:0:\"\";s:23:\"IB_PROPERTY_n1_PROPINFO\";s:724:\"YToyMTp7czo5OiJJQkxPQ0tfSUQiO2k6MDtzOjk6IkZJTEVfVFlQRSI7czowOiIiO3M6OToiTElTVF9UWVBFIjtzOjE6IkwiO3M6OToiUk9XX0NPVU5UIjtzOjE6IjEiO3M6OToiQ09MX0NPVU5UIjtzOjI6IjMwIjtzOjE0OiJMSU5LX0lCTE9DS19JRCI7czoxOiIwIjtzOjEzOiJERUZBVUxUX1ZBTFVFIjtzOjA6IiI7czoxODoiVVNFUl9UWVBFX1NFVFRJTkdTIjthOjA6e31zOjE2OiJXSVRIX0RFU0NSSVBUSU9OIjtzOjA6IiI7czoxMDoiU0VBUkNIQUJMRSI7czowOiIiO3M6OToiRklMVFJBQkxFIjtzOjA6IiI7czoxMjoiTVVMVElQTEVfQ05UIjtzOjE6IjUiO3M6NDoiSElOVCI7czowOiIiO3M6NjoiWE1MX0lEIjtzOjA6IiI7czo2OiJWQUxVRVMiO2E6MDp7fXM6MTY6IlNFQ1RJT05fUFJPUEVSVFkiO3M6MToiWSI7czoxMjoiU01BUlRfRklMVEVSIjtzOjE6Ik4iO3M6MTI6IkRJU1BMQVlfVFlQRSI7czowOiIiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:28:\"IB_PROPERTY_n1_PROPERTY_TYPE\";s:1:\"S\";s:21:\"IB_PROPERTY_n1_ACTIVE\";s:1:\"Y\";s:23:\"IB_PROPERTY_n1_MULTIPLE\";s:0:\"\";s:26:\"IB_PROPERTY_n1_IS_REQUIRED\";s:0:\"\";s:19:\"IB_PROPERTY_n1_SORT\";s:3:\"500\";s:19:\"IB_PROPERTY_n1_CODE\";s:0:\"\";s:18:\"IB_PROPERTY_n1_BTN\";s:0:\"\";s:19:\"IB_PROPERTY_n2_NAME\";s:0:\"\";s:23:\"IB_PROPERTY_n2_PROPINFO\";s:724:\"YToyMTp7czo5OiJJQkxPQ0tfSUQiO2k6MDtzOjk6IkZJTEVfVFlQRSI7czowOiIiO3M6OToiTElTVF9UWVBFIjtzOjE6IkwiO3M6OToiUk9XX0NPVU5UIjtzOjE6IjEiO3M6OToiQ09MX0NPVU5UIjtzOjI6IjMwIjtzOjE0OiJMSU5LX0lCTE9DS19JRCI7czoxOiIwIjtzOjEzOiJERUZBVUxUX1ZBTFVFIjtzOjA6IiI7czoxODoiVVNFUl9UWVBFX1NFVFRJTkdTIjthOjA6e31zOjE2OiJXSVRIX0RFU0NSSVBUSU9OIjtzOjA6IiI7czoxMDoiU0VBUkNIQUJMRSI7czowOiIiO3M6OToiRklMVFJBQkxFIjtzOjA6IiI7czoxMjoiTVVMVElQTEVfQ05UIjtzOjE6IjUiO3M6NDoiSElOVCI7czowOiIiO3M6NjoiWE1MX0lEIjtzOjA6IiI7czo2OiJWQUxVRVMiO2E6MDp7fXM6MTY6IlNFQ1RJT05fUFJPUEVSVFkiO3M6MToiWSI7czoxMjoiU01BUlRfRklMVEVSIjtzOjE6Ik4iO3M6MTI6IkRJU1BMQVlfVFlQRSI7czowOiIiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:28:\"IB_PROPERTY_n2_PROPERTY_TYPE\";s:1:\"S\";s:21:\"IB_PROPERTY_n2_ACTIVE\";s:1:\"Y\";s:23:\"IB_PROPERTY_n2_MULTIPLE\";s:0:\"\";s:26:\"IB_PROPERTY_n2_IS_REQUIRED\";s:0:\"\";s:19:\"IB_PROPERTY_n2_SORT\";s:3:\"500\";s:19:\"IB_PROPERTY_n2_CODE\";s:0:\"\";s:18:\"IB_PROPERTY_n2_BTN\";s:0:\"\";s:19:\"IB_PROPERTY_n3_NAME\";s:0:\"\";s:23:\"IB_PROPERTY_n3_PROPINFO\";s:724:\"YToyMTp7czo5OiJJQkxPQ0tfSUQiO2k6MDtzOjk6IkZJTEVfVFlQRSI7czowOiIiO3M6OToiTElTVF9UWVBFIjtzOjE6IkwiO3M6OToiUk9XX0NPVU5UIjtzOjE6IjEiO3M6OToiQ09MX0NPVU5UIjtzOjI6IjMwIjtzOjE0OiJMSU5LX0lCTE9DS19JRCI7czoxOiIwIjtzOjEzOiJERUZBVUxUX1ZBTFVFIjtzOjA6IiI7czoxODoiVVNFUl9UWVBFX1NFVFRJTkdTIjthOjA6e31zOjE2OiJXSVRIX0RFU0NSSVBUSU9OIjtzOjA6IiI7czoxMDoiU0VBUkNIQUJMRSI7czowOiIiO3M6OToiRklMVFJBQkxFIjtzOjA6IiI7czoxMjoiTVVMVElQTEVfQ05UIjtzOjE6IjUiO3M6NDoiSElOVCI7czowOiIiO3M6NjoiWE1MX0lEIjtzOjA6IiI7czo2OiJWQUxVRVMiO2E6MDp7fXM6MTY6IlNFQ1RJT05fUFJPUEVSVFkiO3M6MToiWSI7czoxMjoiU01BUlRfRklMVEVSIjtzOjE6Ik4iO3M6MTI6IkRJU1BMQVlfVFlQRSI7czowOiIiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:28:\"IB_PROPERTY_n3_PROPERTY_TYPE\";s:1:\"S\";s:21:\"IB_PROPERTY_n3_ACTIVE\";s:1:\"Y\";s:23:\"IB_PROPERTY_n3_MULTIPLE\";s:0:\"\";s:26:\"IB_PROPERTY_n3_IS_REQUIRED\";s:0:\"\";s:19:\"IB_PROPERTY_n3_SORT\";s:3:\"500\";s:19:\"IB_PROPERTY_n3_CODE\";s:0:\"\";s:18:\"IB_PROPERTY_n3_BTN\";s:0:\"\";s:19:\"IB_PROPERTY_n4_NAME\";s:0:\"\";s:23:\"IB_PROPERTY_n4_PROPINFO\";s:724:\"YToyMTp7czo5OiJJQkxPQ0tfSUQiO2k6MDtzOjk6IkZJTEVfVFlQRSI7czowOiIiO3M6OToiTElTVF9UWVBFIjtzOjE6IkwiO3M6OToiUk9XX0NPVU5UIjtzOjE6IjEiO3M6OToiQ09MX0NPVU5UIjtzOjI6IjMwIjtzOjE0OiJMSU5LX0lCTE9DS19JRCI7czoxOiIwIjtzOjEzOiJERUZBVUxUX1ZBTFVFIjtzOjA6IiI7czoxODoiVVNFUl9UWVBFX1NFVFRJTkdTIjthOjA6e31zOjE2OiJXSVRIX0RFU0NSSVBUSU9OIjtzOjA6IiI7czoxMDoiU0VBUkNIQUJMRSI7czowOiIiO3M6OToiRklMVFJBQkxFIjtzOjA6IiI7czoxMjoiTVVMVElQTEVfQ05UIjtzOjE6IjUiO3M6NDoiSElOVCI7czowOiIiO3M6NjoiWE1MX0lEIjtzOjA6IiI7czo2OiJWQUxVRVMiO2E6MDp7fXM6MTY6IlNFQ1RJT05fUFJPUEVSVFkiO3M6MToiWSI7czoxMjoiU01BUlRfRklMVEVSIjtzOjE6Ik4iO3M6MTI6IkRJU1BMQVlfVFlQRSI7czowOiIiO3M6MTY6IkRJU1BMQVlfRVhQQU5ERUQiO3M6MToiTiI7czoxMToiRklMVEVSX0hJTlQiO3M6MDoiIjtzOjg6IkZFQVRVUkVTIjthOjA6e319\";s:28:\"IB_PROPERTY_n4_PROPERTY_TYPE\";s:1:\"S\";s:21:\"IB_PROPERTY_n4_ACTIVE\";s:1:\"Y\";s:23:\"IB_PROPERTY_n4_MULTIPLE\";s:0:\"\";s:26:\"IB_PROPERTY_n4_IS_REQUIRED\";s:0:\"\";s:19:\"IB_PROPERTY_n4_SORT\";s:3:\"500\";s:19:\"IB_PROPERTY_n4_CODE\";s:0:\"\";s:18:\"IB_PROPERTY_n4_BTN\";s:0:\"\";s:21:\"IBLOCK_PROPERTY_COUNT\";s:1:\"5\";s:61:\"FIELDSX000091XSECTION_NAMEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:63:\"FIELDSX000091XSECTION_NAMEX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:64:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:93:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XFROM_DETAILX000093X\";s:0:\"\";s:100:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUPDATE_WITH_DETAILX000093X\";s:0:\"\";s:100:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XDELETE_WITH_DETAILX000093X\";s:0:\"\";s:87:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XSCALEX000093X\";s:0:\"\";s:87:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWIDTHX000093X\";s:0:\"\";s:88:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XHEIGHTX000093X\";s:0:\"\";s:95:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XIGNORE_ERRORSX000093X\";s:0:\"\";s:88:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XMETHODX000093X\";s:8:\"resample\";s:93:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XCOMPRESSIONX000093X\";s:2:\"95\";s:100:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_FILEX000093X\";s:0:\"\";s:96:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILEX000093X\";s:0:\"\";s:102:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_ALPHAX000093X\";s:0:\"\";s:105:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_POSITIONX000093X\";s:2:\"tl\";s:100:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_TEXTX000093X\";s:0:\"\";s:96:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXTX000093X\";s:0:\"\";s:101:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_FONTX000093X\";s:0:\"\";s:102:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_COLORX000093X\";s:0:\"\";s:101:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_SIZEX000093X\";s:0:\"\";s:105:\"FIELDSX000091XSECTION_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_POSITIONX000093X\";s:2:\"tl\";s:73:\"FIELDSX000091XSECTION_DESCRIPTION_TYPEX000093XX000091XIS_REQUIREDX000093X\";s:1:\"Y\";s:75:\"FIELDSX000091XSECTION_DESCRIPTION_TYPEX000093XX000091XDEFAULT_VALUEX000093X\";s:4:\"text\";s:88:\"FIELDSX000091XSECTION_DESCRIPTION_TYPE_ALLOW_CHANGEX000093XX000091XDEFAULT_VALUEX000093X\";s:1:\"Y\";s:68:\"FIELDSX000091XSECTION_DESCRIPTIONX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:70:\"FIELDSX000091XSECTION_DESCRIPTIONX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:71:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:94:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XSCALEX000093X\";s:0:\"\";s:94:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWIDTHX000093X\";s:0:\"\";s:95:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XHEIGHTX000093X\";s:0:\"\";s:102:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XIGNORE_ERRORSX000093X\";s:0:\"\";s:95:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XMETHODX000093X\";s:8:\"resample\";s:100:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XCOMPRESSIONX000093X\";s:2:\"95\";s:107:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_FILEX000093X\";s:0:\"\";s:103:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILEX000093X\";s:0:\"\";s:109:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_ALPHAX000093X\";s:0:\"\";s:112:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_FILE_POSITIONX000093X\";s:2:\"tl\";s:107:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_WATERMARK_TEXTX000093X\";s:0:\"\";s:103:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXTX000093X\";s:0:\"\";s:108:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_FONTX000093X\";s:0:\"\";s:109:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_COLORX000093X\";s:0:\"\";s:108:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_SIZEX000093X\";s:0:\"\";s:112:\"FIELDSX000091XSECTION_DETAIL_PICTUREX000093XX000091XDEFAULT_VALUEX000093XX000091XWATERMARK_TEXT_POSITIONX000093X\";s:2:\"tl\";s:63:\"FIELDSX000091XSECTION_XML_IDX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:65:\"FIELDSX000091XSECTION_XML_IDX000093XX000091XDEFAULT_VALUEX000093X\";s:0:\"\";s:61:\"FIELDSX000091XSECTION_CODEX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:85:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XUNIQUEX000093X\";s:0:\"\";s:94:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANSLITERATIONX000093X\";s:0:\"\";s:88:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_LENX000093X\";s:3:\"100\";s:89:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_CASEX000093X\";s:1:\"L\";s:90:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_SPACEX000093X\";s:1:\"-\";s:90:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_OTHERX000093X\";s:1:\"-\";s:88:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XTRANS_EATX000093X\";s:1:\"Y\";s:89:\"FIELDSX000091XSECTION_CODEX000093XX000091XDEFAULT_VALUEX000093XX000091XUSE_GOOGLEX000093X\";s:0:\"\";s:11:\"RIGHTS_MODE\";s:0:\"\";s:22:\"GROUPX000091X2X000093X\";s:1:\"D\";s:22:\"GROUPX000091X1X000093X\";s:1:\"X\";s:22:\"GROUPX000091X3X000093X\";s:0:\"\";s:22:\"GROUPX000091X4X000093X\";s:0:\"\";s:13:\"SECTIONS_NAME\";s:14:\"Разделы\";s:12:\"SECTION_NAME\";s:12:\"Раздел\";s:11:\"SECTION_ADD\";s:29:\"Добавить раздел\";s:12:\"SECTION_EDIT\";s:29:\"Изменить раздел\";s:14:\"SECTION_DELETE\";s:27:\"Удалить раздел\";s:13:\"ELEMENTS_NAME\";s:12:\"Отзывы\";s:12:\"ELEMENT_NAME\";s:10:\"Отзыв\";s:11:\"ELEMENT_ADD\";s:27:\"Добавить отзыв\";s:12:\"ELEMENT_EDIT\";s:27:\"Изменить отзыв\";s:14:\"ELEMENT_DELETE\";s:25:\"Удалить отзыв\";s:64:\"FIELDSX000091XLOG_SECTION_ADDX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:65:\"FIELDSX000091XLOG_SECTION_EDITX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:67:\"FIELDSX000091XLOG_SECTION_DELETEX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:64:\"FIELDSX000091XLOG_ELEMENT_ADDX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:65:\"FIELDSX000091XLOG_ELEMENT_EDITX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:67:\"FIELDSX000091XLOG_ELEMENT_DELETEX000093XX000091XIS_REQUIREDX000093X\";s:0:\"\";s:5:\"apply\";s:0:\"\";s:6:\"cancel\";s:0:\"\";s:21:\"tabControl_active_tab\";s:5:\"edit2\";}',1,1715941310);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8mb3_unicode_ci,
  `IMAGE_ID` int DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8mb3_unicode_ci,
  `EXTRA` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
INSERT INTO `b_urlpreview_route` VALUES (1,'/knowledge/#knowledgeCode#/','landing','\\Bitrix\\Landing\\Landing\\UrlPreview','a:3:{s:13:\"knowledgeCode\";s:14:\"$knowledgeCode\";s:5:\"scope\";s:9:\"knowledge\";s:12:\"allowSlashes\";s:1:\"N\";}'),(2,'/knowledge/group/#knowledgeCode#/','landing','\\Bitrix\\Landing\\Landing\\UrlPreview','a:3:{s:13:\"knowledgeCode\";s:14:\"$knowledgeCode\";s:5:\"scope\";s:5:\"group\";s:12:\"allowSlashes\";s:1:\"N\";}');
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CHECKWORD` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8mb3_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8mb3_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8mb3_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8mb3_unicode_ci,
  `WORK_LOGO` int DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8mb3_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8mb3_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `BLOCKED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `PASSWORD_EXPIRED` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2024-05-17 07:46:39','admin','$6$xYVFvnz0qHwxB6w2$NUoXA2dH8PMkcjtx2s6.J.FYWgut.zpU..6YNwhL0r4kOcMXh5K9fTCF2OiDh/D9FAcuWETF0ArH/BOfY53of/','$6$yIO28o1TavSbfeIj$nRDfUGb5E8V1xBNyeold/ndz4baF7WQxT1L09AV1asEZXJqqkfrGFiybER89yHKsEaIrGczViYBxob7EpISpy/','Y','Павел','Морозов','bravo4ek@gmail.com','2024-05-17 10:47:08','2024-05-16 17:27:34',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-17 10:46:39',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'4bb34719d940518ab641b7bc8d9710fb',NULL,'N','N');
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_access` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`),
  KEY `ix_ua_provider` (`PROVIDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (1,0,'group','G2'),(2,1,'group','G1'),(3,1,'group','G3'),(4,1,'group','G4'),(5,1,'group','G2'),(9,1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ux_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_action`
--

DROP TABLE IF EXISTS `b_user_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_auth_action` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `PRIORITY` int NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_action`
--

LOCK TABLES `b_user_auth_action` WRITE;
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
INSERT INTO `b_user_auth_action` VALUES (1,1,200,'update','2024-05-16 17:27:34',NULL),(2,1,100,'logout','2024-05-16 17:52:22',NULL),(3,1,100,'logout','2024-05-16 17:52:25',NULL),(4,1,100,'logout','2024-05-17 10:46:39',NULL);
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_code`
--

DROP TABLE IF EXISTS `b_user_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_auth_code` (
  `USER_ID` int NOT NULL,
  `CODE_TYPE` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'email',
  `OTP_SECRET` text COLLATE utf8mb3_unicode_ci,
  `ATTEMPTS` int DEFAULT '0',
  `DATE_SENT` datetime DEFAULT NULL,
  `DATE_RESENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_code`
--

LOCK TABLES `b_user_auth_code` WRITE;
/*!40000 ALTER TABLE `b_user_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_counter` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CNT` int NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8mb3_unicode_ci,
  `SENT` char(1) COLLATE utf8mb3_unicode_ci DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_counter_user_site_code` (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_device`
--

DROP TABLE IF EXISTS `b_user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_device` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint unsigned NOT NULL,
  `DEVICE_UID` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DEVICE_TYPE` int unsigned NOT NULL DEFAULT '0',
  `BROWSER` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PLATFORM` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `COOKABLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_user_device_user` (`USER_ID`,`DEVICE_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_device`
--

LOCK TABLES `b_user_device` WRITE;
/*!40000 ALTER TABLE `b_user_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_device_login`
--

DROP TABLE IF EXISTS `b_user_device_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_device_login` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` bigint unsigned NOT NULL,
  `LOGIN_DATE` datetime DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CITY_GEOID` bigint DEFAULT NULL,
  `REGION_GEOID` bigint DEFAULT NULL,
  `COUNTRY_ISO_CODE` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `APP_PASSWORD_ID` bigint unsigned DEFAULT NULL,
  `STORED_AUTH_ID` bigint unsigned DEFAULT NULL,
  `HIT_AUTH_ID` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_user_device_login_device` (`DEVICE_ID`),
  KEY `ix_user_device_login_date` (`LOGIN_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_device_login`
--

LOCK TABLES `b_user_device_login` WRITE;
/*!40000 ALTER TABLE `b_user_device_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_device_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_field` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SORT` int DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `DATE_CHANGE` timestamp NULL DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ATTEMPTS` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_permission`
--

DROP TABLE IF EXISTS `b_user_field_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_field_permission` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` tinyint unsigned NOT NULL,
  `USER_FIELD_ID` int unsigned NOT NULL,
  `ACCESS_CODE` varchar(8) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PERMISSION_ID` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` tinyint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ROLE_ID` (`ENTITY_TYPE_ID`),
  KEY `GROUP_ID` (`USER_FIELD_ID`),
  KEY `PERMISSION_ID` (`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_permission`
--

LOCK TABLES `b_user_field_permission` WRITE;
/*!40000 ALTER TABLE `b_user_field_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int NOT NULL,
  `GROUP_ID` int NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `HASH` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `VALID_UNTIL` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index`
--

DROP TABLE IF EXISTS `b_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_index` (
  `USER_ID` int NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8mb3_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8mb3_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8mb3_unicode_ci,
  `NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index`
--

LOCK TABLES `b_user_index` WRITE;
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
INSERT INTO `b_user_index` VALUES (1,'001 Павел Морозов ','','001 Павел Морозов oenib4rx tznvy pbz oenib4rx@tznvy.pbz nqzva','Павел','Морозов','','','');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_option` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8mb3_unicode_ci,
  `COMMON` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,0,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,0,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"Y\";}','N'),(3,1,'hot_keys','user_defined','b:1;','N'),(4,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"Y\";}','N'),(6,1,'admin_menu','pos','a:1:{s:8:\"sections\";s:89:\"menu_iblock,menu_iblock_/index,menu_iblock_%2Findex%2F1,menu_iblock_/index/1,iblock_admin\";}','N'),(9,1,'main.interface.grid','tbl_iblock_admin_6a992d5529f459a44fee58c733255e86','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(10,1,'admin_panel','settings','a:1:{s:4:\"edit\";s:3:\"off\";}','N'),(19,1,'main.ui.filter','tbl_iblock_section_77be0847461abf2bfe92859956b5cccb','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(25,1,'main.interface.grid','tbl_iblock_section_77be0847461abf2bfe92859956b5cccb','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(28,1,'main.ui.filter','tbl_iblock_element_77be0847461abf2bfe92859956b5cccb','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:14:\"default_filter\";a:0:{}}}','N'),(33,1,'main.interface.grid','tbl_iblock_element_77be0847461abf2bfe92859956b5cccb','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(56,1,'form','form_element_1','a:1:{s:4:\"tabs\";s:430:\"edit1--#--Параметры--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--NAME--#--*Название--,--SORT--#--Сортировка--,--PROPERTY_2--#--Должность--,--PROPERTY_3--#--Отзыв--,--PROPERTY_1--#--ФИО--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PREVIEW_TEXT--#--Описание для анонса--;--\";}','N'),(59,1,'html_editor','user_settings_','a:3:{s:14:\"split_vertical\";s:1:\"0\";s:4:\"view\";s:4:\"code\";s:13:\"taskbar_shown\";s:1:\"1\";}','N'),(64,1,'fileman','code_editor','a:1:{s:5:\"theme\";s:5:\"light\";}','N'),(97,1,'main','fileinput','a:1:{s:4:\"mode\";s:9:\"mode-pict\";}','N'),(160,1,'main','helper_hero_admin','a:1:{s:4:\"show\";s:1:\"Y\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_password`
--

DROP TABLE IF EXISTS `b_user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_password` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_user_password_user_date` (`USER_ID`,`DATE_CHANGE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_password`
--

LOCK TABLES `b_user_password` WRITE;
/*!40000 ALTER TABLE `b_user_password` DISABLE KEYS */;
INSERT INTO `b_user_password` VALUES (1,1,'$6$R$w.jTiCC1z/24FMChVlr.eA/u9.ase3N2etvew0PnoEx27g0/3OpCS6jHBpaOfyw62V51Z.lEZL4nObhFFotN20','2024-05-16 17:27:34'),(2,1,'$6$P$wYeX95qfnys5i/OorouB0hefplioISXnyKEnHfUPuCQafDzUmhOD1ghIINLzIDjV4JkLLvjNT8y7Z7cMObPoe0','2024-05-16 17:52:22'),(3,1,'$6$W$qL9vDnHtwuzxdXhXRNcJmRLNFnQzd8GicQRasrNtYkCEl1LCHI5/suYP/81Kv7x4Ihs1q/WMFM0VFCRsNH7MC.','2024-05-16 17:52:25'),(4,1,'$6$xYVFvnz0qHwxB6w2$NUoXA2dH8PMkcjtx2s6.J.FYWgut.zpU..6YNwhL0r4kOcMXh5K9fTCF2OiDh/D9FAcuWETF0ArH/BOfY53of/','2024-05-17 10:46:39');
/*!40000 ALTER TABLE `b_user_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_phone_auth`
--

DROP TABLE IF EXISTS `b_user_phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8mb3_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8mb3_unicode_ci,
  `ATTEMPTS` int DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_phone_auth`
--

LOCK TABLES `b_user_phone_auth` WRITE;
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_history`
--

DROP TABLE IF EXISTS `b_user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_profile_history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `EVENT_TYPE` int DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8mb3_unicode_ci,
  `REQUEST_URI` text COLLATE utf8mb3_unicode_ci,
  `UPDATED_BY_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`),
  KEY `ix_profile_history_date` (`DATE_INSERT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_history`
--

LOCK TABLES `b_user_profile_history` WRITE;
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_record`
--

DROP TABLE IF EXISTS `b_user_profile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_profile_record` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int NOT NULL,
  `FIELD` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_record`
--

LOCK TABLES `b_user_profile_record` WRITE;
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_session`
--

DROP TABLE IF EXISTS `b_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_session` (
  `SESSION_ID` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `SESSION_DATA` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`SESSION_ID`),
  KEY `ix_user_session_time` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_session`
--

LOCK TABLES `b_user_session` WRITE;
/*!40000 ALTER TABLE `b_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 14:29:09
