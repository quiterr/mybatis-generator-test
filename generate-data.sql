-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.11-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5151
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 air_conditioner 的数据库结构
CREATE DATABASE IF NOT EXISTS `air_conditioner` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `air_conditioner`;

-- 导出  表 air_conditioner.devices 结构
CREATE TABLE IF NOT EXISTS `devices` (
  `device_id` int(11) NOT NULL COMMENT '设备ID',
  `type` int(11) DEFAULT NULL COMMENT '型号',
  `position` varchar(50) DEFAULT NULL COMMENT '位置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备表';

-- 正在导出表  air_conditioner.devices 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` (`device_id`, `type`, `position`) VALUES
	(4725790, NULL, '机房'),
	(4725791, NULL, '办公室'),
	(4725793, NULL, '会议室');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
