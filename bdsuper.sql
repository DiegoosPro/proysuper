/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - dbsuper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbsuper` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbsuper`;

/*Table structure for table `tab_categorias` */

DROP TABLE IF EXISTS `tab_categorias`;

CREATE TABLE `tab_categorias` (
  `catego_id` int(11) NOT NULL,
  `catego_descripcion` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`catego_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `tab_categorias` */

insert  into `tab_categorias`(`catego_id`,`catego_descripcion`) values (0,NULL),(1,'Electrodomésticos'),(2,'Alimentos y Bebidas'),(3,'Electrónica'),(4,'Cuidado Personal'),(5,'Hogar y Decoración');

/*Table structure for table `tab_marcas` */

DROP TABLE IF EXISTS `tab_marcas`;

CREATE TABLE `tab_marcas` (
  `marca_id` int(11) NOT NULL,
  `marca_descripcion` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`marca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `tab_marcas` */

insert  into `tab_marcas`(`marca_id`,`marca_descripcion`) values (1,'Kellogg\'s'),(2,'Coca-Cola'),(3,'Nestlé'),(4,'P&G'),(5,'Unilever');

/*Table structure for table `tab_productos` */

DROP TABLE IF EXISTS `tab_productos`;

CREATE TABLE `tab_productos` (
  `pro_id` int(11) NOT NULL,
  `pro_descripcion` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pro_precio_c` decimal(10,0) DEFAULT NULL,
  `pro_precio_v` decimal(10,0) DEFAULT NULL,
  `pro_stock` int(11) DEFAULT 2,
  `pro_fecha_ela` date DEFAULT NULL,
  `pro_nivel_azucar` char(1) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pro_apli_iva` tinyint(1) DEFAULT NULL,
  `pro_especific` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `pro_imagen` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `catego_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `marca_id` (`marca_id`),
  KEY `catego_id` (`catego_id`),
  CONSTRAINT `tab_productos_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `tab_marcas` (`marca_id`),
  CONSTRAINT `tab_productos_ibfk_2` FOREIGN KEY (`catego_id`) REFERENCES `tab_categorias` (`catego_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Data for the table `tab_productos` */

insert  into `tab_productos`(`pro_id`,`pro_descripcion`,`pro_precio_c`,`pro_precio_v`,`pro_stock`,`pro_fecha_ela`,`pro_nivel_azucar`,`pro_apli_iva`,`pro_especific`,`pro_imagen`,`marca_id`,`catego_id`) values (1,'Lavadora LG',600,800,5,'2023-06-01','M',1,'Capacidad de 10 kg, 1200 RPM','lavadora.jpg',4,1),(2,'Leche Alpura',3,5,20,'2023-06-02','N',1,'Leche entera, 1 litro','leche.jpg',3,2),(3,'iPhone 13 Pro',1099,1300,8,'2023-06-03','A',1,'Pantalla Super Retina XDR de 6.1\", 128GB Almacenamiento','ipone.jpg',2,3),(4,'Crema Facial Nivea',10,15,15,'2023-06-04','M',1,'Hidratante, 50 ml','nivea.jpg',5,4),(5,'Sartén antiadherente',20,30,12,'2023-06-05','A',1,'Diámetro de 26 cm, mango ergonómico','sarten.jpg',1,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
