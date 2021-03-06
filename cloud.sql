-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `arid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `artitle` varchar(100) NOT NULL,
  `ardomain` varchar(15) NOT NULL,
  `arkeywords` varchar(100) NOT NULL,
  `arcontent` text NOT NULL,
  `arflag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,3,'Venu','Big Scholarly Data A Survey','Bigdata','bigdata, article, scholar','With the rapid growth of digital publishing, harvesting, managing, and analyzing scholarly information have become increasingly challenging. The term Big Scholarly Data is coined for the rapidly growing scholarly data, which contains information including millions of authors, papers, citations, figures, tables, as well as scholarly networks and digital libraries. Nowadays, various scholarly data can be easily accessed and powerful data analysis technologies are being developed, which enable us to look into science itself with a new angle. In this paper, we examine the background and state of the art of big scholarly data. We first introduce the background of scholarly data management and relevant technologies. Secondly, we review data analysis methods, such as statistical analysis, social network analysis, and content analysis for dealing with big scholarly data. Finally, we look into representative research issues in this area, including scientific impact evaluation, academic recommendation, and expert finding. For each issue, the background, main challenges, and latest research are covered. These discussions aim to provide a general overview and big picture to scholars interested in this emerging area. This survey paper concludes with a discussion of open issues and promising future directions.',0),(2,3,'Manisha','Cleaning Framework for BigData','Data Science','Bigdata, Cleaning, Framework',' Information is an important asset. Appropriate utilization of amazing information can enable individuals to improve forecasts, investigations and choices. Nonetheless, regardless of how much exertion we put into gathering a decent dataset, blunders will definitely crawl into the information, making it vital for information cleaning. This turns into a worry especially when substantial scale heterogeneous information from different sources are incorporated for different purposes. Information cleaning can be confounded, time consuming, and costly, yet it is a vital stride in any information related framework since low quality information may not be appropriate to accomplish the planned purposes. The center of our information cleaning framework is information affiliation and repairing. Affiliation means to recognize a similar question and connection with the most related protests, and repairing is to make a database dependable by ├»┬¼┬üxing blunders in the information. ',0),(3,2,'Lahari','Logistic Regression within DBMS','Data Science','Logistic Regression, DBMS, Bigdata','The context of this paper is to come up with an analytical query model for data categorization within DBMS. DBMS being the asset for most of the organizations, classification can help in getting better insight and control over the data. Conventionally, classification algorithms like logistic regression, KNN, etc. are applied after exporting the data out of DBMS, using non DBMS tools like R, matrix packages, generic data mining programs or large scale systems like Hadoop and Spark. However, this leads to I/O overhead since the data within DBMS is updated quite frequently and usually cannot be accommodated in the main memory. This paper proposes an alternative strategy, based on SQL and UDFs, to integrate the logistic regression for data categorization as well as prediction query processing within DBMS.',0),(4,4,'Monica','Automatic Sentiment Detection in Naturalistic Audio','Data Science','automatic, audio, sentiment, detection ','Audio sentiment analysis using automatic speech recognition is an emerging research area where opinion or sentiment exhibited by a speaker is detected from natural audio. It is relatively under-explored when compared to text based sentiment detection. Extracting speaker sentiment from natural audio sources is a challenging problem. Generic methods for sentiment extraction generally use transcripts from a speech recognition system, and process the transcript using text-based sentiment classifiers.',0),(5,4,'Monica','Mining Top-k Co-occurrence Patterns across Multiple Streams:','Bigdata','MIning, top, patterns, bigdata','The recent Bigdata and IoT era has presented a number of applications that generate objects in a streaming fashion. It is well-known that real-time mining of important patterns from data streams support many domains. In retail markets and social network services, for example, such patterns are itemsets and words that frequently appear in many user-accounts, i.e., co-occurrence patterns. To ef├»┬¼┬üciently monitor co-occurrence patterns, we address the novel problem of mining top-k closed co-occurrence patterns across multiple streams.',0),(6,4,'Monica','An Efficient Analysis of Web Server Log Files','Web application','Web application,  Analysis, Server, Logs, Top','As the growth of data increases over years, storage and analysis becomes incredible, this in turn increases the processing time and cost efficiency. Though various techniques and algorithms are used in distributed computing the problem remains still idle. To overcome this issue Hadoop MapReduce is used, to process large number of files in a parallel manner. The use of World Wide Web emits data in larger quantity as users are more interested in performing their day to day activities through online. Users interaction in a website is analyzed through web server log files, a computer generated data in semi structured format',0),(7,3,'Manisha','silent sound technology','technology','silent,sound','Everybody has the experience of talking aloud in the cell phone in the midst of the disturbance while travelling in trains or buses. There is no need of├é┬á shouting anymore for this purpose. ├óΓé¼╦£Silent sound technology├óΓé¼Γäó is the answer for├é┬áthis problem. \r\n\r\nThe Silent sound technology is an amazing solution for those who had lost their voice but wish to speak over phone. It is developed at the Karlsruhe Institute of Technology.\r\n',0),(9,2,'Lahari','connecting teachers and parents','website','teachers,parents','CTP is a web-based application designed to help a workgroup keep track of issues and tasks via a shared central resource. This is a portal which would bring awareness on students in service to the parents. It will make parents to take an initiative to teach or help children in their free time. Through CTP children will be benefited and which would further impact their parents. Once a child is provided with the right education he/she would work for the development of himself.',0),(10,10,'Yashu','Finger Reader','Technology','Recognition,Finger','Accessing printed text in a mobile context is a major challenge for the blind. A preliminary study with blind people reveals numerous difficulties with existing state-of-the-art technologies including problems with alignment, focus, accuracy, mobility and efficiency.\r\nWe present a finger-worn device, FingerReader, that assists blind users with reading printed text on the go.\r\nThe FingerReader is a 3D  printed ring-like device  worn on the index finger.\r\nIt has a small camera on the top which scans printed text  and moniters finger movements\r\nIf the user veers away from a text line,  tactile feedback is provided by two  vibration motors embedded in the 3D  printed case.\r\nAuditory cues alert the user at the beginning and end of the passages.\r\nA novel-tracker based algorithm extracts texts locally and sequencially,rather in whole text blocks and pages like many existing devices use',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) NOT NULL,
  `apassword` varchar(20) NOT NULL,
  `amobile` varchar(10) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aflag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'srilatha','srilatha','9666075341','srilatha@gmail.com',0),(2,'navya','navya','9000123456','navya@gmail.com',0),(3,'venu','venu','9704156958','venu@gmail.com',0),(4,'mounica','12345','9666093017','monica@gmail.com',0),(5,'manisha','12345','9032639932','manisha@gmail.com',0),(7,'Lahari sowmya','12345','8099789763','laharisowmya@gmail.com',0),(9,'lahari','12345','8099789763','lahari@gmail.com',0),(10,'Yashu','12345','1234567890','yashu@gmail.co',0),(11,'Yashu','','1234567890','yashu@gmail.co',0);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `random`
