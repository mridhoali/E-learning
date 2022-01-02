/*
SQLyog Enterprise - MySQL GUI v7.14 
MySQL - 5.5.8 : Database - mtsguppi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`mtsguppi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mtsguppi`;

/*Table structure for table `bulan` */

DROP TABLE IF EXISTS `bulan`;

CREATE TABLE `bulan` (
  `id` int(2) DEFAULT NULL,
  `angkabln` varchar(2) DEFAULT NULL,
  `namabln` varchar(9) DEFAULT NULL,
  `sktbln` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bulan` */

insert  into `bulan`(`id`,`angkabln`,`namabln`,`sktbln`) values (1,'01','JANUARI','JAN'),(2,'02','FEBRUARI','FEB'),(3,'03','MARET','MAR'),(4,'04','APRIL','APR'),(5,'05','MEI','MAY'),(6,'06','JUNI','JUN'),(7,'07','JULI','JUL'),(8,'08','AGUSTUS','AUG'),(9,'09','SEPTEMBER','SEP'),(10,'10','OKTOBER','OCT'),(11,'11','NOVEMBER','NOV'),(12,'12','DESEMBER','DEC');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `idforum` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `idguru` int(11) NOT NULL,
  `judul` varchar(160) NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`idforum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `forum` */

insert  into `forum`(`idforum`,`waktu`,`idguru`,`judul`,`isi`) values (1,'2019-07-30 22:51:37',1545,'Pembukaan Forum','Dimohonkan kepada seluruh murid untuk bertanya melalui forum ini.'),(2,'2019-08-29 20:04:50',1545,'tentang pasar','untuk kelas VII A'),(3,'2019-09-07 09:06:47',1545,'Silahkan Berdiskusi','Untuk Kelas VII B tentang Materi 1');

/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE `guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `user` varchar(40) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `tanggallahir` date NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `guru` */

insert  into `guru`(`id`,`nama`,`user`,`nip`,`alamat`,`notelp`,`tempatlahir`,`tanggallahir`,`pass`) values (1,'Khamim ','GR-0001','-','Natar','081289898989','Sijunjung','1970-05-04','123456'),(4,'Kasim Bakri','GR-0002','196703171991032003','Natar','081277885667','Tanjung Karang','1967-03-17','123456');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u` (`kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`id`,`kelas`) values (2,'VII A'),(3,'VII B'),(4,'VII C'),(5,'VII D');

/*Table structure for table `komentarforum` */

DROP TABLE IF EXISTS `komentarforum`;

CREATE TABLE `komentarforum` (
  `idkomentar` int(11) NOT NULL AUTO_INCREMENT,
  `idforum` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `waktu` datetime NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`idkomentar`),
  KEY `idforum` (`idforum`),
  CONSTRAINT `komentarforum_ibfk_1` FOREIGN KEY (`idforum`) REFERENCES `forum` (`idforum`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `komentarforum` */

insert  into `komentarforum`(`idkomentar`,`idforum`,`nisn`,`waktu`,`komentar`) values (1,1,'059983221005','2019-08-01 22:24:27','Oke siap pak.'),(3,1,'059983221005','2019-08-01 22:27:30','Oke siap pak.'),(4,1,'059983221005','2019-08-01 22:30:38','tes'),(5,2,'3933','2019-08-29 20:07:11','pasar di daerah natar termasuk pasar jenis apa?'),(6,3,'3933','2019-09-07 09:14:09','Apa yang dimaksud dengan Alat Tukar?');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `session` int(11) NOT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `lvl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`id`,`nama`,`jabatan`,`session`,`user`,`pass`,`lvl`) values (4,'ARIEF PRADIPTA','Administrasi',0,'admin','admin','staf');

/*Table structure for table `materibelajar` */

DROP TABLE IF EXISTS `materibelajar`;

CREATE TABLE `materibelajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) NOT NULL,
  `idguru` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `materibelajar` */

insert  into `materibelajar`(`id`,`kode`,`idguru`,`waktu`,`dokumen`,`video`,`keterangan`) values (2,'MTB-0002',1545,'2019-09-04 12:12:44','3496X.pdf','h31MLuFuNQY','coba tes'),(3,'MTB-0003',1545,'2019-09-04 12:15:50','5372-Article Text-9347-1-10-20171229.pdf','KmOHoKzWrn8','konsep ilmu ekonomi'),(4,'MTB-0004',1545,'2019-09-07 13:04:52','1-julian-chandra-w.pdf','','tes 1'),(5,'MTB-0005',1545,'2019-09-18 01:46:52','Media_pembelajaran.pdf','7z-IBfEVjvk','materi kelas 11'),(6,'MTB-0006',1545,'2019-09-18 11:29:40','holand bakery-2014.pdf','h31MLuFuNQY','pelajari materi kelas 7'),(8,'MTB-0007',1,'2019-09-19 12:25:25','metodologi-penelitian.pdf','-','materi belajar kelas 7');

/*Table structure for table `materitugas` */

DROP TABLE IF EXISTS `materitugas`;

CREATE TABLE `materitugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) NOT NULL,
  `idguru` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `materitugas` */

insert  into `materitugas`(`id`,`kode`,`idguru`,`waktu`,`dokumen`,`keterangan`) values (10,'MTT-0001',1545,'2019-09-23 10:29:43','Media_pembelajaran.pdf','tugas kelas 7a'),(11,'MTT-0002',1545,'2019-09-23 10:30:06','b.pdf','tugas kelas 7b'),(12,'MTT-0003',1545,'2019-09-23 10:31:32','Media_pembelajaran.pdf','tugas kelas 7c'),(13,'MTT-0004',1,'2019-10-06 19:53:44','ex.pdf','tugas 4 kelas 7a');

/*Table structure for table `murid` */

DROP TABLE IF EXISTS `murid`;

