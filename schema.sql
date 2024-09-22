-- YouTubeDataCollector Database Schema
-- Replace {DATABASE_NAME} with your desired database name before running this script

-- Create the database
CREATE DATABASE IF NOT EXISTS `{DATABASE_NAME}` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `{DATABASE_NAME}`;

-- Table structure for table `channel_stats`
-- Stores basic information about each YouTube channel
CREATE TABLE `channel_stats` (
  `Channel_ID` varchar(45) NOT NULL,
  `Channel_Name` varchar(60) DEFAULT NULL,
  `Channel_Handle` varchar(255) NOT NULL,
  `Subscribers` int DEFAULT NULL,
  `Total_Views` bigint DEFAULT NULL,
  PRIMARY KEY (`Channel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `videosdata`
-- Stores detailed information about each video
CREATE TABLE `videosdata` (
  `Channel_Handle` varchar(255) NOT NULL,
  `Video_ID` varchar(50) NOT NULL,
  `Video_Title` varchar(255) DEFAULT NULL,
  `Published_At` datetime DEFAULT NULL,
  `Likes` int DEFAULT NULL,
  `Duration` varchar(10) DEFAULT NULL,
  `Views` int DEFAULT NULL,
  `Comments` int DEFAULT NULL,
  `Live` tinyint DEFAULT '0',
  `Short` tinyint DEFAULT '0',
  `Exclusive` tinyint DEFAULT '0',
  `Live_Start_Time` datetime DEFAULT NULL,
  `Live_End_Time` datetime DEFAULT NULL,
  `Scheduled_Start_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`Video_ID`),
  KEY `idx_channel_handle` (`Channel_Handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `tags`
-- Stores unique tags used in videos with an auto-incrementing ID
CREATE TABLE `tags` (
  `Tag_ID` int NOT NULL AUTO_INCREMENT,
  `Tag_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Tag_ID`),
  UNIQUE KEY `tag_name` (`Tag_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=1257587 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `video_tags`
-- Links videos to their associated tags
CREATE TABLE `video_tags` (
  `Video_ID` varchar(50) NOT NULL,
  `Tag_ID` int NOT NULL,
  PRIMARY KEY (`Video_ID`,`Tag_ID`),
  KEY `Tag_ID` (`Tag_ID`),
  CONSTRAINT `video_tags_ibfk_1` FOREIGN KEY (`Video_ID`) REFERENCES `videosdata` (`Video_ID`),
  CONSTRAINT `video_tags_ibfk_2` FOREIGN KEY (`Tag_ID`) REFERENCES `tags` (`Tag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `update_log`
-- Logs the date and time of the last data update
CREATE TABLE `update_log` (
  `Update_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Update_Date_UNIQUE` (`Update_Date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;