--

DROP TABLE IF EXISTS `random`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `random` (
  `ranid` int(11) NOT NULL AUTO_INCREMENT,
  `rankey` int(10) NOT NULL,
  `ranuser` int(10) NOT NULL,
  `ranauthor` int(10) NOT NULL,
  PRIMARY KEY (`ranid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `random`
--

LOCK TABLES `random` WRITE;
/*!40000 ALTER TABLE `random` DISABLE KEYS */;
INSERT INTO `random` VALUES (1,0,0,0),(2,0,0,0),(3,0,0,0),(4,3287,0,0),(5,2112,0,0),(6,1544,0,0),(7,2057,0,0),(8,5536,0,0),(9,9701,0,0),(10,3494,0,0),(11,5893,0,0),(12,3386,0,0),(13,2254,0,0),(14,5331,0,0),(15,1019,0,0),(16,1560,0,0);
/*!40000 ALTER TABLE `random` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `raisedby` varchar(30) NOT NULL,
  `raisedfor` varchar(30) NOT NULL,
  `uid` int(11) NOT NULL,
  `atitle` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `rflag` int(11) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,'sravan','navya',1,'Logistic Regression within DBMS','hi Mam i am interested in you articel could you please share the details of the article.',1,0),(2,'Kumar','navya',2,'Logistic Regression within DBMS','HI mam i need this article',1,0),(3,'sruta','mounica',3,'Automatic Sentiment Detection in Naturalistic Audio','hello mam can you please foreard me the paper',1,0),(4,'sruta','mounica',3,'Automatic Sentiment Detection in Naturalistic Audio','Hi mam can you please send me the paper',2,0),(5,'sruta','mounica',3,'Mining Top-k Co-occurrence Patterns across Multiple Streams:','HI mam, Could you please share me your article.',1,0),(6,'sruta','mounica',3,'An Efficient Analysis of Web Server Log Files','hey could you ple provide me the data',2,0),(7,'lahari','manisha',4,'silent sound technology','hi could you please  share your article',1,0),(8,'manikantha','',5,'silent sound technology','hii could you plz share ur article',1,0),(9,'manikantha','',5,'silent sound technology','hi could you plz share your article',2,0),(10,'lahari','',4,'silent sound technology','hi could you plz share your article',1,0),(11,'lahari','manisha',4,'silent sound technology','hi could you plz share your article',0,0),(12,'lahari','manisha',4,'silent sound technology','hi could you plz share your article..',0,0),(13,'lahari','ramu',4,'connecting teachers and parents','hii could you plz share your article',1,0),(14,'manikantha','manisha',5,'silent sound technology','bhjghghjvhfvt',0,0),(15,'lahari','venu',4,'Big Scholarly Data A Survey','Sir,\r\nwould you please let me go through your paper regarding  Big Data .',0,0),(16,'MKV','Yashu',6,'Finger Reader','Mam,\r\ncould you please let me go through your  paper regarding Finger Recognition.',1,0),(17,'MKV','Yashu',6,'Finger Reader','send ur paper\r\n',2,0);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `uflag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sravan','sravan','9704156948','sraban@gmail.com',0),(2,'Kumar','kumar','9704156958','kumar@gmail.com',0),(3,'sruta','sruta','9963131819','sruta@gmail.com',0),(4,'lahari','12345','8099789763','lahari@gmail.com',0),(5,'manikantha','12345','9491891526','manikanthadesu@gmail.com',0),(6,'MKV','12345','0123456789','mkv@gmail.com',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-16  6:59:52
