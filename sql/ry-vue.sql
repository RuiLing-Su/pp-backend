-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: ry-vue
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'tb_category','菜品及套餐分类',NULL,NULL,'Category','crud','element-plus','com.pp.category','category','category','菜品及套餐分类','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-08-27 22:26:28','','2024-08-27 22:42:48',NULL),(2,'tb_dish','菜品管理','tb_dish_flavor','dish_id','Dish','sub','element-plus','com.pp.dish','dish','dish','菜品管理','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-08-27 22:26:28','','2024-08-27 22:42:17',NULL),(3,'tb_dish_flavor','菜品口味关系表',NULL,NULL,'DishFlavor','crud','element-plus','com.pp.flavor','flavor','flavor','菜品口味关系','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-08-27 22:26:28','','2024-08-27 22:34:43',NULL),(4,'tb_setmeal','套餐','tb_setmeal_dish','setmeal_id','Setmeal','sub','element-plus','com.pp.setmeal','setmeal','setmeal','套餐','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-08-28 17:15:33','','2024-08-28 17:25:54',NULL),(5,'tb_setmeal_dish','套餐菜品关系',NULL,NULL,'SetmealDish','crud','element-plus','com.pp.system','system','dish','套餐菜品关系','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-08-28 17:15:34','','2024-09-01 11:26:15',NULL),(6,'tb_order_detail','订单明细表',NULL,NULL,'OrderDetail','crud','element-plus','com.pp.orderDetail','orderDetail','orderDetail','订单明细','SuRL','0','/','{\"parentMenuId\":\"\"}','admin','2024-09-02 14:26:47','','2024-09-02 14:27:54',NULL),(7,'tb_orders','订单表','tb_order_detail','order_id','Orders','sub','element-plus','com.pp.orders','orders','orders','订单','SuRL','0','/','{\"parentMenuId\":\"2018\"}','admin','2024-09-02 14:26:47','','2024-09-02 14:38:13',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,1,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(2,1,'type','分类类型   0菜品分类 1 套餐分类','int','Long','type','0','0','1','1','1','1','1','EQ','radio','category_type',2,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(3,1,'name','分类名称','varchar(64)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(4,1,'sort','顺序','int','Long','sort','0','0','0','1','1','1','0','EQ','input','',4,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(5,1,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',5,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(6,1,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',6,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:48'),(7,2,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(8,2,'name','菜品名称','varchar(32)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(9,2,'price','菜品价格','decimal(10,2)','BigDecimal','price','0','0','1','1','1','1','0','EQ','input','',4,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(10,2,'image','图片','varchar(255)','String','image','0','0','1','1','1','1','0','EQ','imageUpload','',5,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(11,2,'description','描述信息','varchar(255)','String','description','0','0','1','1','1','0','0','EQ','input','',6,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(12,2,'status','售卖状态','int','Long','status','0','0','1','1','1','1','1','EQ','radio','seal_system',7,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(13,2,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(14,2,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',9,'admin','2024-08-27 22:26:28','','2024-08-27 22:42:17'),(15,3,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-27 22:26:28','','2024-08-27 22:34:43'),(16,3,'dish_id','菜品','bigint','Long','dishId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-08-27 22:26:28','','2024-08-27 22:34:43'),(17,3,'name','口味名称','varchar(32)','String','name','0','0','0','1','1','1','1','LIKE','input','',3,'admin','2024-08-27 22:26:28','','2024-08-27 22:34:43'),(18,3,'value','口味列表','varchar(255)','String','value','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-08-27 22:26:28','','2024-08-27 22:34:43'),(19,2,'categoryId','分类名称','bigint','Long','categoryId','0','0','1','1','1','1','1','EQ','select','',3,'','2024-08-27 22:31:42','','2024-08-27 22:42:17'),(20,4,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(21,4,'category_id','套餐分类','bigint','Long','categoryId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(22,4,'name','套餐名称','varchar(64)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(23,4,'price','套餐价格','decimal(10,2)','BigDecimal','price','0','0','1','1','1','1','1','EQ','input','',4,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(24,4,'status','售卖状态','int','Long','status','0','0','1','1','1','1','1','EQ','radio','seal_system',5,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(25,4,'code','编码','varchar(32)','String','code','0','0','0','0','0','0','0','EQ','input','',6,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(26,4,'description','描述信息','varchar(512)','String','description','0','0','0','1','1','0','0','EQ','textarea','',7,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(27,4,'image','图片','varchar(255)','String','image','0','0','0','1','1','1','0','EQ','imageUpload','',8,'admin','2024-08-28 17:15:33','','2024-08-28 17:25:54'),(28,4,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,NULL,NULL,'EQ','datetime','',9,'admin','2024-08-28 17:15:34','','2024-08-28 17:25:54'),(29,4,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',10,'admin','2024-08-28 17:15:34','','2024-08-28 17:25:54'),(33,5,'id','主键','bigint','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(34,5,'setmeal_id','套餐id ','varchar(32)','String','setmealId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(35,5,'dish_id','菜品id','varchar(32)','String','dishId','0','0','1','1','1','1','1','EQ','input','',3,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(36,5,'name','菜品名称 （冗余字段）','varchar(32)','String','name','0','0','0','1','1','1','1','LIKE','input','',4,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(37,5,'price','菜品原价（冗余字段）','decimal(10,2)','BigDecimal','price','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(38,5,'copies','份数','int','Long','copies','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(39,5,'sort','排序','int','Long','sort','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(40,5,'create_time','创建时间','datetime','Date','createTime','0','0','0','1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(41,5,'update_time','更新时间','datetime','Date','updateTime','0','0','0','1','1',NULL,NULL,'EQ','datetime','',9,'admin','2024-08-28 17:15:34','','2024-09-01 11:26:15'),(45,6,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(46,6,'name','名字','varchar(50)','String','name','0','0','0','1','1','1','1','LIKE','input','',2,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(47,6,'image','图片','varchar(100)','String','image','0','0','0','1','1','1','1','EQ','imageUpload','',3,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(48,6,'order_id','订单id','bigint','Long','orderId','0','0','1','1','1','1','1','EQ','input','',4,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(49,6,'dish_id','菜品id','bigint','Long','dishId','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(50,6,'setmeal_id','套餐id','bigint','Long','setmealId','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(51,6,'dish_flavor','口味','varchar(50)','String','dishFlavor','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(52,6,'number','数量','int','Long','number','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(53,6,'amount','金额','decimal(10,2)','BigDecimal','amount','0','0','0','1','1','1','1','EQ','input','',9,'admin','2024-09-02 14:26:47','','2024-09-02 14:27:54'),(54,7,'table_no','餐桌号','int','Long','tableNo','0','0','0','0','0','1','0','EQ','input','',1,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(55,7,'id','主键','bigint','Long','id','1','1','0','0',NULL,NULL,NULL,'EQ','input','',2,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(56,7,'number','订单号','varchar(50)','String','number','0','0','0','0','0','1','1','EQ','input','',3,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(57,7,'status','订单状态 1待付款，2待派送，3已派送，4已完成，5已取消','int','Long','status','0','0','0','0','0','1','1','EQ','radio','order_system',4,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(58,7,'user_id','下单用户','bigint','Long','userId','0','0','0','0','0','0','0','EQ','input','',5,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(59,7,'order_time','下单时间','datetime','Date','orderTime','0','0','0','0','0','0','1','BETWEEN','datetime','',6,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(60,7,'checkout_time','结账时间','datetime','Date','checkoutTime','0','0','0','0','0','1','0','EQ','datetime','',7,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(61,7,'pay_method','支付方式 1微信,2支付宝','int','Long','payMethod','0','0','0','0','0','0','0','EQ','input','',8,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(62,7,'amount','实收金额','decimal(10,2)','BigDecimal','amount','0','0','0','0','0','1','0','EQ','input','',9,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(63,7,'remark','备注','varchar(100)','String','remark','0','0','0','0','0','0',NULL,'EQ','input','',10,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13'),(64,7,'phone','用户手机号','varchar(255)','String','phone','0','0','0','0','0','1','0','EQ','input','',11,'admin','2024-09-02 14:26:47','','2024-09-02 14:38:13');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-08-21 09:49:19','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-08-21 09:49:19','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-08-21 09:49:19','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-08-21 09:49:19','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2024-08-21 09:49:19','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-08-21 09:49:19','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-08-21 09:49:19','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-08-21 09:49:19','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-08-21 09:49:19','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-08-21 09:49:19','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-08-21 09:49:19','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-08-21 09:49:19','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-08-21 09:49:19','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-08-21 09:49:19','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-08-21 09:49:19','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-08-21 09:49:19','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-08-21 09:49:19','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-08-21 09:49:19','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-08-21 09:49:19','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-08-21 09:49:19','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-08-21 09:49:19','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-08-21 09:49:19','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-08-21 09:49:19','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-08-21 09:49:19','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-08-21 09:49:19','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-08-21 09:49:19','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-08-21 09:49:19','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-08-21 09:49:19','',NULL,'停用状态'),(100,1,'菜品分类','0','category_type',NULL,'default','N','0','admin','2024-08-27 22:38:58','',NULL,NULL),(101,2,'套餐分类','1','category_type',NULL,'default','N','0','admin','2024-08-27 22:39:30','',NULL,NULL),(102,1,'启售','1','seal_system',NULL,'success','N','0','admin','2024-08-27 22:40:49','',NULL,NULL),(103,2,'停售','0','seal_system',NULL,'danger','N','0','admin','2024-08-27 22:41:23','',NULL,NULL),(104,1,'待付款','1','order_system',NULL,'default','N','0','admin','2024-09-02 14:36:00','',NULL,NULL),(105,2,'待派送','2','order_system',NULL,'default','N','0','admin','2024-09-02 14:36:15','',NULL,NULL),(106,3,'已派送','3','order_system',NULL,'default','N','0','admin','2024-09-02 14:36:28','',NULL,NULL),(107,4,'已完成','4','order_system',NULL,'default','N','0','admin','2024-09-02 14:36:39','',NULL,NULL),(108,5,'已取消','5','order_system',NULL,'default','N','0','admin','2024-09-02 14:36:51','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2024-08-21 09:49:19','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2024-08-21 09:49:19','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2024-08-21 09:49:19','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2024-08-21 09:49:19','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2024-08-21 09:49:19','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2024-08-21 09:49:19','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2024-08-21 09:49:19','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2024-08-21 09:49:19','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2024-08-21 09:49:19','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2024-08-21 09:49:19','',NULL,'登录状态列表'),(100,'分类类型','category_type','0','admin','2024-08-27 22:36:44','',NULL,'0 菜品分类 1 套餐分类'),(101,'售卖状态','seal_system','0','admin','2024-08-27 22:37:58','',NULL,NULL),(102,'订单状态','order_system','0','admin','2024-09-02 14:33:29','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-08-21 09:49:19','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-08-21 09:49:19','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-08-21 09:49:19','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb3 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-21 10:10:07'),(115,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-22 13:26:37'),(116,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-22 14:35:35'),(151,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 09:01:57'),(153,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 11:07:27'),(154,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 12:26:16'),(165,'admin','127.0.0.1','内网IP','Firefox 12','Windows 10','1','验证码错误','2024-08-26 11:56:47'),(166,'admin','127.0.0.1','内网IP','Firefox 12','Windows 10','0','登录成功','2024-08-26 11:56:51'),(167,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 16:19:34'),(168,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 17:25:17'),(169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-26 19:13:10'),(170,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 19:13:15'),(171,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-27 22:26:04'),(172,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 09:31:36'),(173,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 10:24:02'),(174,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-28 10:24:42'),(175,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-08-28 10:29:27'),(176,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-28 10:37:58'),(177,'admin1','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-28 10:39:01'),(178,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 10:39:13'),(179,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 12:08:29'),(180,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 13:00:32'),(181,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 16:12:34'),(182,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 17:15:24'),(183,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-28 19:57:12'),(184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-28 19:57:18'),(185,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 19:57:24'),(186,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 22:13:46'),(187,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 09:45:48'),(188,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 10:19:47'),(189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 13:52:55'),(190,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 14:31:18'),(191,'admin','127.0.0.1','内网IP','Firefox 12','Windows 10','0','登录成功','2024-08-29 14:48:52'),(192,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 15:50:58'),(193,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 18:05:33'),(194,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 18:45:25'),(195,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 19:59:31'),(196,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-29 21:37:28'),(197,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 08:55:58'),(198,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 08:56:02'),(199,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 10:14:45'),(200,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 10:53:12'),(201,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 15:17:54'),(202,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 15:17:57'),(203,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 15:48:11'),(204,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 18:57:58'),(205,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 10:13:00'),(206,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 10:14:12'),(207,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 10:16:12'),(208,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 20:45:57'),(209,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 20:46:07'),(210,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 09:43:42'),(211,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 09:43:45'),(212,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 11:07:05'),(213,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 20:27:05'),(214,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 13:56:07'),(215,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 13:56:12'),(216,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 14:26:28'),(217,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 14:34:54'),(218,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 15:58:38'),(219,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 19:08:00'),(220,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 19:31:30'),(221,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 20:19:09'),(222,'admin','127.0.0.1','内网IP','Firefox 13','Windows 10','0','登录成功','2024-09-07 14:17:03'),(223,'admin','127.0.0.1','内网IP','Firefox 13','Windows 10','0','退出成功','2024-09-07 14:17:14'),(224,'admin','192.168.186.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-07 18:48:26'),(225,'admin','192.168.186.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-07 20:56:39'),(226,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-07 21:43:01'),(227,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-07 22:22:13'),(228,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-08 13:24:38');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2026 DEFAULT CHARSET=utf8mb3 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'','',1,0,'M','0','0','','system','admin','2024-08-21 09:49:19','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2024-08-21 09:49:19','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2024-08-21 09:49:19','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,'','',0,0,'M','0','0','','guide','admin','2024-08-21 09:49:19','',NULL,'若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2024-08-21 09:49:19','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2024-08-21 09:49:19','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-08-21 09:49:19','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2024-08-21 09:49:19','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2024-08-21 09:49:19','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2024-08-21 09:49:19','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2024-08-21 09:49:19','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','0','0','system:notice:list','message','admin','2024-08-21 09:49:19','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2024-08-21 09:49:19','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2024-08-21 09:49:19','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','0','0','monitor:job:list','job','admin','2024-08-21 09:49:19','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','0','0','monitor:druid:list','druid','admin','2024-08-21 09:49:19','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','0','0','monitor:server:list','server','admin','2024-08-21 09:49:19','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2024-08-21 09:49:19','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2024-08-21 09:49:19','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2024-08-21 09:49:19','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2024-08-21 09:49:19','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-08-21 09:49:19','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-08-21 09:49:19','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-08-21 09:49:19','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2024-08-21 09:49:19','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-08-21 09:49:19','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-08-21 09:49:19','',NULL,''),(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2024-08-21 09:49:19','',NULL,''),(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2024-08-21 09:49:19','',NULL,''),(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2024-08-21 09:49:19','',NULL,''),(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2024-08-21 09:49:19','',NULL,''),(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2024-08-21 09:49:19','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2024-08-21 09:49:19','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2024-08-21 09:49:19','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2024-08-21 09:49:19','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2024-08-21 09:49:19','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2024-08-21 09:49:19','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2024-08-21 09:49:19','',NULL,''),(2000,'菜品管理',2018,1,'dish','dish/dish/index',NULL,'',1,0,'C','0','0','dish:dish:list','select','admin','2024-08-27 22:43:52','admin','2024-08-29 10:38:19','菜品管理菜单'),(2001,'菜品管理查询',2000,1,'#','',NULL,'',1,0,'F','0','0','dish:dish:query','#','admin','2024-08-27 22:43:52','',NULL,''),(2002,'菜品管理新增',2000,2,'#','',NULL,'',1,0,'F','0','0','dish:dish:add','#','admin','2024-08-27 22:43:52','',NULL,''),(2003,'菜品管理修改',2000,3,'#','',NULL,'',1,0,'F','0','0','dish:dish:edit','#','admin','2024-08-27 22:43:52','',NULL,''),(2004,'菜品管理删除',2000,4,'#','',NULL,'',1,0,'F','0','0','dish:dish:remove','#','admin','2024-08-27 22:43:52','',NULL,''),(2005,'菜品管理导出',2000,5,'#','',NULL,'',1,0,'F','0','0','dish:dish:export','#','admin','2024-08-27 22:43:52','',NULL,''),(2006,'菜品及套餐分类',2018,2,'category','category/category/index',NULL,'',1,0,'C','0','0','category:category:list','select','admin','2024-08-27 22:43:56','admin','2024-08-29 10:38:45','菜品及套餐分类菜单'),(2007,'菜品及套餐分类查询',2006,1,'#','',NULL,'',1,0,'F','0','0','category:category:query','#','admin','2024-08-27 22:43:56','',NULL,''),(2008,'菜品及套餐分类新增',2006,2,'#','',NULL,'',1,0,'F','0','0','category:category:add','#','admin','2024-08-27 22:43:56','',NULL,''),(2009,'菜品及套餐分类修改',2006,3,'#','',NULL,'',1,0,'F','0','0','category:category:edit','#','admin','2024-08-27 22:43:56','',NULL,''),(2010,'菜品及套餐分类删除',2006,4,'#','',NULL,'',1,0,'F','0','0','category:category:remove','#','admin','2024-08-27 22:43:56','',NULL,''),(2011,'菜品及套餐分类导出',2006,5,'#','',NULL,'',1,0,'F','0','0','category:category:export','#','admin','2024-08-27 22:43:56','',NULL,''),(2012,'套餐',2018,3,'setmeal','setmeal/setmeal/index',NULL,'',1,0,'C','0','0','setmeal:setmeal:list','select','admin','2024-08-28 17:28:36','admin','2024-08-29 10:39:09','套餐菜单'),(2013,'套餐查询',2012,1,'#','',NULL,'',1,0,'F','0','0','setmeal:setmeal:query','#','admin','2024-08-28 17:28:36','',NULL,''),(2014,'套餐新增',2012,2,'/setmeal/add','setmeal/setmeal/add',NULL,'',1,0,'C','0','0','setmeal:setmeal:add','#','admin','2024-08-28 17:28:36','admin','2024-08-29 11:12:23',''),(2015,'套餐修改',2012,3,'/setmeal/add','setmeal/setmeal/add',NULL,'',1,0,'C','0','0','setmeal:setmeal:edit','#','admin','2024-08-28 17:28:36','admin','2024-08-29 11:14:43',''),(2016,'套餐删除',2012,4,'#','',NULL,'',1,0,'F','0','0','setmeal:setmeal:remove','#','admin','2024-08-28 17:28:36','',NULL,''),(2017,'套餐导出',2012,5,'#','',NULL,'',1,0,'F','0','0','setmeal:setmeal:export','#','admin','2024-08-28 17:28:36','',NULL,''),(2018,'海上捞管理端',0,1,'hotpotOrder',NULL,NULL,'',1,0,'M','0','0','','qq','admin','2024-08-29 10:37:39','admin','2024-08-29 10:53:30',''),(2020,'订单',2018,1,'orders','orders/orders/index',NULL,'',1,0,'C','0','0','orders:orders:list','checkbox','admin','2024-09-02 14:39:13','admin','2024-09-07 18:49:24','订单菜单'),(2021,'订单查询',2020,1,'#','',NULL,'',1,0,'F','0','0','orders:orders:query','#','admin','2024-09-02 14:39:13','',NULL,''),(2022,'订单新增',2020,2,'#','',NULL,'',1,0,'F','0','0','orders:orders:add','#','admin','2024-09-02 14:39:13','',NULL,''),(2023,'订单修改',2020,3,'#','',NULL,'',1,0,'F','0','0','orders:orders:edit','#','admin','2024-09-02 14:39:13','',NULL,''),(2024,'订单删除',2020,4,'#','',NULL,'',1,0,'F','0','0','orders:orders:remove','#','admin','2024-09-02 14:39:13','',NULL,''),(2025,'订单导出',2020,5,'#','',NULL,'',1,0,'F','0','0','orders:orders:export','#','admin','2024-09-02 14:39:13','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2024-08-21 09:49:19','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2024-08-21 09:49:19','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8mb3 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (237,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"course\"}',NULL,0,NULL,'2024-08-22 14:36:06',596),(238,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"course\"}',NULL,0,NULL,'2024-08-22 14:36:20',68),(239,'代码生成',6,'com.pp.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_category,tb_dish,tb_dish_flavor\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:26:28',228),(240,'代码生成',2,'com.pp.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/tb_dish','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:31:42',65),(241,'代码生成',2,'com.pp.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/tb_category','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:31:45',50),(242,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":7,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:31:42\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":8,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:31:42\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"分类名称\",\"columnId\":19,\"columnName\":\"categoryId\",\"columnType\":\"bigint\",\"createBy\":\"\",\"createTime\":\"2024-08-27 22:31:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"菜品价格\",\"columnId\":9,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"is','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:34:03',94),(243,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"flavor\",\"className\":\"DishFlavor\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":15,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DishId\",\"columnComment\":\"菜品\",\"columnId\":16,\"columnName\":\"dish_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dishId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"口味名称\",\"columnId\":17,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Value\",\"columnComment\":\"口味列表\",\"columnId\":18,\"columnName\":\"value\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"value\",\"javaType\":\"String\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:34:43',33),(244,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"category\",\"className\":\"Category\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:31:44\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"分类类型   0菜品分类 1 套餐分类\",\"columnId\":2,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:31:44\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"分类名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:31:44\",\"usableColumn\":false},{\"capJavaField\":\"Sort\",\"columnComment\":\"顺序\",\"columnId\":4,\"columnName\":\"sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:35:44',22),(245,'字典类型',1,'com.pp.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"分类类型\",\"dictType\":\"category_type\",\"params\":{},\"remark\":\"0 菜品分类 1 套餐分类\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:36:44',16),(246,'字典类型',1,'com.pp.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"售卖状态\",\"dictType\":\"seal_system\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:37:58',16),(247,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"菜品分类\",\"dictSort\":1,\"dictType\":\"category_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:38:58',15),(248,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"套餐分类\",\"dictSort\":2,\"dictType\":\"category_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:39:30',0),(249,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"启售\",\"dictSort\":1,\"dictType\":\"seal_system\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:40:49',16),(250,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"停售\",\"dictSort\":2,\"dictType\":\"seal_system\",\"dictValue\":\"0\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:41:23',3),(251,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"Dish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":7,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:34:03\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称\",\"columnId\":8,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:34:03\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"分类名称\",\"columnId\":19,\"columnName\":\"categoryId\",\"columnType\":\"bigint\",\"createBy\":\"\",\"createTime\":\"2024-08-27 22:31:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:34:03\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"菜品价格\",\"columnId\":9,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:42:17',48),(252,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"category\",\"className\":\"Category\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:35:44\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"分类类型   0菜品分类 1 套餐分类\",\"columnId\":2,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"category_type\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:35:44\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"分类名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-08-27 22:35:44\",\"usableColumn\":false},{\"capJavaField\":\"Sort\",\"columnComment\":\"顺序\",\"columnId\":4,\"columnName\":\"sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-27 22:26:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"is','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:42:48',32),(253,'代码生成',8,'com.pp.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_category,tb_dish\"}',NULL,0,NULL,'2024-08-27 22:43:00',649),(254,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2023-04-13 22:48:57\",\"description\":\"宽粉\",\"dishFlavorList\":[],\"id\":80,\"image\":\"https://sky-heima.oss-cn-beijing.aliyuncs.com/images/2023/04/13/1681397331911-宽粉.jpg\",\"name\":\"宽粉\",\"params\":{},\"price\":8,\"status\":0,\"updateTime\":\"2024-08-27 22:44:44\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:44:45',33),(255,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-02-16 09:50:06\",\"description\":\"2斤重 波斯顿龙虾\",\"dishFlavorList\":[{\"dishId\":75,\"id\":140,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"},{\"dishId\":75,\"id\":141,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":75,\"image\":\"https://sky-heima.oss-cn-beijing.aliyuncs.com/images/2023/04/13/1681396948811-5b8d2da3-3744-4bb3-acdc-329056b8259d.jpeg\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"status\":1,\"updateTime\":\"2024-08-27 22:44:53\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-27 22:44:53',17),(256,'代码生成',6,'com.pp.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_setmeal_dish,tb_setmeal\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 17:15:34',315),(257,'代码生成',2,'com.pp.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/tb_setmeal_dish','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 17:16:29',82),(258,'代码生成',2,'com.pp.generator.controller.GenController.synchDb()','GET',1,'admin','研发部门','/tool/gen/synchDb/tb_setmeal','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 17:16:31',67),(259,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"setmeal\",\"className\":\"Setmeal\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:31\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"套餐分类\",\"columnId\":21,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:31\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"套餐名称\",\"columnId\":22,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:31\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"套餐价格\",\"columnId\":23,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncremen','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 17:25:54',97),(260,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"SetmealDish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:29\",\"usableColumn\":false},{\"capJavaField\":\"SetmealId\",\"columnComment\":\"套餐id \",\"columnId\":34,\"columnName\":\"setmeal_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"setmealId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:29\",\"usableColumn\":false},{\"capJavaField\":\"DishId\",\"columnComment\":\"菜品id\",\"columnId\":35,\"columnName\":\"dish_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dishId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:16:29\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称 （冗余字段）\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 17:27:13',50),(261,'代码生成',8,'com.pp.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_setmeal\"}',NULL,0,NULL,'2024-08-28 17:27:28',667),(262,'菜品及套餐分类',1,'com.pp.category.controller.CategoryController.add()','POST',1,'admin','研发部门','/category/category','127.0.0.1','内网IP','{\"createTime\":\"2024-08-28 18:01:11\",\"id\":16,\"name\":\"test_setmeal\",\"params\":{},\"sort\":10,\"type\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 18:01:11',68),(263,'菜品及套餐分类',2,'com.pp.category.controller.CategoryController.edit()','PUT',1,'admin','研发部门','/category/category','127.0.0.1','内网IP','{\"createTime\":\"2024-08-28 18:01:11\",\"id\":16,\"name\":\"test_setmeal\",\"params\":{},\"sort\":10,\"type\":1,\"updateTime\":\"2024-08-28 18:01:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 18:01:41',19),(264,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"createTime\":\"2022-12-25 09:44:30\",\"dishId\":\"30\",\"id\":16,\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\",\"sort\":0,\"updateTime\":\"2022-12-25 09:44:30\"}],\"status\":1,\"updateTime\":\"2024-08-28 18:14:33\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 18:14:33',83),(265,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":16,\"createTime\":\"2024-08-28 18:24:06\",\"id\":2,\"image\":\"/profile/upload/2024/08/28/c1a30a42-51f1-476d-b3cd-312803ce0695_20240828182358A001.jpg\",\"name\":\"test11\",\"params\":{},\"price\":39.9,\"setmealDishList\":[{\"dishId\":\"\",\"name\":\"\",\"params\":{},\"setmealId\":\"2\"}],\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-28 18:24:06',17),(266,'菜单管理',1,'com.pp.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"qq\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"海上捞管理端\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"hotpotOrder\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:37:39',55),(267,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"dish/dish/index\",\"createTime\":\"2024-08-27 22:43:52\",\"icon\":\"select\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"菜品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"dish\",\"perms\":\"dish:dish:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:38:19',13),(268,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"category/category/index\",\"createTime\":\"2024-08-27 22:43:56\",\"icon\":\"select\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"菜品及套餐分类\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2018,\"path\":\"category\",\"perms\":\"category:category:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:38:45',20),(269,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/index\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"select\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"套餐\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":3,\"path\":\"setmeal\",\"perms\":\"setmeal:setmeal:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:38:55',15),(270,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/index\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"select\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"套餐\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2018,\"path\":\"setmeal\",\"perms\":\"setmeal:setmeal:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:39:09',24),(271,'菜单管理',1,'com.pp.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/add\",\"createBy\":\"admin\",\"icon\":\"drag\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增/修改套餐菜品\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"setmeal\",\"perms\":\"setmeal:setmeal:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:47:57',18),(272,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"套餐新增\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"#\",\"perms\":\"setmeal:setmeal:add\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:48:36',13),(273,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"套餐新增\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"#\",\"perms\":\"setmeal:setmeal:add\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:50:07',11),(274,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-08-29 10:37:39\",\"icon\":\"qq\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"海上捞管理端\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"hotpotOrder\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:53:30',18),(275,'角色管理',2,'com.pp.web.controller.system.SysRoleController.edit()','PUT',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-08-21 09:49:19\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2018,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2019,2015,2016,2017,4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:56:15',83),(276,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/add\",\"createTime\":\"2024-08-29 10:47:57\",\"icon\":\"drag\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"新增/修改套餐菜品\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"setmeal\",\"perms\":\"setmeal:setmeal:add\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 10:57:52',14),(277,'菜单管理',3,'com.pp.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2019','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-08-29 11:09:08',11),(278,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/add\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"套餐新增\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"/setmeal/add\",\"perms\":\"setmeal:setmeal:add\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 11:12:23',13),(279,'菜单管理',3,'com.pp.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2019','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-08-29 11:12:39',7),(280,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"setmeal/setmeal/add\",\"createTime\":\"2024-08-28 17:28:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"套餐修改\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"/setmeal/add\",\"perms\":\"setmeal:setmeal:edit\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-29 11:14:43',10),(281,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:25:47\",\"description\":\"\",\"dishFlavorList\":[],\"id\":119,\"image\":\"5f80d3b2-2f72-4820-9310-0b154baf0717.jpg\",\"name\":\"羊肉卷\",\"params\":{},\"price\":49,\"status\":1,\"updateTime\":\"2024-08-31 10:14:50\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 10:14:50',56),(282,'菜品及套餐分类',2,'com.pp.category.controller.CategoryController.edit()','PUT',1,'admin','研发部门','/category/category','127.0.0.1','内网IP','{\"createTime\":\"2021-07-09 11:36:15\",\"id\":3,\"name\":\"素食\",\"params\":{},\"sort\":4,\"type\":0,\"updateTime\":\"2024-08-31 10:15:02\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 10:15:02',6),(283,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-04-13 23:14:12\",\"description\":\"干锅牛蛙\",\"dishFlavorList\":[],\"id\":30,\"image\":\"/profile/upload/2024/08/31/36fbf3e8-a0eb-43c9-afac-57c35faa46f0_20240826210937A008_20240831211833A001.jpg\",\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"status\":1,\"updateTime\":\"2024-08-31 21:18:40\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:18:40',145),(284,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-06-10 09:34:28\",\"description\":\"优质面粉\",\"dishFlavorList\":[],\"id\":50,\"image\":\"https://sky-heima.oss-cn-beijing.aliyuncs.com/images/2023/04/14/1681436083461-馒头.jpg\",\"name\":\"馒头\",\"params\":{},\"price\":1,\"status\":1,\"updateTime\":\"2024-08-31 21:18:56\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:18:56',29),(285,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-06-10 09:34:28\",\"description\":\"优质面粉\",\"dishFlavorList\":[],\"id\":50,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212551A002.png\",\"name\":\"馒头\",\"params\":{},\"price\":1,\"status\":1,\"updateTime\":\"2024-08-31 21:25:53\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:25:54',31),(286,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-02-16 09:48:28\",\"description\":\"新西兰黑金鲍鱼\",\"dishFlavorList\":[{\"dishId\":74,\"id\":142,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\"]\"},{\"dishId\":74,\"id\":143,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\"]\"}],\"id\":74,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212602A003.png\",\"name\":\"黑金鲍鱼\",\"params\":{},\"price\":68,\"status\":1,\"updateTime\":\"2024-08-31 21:26:05\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:05',47),(287,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-02-16 09:50:06\",\"description\":\"2斤重 波斯顿龙虾\",\"dishFlavorList\":[{\"dishId\":75,\"id\":140,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"},{\"dishId\":75,\"id\":141,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":75,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212613A004.png\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"status\":1,\"updateTime\":\"2024-08-31 21:26:17\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:17',31),(288,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-02-16 09:52:30\",\"description\":\"香辣烤乌江鱼3斤\",\"dishFlavorList\":[{\"dishId\":76,\"id\":138,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"},{\"dishId\":76,\"id\":139,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":76,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212623A005.png\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"status\":1,\"updateTime\":\"2024-08-31 21:26:24\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:24',32),(289,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-02-17 15:27:02\",\"description\":\"香辣烤鱼3斤 草鱼\",\"dishFlavorList\":[{\"dishId\":77,\"id\":136,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\",\\\"中辣\\\",\\\"重辣\\\"]\"},{\"dishId\":77,\"id\":137,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":77,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212636A006.png\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"status\":1,\"updateTime\":\"2024-08-31 21:26:39\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:39',34),(290,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2023-04-13 22:48:57\",\"description\":\"宽粉\",\"dishFlavorList\":[],\"id\":80,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212646A007.png\",\"name\":\"宽粉\",\"params\":{},\"price\":8,\"status\":0,\"updateTime\":\"2024-08-31 21:26:47\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:47',28),(291,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:49:21\",\"description\":\"青笋\",\"dishFlavorList\":[],\"id\":81,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212651A008.png\",\"name\":\"青笋\",\"params\":{},\"price\":10,\"status\":1,\"updateTime\":\"2024-08-31 21:26:52\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:26:52',9),(292,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:49:52\",\"description\":\"鲜豆皮\",\"dishFlavorList\":[],\"id\":82,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212700A009.png\",\"name\":\"鲜豆皮\",\"params\":{},\"price\":8,\"status\":1,\"updateTime\":\"2024-08-31 21:27:01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:27:01',33),(293,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:50:26\",\"description\":\"\",\"dishFlavorList\":[],\"id\":83,\"image\":\"/profile/upload/2024/08/31/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240831212706A010.png\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-08-31 21:27:07\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:27:07',28),(294,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:16:52\",\"description\":\"\",\"dishFlavorList\":[],\"id\":104,\"image\":\"/profile/upload/2024/08/31/22e36094-a780-43c4-b731-02fdf6caa42e_20240826211248A015_20240831212729A011.jpg\",\"name\":\"菌菇锅\",\"params\":{},\"price\":59,\"status\":1,\"updateTime\":\"2024-08-31 21:27:33\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:27:33',38),(295,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:17:29\",\"description\":\"\",\"dishFlavorList\":[],\"id\":106,\"image\":\"/profile/upload/2024/08/31/398d4665-7de7-4fab-a5e6-f17199e27efe_20240831212902A012.jpg\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"status\":1,\"updateTime\":\"2024-08-31 21:29:04\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:29:04',27),(296,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:17:10\",\"description\":\"\",\"dishFlavorList\":[],\"id\":105,\"image\":\"/profile/upload/2024/08/31/7f71bc6e-0d34-4bbd-b60f-788142c64aff_20240826211231A014_20240831212913A013.jpg\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"status\":1,\"updateTime\":\"2024-08-31 21:29:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:29:14',17),(297,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:17:10\",\"description\":\"\",\"dishFlavorList\":[],\"id\":105,\"image\":\"/profile/upload/2024/08/31/7f71bc6e-0d34-4bbd-b60f-788142c64aff_20240826211231A014_20240831212913A013.jpg\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"status\":1,\"updateTime\":\"2024-08-31 21:29:20\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:29:20',30),(298,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:17:57\",\"description\":\"\",\"dishFlavorList\":[],\"id\":107,\"image\":\"/profile/upload/2024/08/31/c587667b-3df5-4754-a825-07e69c58b699_20240831212933A014.jpg\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"status\":1,\"updateTime\":\"2024-08-31 21:29:37\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:29:37',27),(299,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:18:29\",\"description\":\"\",\"dishFlavorList\":[],\"id\":108,\"image\":\"/profile/upload/2024/08/31/c587667b-3df5-4754-a825-07e69c58b699_20240831212956A015.jpg\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"status\":1,\"updateTime\":\"2024-08-31 21:30:07\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:30:07',33),(300,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:17:57\",\"description\":\"\",\"dishFlavorList\":[],\"id\":107,\"image\":\"/profile/upload/2024/08/31/7c3bfcb9-2c77-445f-8fd4-f618b7c781bb_20240826211055A011_20240831213016A016.jpg\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"status\":1,\"updateTime\":\"2024-08-31 21:30:17\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:30:17',33),(301,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":1,\"createTime\":\"2022-12-22 13:18:53\",\"description\":\"\",\"dishFlavorList\":[],\"id\":109,\"image\":\"/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg\",\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"status\":1,\"updateTime\":\"2024-08-31 21:30:40\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:30:40',30),(302,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:23:05\",\"description\":\"\",\"dishFlavorList\":[],\"id\":110,\"image\":\"/profile/upload/2024/08/31/b2faa669-8f78-4b94-8d76-d2fc278b4aa6_20240831213057A018.jpg\",\"name\":\"猪脑\",\"params\":{},\"price\":29,\"status\":1,\"updateTime\":\"2024-08-31 21:31:00\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:31:00',26),(303,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":7,\"createTime\":\"2022-12-22 13:33:35\",\"description\":\"\",\"dishFlavorList\":[],\"id\":124,\"image\":\"/profile/upload/2024/08/31/9fd0ae89-0860-421a-b0c0-77a9abd18cb1_20240826212121A021_20240831214442A019.jpg\",\"name\":\"撒尿牛丸\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-08-31 21:44:44\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-08-31 21:44:44',33),(304,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"dish\",\"className\":\"SetmealDish\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":33,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:27:13\",\"usableColumn\":false},{\"capJavaField\":\"SetmealId\",\"columnComment\":\"套餐id \",\"columnId\":34,\"columnName\":\"setmeal_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"setmealId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:27:13\",\"usableColumn\":false},{\"capJavaField\":\"DishId\",\"columnComment\":\"菜品id\",\"columnId\":35,\"columnName\":\"dish_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dishId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-08-28 17:27:13\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"菜品名称 （冗余字段）\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-28 17:15:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 11:26:15',130),(305,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"id\":16,\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-01 15:12:48\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:12:49',335),(306,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"id\":16,\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-01 15:13:04\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:13:04',17),(307,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"id\":105,\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"1\"},{\"copies\":1,\"id\":92,\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"id\":138,\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"setmealId\":\"1\"},{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"1\"},{\"copies\":1,\"id\":75,\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-01 15:13:48\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:13:48',20),(308,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 15:15:49\",\"id\":3,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901151511A006.png\",\"name\":\"ttest\",\"params\":{},\"price\":399,\"setmealDishList\":[{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"3\"},{\"copies\":1,\"id\":109,\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"3\"},{\"copies\":1,\"id\":137,\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"3\"},{\"copies\":1,\"id\":80,\"name\":\"宽粉\",\"params\":{},\"price\":8,\"setmealId\":\"3\"},{\"copies\":1,\"id\":146,\"name\":\"酸梅汁\",\"params\":{},\"price\":18,\"setmealId\":\"3\"},{\"copies\":1,\"id\":143,\"name\":\"蜜桃乌龙\",\"params\":{},\"price\":18,\"setmealId\":\"3\"},{\"copies\":1,\"id\":137,\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"3\"},{\"copies\":1,\"id\":123,\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"3\"},{\"copies\":1,\"id\":124,\"name\":\"撒尿牛丸\",\"params\":{},\"price\":26,\"setmealId\":\"3\"},{\"copies\":1,\"id\":76,\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"3\"},{\"copies\":1,\"id\":75,\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"3\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:15:49',33),(309,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 15:29:17\",\"id\":4,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901151511A006.png\",\"name\":\"ttest\",\"params\":{},\"price\":399,\"setmealDishList\":[{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"4\"},{\"copies\":1,\"id\":109,\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"4\"},{\"copies\":1,\"id\":137,\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"4\"},{\"copies\":1,\"id\":80,\"name\":\"宽粉\",\"params\":{},\"price\":8,\"setmealId\":\"4\"},{\"copies\":1,\"id\":146,\"name\":\"酸梅汁\",\"params\":{},\"price\":18,\"setmealId\":\"4\"},{\"copies\":1,\"id\":143,\"name\":\"蜜桃乌龙\",\"params\":{},\"price\":18,\"setmealId\":\"4\"},{\"copies\":1,\"id\":137,\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"4\"},{\"copies\":1,\"id\":123,\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"4\"},{\"copies\":1,\"id\":124,\"name\":\"撒尿牛丸\",\"params\":{},\"price\":26,\"setmealId\":\"4\"},{\"copies\":1,\"id\":76,\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"4\"},{\"copies\":1,\"id\":75,\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"4\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:29:18',20),(310,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 15:30:03\",\"id\":5,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901152949A007.png\",\"name\":\"tts\",\"params\":{},\"price\":299,\"setmealDishList\":[{\"copies\":1,\"id\":106,\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"5\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"5\"},{\"copies\":1,\"id\":109,\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"5\"},{\"copies\":1,\"id\":96,\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"5\"},{\"copies\":1,\"id\":87,\"name\":\"重庆辣子鸡\",\"params\":{},\"price\":48,\"setmealId\":\"5\"},{\"copies\":1,\"id\":113,\"name\":\"乌鸡卷\",\"params\":{},\"price\":28,\"setmealId\":\"5\"},{\"copies\":1,\"id\":138,\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"setmealId\":\"5\"},{\"copies\":1,\"id\":92,\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"5\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:30:03',21),(311,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 15:43:24\",\"id\":6,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901154314A008.png\",\"name\":\"ss\",\"params\":{},\"price\":388,\"setmealDishList\":[{\"copies\":1,\"id\":109,\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"6\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"6\"},{\"copies\":1,\"id\":106,\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"6\"},{\"copies\":1,\"id\":95,\"name\":\"干锅鸡胗\",\"params\":{},\"price\":38,\"setmealId\":\"6\"},{\"copies\":1,\"id\":96,\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"6\"},{\"copies\":1,\"id\":112,\"name\":\"午餐肉\",\"params\":{},\"price\":26,\"setmealId\":\"6\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:43:24',19),(312,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 15:43:29\",\"id\":7,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901154314A008.png\",\"name\":\"ss\",\"params\":{},\"price\":388,\"setmealDishList\":[{\"copies\":1,\"id\":109,\"name\":\"牛油番茄双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"7\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"7\"},{\"copies\":1,\"id\":106,\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"7\"},{\"copies\":1,\"id\":95,\"name\":\"干锅鸡胗\",\"params\":{},\"price\":38,\"setmealId\":\"7\"},{\"copies\":1,\"id\":96,\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"7\"},{\"copies\":1,\"id\":112,\"name\":\"午餐肉\",\"params\":{},\"price\":26,\"setmealId\":\"7\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:43:29',16),(313,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":16,\"createTime\":\"2024-09-01 15:44:45\",\"id\":8,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901154430A009.png\",\"name\":\"ss\",\"params\":{},\"price\":388,\"setmealDishList\":[{\"copies\":1,\"id\":105,\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"8\"},{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"8\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"8\"},{\"copies\":1,\"id\":84,\"name\":\"土豆片\",\"params\":{},\"price\":6,\"setmealId\":\"8\"},{\"copies\":1,\"id\":90,\"name\":\"果仁菠菜\",\"params\":{},\"price\":18,\"setmealId\":\"8\"},{\"copies\":1,\"id\":89,\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"8\"},{\"copies\":1,\"id\":139,\"name\":\"小酥肉\",\"params\":{},\"price\":28,\"setmealId\":\"8\"},{\"copies\":1,\"id\":92,\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"8\"},{\"copies\":1,\"id\":124,\"name\":\"撒尿牛丸\",\"params\":{},\"price\":26,\"setmealId\":\"8\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 15:44:45',17),(314,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:03:33\",\"id\":9,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160332A010.png\",\"name\":\"ww\",\"params\":{},\"price\":666,\"setmealDishList\":[{\"copies\":1,\"id\":106,\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"9\"},{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"9\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"9\"},{\"copies\":1,\"id\":88,\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"setmealId\":\"9\"},{\"copies\":1,\"id\":95,\"name\":\"干锅鸡胗\",\"params\":{},\"price\":38,\"setmealId\":\"9\"},{\"copies\":1,\"id\":84,\"name\":\"土豆片\",\"params\":{},\"price\":6,\"setmealId\":\"9\"},{\"copies\":1,\"id\":89,\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"9\"},{\"copies\":1,\"id\":91,\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"9\"},{\"copies\":1,\"id\":123,\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"9\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 16:03:33',22),(315,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:03:58\",\"id\":10,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160332A010.png\",\"name\":\"ww\",\"params\":{},\"price\":666,\"setmealDishList\":[{\"copies\":1,\"id\":106,\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"10\"},{\"copies\":1,\"id\":107,\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"10\"},{\"copies\":1,\"id\":108,\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"10\"},{\"copies\":1,\"id\":88,\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"setmealId\":\"10\"},{\"copies\":1,\"id\":95,\"name\":\"干锅鸡胗\",\"params\":{},\"price\":38,\"setmealId\":\"10\"},{\"copies\":1,\"id\":84,\"name\":\"土豆片\",\"params\":{},\"price\":6,\"setmealId\":\"10\"},{\"copies\":1,\"id\":89,\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"10\"},{\"copies\":1,\"id\":91,\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"10\"},{\"copies\":1,\"id\":123,\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"10\"}],\"status\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null\n; Column \'dish_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'dish_id\' cannot be null','2024-09-01 16:03:58',12),(316,'套餐',1,'com.pp.setmeal.controller.SetmealController.add()','POST',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:07:13\",\"id\":11,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160651A011.png\",\"name\":\"qq\",\"params\":{},\"price\":333,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"106\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"107\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"108\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"110\",\"name\":\"猪脑\",\"params\":{},\"price\":29,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"96\",\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"88\",\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"139\",\"name\":\"小酥肉\",\"params\":{},\"price\":28,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"138\",\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"137\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"75\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"76\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"11\"}],\"status\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 16:07:13',17),(317,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":16,\"createTime\":\"2024-08-28 18:24:07\",\"id\":2,\"image\":\"/profile/upload/2024/08/28/c1a30a42-51f1-476d-b3cd-312803ce0695_20240828182358A001.jpg\",\"name\":\"test11\",\"params\":{},\"price\":399,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"106\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"107\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"108\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"88\",\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"96\",\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"110\",\"name\":\"猪脑\",\"params\":{},\"price\":29,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"84\",\"name\":\"土豆片\",\"params\":{},\"price\":6,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"89\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"90\",\"name\":\"果仁菠菜\",\"params\":{},\"price\":18,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"138\",\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"137\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"2\"}],\"status\":1,\"updateTime\":\"2024-09-01 16:08:30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 16:08:30',26),(318,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:07:14\",\"id\":11,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160651A011.png\",\"name\":\"qq\",\"params\":{},\"price\":333,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"18\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"19\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"20\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"26\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"27\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"28\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"11\"}],\"status\":1,\"updateTime\":\"2024-09-01 20:27:38\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`tb_setmeal_dish`, CONSTRAINT `fk_setmeal_dish` FOREIGN KEY (`dish_id`) REFERENCES `tb_dish` (`id`))\r\n### The error may exist in file [D:\\2024\\java\\project\\RuoYi\\20240824210749\\pp\\pp-order2\\target\\classes\\mapper\\setmeal\\SetmealMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_setmeal_dish( id, setmeal_id, dish_id, name, price, copies, sort, create_time, update_time) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`tb_setmeal_dish`, CONSTRAINT `fk_setmeal_dish` FOREIGN KEY (`dish_id`) REFERENCES `tb_dish` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`tb_setmeal_dish`, CONSTRAINT `fk_setmeal_dish` FOREIGN KEY (`dish_id`) REFERENCES `tb_dish` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`tb_setmeal_dish`, CONSTRAINT `fk_setmeal_dish` FOREIGN KEY (`dish_id`) REFERENCES `tb_dish` (`id`))','2024-09-01 20:27:38',203),(319,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:07:14\",\"id\":11,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160651A011.png\",\"name\":\"qq\",\"params\":{},\"price\":333,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"18\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"19\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"20\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"26\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"27\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"28\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"11\"}],\"status\":1,\"updateTime\":\"2024-09-01 20:33:46\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:33:46',48),(320,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2024-09-01 16:07:14\",\"id\":11,\"image\":\"/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160651A011.png\",\"name\":\"qq\",\"params\":{},\"price\":333,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"18\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"11\"},{\"copies\":4,\"dishId\":\"19\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"20\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"11\"},{\"copies\":3,\"dishId\":\"26\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"27\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"setmealId\":\"11\"},{\"copies\":1,\"dishId\":\"28\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"setmealId\":\"11\"}],\"status\":1,\"updateTime\":\"2024-09-01 20:33:53\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:33:54',21),(321,'菜品及套餐分类',2,'com.pp.category.controller.CategoryController.edit()','PUT',1,'admin','研发部门','/category/category','127.0.0.1','内网IP','{\"createTime\":\"2024-08-28 18:01:11\",\"id\":16,\"name\":\"欢喜三人餐\",\"params\":{},\"sort\":10,\"type\":1,\"updateTime\":\"2024-09-01 20:34:30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:34:30',17),(322,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:23:25\",\"description\":\"\",\"dishFlavorList\":[],\"id\":111,\"image\":\"/profile/upload/2024/09/01/1c1db3da-93c1-48c3-a40b-556d4a29e4f6_20240901203503A001.jpg\",\"name\":\"小郡肝\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-09-01 20:35:05\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:35:05',17),(323,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:23:41\",\"description\":\"\",\"dishFlavorList\":[],\"id\":112,\"image\":\"/profile/upload/2024/09/01/08ae3467-476d-495d-bca2-502f325a22bd_20240901203651A002.jpg\",\"name\":\"午餐肉\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-09-01 20:36:53\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:36:53',26),(324,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:23:55\",\"description\":\"\",\"dishFlavorList\":[],\"id\":113,\"image\":\"/profile/upload/2024/09/01/ba1b0416-3929-425a-bcd5-4322af3ebb10_20240901203718A003.jpg\",\"name\":\"乌鸡卷\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 20:37:20\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:37:20',18),(325,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:24:11\",\"description\":\"\",\"dishFlavorList\":[],\"id\":114,\"image\":\"/profile/upload/2024/09/01/36fbf3e8-a0eb-43c9-afac-57c35faa46f0_20240901203734A004.jpg\",\"name\":\"牛蛙\",\"params\":{},\"price\":32,\"status\":1,\"updateTime\":\"2024-09-01 20:37:35\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:37:35',15),(326,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:24:30\",\"description\":\"\",\"dishFlavorList\":[],\"id\":115,\"image\":\"/profile/upload/2024/09/01/4d76fef4-1738-43a7-9ca7-5834ed6dcbd4_20240901203744A005.jpg\",\"name\":\"鸭血\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-09-01 20:37:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:37:45',4),(327,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:24:43\",\"description\":\"\",\"dishFlavorList\":[],\"id\":116,\"image\":\"/profile/upload/2024/09/01/cca74398-ab73-4209-bdd7-c8a666a5ea2d_20240901203804A006.jpg\",\"name\":\"毛肚\",\"params\":{},\"price\":36,\"status\":1,\"updateTime\":\"2024-09-01 20:38:06\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:38:06',18),(328,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:25:00\",\"description\":\"\",\"dishFlavorList\":[],\"id\":117,\"image\":\"/profile/upload/2024/09/01/5f80d3b2-2f72-4820-9310-0b154baf0717_20240901203814A007.jpg\",\"name\":\"雪花肥牛\",\"params\":{},\"price\":39,\"status\":1,\"updateTime\":\"2024-09-01 20:38:16\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:38:16',16),(329,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:25:29\",\"description\":\"\",\"dishFlavorList\":[],\"id\":118,\"image\":\"/profile/upload/2024/09/01/503f043c-e803-4f13-87e1-7c8cc1ee9214_20240901203839A008.jpg\",\"name\":\"麻辣牛肉\",\"params\":{},\"price\":39,\"status\":1,\"updateTime\":\"2024-09-01 20:38:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:38:41',17),(330,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:25:47\",\"description\":\"\",\"dishFlavorList\":[],\"id\":119,\"image\":\"/profile/upload/2024/09/01/7a3f9fac-f932-4d0c-8053-043a4ce30f5e_20240901203852A009.jpg\",\"name\":\"羊肉卷\",\"params\":{},\"price\":49,\"status\":1,\"updateTime\":\"2024-09-01 20:38:53\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:38:53',7),(331,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:26:06\",\"description\":\"\",\"dishFlavorList\":[],\"id\":120,\"image\":\"/profile/upload/2024/09/01/9fedb94f-f3c2-4241-bb54-5756e20a78ea_20240901203903A010.jpg\",\"name\":\"精品肥牛\",\"params\":{},\"price\":49,\"status\":1,\"updateTime\":\"2024-09-01 20:39:04\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:39:05',16),(332,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2022-12-22 13:32:39\",\"description\":\"\",\"dishFlavorList\":[],\"id\":121,\"image\":\"/profile/upload/2024/09/01/41aa4b22-8397-46f6-be66-db761454811a_20240901203924A011.jpg\",\"name\":\"鹌鹑蛋\",\"params\":{},\"price\":29,\"status\":1,\"updateTime\":\"2024-09-01 20:39:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:39:25',17),(333,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":7,\"createTime\":\"2022-12-22 13:32:56\",\"description\":\"\",\"dishFlavorList\":[],\"id\":122,\"image\":\"/profile/upload/2024/09/01/4c5f0b8e-e561-4856-b5a5-7bea5497a54b_20240901203932A012.jpg\",\"name\":\"贡菜丸子\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-09-01 20:39:33\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:39:33',9),(334,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":7,\"createTime\":\"2022-12-22 13:33:17\",\"description\":\"\",\"dishFlavorList\":[],\"id\":123,\"image\":\"/profile/upload/2024/09/01/4c5f0b8e-e561-4856-b5a5-7bea5497a54b_20240901203948A013.jpg\",\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"status\":1,\"updateTime\":\"2024-09-01 20:39:50\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:39:50',13),(335,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":7,\"createTime\":\"2022-12-22 13:32:56\",\"description\":\"\",\"dishFlavorList\":[],\"id\":122,\"image\":\"/profile/upload/2024/09/01/6e2400c2-7bf5-4218-b766-56b6a0c2fc81_20240901203959A014.jpg\",\"name\":\"贡菜丸子\",\"params\":{},\"price\":26,\"status\":1,\"updateTime\":\"2024-09-01 20:40:00\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:40:00',28),(336,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2022-12-22 13:35:02\",\"description\":\"\",\"dishFlavorList\":[],\"id\":125,\"image\":\"/profile/upload/2024/09/01/bf051923-70c1-4c19-96ba-f09de82405be_20240901204022A015.jpg\",\"name\":\"虾\",\"params\":{},\"price\":39,\"status\":1,\"updateTime\":\"2024-09-01 20:40:24\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:40:24',18),(337,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2022-12-22 13:35:37\",\"description\":\"\",\"dishFlavorList\":[],\"id\":127,\"image\":\"/profile/upload/2024/09/01/5eac3d1f-c04f-404b-9c39-b1c16981077a_20240901204032A016.jpg\",\"name\":\"虾滑\",\"params\":{},\"price\":36,\"status\":1,\"updateTime\":\"2024-09-01 20:40:33\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:40:33',17),(338,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:36:15\",\"description\":\"\",\"dishFlavorList\":[],\"id\":128,\"image\":\"/profile/upload/2024/09/01/5ad2cad8-9297-404b-9dbb-02e7f221840e_20240901204044A017.jpg\",\"name\":\"藕\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:40:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:40:45',11),(339,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:36:30\",\"description\":\"\",\"dishFlavorList\":[],\"id\":129,\"image\":\"/profile/upload/2024/09/01/17fa05e2-d098-42dc-ae79-741bf1c31651_20240901204101A018.jpg\",\"name\":\"笋尖\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:41:03\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:41:03',13),(340,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:36:49\",\"description\":\"\",\"dishFlavorList\":[],\"id\":130,\"image\":\"/profile/upload/2024/09/01/b66e64da-fb78-4189-8667-f5d300eea64e_20240901204127A019.jpg\",\"name\":\"海带结\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:41:28\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:41:29',16),(341,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:37:04\",\"description\":\"\",\"dishFlavorList\":[],\"id\":131,\"image\":\"/profile/upload/2024/09/01/403a5b4d-8cee-496d-b822-3395f8927d86_20240901204144A020.jpg\",\"name\":\"冬瓜\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:41:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:41:45',13),(342,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:37:19\",\"description\":\"\",\"dishFlavorList\":[],\"id\":132,\"image\":\"/profile/upload/2024/09/01/a3dd0c29-650d-4ad9-81b5-c3bbd519f8d2_20240901204202A021.jpg\",\"name\":\"生菜\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:42:03\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:42:03',17),(343,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:37:37\",\"description\":\"\",\"dishFlavorList\":[],\"id\":133,\"image\":\"/profile/upload/2024/09/01/910a019b-6586-4be2-8f18-2047945b2b64_20240901204239A022.jpg\",\"name\":\"黄豆皮\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:42:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:42:41',11),(344,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:37:53\",\"description\":\"\",\"dishFlavorList\":[],\"id\":134,\"image\":\"/profile/upload/2024/09/01/d4ea7df0-df49-4f76-a569-d84c7c78e814_20240901204304A023.jpg\",\"name\":\"山药\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:43:06\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:43:06',18),(345,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:38:06\",\"description\":\"\",\"dishFlavorList\":[],\"id\":135,\"image\":\"/profile/upload/2024/09/01/2ac3e177-8fc8-4ac5-851d-7f9fffbaafa0_20240901204311A024.jpg\",\"name\":\"土豆\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:43:12\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:43:12',15),(346,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:38:35\",\"description\":\"\",\"dishFlavorList\":[],\"id\":136,\"image\":\"/profile/upload/2024/09/01/2d759ed1-f848-4301-8066-116d35f75e95_20240901204319A025.jpg\",\"name\":\"金针菇\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:43:21\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:43:21',9),(347,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-12-22 13:39:26\",\"description\":\"\",\"dishFlavorList\":[],\"id\":137,\"image\":\"/profile/upload/2024/09/01/48886beb-9336-425e-bd85-1f0c28cb888f_20240901204341A026.jpg\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:43:43\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:43:43',18),(348,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-12-22 13:39:43\",\"description\":\"\",\"dishFlavorList\":[],\"id\":138,\"image\":\"/profile/upload/2024/09/01/9acf6e51-2b0f-41da-8a3d-b1d73e9d285f_20240901204356A027.jpg\",\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:43:57\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:43:57',7),(349,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-12-22 13:39:57\",\"description\":\"\",\"dishFlavorList\":[],\"id\":139,\"image\":\"/profile/upload/2024/09/01/425e0cfd-c006-4c19-8d27-ed1a353fc257_20240901204430A028.jpg\",\"name\":\"小酥肉\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 20:44:32\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:44:32',15),(350,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:18\",\"description\":\"\",\"dishFlavorList\":[],\"id\":140,\"image\":\"/profile/upload/2024/09/01/77e3697b-9327-47ce-a100-725b44f9f9f9_20240901204444A029.jpg\",\"name\":\"江小白\",\"params\":{},\"price\":22,\"status\":1,\"updateTime\":\"2024-09-01 20:44:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:44:45',9),(351,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:35\",\"description\":\"\",\"dishFlavorList\":[],\"id\":141,\"image\":\"/profile/upload/2024/09/01/014da57c-541e-4f3c-a2c6-b465af670455_20240901204512A030.jpg\",\"name\":\"珍珠奶茶\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:45:13\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:45:13',19),(352,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:35\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":141,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\",\\\"多糖\\\"]\"}],\"id\":141,\"image\":\"/profile/upload/2024/09/01/014da57c-541e-4f3c-a2c6-b465af670455_20240901204512A030.jpg\",\"name\":\"珍珠奶茶\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 20:45:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:45:25',23),(353,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:18\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":140,\"name\":\"温度\",\"params\":{},\"value\":\"[\\\"常温\\\"]\"}],\"id\":140,\"image\":\"/profile/upload/2024/09/01/77e3697b-9327-47ce-a100-725b44f9f9f9_20240901204444A029.jpg\",\"name\":\"江小白\",\"params\":{},\"price\":22,\"status\":1,\"updateTime\":\"2024-09-01 20:45:43\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:45:43',12),(354,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:51\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":142,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\",\\\"多糖\\\"]\"},{\"dishId\":142,\"name\":\"温度\",\"params\":{},\"value\":\"[\\\"去冰\\\",\\\"少冰\\\",\\\"常温\\\"]\"}],\"id\":142,\"image\":\"/profile/upload/2024/09/01/0e03f011-68ba-4b8e-88c8-3bc253adbf47_20240901204551A031.jpg\",\"name\":\"满杯橙海粒\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:46:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:46:11',14),(355,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:41:43\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":143,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\",\\\"多糖\\\"]\"},{\"dishId\":143,\"name\":\"温度\",\"params\":{},\"value\":\"[\\\"常温\\\",\\\"去冰\\\",\\\"少冰\\\",\\\"多冰\\\"]\"}],\"id\":143,\"image\":\"/profile/upload/2024/09/01/0e03f011-68ba-4b8e-88c8-3bc253adbf47_20240901204622A032.jpg\",\"name\":\"蜜桃乌龙\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:46:38\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:46:38',18),(356,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:40:51\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":142,\"id\":185,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\",\\\"多糖\\\"]\"},{\"dishId\":142,\"id\":186,\"name\":\"温度\",\"params\":{},\"value\":\"[\\\"去冰\\\",\\\"少冰\\\",\\\"常温\\\"]\"}],\"id\":142,\"image\":\"/profile/upload/2024/09/01/05c5bc41-46f1-4ae2-af40-ec9d30f1bedf_20240901204644A033.jpg\",\"name\":\"满杯橙海粒\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:46:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:46:45',10),(357,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:42:32\",\"description\":\"\",\"dishFlavorList\":[{\"dishId\":144,\"name\":\"温度\",\"params\":{},\"value\":\"[\\\"去冰\\\",\\\"少冰\\\",\\\"多冰\\\"]\"}],\"id\":144,\"image\":\"/profile/upload/2024/09/01/514b8382-7ed4-4d03-9acd-fbb168ac2d88_20240901204707A034.jpg\",\"name\":\"啤酒\",\"params\":{},\"price\":22,\"status\":1,\"updateTime\":\"2024-09-01 20:47:18\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:47:18',13),(358,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:42:49\",\"description\":\"\",\"dishFlavorList\":[],\"id\":145,\"image\":\"/profile/upload/2024/09/01/37e1cf90-99d8-47bb-8734-abdaf8e2d6b4_20240901204740A035.jpg\",\"name\":\"可乐\",\"params\":{},\"price\":5,\"status\":1,\"updateTime\":\"2024-09-01 20:47:41\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:47:41',18),(359,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:43:05\",\"description\":\"\",\"dishFlavorList\":[],\"id\":146,\"image\":\"/profile/upload/2024/09/01/ba26a79e-7d31-44d8-941b-d98214ec2e36_20240901204757A036.jpg\",\"name\":\"酸梅汁\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:48:01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:48:01',15),(360,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:43:18\",\"description\":\"\",\"dishFlavorList\":[],\"id\":147,\"image\":\"/profile/upload/2024/09/01/d224329a-f03a-44a2-b020-7c9b96851523_20240901204817A037.jpg\",\"name\":\"西瓜汁\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:48:18\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:48:18',18),(361,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":6,\"createTime\":\"2022-12-22 13:43:34\",\"description\":\"\",\"dishFlavorList\":[],\"id\":148,\"image\":\"/profile/upload/2024/09/01/d25ce876-0244-4c2d-b013-129abd1271a4_20240901204844A038.jpg\",\"name\":\"柠檬水\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:48:45\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:48:45',28),(362,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:19:18\",\"description\":\"腐竹\",\"dishFlavorList\":[],\"id\":99,\"image\":\"/profile/upload/2024/09/01/下载_20240901205038A039.jpg\",\"name\":\"腐竹\",\"params\":{},\"price\":8,\"status\":0,\"updateTime\":\"2024-09-01 20:50:39\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:50:39',19),(363,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":5,\"createTime\":\"2023-04-13 23:17:52\",\"description\":\"扬州炒饭\",\"dishFlavorList\":[],\"id\":98,\"image\":\"/profile/upload/2024/09/01/下载 (1)_20240901205118A041.jpg\",\"name\":\"扬州炒饭\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:51:20\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:51:20',5),(364,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-04-13 23:13:18\",\"description\":\"干锅藕片\",\"dishFlavorList\":[{\"dishId\":96,\"id\":166,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":96,\"image\":\"/profile/upload/2024/09/01/下载 (2)_20240901205156A042.jpg\",\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 20:51:57\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:51:57',11),(365,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-04-13 23:11:46\",\"description\":\"干锅鸡胗\",\"dishFlavorList\":[{\"dishId\":95,\"id\":165,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":95,\"image\":\"/profile/upload/2024/09/01/下载 (3)_20240901205237A044.jpg\",\"name\":\"干锅鸡胗\",\"params\":{},\"price\":38,\"status\":1,\"updateTime\":\"2024-09-01 20:52:38\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:52:38',12),(366,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:11:08\",\"description\":\"干锅千页豆腐\",\"dishFlavorList\":[{\"dishId\":94,\"id\":163,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\"]\"},{\"dishId\":94,\"id\":164,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\"]\"}],\"id\":94,\"image\":\"/profile/upload/2024/09/01/下载 (4)_20240901205308A045.jpg\",\"name\":\"干锅千页豆腐\",\"params\":{},\"price\":30,\"status\":1,\"updateTime\":\"2024-09-01 20:53:09\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:53:09',14),(367,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:50:59\",\"description\":\"土豆片\",\"dishFlavorList\":[],\"id\":84,\"image\":\"/profile/upload/2024/09/01/2ac3e177-8fc8-4ac5-851d-7f9fffbaafa0_20240901205359A046.jpg\",\"name\":\"土豆片\",\"params\":{},\"price\":6,\"status\":1,\"updateTime\":\"2024-09-01 20:54:00\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:54:00',11),(368,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":7,\"createTime\":\"2023-04-13 22:53:07\",\"description\":\"鱼豆腐\",\"dishFlavorList\":[{\"dishId\":85,\"id\":182,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"全糖\\\",\\\"半糖\\\",\\\"少糖\\\"]\"}],\"id\":85,\"image\":\"/profile/upload/2024/09/01/下载 (5)_20240901205426A047.jpg\",\"name\":\"鱼豆腐\",\"params\":{},\"price\":6,\"status\":1,\"updateTime\":\"2024-09-01 20:54:27\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:54:27',24),(369,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:56:18\",\"description\":\"重庆毛血旺\",\"dishFlavorList\":[{\"dishId\":86,\"id\":144,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\",\\\"重辣\\\"]\"}],\"id\":86,\"image\":\"/profile/upload/2024/09/01/下载 (6)_20240901205454A048.jpg\",\"name\":\"重庆毛血旺\",\"params\":{},\"price\":58,\"status\":1,\"updateTime\":\"2024-09-01 20:54:55\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:54:55',18),(370,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-04-13 22:56:57\",\"description\":\"重庆辣子鸡\",\"dishFlavorList\":[{\"dishId\":87,\"id\":145,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\",\\\"重辣\\\"]\"}],\"id\":87,\"image\":\"/profile/upload/2024/09/01/下载 (7)_20240901205525A049.jpg\",\"name\":\"重庆辣子鸡\",\"params\":{},\"price\":48,\"status\":1,\"updateTime\":\"2024-09-01 20:55:26\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:55:27',9),(371,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":2,\"createTime\":\"2023-04-13 22:58:29\",\"description\":\"渝乡沸腾鱼片 草鱼\",\"dishFlavorList\":[{\"dishId\":88,\"id\":146,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\"]\"},{\"dishId\":88,\"id\":147,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":88,\"image\":\"/profile/upload/2024/09/01/下载 (8)_20240901205602A050.jpg\",\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"status\":1,\"updateTime\":\"2024-09-01 20:56:03\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:56:03',18),(372,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:59:45\",\"description\":\"皮蛋豆腐 鸭蛋 松花江皮蛋\",\"dishFlavorList\":[{\"dishId\":89,\"id\":148,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\"]\"},{\"dishId\":89,\"id\":149,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\"]\"}],\"id\":89,\"image\":\"/profile/upload/2024/09/01/下载 (9)_20240901205629A051.jpg\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 20:56:30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:56:30',14),(373,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:01:32\",\"description\":\"果仁菠菜 花生 菠菜\",\"dishFlavorList\":[{\"dishId\":90,\"id\":150,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\"]\"},{\"dishId\":90,\"id\":151,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\"]\"}],\"id\":90,\"image\":\"/profile/upload/2024/09/01/下载 (10)_20240901205708A052.jpg\",\"name\":\"果仁菠菜\",\"params\":{},\"price\":18,\"status\":1,\"updateTime\":\"2024-09-01 20:57:10\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:57:10',17),(374,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:02:32\",\"description\":\"蒜泥黄瓜 大蒜 剁椒\",\"dishFlavorList\":[{\"dishId\":91,\"id\":152,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"},{\"dishId\":91,\"id\":153,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\"]\"}],\"id\":91,\"image\":\"/profile/upload/2024/09/01/下载 (11)_20240901205738A053.jpg\",\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:57:40\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:57:40',42),(375,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2023-04-13 23:03:15\",\"description\":\"老醋花生 老陈醋\",\"dishFlavorList\":[{\"dishId\":92,\"id\":154,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\"]\"}],\"id\":92,\"image\":\"/profile/upload/2024/09/01/下载 (12)_20240901205804A054.jpg\",\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 20:58:05\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:58:05',16),(376,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:10:32\",\"description\":\"干锅花菜\",\"dishFlavorList\":[{\"dishId\":93,\"id\":161,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"},{\"dishId\":93,\"id\":162,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":93,\"image\":\"/profile/upload/2024/09/01/下载 (13)_20240901205831A055.jpg\",\"name\":\"干锅花菜\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 20:58:32\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:58:32',18),(377,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2022-06-10 09:34:28\",\"description\":\"优质面粉\",\"dishFlavorList\":[],\"id\":50,\"image\":\"/profile/upload/2024/09/01/下载 (14)_20240901205859A056.jpg\",\"name\":\"馒头\",\"params\":{},\"price\":1,\"status\":1,\"updateTime\":\"2024-09-01 20:59:00\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:59:00',15),(378,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2023-02-16 09:48:28\",\"description\":\"新西兰黑金鲍鱼\",\"dishFlavorList\":[{\"dishId\":74,\"id\":142,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\"]\"},{\"dishId\":74,\"id\":143,\"name\":\"甜味\",\"params\":{},\"value\":\"[\\\"无糖\\\",\\\"少糖\\\",\\\"半糖\\\"]\"}],\"id\":74,\"image\":\"/profile/upload/2024/09/01/下载 (15)_20240901205957A057.jpg\",\"name\":\"黑金鲍鱼\",\"params\":{},\"price\":68,\"status\":1,\"updateTime\":\"2024-09-01 20:59:58\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 20:59:58',14),(379,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2023-02-16 09:50:06\",\"description\":\"2斤重 波斯顿龙虾\",\"dishFlavorList\":[{\"dishId\":75,\"id\":140,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"},{\"dishId\":75,\"id\":141,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\",\\\"中辣\\\"]\"}],\"id\":75,\"image\":\"/profile/upload/2024/09/01/下载 (16)_20240901210027A058.jpg\",\"name\":\"波士顿龙虾\",\"params\":{},\"price\":128,\"status\":1,\"updateTime\":\"2024-09-01 21:00:29\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:00:29',16),(380,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2023-02-16 09:52:30\",\"description\":\"香辣烤乌江鱼3斤\",\"dishFlavorList\":[{\"dishId\":76,\"id\":138,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"微辣\\\",\\\"中辣\\\"]\"},{\"dishId\":76,\"id\":139,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":76,\"image\":\"/profile/upload/2024/09/01/下载 (17)_20240901210055A059.jpg\",\"name\":\"香辣烤乌江鱼3斤\",\"params\":{},\"price\":108,\"status\":1,\"updateTime\":\"2024-09-01 21:00:56\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:00:56',12),(381,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2023-02-17 15:27:02\",\"description\":\"香辣烤鱼3斤 草鱼\",\"dishFlavorList\":[{\"dishId\":77,\"id\":136,\"name\":\"辣度\",\"params\":{},\"value\":\"[\\\"不辣\\\",\\\"微辣\\\",\\\"中辣\\\",\\\"重辣\\\"]\"},{\"dishId\":77,\"id\":137,\"name\":\"忌口\",\"params\":{},\"value\":\"[\\\"不要葱\\\",\\\"不要蒜\\\",\\\"不要香菜\\\",\\\"不要辣\\\"]\"}],\"id\":77,\"image\":\"/profile/upload/2024/09/01/下载 (18)_20240901210121A060.jpg\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"status\":1,\"updateTime\":\"2024-09-01 21:01:23\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:01:23',14),(382,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":4,\"createTime\":\"2023-04-13 22:48:57\",\"description\":\"宽粉\",\"dishFlavorList\":[],\"id\":80,\"image\":\"/profile/upload/2024/09/01/下载 (19)_20240901210146A061.jpg\",\"name\":\"宽粉\",\"params\":{},\"price\":8,\"status\":0,\"updateTime\":\"2024-09-01 21:01:47\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:01:47',17),(383,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:49:21\",\"description\":\"青笋\",\"dishFlavorList\":[],\"id\":81,\"image\":\"/profile/upload/2024/09/01/下载 (20)_20240901210209A062.jpg\",\"name\":\"青笋\",\"params\":{},\"price\":10,\"status\":1,\"updateTime\":\"2024-09-01 21:02:10\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:02:10',27),(384,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:50:26\",\"description\":\"\",\"dishFlavorList\":[],\"id\":83,\"image\":\"/profile/upload/2024/09/01/2e417b50-f79e-46be-aa0e-b54f9975228a_20240901210219A063.jpg\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"status\":1,\"updateTime\":\"2024-09-01 21:02:20\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:02:20',15),(385,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":8,\"createTime\":\"2022-12-22 13:35:22\",\"description\":\"\",\"dishFlavorList\":[],\"id\":126,\"image\":\"/profile/upload/2024/09/01/642cb1f8-0846-44c9-b521-94fbe0903e24_20240901210312A064.jpg\",\"name\":\"蟹柳\",\"params\":{},\"price\":28,\"status\":1,\"updateTime\":\"2024-09-01 21:03:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:03:14',10),(386,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":16,\"createTime\":\"2024-08-28 18:24:07\",\"id\":2,\"image\":\"/profile/upload/2024/08/28/c1a30a42-51f1-476d-b3cd-312803ce0695_20240828182358A001.jpg\",\"name\":\"test11\",\"params\":{},\"price\":399,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"29\",\"name\":\"牛油锅\",\"params\":{},\"price\":68,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"30\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"31\",\"name\":\"牛油菌菇双拼锅\",\"params\":{},\"price\":79,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"32\",\"name\":\"渝乡沸腾鱼片\",\"params\":{},\"price\":79,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"33\",\"name\":\"干锅藕片\",\"params\":{},\"price\":28,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"34\",\"name\":\"猪脑\",\"params\":{},\"price\":29,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"35\",\"name\":\"土豆片\",\"params\":{},\"price\":6,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"36\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"37\",\"name\":\"果仁菠菜\",\"params\":{},\"price\":18,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"38\",\"name\":\"红糖糍粑\",\"params\":{},\"price\":18,\"setmealId\":\"2\"},{\"copies\":1,\"dishId\":\"39\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"2\"}],\"status\":1,\"updateTime\":\"2024-09-01 21:04:24\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:04:24',18),(387,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:49:52\",\"description\":\"鲜豆皮\",\"dishFlavorList\":[],\"id\":82,\"image\":\"/profile/upload/2024/09/01/910a019b-6586-4be2-8f18-2047945b2b64_20240901210546A065.jpg\",\"name\":\"鲜豆皮\",\"params\":{},\"price\":8,\"status\":1,\"updateTime\":\"2024-09-01 21:05:47\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:05:47',7),(388,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 23:19:18\",\"description\":\"腐竹\",\"dishFlavorList\":[],\"id\":99,\"image\":\"/profile/upload/2024/09/01/下载_20240901205231A043_20240901210757A066.jpg\",\"name\":\"腐竹\",\"params\":{},\"price\":8,\"status\":0,\"updateTime\":\"2024-09-01 21:07:59\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:07:59',11),(389,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2022-12-22 13:38:06\",\"description\":\"\",\"dishFlavorList\":[],\"id\":135,\"image\":\"/profile/upload/2024/09/01/2ac3e177-8fc8-4ac5-851d-7f9fffbaafa0_20240901205359A046_20240901210829A067.jpg\",\"name\":\"土豆\",\"params\":{},\"price\":12,\"status\":1,\"updateTime\":\"2024-09-01 21:08:30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:08:30',11),(390,'菜品管理',2,'com.pp.dish.controller.DishController.edit()','PUT',1,'admin','研发部门','/dish/dish','127.0.0.1','内网IP','{\"categoryId\":3,\"createTime\":\"2023-04-13 22:49:52\",\"description\":\"鲜豆皮\",\"dishFlavorList\":[],\"id\":82,\"image\":\"/profile/upload/2024/09/01/910a019b-6586-4be2-8f18-2047945b2b64_20240901204239A022_20240901210858A068.jpg\",\"name\":\"鲜豆皮\",\"params\":{},\"price\":8,\"status\":1,\"updateTime\":\"2024-09-01 21:08:59\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:08:59',10),(391,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"16\",\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"105\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"107\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"92\",\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"137\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"83\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"89\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"91\",\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"123\",\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"85\",\"name\":\"鱼豆腐\",\"params\":{},\"price\":6,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"77\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-01 21:11:50\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-01 21:11:50',16),(392,'代码生成',6,'com.pp.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_orders,tb_order_detail\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:26:47',260),(393,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"orderDetail\",\"className\":\"OrderDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":45,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名字\",\"columnId\":46,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"图片\",\"columnId\":47,\"columnName\":\"image\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"image\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单id\",\"columnId\":48,\"columnName\":\"order_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderId\",\"jav','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:27:54',70),(394,'字典类型',1,'com.pp.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"订单状态\",\"dictType\":\"order_system\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:33:29',19),(395,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待付款\",\"dictSort\":1,\"dictType\":\"order_system\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:36:00',15),(396,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待派送\",\"dictSort\":2,\"dictType\":\"order_system\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:36:15',11),(397,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已派送\",\"dictSort\":3,\"dictType\":\"order_system\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:36:28',10),(398,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已完成\",\"dictSort\":4,\"dictType\":\"order_system\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:36:39',8),(399,'字典数据',1,'com.pp.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已取消\",\"dictSort\":5,\"dictType\":\"order_system\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:36:51',12),(400,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"orders\",\"className\":\"Orders\",\"columns\":[{\"capJavaField\":\"TableNo\",\"columnComment\":\"餐桌号\",\"columnId\":54,\"columnName\":\"table_no\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"tableNo\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":55,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Number\",\"columnComment\":\"订单号\",\"columnId\":56,\"columnName\":\"number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"number\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"订单状态 1待付款，2待派送，3已派送，4已完成，5已取消\",\"columnId\":57,\"columnName\":\"status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"radio\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"s','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:37:32',67),(401,'代码生成',2,'com.pp.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"orders\",\"className\":\"Orders\",\"columns\":[{\"capJavaField\":\"TableNo\",\"columnComment\":\"餐桌号\",\"columnId\":54,\"columnName\":\"table_no\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"tableNo\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-09-02 14:37:32\",\"usableColumn\":false},{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":55,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-09-02 14:37:32\",\"usableColumn\":false},{\"capJavaField\":\"Number\",\"columnComment\":\"订单号\",\"columnId\":56,\"columnName\":\"number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"number\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-09-02 14:37:32\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"订单状态 1待付款，2待派送，3已派送，4已完成，5已取消\",\"columnId\":57,\"columnName\":\"status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-09-02 14:26:47\",\"dictType\":\"order_system\",\"edit\":false,\"htmlType\":\"radio\",\"increment\":false,\"insert\":fals','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 14:38:13',50),(402,'代码生成',8,'com.pp.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_order_detail\"}',NULL,0,NULL,'2024-09-02 14:38:20',521),(403,'代码生成',8,'com.pp.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_orders\"}',NULL,0,NULL,'2024-09-02 14:38:30',89),(404,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"69\",\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"70\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"71\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"72\",\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"73\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"74\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"75\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"76\",\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"77\",\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"78\",\"name\":\"鱼豆腐\",\"params\":{},\"price\":6,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"79\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-02 19:11:36\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 19:11:36',151),(405,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":4,\"params\":{},\"status\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 20:19:27',45),(406,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1830569181810716700,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-02 20:19:37',18),(407,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":4,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-02 20:20:35',14),(408,'菜单管理',2,'com.pp.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','192.168.186.1','内网IP','{\"children\":[],\"component\":\"orders/orders/index\",\"createTime\":\"2024-09-02 14:39:13\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"orders\",\"perms\":\"orders:orders:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-07 18:49:24',44),(409,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1830569181810716700,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 18:49:41',81),(410,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1830588179252162600,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 18:49:49',3),(411,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":5,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-07 18:49:52',17),(412,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1830582907116908500,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 18:52:13',1),(413,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1832403208154779600,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:00:43',94),(414,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1832403208154779600,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:04:06',110),(415,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1832404560419360800,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:04:44',31),(416,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1832404560419360800,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:04:57',23),(417,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:09:35',16),(418,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:15:11',34),(419,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1606660571264610300,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:15:18',27),(420,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','192.168.186.1','内网IP','{\"id\":1606660571264610300,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:15:53',16),(421,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:17:50',5),(422,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:43:04',18),(423,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:43:18',14),(424,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 21:49:16',9),(425,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":\"1606660314938110000\",\"status\":\"3\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-07 22:20:06',103),(426,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832403208154779649,\"params\":{},\"status\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-07 22:20:16',12),(427,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 22:22:33',16),(428,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606820683333652500,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 22:23:53',10),(429,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832403208154779600,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 22:29:19',13),(430,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832403208154779600,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-07 22:36:00',16),(431,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660571264610300,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:04:05',78),(432,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:04:50',17),(433,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:04:55',11),(434,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders/','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:05:59',15),(435,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders/','127.0.0.1','内网IP','{\"id\":16066603149381100,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:06:38',11),(436,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders/','127.0.0.1','内网IP','{\"id\":160666031493811,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:06:44',13),(437,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832403208154779600,\"params\":{},\"status\":4}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:08:26',12),(438,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938110000,\"params\":{},\"status\":3}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2024-09-08 14:15:34',14),(439,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938109954,\"params\":{},\"status\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:21',18),(440,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606820683333652481,\"params\":{},\"status\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:26',16),(441,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606830616875835393,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:28',14),(442,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832403208154779649,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:42',21),(443,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606820683333652481,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:45',14),(444,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660571264610305,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:47',14),(445,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1606660314938109954,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:48',17),(446,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832404560419360769,\"params\":{},\"status\":4}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:18:52',12),(447,'订单',2,'com.pp.orders.controller.OrdersController.edit()','PUT',1,'admin','研发部门','/orders/orders','127.0.0.1','内网IP','{\"id\":1832664967688163330,\"params\":{},\"status\":3}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:20:39',11),(448,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"80\",\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"81\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"82\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"83\",\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"84\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"85\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"86\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"87\",\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"88\",\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"89\",\"name\":\"鱼豆腐\",\"params\":{},\"price\":6,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"90\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-08 14:44:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 14:44:11',167),(449,'套餐',2,'com.pp.setmeal.controller.SetmealController.edit()','PUT',1,'admin','研发部门','/setmeal/setmeal','127.0.0.1','内网IP','{\"categoryId\":5,\"code\":\"\",\"createTime\":\"2022-12-22 13:45:04\",\"description\":\"\",\"id\":1,\"image\":\"/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg\",\"name\":\"畅享2人套餐\",\"params\":{},\"price\":229,\"setmealDishList\":[{\"copies\":1,\"dishId\":\"91\",\"name\":\"干锅牛蛙\",\"params\":{},\"price\":38,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"92\",\"name\":\"番茄锅\",\"params\":{},\"price\":59,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"93\",\"name\":\"菌菇番茄双拼锅\",\"params\":{},\"price\":76,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"94\",\"name\":\"老醋花生\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"95\",\"name\":\"醪糟汤圆\",\"params\":{},\"price\":18,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"96\",\"name\":\"娃娃菜\",\"params\":{},\"price\":16,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"97\",\"name\":\"皮蛋豆腐\",\"params\":{},\"price\":28,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"98\",\"name\":\"蒜泥黄瓜\",\"params\":{},\"price\":12,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"99\",\"name\":\"墨鱼鹅肝丸子\",\"params\":{},\"price\":29,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"100\",\"name\":\"鱼豆腐\",\"params\":{},\"price\":6,\"setmealId\":\"1\"},{\"copies\":1,\"dishId\":\"101\",\"name\":\"香辣烤鱼3斤\",\"params\":{},\"price\":78,\"setmealId\":\"1\"}],\"status\":1,\"updateTime\":\"2024-09-08 15:16:28\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-09-08 15:16:28',26);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2024-08-21 09:49:19','',NULL,''),(2,'se','项目经理',2,'0','admin','2024-08-21 09:49:19','',NULL,''),(3,'hr','人力资源',3,'0','admin','2024-08-21 09:49:19','',NULL,''),(4,'user','普通员工',4,'0','admin','2024-08-21 09:49:19','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-08-21 09:49:19','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2024-08-21 09:49:19','admin','2024-08-29 10:56:15','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,4),(2,2000),(2,2001),(2,2002),(2,2003),(2,2004),(2,2005),(2,2006),(2,2007),(2,2008),(2,2009),(2,2010),(2,2011),(2,2012),(2,2013),(2,2014),(2,2015),(2,2016),(2,2017),(2,2018),(2,2019);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-09-08 13:24:39','admin','2024-08-21 09:49:19','','2024-09-08 13:24:38','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-08-21 09:49:19','admin','2024-08-21 09:49:19','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int DEFAULT '0' COMMENT '分类类型   0菜品分类 1 套餐分类',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '分类名称',
  `sort` int DEFAULT '0' COMMENT '顺序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_category_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='菜品及套餐分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (1,0,'锅底',1,'2021-05-27 09:16:58','2022-12-22 13:13:39'),(2,0,'肉类',3,'2021-05-27 09:17:28','2022-12-22 13:16:05'),(3,0,'素食',4,'2021-07-09 11:36:15','2024-08-31 10:15:03'),(4,0,'小吃',5,'2021-07-09 14:30:07','2022-12-22 13:15:45'),(5,1,'畅享2人套餐',2,'2022-12-22 13:14:53','2022-12-22 13:14:53'),(6,0,'饮料',7,'2022-12-22 13:15:54','2022-12-22 13:15:54'),(7,0,'丸子',8,'2022-12-22 13:28:23','2022-12-22 13:28:23'),(8,0,'海鲜',6,'2022-12-22 13:28:42','2022-12-22 13:28:42'),(16,1,'欢喜三人餐',10,'2024-08-28 18:01:11','2024-09-01 20:34:31');
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dish`
--

DROP TABLE IF EXISTS `tb_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dish` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '菜品名称',
  `category_id` bigint NOT NULL DEFAULT '1',
  `price` decimal(10,2) DEFAULT NULL COMMENT '菜品价格',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '图片',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '描述信息',
  `status` int DEFAULT '1' COMMENT '0 停售 1 起售',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_dish_name` (`name`),
  KEY `fk_category_id` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='菜品管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dish`
--

LOCK TABLES `tb_dish` WRITE;
/*!40000 ALTER TABLE `tb_dish` DISABLE KEYS */;
INSERT INTO `tb_dish` VALUES (30,'干锅牛蛙',2,38.00,'/profile/upload/2024/08/31/36fbf3e8-a0eb-43c9-afac-57c35faa46f0_20240826210937A008_20240831211833A001.jpg','干锅牛蛙',1,'2023-04-13 23:14:12','2024-08-31 21:18:41'),(50,'馒头',4,1.00,'/profile/upload/2024/09/01/下载 (14)_20240901205859A056.jpg','优质面粉',1,'2022-06-10 09:34:28','2024-09-01 20:59:01'),(74,'黑金鲍鱼',8,68.00,'/profile/upload/2024/09/01/下载 (15)_20240901205957A057.jpg','新西兰黑金鲍鱼',1,'2023-02-16 09:48:28','2024-09-01 20:59:59'),(75,'波士顿龙虾',8,128.00,'/profile/upload/2024/09/01/下载 (16)_20240901210027A058.jpg','2斤重 波斯顿龙虾',1,'2023-02-16 09:50:06','2024-09-01 21:00:29'),(76,'香辣烤乌江鱼3斤',8,108.00,'/profile/upload/2024/09/01/下载 (17)_20240901210055A059.jpg','香辣烤乌江鱼3斤',1,'2023-02-16 09:52:30','2024-09-01 21:00:57'),(77,'香辣烤鱼3斤',8,78.00,'/profile/upload/2024/09/01/下载 (18)_20240901210121A060.jpg','香辣烤鱼3斤 草鱼',1,'2023-02-17 15:27:02','2024-09-01 21:01:23'),(80,'宽粉',4,8.00,'/profile/upload/2024/09/01/下载 (19)_20240901210146A061.jpg','宽粉',0,'2023-04-13 22:48:57','2024-09-01 21:01:47'),(81,'青笋',3,10.00,'/profile/upload/2024/09/01/下载 (20)_20240901210209A062.jpg','青笋',1,'2023-04-13 22:49:21','2024-09-01 21:02:11'),(82,'鲜豆皮',3,8.00,'/profile/upload/2024/09/01/910a019b-6586-4be2-8f18-2047945b2b64_20240901204239A022_20240901210858A068.jpg','鲜豆皮',1,'2023-04-13 22:49:52','2024-09-01 21:08:59'),(83,'娃娃菜',3,16.00,'/profile/upload/2024/09/01/2e417b50-f79e-46be-aa0e-b54f9975228a_20240901210219A063.jpg','',1,'2023-04-13 22:50:26','2024-09-01 21:02:20'),(84,'土豆片',3,6.00,'/profile/upload/2024/09/01/2ac3e177-8fc8-4ac5-851d-7f9fffbaafa0_20240901205359A046.jpg','土豆片',1,'2023-04-13 22:50:59','2024-09-01 20:54:00'),(85,'鱼豆腐',7,6.00,'/profile/upload/2024/09/01/下载 (5)_20240901205426A047.jpg','鱼豆腐',1,'2023-04-13 22:53:07','2024-09-01 20:54:27'),(86,'重庆毛血旺',3,58.00,'/profile/upload/2024/09/01/下载 (6)_20240901205454A048.jpg','重庆毛血旺',1,'2023-04-13 22:56:18','2024-09-01 20:54:56'),(87,'重庆辣子鸡',2,48.00,'/profile/upload/2024/09/01/下载 (7)_20240901205525A049.jpg','重庆辣子鸡',1,'2023-04-13 22:56:57','2024-09-01 20:55:27'),(88,'渝乡沸腾鱼片',2,79.00,'/profile/upload/2024/09/01/下载 (8)_20240901205602A050.jpg','渝乡沸腾鱼片 草鱼',1,'2023-04-13 22:58:29','2024-09-01 20:56:04'),(89,'皮蛋豆腐',3,28.00,'/profile/upload/2024/09/01/下载 (9)_20240901205629A051.jpg','皮蛋豆腐 鸭蛋 松花江皮蛋',1,'2023-04-13 22:59:45','2024-09-01 20:56:31'),(90,'果仁菠菜',3,18.00,'/profile/upload/2024/09/01/下载 (10)_20240901205708A052.jpg','果仁菠菜 花生 菠菜',1,'2023-04-13 23:01:32','2024-09-01 20:57:10'),(91,'蒜泥黄瓜',3,12.00,'/profile/upload/2024/09/01/下载 (11)_20240901205738A053.jpg','蒜泥黄瓜 大蒜 剁椒',1,'2023-04-13 23:02:32','2024-09-01 20:57:40'),(92,'老醋花生',4,12.00,'/profile/upload/2024/09/01/下载 (12)_20240901205804A054.jpg','老醋花生 老陈醋',1,'2023-04-13 23:03:15','2024-09-01 20:58:06'),(93,'干锅花菜',3,28.00,'/profile/upload/2024/09/01/下载 (13)_20240901205831A055.jpg','干锅花菜',1,'2023-04-13 23:10:32','2024-09-01 20:58:32'),(94,'干锅千页豆腐',3,30.00,'/profile/upload/2024/09/01/下载 (4)_20240901205308A045.jpg','干锅千页豆腐',1,'2023-04-13 23:11:08','2024-09-01 20:53:10'),(95,'干锅鸡胗',2,38.00,'/profile/upload/2024/09/01/下载 (3)_20240901205237A044.jpg','干锅鸡胗',1,'2023-04-13 23:11:46','2024-09-01 20:52:39'),(96,'干锅藕片',2,28.00,'/profile/upload/2024/09/01/下载 (2)_20240901205156A042.jpg','干锅藕片',1,'2023-04-13 23:13:18','2024-09-01 20:51:58'),(98,'扬州炒饭',5,12.00,'/profile/upload/2024/09/01/下载 (1)_20240901205118A041.jpg','扬州炒饭',1,'2023-04-13 23:17:52','2024-09-01 20:51:20'),(99,'腐竹',3,8.00,'/profile/upload/2024/09/01/下载_20240901205231A043_20240901210757A066.jpg','腐竹',0,'2023-04-13 23:19:18','2024-09-01 21:07:59'),(104,'菌菇锅',1,59.00,'/profile/upload/2024/08/31/22e36094-a780-43c4-b731-02fdf6caa42e_20240826211248A015_20240831212729A011.jpg','',1,'2022-12-22 13:16:52','2024-08-31 21:27:33'),(105,'番茄锅',1,59.00,'/profile/upload/2024/08/31/7f71bc6e-0d34-4bbd-b60f-788142c64aff_20240826211231A014_20240831212913A013.jpg','',1,'2022-12-22 13:17:10','2024-08-31 21:29:20'),(106,'牛油锅',1,68.00,'/profile/upload/2024/08/31/398d4665-7de7-4fab-a5e6-f17199e27efe_20240831212902A012.jpg','',1,'2022-12-22 13:17:29','2024-08-31 21:29:05'),(107,'菌菇番茄双拼锅',1,76.00,'/profile/upload/2024/08/31/7c3bfcb9-2c77-445f-8fd4-f618b7c781bb_20240826211055A011_20240831213016A016.jpg','',1,'2022-12-22 13:17:57','2024-08-31 21:30:18'),(108,'牛油菌菇双拼锅',1,79.00,'/profile/upload/2024/08/31/c587667b-3df5-4754-a825-07e69c58b699_20240831212956A015.jpg','',1,'2022-12-22 13:18:29','2024-08-31 21:30:07'),(109,'牛油番茄双拼锅',1,79.00,'/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg','',1,'2022-12-22 13:18:53','2024-08-31 21:30:40'),(110,'猪脑',2,29.00,'/profile/upload/2024/08/31/b2faa669-8f78-4b94-8d76-d2fc278b4aa6_20240831213057A018.jpg','',1,'2022-12-22 13:23:05','2024-08-31 21:31:01'),(111,'小郡肝',2,26.00,'/profile/upload/2024/09/01/1c1db3da-93c1-48c3-a40b-556d4a29e4f6_20240901203503A001.jpg','',1,'2022-12-22 13:23:25','2024-09-01 20:35:06'),(112,'午餐肉',2,26.00,'/profile/upload/2024/09/01/08ae3467-476d-495d-bca2-502f325a22bd_20240901203651A002.jpg','',1,'2022-12-22 13:23:41','2024-09-01 20:36:54'),(113,'乌鸡卷',2,28.00,'/profile/upload/2024/09/01/ba1b0416-3929-425a-bcd5-4322af3ebb10_20240901203718A003.jpg','',1,'2022-12-22 13:23:55','2024-09-01 20:37:20'),(114,'牛蛙',2,32.00,'/profile/upload/2024/09/01/36fbf3e8-a0eb-43c9-afac-57c35faa46f0_20240901203734A004.jpg','',1,'2022-12-22 13:24:11','2024-09-01 20:37:36'),(115,'鸭血',2,26.00,'/profile/upload/2024/09/01/4d76fef4-1738-43a7-9ca7-5834ed6dcbd4_20240901203744A005.jpg','',1,'2022-12-22 13:24:30','2024-09-01 20:37:46'),(116,'毛肚',2,36.00,'/profile/upload/2024/09/01/cca74398-ab73-4209-bdd7-c8a666a5ea2d_20240901203804A006.jpg','',1,'2022-12-22 13:24:43','2024-09-01 20:38:06'),(117,'雪花肥牛',2,39.00,'/profile/upload/2024/09/01/5f80d3b2-2f72-4820-9310-0b154baf0717_20240901203814A007.jpg','',1,'2022-12-22 13:25:00','2024-09-01 20:38:16'),(118,'麻辣牛肉',2,39.00,'/profile/upload/2024/09/01/503f043c-e803-4f13-87e1-7c8cc1ee9214_20240901203839A008.jpg','',1,'2022-12-22 13:25:29','2024-09-01 20:38:41'),(119,'羊肉卷',2,49.00,'/profile/upload/2024/09/01/7a3f9fac-f932-4d0c-8053-043a4ce30f5e_20240901203852A009.jpg','',1,'2022-12-22 13:25:47','2024-09-01 20:38:54'),(120,'精品肥牛',2,49.00,'/profile/upload/2024/09/01/9fedb94f-f3c2-4241-bb54-5756e20a78ea_20240901203903A010.jpg','',1,'2022-12-22 13:26:06','2024-09-01 20:39:05'),(121,'鹌鹑蛋',2,29.00,'/profile/upload/2024/09/01/41aa4b22-8397-46f6-be66-db761454811a_20240901203924A011.jpg','',1,'2022-12-22 13:32:39','2024-09-01 20:39:25'),(122,'贡菜丸子',7,26.00,'/profile/upload/2024/09/01/6e2400c2-7bf5-4218-b766-56b6a0c2fc81_20240901203959A014.jpg','',1,'2022-12-22 13:32:56','2024-09-01 20:40:01'),(123,'墨鱼鹅肝丸子',7,29.00,'/profile/upload/2024/09/01/4c5f0b8e-e561-4856-b5a5-7bea5497a54b_20240901203948A013.jpg','',1,'2022-12-22 13:33:17','2024-09-01 20:39:51'),(124,'撒尿牛丸',7,26.00,'/profile/upload/2024/08/31/9fd0ae89-0860-421a-b0c0-77a9abd18cb1_20240826212121A021_20240831214442A019.jpg','',1,'2022-12-22 13:33:35','2024-08-31 21:44:44'),(125,'虾',8,39.00,'/profile/upload/2024/09/01/bf051923-70c1-4c19-96ba-f09de82405be_20240901204022A015.jpg','',1,'2022-12-22 13:35:02','2024-09-01 20:40:24'),(126,'蟹柳',8,28.00,'/profile/upload/2024/09/01/642cb1f8-0846-44c9-b521-94fbe0903e24_20240901210312A064.jpg','',1,'2022-12-22 13:35:22','2024-09-01 21:03:14'),(127,'虾滑',8,36.00,'/profile/upload/2024/09/01/5eac3d1f-c04f-404b-9c39-b1c16981077a_20240901204032A016.jpg','',1,'2022-12-22 13:35:37','2024-09-01 20:40:33'),(128,'藕',3,16.00,'/profile/upload/2024/09/01/5ad2cad8-9297-404b-9dbb-02e7f221840e_20240901204044A017.jpg','',1,'2022-12-22 13:36:15','2024-09-01 20:40:46'),(129,'笋尖',3,16.00,'/profile/upload/2024/09/01/17fa05e2-d098-42dc-ae79-741bf1c31651_20240901204101A018.jpg','',1,'2022-12-22 13:36:30','2024-09-01 20:41:04'),(130,'海带结',3,16.00,'/profile/upload/2024/09/01/b66e64da-fb78-4189-8667-f5d300eea64e_20240901204127A019.jpg','',1,'2022-12-22 13:36:49','2024-09-01 20:41:29'),(131,'冬瓜',3,12.00,'/profile/upload/2024/09/01/403a5b4d-8cee-496d-b822-3395f8927d86_20240901204144A020.jpg','',1,'2022-12-22 13:37:04','2024-09-01 20:41:46'),(132,'生菜',3,12.00,'/profile/upload/2024/09/01/a3dd0c29-650d-4ad9-81b5-c3bbd519f8d2_20240901204202A021.jpg','',1,'2022-12-22 13:37:19','2024-09-01 20:42:03'),(133,'黄豆皮',3,12.00,'/profile/upload/2024/09/01/910a019b-6586-4be2-8f18-2047945b2b64_20240901204239A022.jpg','',1,'2022-12-22 13:37:37','2024-09-01 20:42:41'),(134,'山药',3,16.00,'/profile/upload/2024/09/01/d4ea7df0-df49-4f76-a569-d84c7c78e814_20240901204304A023.jpg','',1,'2022-12-22 13:37:53','2024-09-01 20:43:06'),(135,'土豆',3,12.00,'/profile/upload/2024/09/01/2ac3e177-8fc8-4ac5-851d-7f9fffbaafa0_20240901205359A046_20240901210829A067.jpg','',1,'2022-12-22 13:38:06','2024-09-01 21:08:31'),(136,'金针菇',3,16.00,'/profile/upload/2024/09/01/2d759ed1-f848-4301-8066-116d35f75e95_20240901204319A025.jpg','',1,'2022-12-22 13:38:35','2024-09-01 20:43:22'),(137,'醪糟汤圆',4,18.00,'/profile/upload/2024/09/01/48886beb-9336-425e-bd85-1f0c28cb888f_20240901204341A026.jpg','',1,'2022-12-22 13:39:26','2024-09-01 20:43:43'),(138,'红糖糍粑',4,18.00,'/profile/upload/2024/09/01/9acf6e51-2b0f-41da-8a3d-b1d73e9d285f_20240901204356A027.jpg','',1,'2022-12-22 13:39:43','2024-09-01 20:43:57'),(139,'小酥肉',4,28.00,'/profile/upload/2024/09/01/425e0cfd-c006-4c19-8d27-ed1a353fc257_20240901204430A028.jpg','',1,'2022-12-22 13:39:57','2024-09-01 20:44:32'),(140,'江小白',6,22.00,'/profile/upload/2024/09/01/77e3697b-9327-47ce-a100-725b44f9f9f9_20240901204444A029.jpg','',1,'2022-12-22 13:40:18','2024-09-01 20:45:44'),(141,'珍珠奶茶',6,16.00,'/profile/upload/2024/09/01/014da57c-541e-4f3c-a2c6-b465af670455_20240901204512A030.jpg','',1,'2022-12-22 13:40:35','2024-09-01 20:45:25'),(142,'满杯橙海粒',6,18.00,'/profile/upload/2024/09/01/05c5bc41-46f1-4ae2-af40-ec9d30f1bedf_20240901204644A033.jpg','',1,'2022-12-22 13:40:51','2024-09-01 20:46:46'),(143,'蜜桃乌龙',6,18.00,'/profile/upload/2024/09/01/0e03f011-68ba-4b8e-88c8-3bc253adbf47_20240901204622A032.jpg','',1,'2022-12-22 13:41:43','2024-09-01 20:46:38'),(144,'啤酒',6,22.00,'/profile/upload/2024/09/01/514b8382-7ed4-4d03-9acd-fbb168ac2d88_20240901204707A034.jpg','',1,'2022-12-22 13:42:32','2024-09-01 20:47:18'),(145,'可乐',6,5.00,'/profile/upload/2024/09/01/37e1cf90-99d8-47bb-8734-abdaf8e2d6b4_20240901204740A035.jpg','',1,'2022-12-22 13:42:49','2024-09-01 20:47:42'),(146,'酸梅汁',6,18.00,'/profile/upload/2024/09/01/ba26a79e-7d31-44d8-941b-d98214ec2e36_20240901204757A036.jpg','',1,'2022-12-22 13:43:05','2024-09-01 20:48:01'),(147,'西瓜汁',6,18.00,'/profile/upload/2024/09/01/d224329a-f03a-44a2-b020-7c9b96851523_20240901204817A037.jpg','',1,'2022-12-22 13:43:18','2024-09-01 20:48:18'),(148,'柠檬水',6,18.00,'/profile/upload/2024/09/01/d25ce876-0244-4c2d-b013-129abd1271a4_20240901204844A038.jpg','',1,'2022-12-22 13:43:34','2024-09-01 20:48:45');
/*!40000 ALTER TABLE `tb_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dish_flavor`
--

DROP TABLE IF EXISTS `tb_dish_flavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dish_flavor` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dish_id` bigint NOT NULL COMMENT '菜品',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味名称',
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='菜品口味关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dish_flavor`
--

LOCK TABLES `tb_dish_flavor` WRITE;
/*!40000 ALTER TABLE `tb_dish_flavor` DISABLE KEYS */;
INSERT INTO `tb_dish_flavor` VALUES (1,63,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(111,63,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(112,60,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(113,60,'甜味','[\"无糖\",\"少糖\",\"半糖\",\"多糖\"]'),(114,57,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(115,57,'辣度','[\"不辣\",\"微辣\",\"中辣\"]'),(116,56,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(117,54,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(118,52,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(119,52,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(122,73,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(136,77,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(137,77,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(138,76,'辣度','[\"微辣\",\"中辣\"]'),(139,76,'忌口','[\"不要葱\",\"不要香菜\",\"不要辣\"]'),(140,75,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(141,75,'辣度','[\"不辣\",\"微辣\",\"中辣\"]'),(142,74,'忌口','[\"不要葱\",\"不要蒜\"]'),(143,74,'甜味','[\"无糖\",\"少糖\",\"半糖\"]'),(144,86,'辣度','[\"微辣\",\"中辣\",\"重辣\"]'),(145,87,'辣度','[\"微辣\",\"中辣\",\"重辣\"]'),(146,88,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(147,88,'辣度','[\"微辣\",\"中辣\"]'),(148,89,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(149,89,'甜味','[\"无糖\",\"少糖\"]'),(150,90,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(151,90,'辣度','[\"不辣\",\"微辣\"]'),(152,91,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(153,91,'辣度','[\"不辣\",\"微辣\"]'),(154,92,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(155,51,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(156,51,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(157,72,'辣度','[\"微辣\"]'),(159,53,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(160,53,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(161,93,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]'),(162,93,'辣度','[\"微辣\",\"中辣\"]'),(163,94,'忌口','[\"不要葱\",\"不要蒜\",\"不要香菜\"]'),(164,94,'辣度','[\"不辣\",\"微辣\"]'),(165,95,'辣度','[\"微辣\",\"中辣\"]'),(166,96,'辣度','[\"微辣\",\"中辣\"]'),(167,97,'忌口','[\"不要蒜\",\"不要香菜\"]'),(168,97,'辣度','[\"微辣\",\"中辣\"]'),(169,67,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(170,66,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(172,65,'辣度','[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]'),(182,85,'甜味','[\"全糖\",\"半糖\",\"少糖\"]'),(183,141,'甜味','[\"无糖\",\"少糖\",\"半糖\",\"多糖\"]'),(184,140,'温度','[\"常温\"]'),(185,142,'甜味','[\"无糖\",\"少糖\",\"半糖\",\"多糖\"]'),(186,142,'温度','[\"去冰\",\"少冰\",\"常温\"]'),(187,143,'甜味','[\"无糖\",\"少糖\",\"半糖\",\"多糖\"]'),(188,143,'温度','[\"常温\",\"去冰\",\"少冰\",\"多冰\"]'),(189,144,'温度','[\"去冰\",\"少冰\",\"多冰\"]');
/*!40000 ALTER TABLE `tb_dish_flavor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_employee`
--

DROP TABLE IF EXISTS `tb_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_employee` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '姓名',
  `username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '身份证号',
  `status` int DEFAULT '1' COMMENT '状态 0:禁用，1:正常',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_user` bigint DEFAULT NULL COMMENT '创建人',
  `update_user` bigint DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1606953823670767618 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='员工信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_employee`
--

LOCK TABLES `tb_employee` WRITE;
/*!40000 ALTER TABLE `tb_employee` DISABLE KEYS */;
INSERT INTO `tb_employee` VALUES (1,'管理员','admin','e10adc3949ba59abbe56e057f20f883e','13812312312','1','110101199001010047',1,'2021-05-06 17:20:07','2021-05-10 02:24:09',1,1),(1606953823670767617,'张三','zhangsan','123456','18234567890','1','123456789098765432',1,'2022-12-25 18:03:42','2022-12-25 18:03:42',1,1);
/*!40000 ALTER TABLE `tb_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order_detail`
--

DROP TABLE IF EXISTS `tb_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '名字',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '图片',
  `order_id` bigint NOT NULL COMMENT '订单id',
  `dish_id` bigint DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味',
  `number` int DEFAULT '1' COMMENT '数量',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1832665283334705159 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='订单明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order_detail`
--

LOCK TABLES `tb_order_detail` WRITE;
/*!40000 ALTER TABLE `tb_order_detail` DISABLE KEYS */;
INSERT INTO `tb_order_detail` VALUES (1606660081021775873,'畅享2人套餐','6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg',1606660080958861314,NULL,1605801571443302402,NULL,1,229.00),(1606833817796612097,'畅享2人套餐','6c4dbafb-743f-48cf-87da-6e2a7c2d425e.jpg',1606833817729503233,NULL,1605801571443302402,NULL,1,229.00),(1830569181810716675,'贡菜丸子','/profile/upload/2024/09/01/6e2400c2-7bf5-4218-b766-56b6a0c2fc81_20240901203959A014.jpg',1830569181810716674,122,NULL,NULL,1,0.26),(1830569181810716676,'墨鱼鹅肝丸子','/profile/upload/2024/09/01/4c5f0b8e-e561-4856-b5a5-7bea5497a54b_20240901203948A013.jpg',1830569181810716674,123,NULL,NULL,1,0.29),(1830569181810716677,'馒头','/profile/upload/2024/09/01/下载 (14)_20240901205859A056.jpg',1830569181810716674,50,NULL,NULL,1,0.01),(1830582907184017409,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1830582907116908546,109,NULL,NULL,1,0.79),(1830588179315077122,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1830588179252162561,109,NULL,NULL,1,79.00),(1830588179315077123,'牛油菌菇双拼锅','/profile/upload/2024/08/31/c587667b-3df5-4754-a825-07e69c58b699_20240831212956A015.jpg',1830588179252162561,108,NULL,NULL,1,79.00),(1830588179315077124,'牛油锅','/profile/upload/2024/08/31/398d4665-7de7-4fab-a5e6-f17199e27efe_20240831212902A012.jpg',1830588179252162561,106,NULL,NULL,1,68.00),(1830588179315077125,'波士顿龙虾','/profile/upload/2024/09/01/下载 (16)_20240901210027A058.jpg',1830588179252162561,75,NULL,'不要蒜,微辣',1,128.00),(1832372211719798786,'畅享2人套餐','/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg',1832372211719798785,NULL,1,NULL,1,229.00),(1832372832111886337,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832372832090914818,109,NULL,NULL,1,79.00),(1832373095509983235,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832373095509983234,109,NULL,NULL,1,79.00),(1832382946038427649,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832373095509983235,109,NULL,NULL,1,79.00),(1832385410582142978,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832373095509983236,109,NULL,NULL,1,79.00),(1832385645035368450,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832373095509983237,109,NULL,NULL,1,79.00),(1832388868286640129,'牛油番茄双拼锅','/profile/upload/2024/08/31/c1851730-8cce-494e-bd78-6d097e63f791_20240831213036A017.jpg',1832373095509983239,109,NULL,NULL,1,79.00),(1832665283334705153,'香辣烤乌江鱼3斤','/profile/upload/2024/09/01/下载 (17)_20240901210055A059.jpg',1832665283292762113,76,NULL,'中辣,不要葱',1,108.00),(1832665283334705154,'蟹柳','/profile/upload/2024/09/01/642cb1f8-0846-44c9-b521-94fbe0903e24_20240901210312A064.jpg',1832665283292762113,126,NULL,NULL,1,28.00),(1832665283334705155,'虾滑','/profile/upload/2024/09/01/5eac3d1f-c04f-404b-9c39-b1c16981077a_20240901204032A016.jpg',1832665283292762113,127,NULL,NULL,1,36.00),(1832665283334705156,'红糖糍粑','/profile/upload/2024/09/01/9acf6e51-2b0f-41da-8a3d-b1d73e9d285f_20240901204356A027.jpg',1832665283292762113,138,NULL,NULL,1,18.00),(1832665283334705157,'墨鱼鹅肝丸子','/profile/upload/2024/09/01/4c5f0b8e-e561-4856-b5a5-7bea5497a54b_20240901203948A013.jpg',1832665283292762113,123,NULL,NULL,1,29.00),(1832665283334705158,'test11','/profile/upload/2024/08/28/c1a30a42-51f1-476d-b3cd-312803ce0695_20240828182358A001.jpg',1832665283292762113,NULL,2,NULL,1,399.00);
/*!40000 ALTER TABLE `tb_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_orders` (
  `table_no` int DEFAULT NULL,
  `id` bigint NOT NULL COMMENT '主键',
  `number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '订单号',
  `status` int DEFAULT '1' COMMENT '订单状态 1待付款，2待派送，3已派送，4已完成，5已取消',
  `user_id` bigint NOT NULL COMMENT '下单用户',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `checkout_time` datetime DEFAULT NULL COMMENT '结账时间',
  `pay_method` int DEFAULT '1' COMMENT '支付方式 1微信,2支付宝',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '实收金额',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '备注',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (5,1606660080958861314,'1606660080958861314',1,1606660041570152450,'2022-12-24 22:36:28','2022-12-24 22:36:28',1,229.00,'','13123456754'),(3,1606660314938109954,'1606660314938109954',4,1606660041570152450,'2022-12-24 22:37:24','2022-12-24 22:37:24',1,253.00,'','13123456754'),(26,1606660571264610305,'1606660571264610305',4,1606435299244244993,'2022-12-24 22:38:25','2022-12-24 22:38:25',1,259.00,'','13123456789'),(15,1606820683333652481,'1606820683333652481',4,1606816987581448194,'2022-12-25 09:14:39','2022-12-25 09:14:39',1,390.00,'','18123456789'),(7,1606830616875835393,'1606830616875835393',4,1606830313472466946,'2022-12-25 09:54:07','2022-12-25 09:54:07',1,335.00,'','18888888886'),(2,1606833817729503233,'1606833817729503233',4,1606830313472466946,'2022-12-25 10:06:50','2022-12-25 10:06:50',1,229.00,'c','18888888886'),(10,1832403208154779649,'1832403208154779649',4,8,'2024-09-07 20:59:04','2024-09-07 20:59:04',1,79.00,'','19999999999'),(2,1832404560419360769,'1832404560419360769',4,8,'2024-09-07 21:04:26','2024-09-07 21:04:26',1,68.00,'','19999999999'),(4,1832664967688163330,'1832664967688163330',3,1,'2024-09-08 14:19:12','2024-09-08 14:19:12',1,79.00,'','15707938251'),(12,1832665283292762113,'1832665283292762113',2,1,'2024-09-08 14:20:27','2024-09-08 14:20:27',1,618.00,'','15707938251');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setmeal`
--

DROP TABLE IF EXISTS `tb_setmeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_setmeal` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_id` bigint NOT NULL COMMENT '菜品分类id',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '套餐名称',
  `price` decimal(10,2) NOT NULL COMMENT '套餐价格',
  `status` int DEFAULT NULL COMMENT '状态 0:停用 1:启用',
  `code` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '编码',
  `description` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '描述信息',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_setmeal_name` (`name`) USING BTREE,
  KEY `fk_setmeal_id` (`category_id`),
  CONSTRAINT `fk_setmeal_id` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='套餐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setmeal`
--

LOCK TABLES `tb_setmeal` WRITE;
/*!40000 ALTER TABLE `tb_setmeal` DISABLE KEYS */;
INSERT INTO `tb_setmeal` VALUES (1,5,'畅享2人套餐',229.00,1,'','','/profile/upload/2024/09/01/下载 (22)_20240901211131A069.jpg','2022-12-22 13:45:04','2024-09-08 15:16:29'),(2,16,'test11',399.00,1,NULL,NULL,'/profile/upload/2024/08/28/c1a30a42-51f1-476d-b3cd-312803ce0695_20240828182358A001.jpg','2024-08-28 18:24:07','2024-09-01 21:04:24'),(11,5,'qq',333.00,1,NULL,NULL,'/profile/upload/2024/09/01/4c600ed5-45e2-4685-8dc9-c11d714fb82e_20240901160651A011.png','2024-09-01 16:07:14','2024-09-01 20:33:54');
/*!40000 ALTER TABLE `tb_setmeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setmeal_dish`
--

DROP TABLE IF EXISTS `tb_setmeal_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_setmeal_dish` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `setmeal_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '套餐id ',
  `dish_id` bigint NOT NULL COMMENT '菜品id',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '菜品名称 （冗余字段）',
  `price` decimal(10,2) DEFAULT NULL COMMENT '菜品原价（冗余字段）',
  `copies` int DEFAULT '1' COMMENT '份数',
  `sort` int DEFAULT '0' COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_setmeal_dish` (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='套餐菜品关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setmeal_dish`
--

LOCK TABLES `tb_setmeal_dish` WRITE;
/*!40000 ALTER TABLE `tb_setmeal_dish` DISABLE KEYS */;
INSERT INTO `tb_setmeal_dish` VALUES (52,'11',18,'牛油锅',68.00,1,NULL,NULL,NULL),(53,'11',19,'菌菇番茄双拼锅',76.00,4,NULL,NULL,NULL),(54,'11',20,'牛油菌菇双拼锅',79.00,1,NULL,NULL,NULL),(55,'11',26,'醪糟汤圆',18.00,3,NULL,NULL,NULL),(56,'11',27,'波士顿龙虾',128.00,1,NULL,NULL,NULL),(57,'11',28,'香辣烤乌江鱼3斤',108.00,1,NULL,NULL,NULL),(58,'2',29,'牛油锅',68.00,1,NULL,NULL,NULL),(59,'2',30,'菌菇番茄双拼锅',76.00,1,NULL,NULL,NULL),(60,'2',31,'牛油菌菇双拼锅',79.00,1,NULL,NULL,NULL),(61,'2',32,'渝乡沸腾鱼片',79.00,1,NULL,NULL,NULL),(62,'2',33,'干锅藕片',28.00,1,NULL,NULL,NULL),(63,'2',34,'猪脑',29.00,1,NULL,NULL,NULL),(64,'2',35,'土豆片',6.00,1,NULL,NULL,NULL),(65,'2',36,'皮蛋豆腐',28.00,1,NULL,NULL,NULL),(66,'2',37,'果仁菠菜',18.00,1,NULL,NULL,NULL),(67,'2',38,'红糖糍粑',18.00,1,NULL,NULL,NULL),(68,'2',39,'醪糟汤圆',18.00,1,NULL,NULL,NULL),(102,'1',91,'干锅牛蛙',38.00,1,NULL,NULL,NULL),(103,'1',92,'番茄锅',59.00,1,NULL,NULL,NULL),(104,'1',93,'菌菇番茄双拼锅',76.00,1,NULL,NULL,NULL),(105,'1',94,'老醋花生',12.00,1,NULL,NULL,NULL),(106,'1',95,'醪糟汤圆',18.00,1,NULL,NULL,NULL),(107,'1',96,'娃娃菜',16.00,1,NULL,NULL,NULL),(108,'1',97,'皮蛋豆腐',28.00,1,NULL,NULL,NULL),(109,'1',98,'蒜泥黄瓜',12.00,1,NULL,NULL,NULL),(110,'1',99,'墨鱼鹅肝丸子',29.00,1,NULL,NULL,NULL),(111,'1',100,'鱼豆腐',6.00,1,NULL,NULL,NULL),(112,'1',101,'香辣烤鱼3斤',78.00,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_setmeal_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shopping_cart`
--

DROP TABLE IF EXISTS `tb_shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_shopping_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '名称',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '图片',
  `user_id` bigint NOT NULL COMMENT '主键',
  `dish_id` bigint DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '口味',
  `number` int NOT NULL DEFAULT '1' COMMENT '数量',
  `amount` decimal(10,2) NOT NULL COMMENT '金额',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1832665229077188610 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shopping_cart`
--

LOCK TABLES `tb_shopping_cart` WRITE;
/*!40000 ALTER TABLE `tb_shopping_cart` DISABLE KEYS */;
INSERT INTO `tb_shopping_cart` VALUES (1830583341164457985,'牛油菌菇双拼锅','/profile/upload/2024/08/31/c587667b-3df5-4754-a825-07e69c58b699_20240831212956A015.jpg',1830541419280539649,108,NULL,NULL,4,0.79,'2024-09-02 20:27:34');
/*!40000 ALTER TABLE `tb_shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '身份证号',
  `avatar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '头像',
  `status` int DEFAULT '0' COMMENT '状态 0:禁用，1:正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='用户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,NULL,'15707938251',NULL,NULL,NULL,1),(2,NULL,'15708938251',NULL,NULL,NULL,1),(3,NULL,'15707938121',NULL,NULL,NULL,1),(4,NULL,'13123456789',NULL,NULL,NULL,1),(5,NULL,'13123456754',NULL,NULL,NULL,1),(6,NULL,'18123456789',NULL,NULL,NULL,1),(7,NULL,'18888888886',NULL,NULL,NULL,1),(8,NULL,'19999999999',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 22:11:27