CREATE TABLE `murid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempatlahir` varchar(50) NOT NULL,
  `tanggallahir` date NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `nohp` varchar(14) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `tahunajar` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL DEFAULT '123456',
  `anakke` int(11) NOT NULL,
  `jumlahsaudara` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u` (`nisn`),
  KEY `kelas` (`kelas`),
  KEY `tahunajar` (`tahunajar`),
  CONSTRAINT `murid_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`kelas`),
  CONSTRAINT `murid_ibfk_2` FOREIGN KEY (`tahunajar`) REFERENCES `tahunajar` (`tahunajar`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `murid` */

insert  into `murid`(`id`,`nisn`,`nama`,`tempatlahir`,`tanggallahir`,`jeniskelamin`,`agama`,`alamat`,`kabupaten`,`kecamatan`,`kelurahan`,`nohp`,`kelas`,`tahunajar`,`pass`,`anakke`,`jumlahsaudara`) values (5,'3933','Aliya Rahma Qurota Aini','Lampung','2005-12-12','Perempuan','Islam','Jl. PU no 09 RT 00/RW 08','Lampung Selatan','Natar','Merak Batin','089768579181','VII A','2018 / 2019','123456',2,2),(6,'3934','Alya Dwi Cahyaning Arum','Natar','2006-01-01','Perempuan','Islam','Jl. Citara','Lampung Selatan','Natar','Tanjung Sari','09897867987','VII A','2018 / 2019','123456',2,2),(7,'3935','Amelia Arianti','Bandar Lampung','2000-09-09','Perempuan','Islam','Jl. Cempaka','Lampung Selatan','Natar','Tanjung Sari','08976818721621','VII A','2018 / 2019','123456',2,3),(8,'4029','Aldi Kurniawan','Tanjung Sari','2005-10-10','Laki-laki','Islam','Jl. Utama','Lampung Selatan','Natar','Tanjung Sari','08976818721621','VII C','2019 / 2020','123456',1,2),(9,'4030','Alfa Razittya ZL','Branti','2005-08-08','Laki-laki','Islam','Jl. Utama','Lampung Selatan','Natar','Merak Batin','081245161771','VII C','2019 / 2020','123456',1,2),(10,'3936','Annisa Septianingrum','Branti','2007-11-02','Perempuan','Islam','Jl. melati','Lampung Selatan','Natar','Merak Batin','07827261781','VII A','2019 / 2020','123456',1,2),(12,'3981','Ahmad Danu Firmansyah','Natar','2007-12-12','Laki-laki','Islam','Jl. Utama','Lampung Selatan','Natar','Merak Batin','0910398316','VII B','2019 / 2020','123456',1,3),(13,'3982','Alian Sambega','Natar','2007-09-09','Laki-laki','Islam','Jl. mawar','Lampung Selatan','Natar','Merak Batin','082198168167','VII B','2019 / 2020','123456',2,5),(14,'3983','Alika Juliana Rahma','Natar','2007-08-08','Perempuan','Islam','Jl. Cempaka','Lampung Selatan','Natar','Merak Batin','017418681689','VII B','2019 / 2020','123456',3,3),(15,'3938','Ayla Nayla','Natar','2007-07-07','Perempuan','Islam','Jl. mawar','Lampung Selatan','Natar','Merak Batin','019184126531','VII A','2019 / 2020','123456',2,2),(16,'3939','Ayu Wandira','Natar','2007-10-08','Perempuan','Islam','Jl. Cempaka','Lampung Selatan','Natar','Tanjung Sari','0153716931','VII A','2019 / 2020','123456',1,1),(17,'3940','Bima Priya Saputra','Lampung Selatan','2007-09-19','Laki-laki','Islam','Jl. Citara','Lampung Selatan','Natar','Tangkit Batu','01721467124','VII A','2019 / 2020','123456',2,2),(18,'3941','Danika Nafisah','Natar','2007-07-07','Laki-laki','Islam','Jl. Utama','Lampung Selatan','Natar','Tanjung Sari','01915561413','VII A','2019 / 2020','123456',2,3),(19,'3984','Alisa Nur Azizah','Lampung Selatan','2007-03-15','Perempuan','Islam','Jl. mawar','Lampung Selatan','Natar','Merak Batin','19353143514','VII B','2019 / 2020','123456',3,5),(20,'3985','Aliya Safira','Lampung Selatan','2007-06-07','Perempuan','Islam','Jl. Citara','Lampung Selatan','Natar','Merak Batin','924756161','VII B','2019 / 2020','123456',2,3),(21,'4075','Agintha Olfi Nataswa','Branti','2007-07-07','Perempuan','Islam','Jl. Citara','Lampung Selatan','Natar','Merak Batin','1247815791','VII D','2019 / 2020','123456',3,4),(22,'3942','Dinda D','Bandar Lampung','2007-09-08','Perempuan','Islam','Jl. mawar','Lampung Selatan','Natar','Merak Batin','02179477125','VII A','2019 / 2020','123456',2,3),(23,'3943','Diva Putra Setiawan','Lampung Selatan','2007-12-09','Laki-laki','Islam','Jl. Utama','Lampung Selatan','Natar','Tanjung Sari','0971895181','VII A','2019 / 2020','123456',4,4),(24,'3944','Dzikri Abdullah','Natar','2007-02-18','Laki-laki','Islam','Jl. Melati','Lampung Selatan','Natar','Merak Batin','0918951275','VII A','2019 / 2020','123456',2,2),(25,'3945','Findo Achmadinedjad Al Rais','Bandar Lampung','2007-12-09','Laki-laki','Islam','Jl. mawar','Lampung Selatan','Natar','Tangkit Batu','91728691860','VII A','2019 / 2020','123456',1,3),(26,'3946','Hasbi Maulana','Bandar Lampung','2007-08-17','Laki-laki','Islam','Jl. mawar','Lampung Selatan','Natar','Merak Batin','10741682175','VII A','2019 / 2020','123456',2,4),(27,'3947','Heni Febriyani','Bandar Lampung','2007-05-09','Perempuan','Islam','Jl. Cempaka','Lampung Selatan','Natar','Merak Batin','0913781875','VII A','2019 / 2020','123456',1,1),(28,'3937','Arjun Sholehiman','Tanjung Karang','2007-01-18','Laki-laki','Islam','Jl. mawar','Lampung Selatan','Natar','Tanjung Sari','0918972187','VII A','2019 / 2020','123456',3,3),(29,'3986','Alniken','Bandar Lampung','2007-09-28','Perempuan','Islam','-','-','-','-','0088967545','VII B','2019 / 2020','123456',1,2),(30,'3987','Andi Kurnia Putra','Bandar Lampung','2007-02-17','Laki-laki','Islam','-','-','-','-','08109371857','VII B','2019 / 2020','123456',2,3),(31,'4031','Alfi Sahri Romadona','Bandar Lampung','2007-07-09','Laki-laki','Islam','-','-','-','-','0893016311','VII C','2019 / 2020','123456',1,1);

/*Table structure for table `nilaitugas` */

DROP TABLE IF EXISTS `nilaitugas`;

CREATE TABLE `nilaitugas` (
  `idnilaitugas` int(11) DEFAULT NULL,
  `idmateritugas` int(11) DEFAULT NULL,
  `idguru` int(11) DEFAULT NULL,
  `nisn` varchar(60) DEFAULT NULL,
  `nilai` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nilaitugas` */

insert  into `nilaitugas`(`idnilaitugas`,`idmateritugas`,`idguru`,`nisn`,`nilai`) values (NULL,10,1545,'3933','90'),(NULL,11,1545,'3933','90'),(NULL,12,1545,'3933','100'),(NULL,10,1545,'3934','70'),(NULL,11,1545,'3934','85'),(NULL,12,1545,'3934','100'),(NULL,10,1545,'3935','75'),(NULL,11,1545,'3935','75'),(NULL,12,1545,'3935','75'),(NULL,10,1545,'3936','80'),(NULL,11,1545,'3936','60'),(NULL,12,1545,'3936','100'),(NULL,10,1545,'3937','100'),(NULL,11,1545,'3937','100'),(NULL,12,1545,'3937','100'),(NULL,10,1545,'3938','100'),(NULL,11,1545,'3938','80'),(NULL,12,1545,'3938','81'),(NULL,10,1545,'3939','90'),(NULL,11,1545,'3939','80'),(NULL,12,1545,'3939','70'),(NULL,10,1545,'3940','85'),(NULL,11,1545,'3940','80'),(NULL,12,1545,'3940','60'),(NULL,10,1545,'3941','60'),(NULL,11,1545,'3941','60'),(NULL,12,1545,'3941','60');

/*Table structure for table `pilihanjawaban` */

DROP TABLE IF EXISTS `pilihanjawaban`;

CREATE TABLE `pilihanjawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtanya` int(11) NOT NULL,
  `urut` varchar(1) NOT NULL,
  `jawab` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

/*Data for the table `pilihanjawaban` */

/*Table structure for table `tahun` */

DROP TABLE IF EXISTS `tahun`;

CREATE TABLE `tahun` (
  `tahun` year(4) NOT NULL,
  PRIMARY KEY (`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tahun` */

insert  into `tahun`(`tahun`) values (2018),(2019),(2020);

/*Table structure for table `tahunajar` */

DROP TABLE IF EXISTS `tahunajar`;

CREATE TABLE `tahunajar` (
  `tahunajar` varchar(50) NOT NULL,
  PRIMARY KEY (`tahunajar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tahunajar` */

insert  into `tahunajar`(`tahunajar`) values ('2016/2017'),('2017/2018'),('2018 / 2019'),('2019 / 2020');

/*Table structure for table `tbl_hasil` */

DROP TABLE IF EXISTS `tbl_hasil`;

CREATE TABLE `tbl_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `kodesoallatihan` varchar(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `idtanya` int(11) NOT NULL,
  `idjawab` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nisn` (`nisn`),
  CONSTRAINT `tbl_hasil_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `murid` (`nisn`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_hasil` */

insert  into `tbl_hasil`(`id`,`waktu`,`kodesoallatihan`,`nisn`,`idtanya`,`idjawab`,`status`) values (152,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',44,212,1),(153,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',45,216,1),(154,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',46,224,1),(155,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',47,227,1),(156,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',48,232,1),(157,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',49,239,1),(158,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',50,244,1),(159,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',51,248,1),(160,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',52,251,1),(161,'2019-10-05 06:32:53','Ekonomi 1 kelas 7','3933',53,256,1),(162,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',54,264,1),(163,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',55,267,1),(164,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',56,271,1),(165,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',57,279,1),(166,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',58,282,1),(167,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',59,286,1),(168,'2019-10-05 06:34:31','Ekonomi 2 kelas 7','3933',60,294,1),(169,'2019-10-05 06:34:32','Ekonomi 2 kelas 7','3933',61,297,1),(170,'2019-10-05 06:34:32','Ekonomi 2 kelas 7','3933',62,304,1),(171,'2019-10-05 06:34:32','Ekonomi 2 kelas 7','3933',63,306,1),(172,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',64,311,1),(173,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',65,319,1),(174,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',66,324,1),(175,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',67,326,1),(176,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',68,333,1),(177,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',69,336,1),(178,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',70,341,1),(179,'2019-10-05 06:35:35','Ekonomi 3 kelas 7','3933',71,347,1),(180,'2019-10-05 06:35:36','Ekonomi 3 kelas 7','3933',72,353,1),(181,'2019-10-05 06:35:36','Ekonomi 3 kelas 7','3933',73,357,1),(182,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',44,212,1),(183,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',45,216,1),(184,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',46,224,1),(185,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',47,227,1),(186,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',48,232,1),(187,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',49,239,1),(188,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',50,244,1),(189,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',51,248,1),(190,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',52,251,1),(191,'2019-10-05 06:38:04','Ekonomi 1 kelas 7','3937',53,256,1),(192,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',54,264,1),(193,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',55,267,1),(194,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',56,271,1),(195,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',57,279,1),(196,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',58,282,1),(197,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',59,286,1),(198,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',60,294,1),(199,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',61,297,1),(200,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',62,304,1),(201,'2019-10-05 06:39:16','Ekonomi 2 kelas 7','3937',63,306,1),(202,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',64,311,1),(203,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',65,319,1),(204,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',66,324,1),(205,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',67,326,1),(206,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',68,333,1),(207,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',69,336,1),(208,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',70,341,1),(209,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',71,347,1),(210,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',72,353,1),(211,'2019-10-05 06:40:26','Ekonomi 3 kelas 7','3937',73,357,1),(212,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',44,212,1),(213,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',45,216,1),(214,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',46,224,1),(215,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',47,229,0),(216,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',48,232,1),(217,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',49,236,0),(218,'2019-10-05 06:53:00','Ekonomi 1 kelas 7','3934',50,244,1),(219,'2019-10-05 06:53:01','Ekonomi 1 kelas 7','3934',51,248,1),(220,'2019-10-05 06:53:01','Ekonomi 1 kelas 7','3934',52,251,1),(221,'2019-10-05 06:53:01','Ekonomi 1 kelas 7','3934',53,256,1),(222,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',54,264,1),(223,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',55,267,1),(224,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',56,271,1),(225,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',57,279,1),(226,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',58,284,0),(227,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',59,286,1),(228,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',60,294,1),(229,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',61,297,1),(230,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',62,304,1),(231,'2019-10-05 06:53:46','Ekonomi 2 kelas 7','3934',63,306,1),(232,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',64,311,1),(233,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',65,319,1),(234,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',66,324,1),(235,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',67,326,1),(236,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',68,333,1),(237,'2019-10-05 06:54:34','Ekonomi 3 kelas 7','3934',69,339,0),(238,'2019-10-05 06:54:35','Ekonomi 3 kelas 7','3934',70,341,1),(239,'2019-10-05 06:54:35','Ekonomi 3 kelas 7','3934',71,347,1),(240,'2019-10-05 06:54:35','Ekonomi 3 kelas 7','3934',72,353,1),(241,'2019-10-05 06:54:35','Ekonomi 3 kelas 7','3934',73,357,1),(242,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',44,212,1),(243,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',45,216,1),(244,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',46,224,1),(245,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',47,227,1),(246,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',48,232,1),(247,'2019-10-05 06:55:41','Ekonomi 1 kelas 7','3935',49,239,1),(248,'2019-10-05 06:55:42','Ekonomi 1 kelas 7','3935',50,244,1),(249,'2019-10-05 06:55:42','Ekonomi 1 kelas 7','3935',51,248,1),(250,'2019-10-05 06:55:42','Ekonomi 1 kelas 7','3935',52,251,1),(251,'2019-10-05 06:55:42','Ekonomi 1 kelas 7','3935',53,256,1),(252,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',54,264,1),(253,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',55,267,1),(254,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',56,271,1),(255,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',57,279,1),(256,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',58,282,1),(257,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',59,286,1),(258,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',60,294,1),(259,'2019-10-05 06:56:25','Ekonomi 2 kelas 7','3935',61,297,1),(260,'2019-10-05 06:56:26','Ekonomi 2 kelas 7','3935',62,304,1),(261,'2019-10-05 06:56:26','Ekonomi 2 kelas 7','3935',63,306,1),(262,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',64,311,1),(263,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',65,319,1),(264,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',66,321,0),(265,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',67,326,1),(266,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',68,333,1),(267,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',69,0,0),(268,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',70,341,1),(269,'2019-10-05 06:57:14','Ekonomi 3 kelas 7','3935',71,347,1),(270,'2019-10-05 06:57:15','Ekonomi 3 kelas 7','3935',72,353,1),(271,'2019-10-05 06:57:15','Ekonomi 3 kelas 7','3935',73,357,1),(272,'2019-10-05 07:06:14','Ekonomi 1 kelas 7','3939',44,215,0),(273,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',45,216,1),(274,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',46,224,1),(275,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',47,226,0),(276,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',48,231,0),(277,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',49,236,0),(278,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',50,244,1),(279,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',51,248,1),(280,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',52,251,1),(281,'2019-10-05 07:06:16','Ekonomi 1 kelas 7','3939',53,256,1),(282,'2019-10-05 07:08:13','Ekonomi 2 kelas 7','3939',54,264,1),(283,'2019-10-05 07:08:13','Ekonomi 2 kelas 7','3939',55,267,1),(284,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',56,271,1),(285,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',57,279,1),(286,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',58,282,1),(287,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',59,286,1),(288,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',60,294,1),(289,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',61,297,1),(290,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',62,304,1),(291,'2019-10-05 07:08:14','Ekonomi 2 kelas 7','3939',63,306,1),(292,'2019-10-05 07:08:58','Ekonomi 3 kelas 7','3939',64,313,0),(293,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',65,319,1),(294,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',66,324,1),(295,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',67,326,1),(296,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',68,333,1),(297,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',69,337,0),(298,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',70,341,1),(299,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',71,347,1),(300,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',72,354,0),(301,'2019-10-05 07:08:59','Ekonomi 3 kelas 7','3939',73,357,1),(302,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',44,212,1),(303,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',45,216,1),(304,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',46,224,1),(305,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',47,226,0),(306,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',48,232,1),(307,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',49,239,1),(308,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',50,242,0),(309,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',51,248,1),(310,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',52,251,1),(311,'2019-10-05 11:29:42','Ekonomi 1 kelas 7','3940',53,256,1),(312,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',54,263,0),(313,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',55,267,1),(314,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',56,271,1),(315,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',57,279,1),(316,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',58,282,1),(317,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',59,286,1),(318,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',60,294,1),(319,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',61,297,1),(320,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',62,304,1),(321,'2019-10-05 11:30:57','Ekonomi 2 kelas 7','3940',63,306,1),(322,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',64,311,1),(323,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',65,319,1),(324,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',66,324,1),(325,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',67,326,1),(326,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',68,333,1),(327,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',69,339,0),(328,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',70,341,1),(329,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',71,347,1),(330,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',72,353,1),(331,'2019-10-05 11:31:42','Ekonomi 3 kelas 7','3940',73,357,1),(332,'2019-10-05 11:34:30','Ekonomi 1 kelas 7','3941',44,212,1),(333,'2019-10-05 11:34:30','Ekonomi 1 kelas 7','3941',45,216,1),(334,'2019-10-05 11:34:30','Ekonomi 1 kelas 7','3941',46,224,1),(335,'2019-10-05 11:34:30','Ekonomi 1 kelas 7','3941',47,227,1),(336,'2019-10-05 11:34:30','Ekonomi 1 kelas 7','3941',48,232,1),(337,'2019-10-05 11:34:31','Ekonomi 1 kelas 7','3941',49,239,1),(338,'2019-10-05 11:34:31','Ekonomi 1 kelas 7','3941',50,244,1),(339,'2019-10-05 11:34:31','Ekonomi 1 kelas 7','3941',51,248,1),(340,'2019-10-05 11:34:31','Ekonomi 1 kelas 7','3941',52,251,1),(341,'2019-10-05 11:34:31','Ekonomi 1 kelas 7','3941',53,256,1),(342,'2019-10-05 11:36:56','Ekonomi 2 kelas 7','3941',54,263,0),(343,'2019-10-05 11:36:56','Ekonomi 2 kelas 7','3941',55,267,1),(344,'2019-10-05 11:36:56','Ekonomi 2 kelas 7','3941',56,271,1),(345,'2019-10-05 11:36:56','Ekonomi 2 kelas 7','3941',57,279,1),(346,'2019-10-05 11:36:56','Ekonomi 2 kelas 7','3941',58,284,0),(347,'2019-10-05 11:36:57','Ekonomi 2 kelas 7','3941',59,286,1),(348,'2019-10-05 11:36:57','Ekonomi 2 kelas 7','3941',60,294,1),(349,'2019-10-05 11:36:57','Ekonomi 2 kelas 7','3941',61,297,1),(350,'2019-10-05 11:36:57','Ekonomi 2 kelas 7','3941',62,304,1),(351,'2019-10-05 11:36:57','Ekonomi 2 kelas 7','3941',63,306,1),(352,'2019-10-05 11:37:43','Ekonomi 3 kelas 7','3941',64,311,1),(353,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',65,319,1),(354,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',66,324,1),(355,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',67,326,1),(356,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',68,333,1),(357,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',69,336,1),(358,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',70,341,1),(359,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',71,347,1),(360,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',72,353,1),(361,'2019-10-05 11:37:44','Ekonomi 3 kelas 7','3941',73,357,1),(362,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',44,212,1),(363,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',45,216,1),(364,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',46,224,1),(365,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',47,229,0),(366,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',48,232,1),(367,'2019-10-08 08:46:26','Ekonomi 1 kelas 7','3942',49,239,1),(368,'2019-10-08 08:46:27','Ekonomi 1 kelas 7','3942',50,244,1),(369,'2019-10-08 08:46:27','Ekonomi 1 kelas 7','3942',51,248,1),(370,'2019-10-08 08:46:27','Ekonomi 1 kelas 7','3942',52,251,1),(371,'2019-10-08 08:46:27','Ekonomi 1 kelas 7','3942',53,256,1),(372,'2019-10-08 08:47:48','Ekonomi 2 kelas 7','3942',54,264,1),(373,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',55,267,1),(374,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',56,271,1),(375,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',57,279,1),(376,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',58,282,1),(377,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',59,286,1),(378,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',60,294,1),(379,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',61,297,1),(380,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',62,304,1),(381,'2019-10-08 08:47:49','Ekonomi 2 kelas 7','3942',63,306,1),(382,'2019-10-08 08:48:51','Ekonomi 3 kelas 7','3942',64,313,0),(383,'2019-10-08 08:48:51','Ekonomi 3 kelas 7','3942',65,319,1),(384,'2019-10-08 08:48:51','Ekonomi 3 kelas 7','3942',66,324,1),(385,'2019-10-08 08:48:51','Ekonomi 3 kelas 7','3942',67,326,1),(386,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',68,333,1),(387,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',69,336,1),(388,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',70,341,1),(389,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',71,346,0),(390,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',72,353,1),(391,'2019-10-08 08:48:52','Ekonomi 3 kelas 7','3942',73,357,1),(392,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',74,364,1),(393,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',75,367,1),(394,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',76,372,1),(395,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',77,379,0),(396,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',78,382,1),(397,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',79,387,1),(398,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',80,393,1),(399,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',81,400,1),(400,'2019-10-08 08:50:13','Ekonomi 4 kelas 7a','3942',82,401,1),(401,'2019-10-08 08:50:14','Ekonomi 4 kelas 7a','3942',83,406,1);

/*Table structure for table `tbl_jawab` */

DROP TABLE IF EXISTS `tbl_jawab`;

CREATE TABLE `tbl_jawab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtanya` int(11) NOT NULL,
  `urut` varchar(1) NOT NULL,
  `jawab` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idtanya` (`idtanya`),
  CONSTRAINT `tbl_jawab_ibfk_1` FOREIGN KEY (`idtanya`) REFERENCES `tbl_tanya` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_jawab` */

insert  into `tbl_jawab`(`id`,`idtanya`,`urut`,`jawab`,`status`) values (211,44,'A','tingkat kesehatan',0),(212,44,'B','tingkat pendidikan',1),(213,44,'C','tingkat pendapatan',0),(214,44,'D','tingkat kesejahteraan',0),(215,44,'E','tingkat kelahiran',0),(216,45,'A','pasar persaingan sempurna',1),(217,45,'B','pasar persaingan tidak sempurna',0),(218,45,'C','pasar monopoli',0),(219,45,'D','pasar monopsoni',0),(220,45,'E','pasar modern',0),(221,46,'A','permintaan potensial',0),(222,46,'B','permintaan efektif',0),(223,46,'C','permintaan terkini',0),(224,46,'D','permintaan absolut',1),(225,46,'E','permintaan konkrit',0),(226,47,'A','Rp 1.600.000,00',0),(227,47,'B','Rp 1.700.000,00',1),(228,47,'C','Rp 1.800.000,00',0),(229,47,'D','Rp 1.900.000,00',0),(230,47,'E','Rp 20.000.000,00',0),(231,48,'A','kerjasama yang dilakukan oleh lebih dari dua negara',0),(232,48,'B','kerjasama ekonomi yang dilakukan oleh hanya dua negara',1),(233,48,'C','kerjasama ekonomi secara berkelompok',0),(234,48,'D','kerjasama ekonomi yang bersifat sementara',0),(235,48,'E','kerjasama ekonomi yang bersifat permanen',0),(236,49,'A','penghasilan atau pendapatan konsumen',0),(237,49,'B','intensitas kebutuhan konsumen',0),(238,49,'C','selera konsumen',0),(239,49,'D','adanya perubahan ekonomi',1),(240,49,'E','semua salah',0),(241,50,'A','15 tahun ke atas',0),(242,50,'B','20 tahun ke atas',0),(243,50,'C','15-64 tahun',0),(244,50,'D','20-67 tahun',1),(245,50,'E','5 tahun',0),(246,51,'A','sebagai alat satuan hitung',0),(247,51,'B','sebagai alat petunjuk harga',0),(248,51,'C','sebagai alat pembayaran',1),(249,51,'D','sebagai alat pembentuk dan pemindah kekayaan',0),(250,51,'E','semua salah',0),(251,52,'A','dapat diterima oleh masyarakat umum',1),(252,52,'B','tahan lama dan tidak mudah rusak',0),(253,52,'C','mudah dibawa  dan dipindah kemana-mana',0),(254,52,'D','mudah dicari dan jumlahnya banyak',0),(255,52,'E','semua salah',0),(256,53,'A','penghasil karet',1),(257,53,'B','penghasil tembakau',0),(258,53,'C','penghasil timah',0),(259,53,'D','penghasil gula',0),(260,53,'E','penghasil emas',0),(261,54,'A','prinsip mencari laba',0),(262,54,'B','motif kewibawaan',0),(263,54,'C','motif ekonomi',0),(264,54,'D','prinsip ekonomi',1),(265,54,'E','permintaan',0),(266,55,'A','memperoleh keuntungan',0),(267,55,'B','menolong sesama manusia',1),(268,55,'C','memenuhi kebutuhan masyarakat',0),(269,55,'D','memperoleh penghargaan masyarakat',0),(270,55,'E','memperoleh bingkisan',0),(271,56,'A','nilai intrinsik',1),(272,56,'B','nilai nominal',0),(273,56,'C','nilai eksternal',0),(274,56,'D','nilai internal',0),(275,56,'E','nilai normal',0),(276,57,'A','menerbitkan surat pengakuan hutang',0),(277,57,'B','menghimpun dana dari masyarakat',0),(278,57,'C','memberikan kredit',0),(279,57,'D','mencetak uang sebagai alat pembayaran yang sah',1),(280,57,'E','semua benar',0),(281,58,'A','kebutuhan tersier',0),(282,58,'B','kebutuhan jasmani',1),(283,58,'C','kebutuhan sekunder',0),(284,58,'D','kebutuhan primer',0),(285,58,'E','semua salah',0),(286,59,'A','satuan hitung',1),(287,59,'B','alat pembayaran',0),(288,59,'C','alat pembelian',0),(289,59,'D','alat pengalihan nilai',0),(290,59,'E','alat tulis',0),(291,60,'A','yang akan datang',0),(292,60,'B','kebutuhan jasmani',0),(293,60,'C','kebutuhan sekunder',0),(294,60,'D','kebutuhan primer',1),(295,60,'E','kebutuhan tersier',0),(296,61,'A','pendidikan',0),(297,61,'B','pendapatan',1),(298,61,'C','selera',0),(299,61,'D','teknologi',0),(300,61,'E','permintaan',0),(301,62,'A','tempat',0),(302,62,'B','pelayanan',0),(303,62,'C','bentuk',0),(304,62,'D','waktu',1),(305,62,'E','sifat',0),(306,63,'A','keinginan menjadi juara kelas',1),(307,63,'B','keinginan menimbun harta',0),(308,63,'C','keinginan meningkatkan kesejahteraan sesama',0),(309,63,'D','keinginan memenuhi kebutuhan keluarga',0),(310,63,'E','semua salah',0),(311,64,'A','prinsip ekonomi',1),(312,64,'B','motif non ekonomi',0),(313,64,'C','motif ekonomi',0),(314,64,'D','hukum ekonomi',0),(315,64,'E','hukum non ekonomi',0),(316,65,'A','motif ekonomi',0),(317,65,'B','prinsip ekonomi',0),(318,65,'C','ilmu ekonomi',0),(319,65,'D','tindakan ekonomi',1),(320,65,'E','motif non ekonomi',0),(321,66,'A','memperoleh keuntungan',0),(322,66,'B','memperoleh penghargaan',0),(323,66,'C','mencari keuntungan',0),(324,66,'D','sosial',1),(325,66,'E','mencari amal',0),(326,67,'A','memperoleh kekuasaan',1),(327,67,'B','menolong sesama manusia',0),(328,67,'C','meningkatkan kemakmuran',0),(329,67,'D','ingin memperoleh keuntungan',0),(330,67,'E','mensejahterkan rakyat',0),(331,68,'A','distributor',0),(332,68,'B','konsumen',0),(333,68,'C','produsen',1),(334,68,'D','pembeli',0),(335,68,'E','penjual',0),(336,69,'A','prinsip ekonomi',1),(337,69,'B','tindakan ekonomi',0),(338,69,'C','hukum ekonomi',0),(339,69,'D','motif ekonomi',0),(340,69,'E','prinsip non ekonomi',0),(341,70,'A','konsumsi, produksi, distribusi',1),(342,70,'B','bekerja, istirahat, tidur',0),(343,70,'C','bertani, berdagang, melaut',0),(344,70,'D','belajar, membaca, menulis',0),(345,70,'E','belajar, belanja, sosial ',0),(346,71,'A','distribusi',0),(347,71,'B','konsumsi',1),(348,71,'C','transportasi',0),(349,71,'D','produksi',0),(350,71,'E','ilusi',0),(351,72,'A','air laut',0),(352,72,'B','roti',0),(353,72,'C','tepung terigu',1),(354,72,'D','rotan',0),(355,72,'E','bambu',0),(356,73,'A','homo erectus',0),(357,73,'B','homo ecominicus',1),(358,73,'C','homo sapiens',0),(359,73,'D','homo socialist',0),(360,73,'E','homo linnaeus',0),(361,74,'A','tertentu',0),(362,74,'B','tidak tertentu',0),(363,74,'C','terbatas',0),(364,74,'D','tidak terbatas',1),(365,74,'E','langka',0),(366,75,'A','keinginan',0),(367,75,'B','kebutuhan',1),(368,75,'C','kepentingan',0),(369,75,'D','keperluan',0),(370,75,'E','kejayaan',0),(371,76,'A','distribusi langsung',0),(372,76,'B','distribusi tidak langsung',1),(373,76,'C','distribusi semi langsung',0),(374,76,'D','distribusi campuran',0),(375,76,'E','distribusi normal',0),(376,77,'A','memperbanyak keturunan',0),(377,77,'B','mempertahankan hidup',1),(378,77,'C','hidup layak dan sejahtera',0),(379,77,'D','menghindari rasa lapar',0),(380,77,'E','semua salah',0),(381,78,'A','benda bebas',0),(382,78,'B','benda ekonomi',1),(383,78,'C','benda konsumsi',0),(384,78,'D','benda produksi',0),(385,78,'E','benda industri',0),(386,79,'A','aturan negara',0),(387,79,'B','aturan rumah tangga',1),(388,79,'C','kegiatan manusia',0),(389,79,'D','kegiatan robot',0),(390,79,'E','aturan masyarakat',0),(391,80,'A','primer',0),(392,80,'B','sekunder',0),(393,80,'C','tersier',1),(394,80,'D','pokok',0),(395,80,'E','langka',0),(396,81,'A','teh dan kopi',0),(397,81,'B','air dan minyak',0),(398,81,'C','air dan api',0),(399,81,'D','gas dan minyak',0),(400,81,'E','bensin dan motor',1),(401,82,'A','barang yang penggunaanya dapat saling menggantikan dengan barang lain',1),(402,82,'B','barang yang jumlahnya banyak dan tidak memerlukan pengorbanan',0),(403,82,'C','barang yang dalam penggunaannya saling melengkapi satu sama lain',0),(404,82,'D','barang yang keberadaannya terbatas dan memperolehnya membutuhkan pengorbanan',0),(405,82,'E','barang yang penggunaannya terbatas dan jumlahnya sedikit',0),(406,83,'A','nilai guna bentuk',1),(407,83,'B','nilai guna waktu',0),(408,83,'C','nilai guna kepemilikan',0),(409,83,'D','nilai guna tempat',0),(410,83,'E','nilai guna sifat',0);

/*Table structure for table `tbl_tanya` */

DROP TABLE IF EXISTS `tbl_tanya`;

CREATE TABLE `tbl_tanya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idguru` varchar(20) NOT NULL,
  `kodesoallatihan` varchar(100) NOT NULL,
  `tanya` varchar(400) NOT NULL,
  `tgl` date NOT NULL,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tanya` */

insert  into `tbl_tanya`(`id`,`idguru`,`kodesoallatihan`,`tanya`,`tgl`,`gambar`) values (44,'1545','Ekonomi 1 kelas 7','Faktor pendukung utama suatu negara berkembang menjadi negara maju adalah...\r\n','2019-10-05',''),(45,'1545','Ekonomi 1 kelas 7','Pasar tempat para penjual dan pembeli sama-sama telah mengetahui keadaan pasar, diantaranya tentang harga barang, selera konsumen dan tingkat daya beli. Pernyataan ini merupakan pengertian dari...\r\n\r\n\r\n','2019-10-05',''),(46,'1545','Ekonomi 1 kelas 7','	Pak Andre seorang karyawan perusahaan kecil, berkeinginan memiliki sepeda motor untuk menunjang kelancaran tugasnya, tetapi ia tidak mempunyai cukup uang untuk membelinya. Ilustrasi ini merupakan contoh...\r\n\r\n','2019-10-05',''),(47,'1545','Ekonomi 1 kelas 7','Harga pokok 1 stel kursi makan Rp 1.500.000,00 laba yang diinginkan 20%, biaya penjualan Rp 100.000,00 maka harga 1 stel kursi tersebut adalah...\r\n\r\n','2019-10-05',''),(48,'1545','Ekonomi 1 kelas 7','Yang dimaksud kerjasama ekonomi secara bilateral adalah...\r\n','2019-10-05',''),(49,'1545','Ekonomi 1 kelas 7','Pernyataan di bawah ini adalah diantara faktor yang mempengaruhi perubahan permintaan, kecuali...\r\n','2019-10-05',''),(50,'1545','Ekonomi 1 kelas 7','	Yang termasuk angkatan kerja adalah penduduk yang bekerja dan yang sedang mencari pekerjaan, kelompok ini ada pada usia...\r\n\r\n','2019-10-05',''),(51,'1545','Ekonomi 1 kelas 7','Yang merupakan fungsi asli dari uang adalah...\r\n','2019-10-05',''),(52,'1545','Ekonomi 1 kelas 7','Suatu benda dapat digunakan sebagai uang atau alat tukar apabila memiliki syarat-syarat di bawah ini, kecuali...','2019-10-05',''),(53,'1545','Ekonomi 1 kelas 7','International Rubber Agreement adalah bentuk kesepakatan Internasional dari negara-negara...\r\n','2019-10-05',''),(54,'1545','Ekonomi 2 kelas 7','Memilih berbelanja di toko yang harga barangnya paling murah termasuk tindakan berdasarkan...','2019-10-05',''),(55,'1545','Ekonomi 2 kelas 7','Siswa siswi SMPN 01 Bandung mengumpulkan dana untuk menyantuni dan memberi bantuan untuk fakir miskin. Tindakan ekonomi yang dilakukan oleh siswa SMPN 01 Bandung didorong oleh keinginan untuk...\r\n','2019-10-05',''),(56,'1545','Ekonomi 2 kelas 7','Nilai atau harga sesungguhnya dari bahan untuk membuat uang disebut...\r\n\r\n','2019-10-05',''),(57,'1545','Ekonomi 2 kelas 7','Yang tidak termasuk fungsi dari Bank Umum adalah...','2019-10-05',''),(58,'1545','Ekonomi 2 kelas 7','Berdasarkan sifatnya kebutuhan dibedakan menjadi, kecuali...','2019-10-05',''),(59,'1545','Ekonomi 2 kelas 7','Berdasarkan data di atas daftar peralatan sekolah yang dibeli oleh sri di koperasi, maka apa yang dilakukan sri menunjukkan bahwa uang berfungsi sebagai â€¦. \r\n','2019-10-05','33.PNG'),(60,'1545','Ekonomi 2 kelas 7','Obat bagi orang yang sakit merupakan kebutuhan','2019-10-05',''),(61,'1545','Ekonomi 2 kelas 7','Kebutuhan manusia terus meningkat terutama untuk kebutuhan pokok. Semakin banyak jumlah anggota keluarga maka kebutuhan pokoknya semakin besar. Peningkatan kebutuhan manusia seperti yang dicontohkan diatas dipengaruhi oleh...','2019-10-05',''),(62,'1545','Ekonomi 2 kelas 7','Jas hujan akan berguna pada waktu musim hujan. Contoh tersebut sesuai dengan kegunaan...','2019-10-05',''),(63,'1545','Ekonomi 2 kelas 7','Pernyataan yang tidak termasuk motif ekonomi ialah...','2019-10-05',''),(64,'1545','Ekonomi 3 kelas 7','Dalam melakukan tindakan ekonomi, manusia selalu berpedoman pada...','2019-10-05',''),(65,'1545','Ekonomi 3 kelas 7','Tindakan seseorang dalam memenuhi kebutuhan hidupnya guna mencapai kemakmuran disebut...','2019-10-05',''),(66,'1545','Ekonomi 3 kelas 7','Pak Rudi seorang pengusaha terbesar di kotanya. Keuntungan usahanya mecapai nilai milyaran. Sebagian keuntungannya dimanfaatkan untuk mendirikan tempat ibadah. Tundakan Ekonomi yang dilakukan Pak Rudi didasari motif...','2019-10-05',''),(67,'1545','Ekonomi 3 kelas 7','Pada pemilu mendatang banyak artis-artis yang mencalonkan diri sebagai anggota legislatif (DPR), motif yang mendorong artis tersebut adalah...','2019-10-05',''),(68,'1545','Ekonomi 3 kelas 7','Mendapatkan bahan baku dan upah tenagan kerja yang murah termasuk prinsip ekonomi seorang...','2019-10-05',''),(69,'1545','Ekonomi 3 kelas 7','Memberikan pengorbanan yang sekecil-kecilnya dengan maksud mendapatkan keuntungan yang sebesar-besarnya adalah merupakan pengertian dari...','2019-10-05',''),(70,'1545','Ekonomi 3 kelas 7','Tiga kegiatan pokok ekonomi yang dilakukan manusia untuk memenuhi kebutuhan hidupnya adalah...','2019-10-05',''),(71,'1545','Ekonomi 3 kelas 7','Hasan membeli sepotong roti, kemudian ia makan roti tersebut dengan lahap. Kegiatan yang dilakukan Hasan termasuk kegiatan...','2019-10-05',''),(72,'1545','Ekonomi 3 kelas 7','Contoh dari barang setengah jadi adalah...','2019-10-05',''),(73,'1545','Ekonomi 3 kelas 7','Sebagai makhluk hidup, manusia selalu memerlukan makanan dan kebutuhan lainnya. Keadaan manusia seperti ini disebut...','2019-10-05',''),(74,'1','Ekonomi 4 kelas 7a','Pada hakikatnya, kebutuhan manusia...','2019-10-06',''),(75,'1','Ekonomi 4 kelas 7a','Segala sesuatu yang harus dipenuhi karena menyangkut kelangsungan hidup manusia disebut...','2019-10-06',''),(76,'1','Ekonomi 4 kelas 7a','Penyaluran koran kepada pelanggan melalui loper koran keliling dapat digolongkan ke dalam..','2019-10-06',''),(77,'1','Ekonomi 4 kelas 7a','Manusia mempunyai kebutuhan yang harus dipenuhinya, kecuali...','2019-10-06',''),(78,'1','Ekonomi 4 kelas 7a','Barang yang tersedia dalam jumlah yang terbatas jika dibandingkan dengan kebutuhan manusia disebut...','2019-10-06',''),(79,'1','Ekonomi 4 kelas 7a','Kata ekonomi diambil dari bahasa Yunani \"Oikos\" dan \"Nomos\", yang diartikan...','2019-10-06',''),(80,'1','Ekonomi 4 kelas 7a','Berdasarkan intensitasnya, jam tangan mewah termasuk dalam kebutuhan...','2019-10-06',''),(81,'1','Ekonomi 4 kelas 7a','Berikut ini yang termasuk barang komplementer adalah...','2019-10-06',''),(82,'1','Ekonomi 4 kelas 7a','Barang substitusi adalah...','2019-10-06',''),(83,'1','Ekonomi 4 kelas 7a','Kayu di hutan akan bertambah nilai gunanya kalau dibawa ke toko bangunan, itu disebut...','2019-10-06','');

/*Table structure for table `uploadtugas` */

DROP TABLE IF EXISTS `uploadtugas`;

CREATE TABLE `uploadtugas` (
  `iduploadtugas` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `idmateritugas` int(11) NOT NULL,
  `dokumen` varchar(200) NOT NULL,
  PRIMARY KEY (`iduploadtugas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `uploadtugas` */

insert  into `uploadtugas`(`iduploadtugas`,`waktu`,`nisn`,`idmateritugas`,`dokumen`) values (1,'2019-09-04 12:08:44','3933',3,'3496X.pdf'),(2,'2019-09-18 11:19:51','3981',9,'holand bakery-2014.pdf'),(3,'2019-09-18 11:20:09','3981',8,'PEMBAGIAN KERJA DALAM RANGKA MENINGKATKAN EFEKTIVITAS KERJA KARYAWAN.pdf'),(4,'2019-09-18 11:20:23','3981',7,'PERANAN PENERAPAN SISTEM INFORMASI MANAJEMEN TERHADAP EFEKTIVITAS KERJA PAGAWAI LEMBAGA PEMASYARAKATAN NARKOTIKA-2013.pdf');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user` varchar(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user`,`nama`,`pass`,`status`) values ('admin','Administrasi','123','Administrasi');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
