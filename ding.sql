-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 06:46 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ding`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `no` int(11) NOT NULL,
  `cname` varchar(40) DEFAULT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `ccode` varchar(40) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `jcode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`no`, `cname`, `uname`, `ccode`, `dis`, `jcode`) VALUES
(4, 'technical', 'guru', 'tc', 'rfgerf', 'tc123');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pword` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`no`, `uname`, `pword`, `utype`) VALUES
(1, 'guru', 'guru123', 'teacher'),
(4, 'mahaswty5@gmail.com', 'jesus5balaji', 'student'),
(5, 'aashiquemd2212@gmail.com', 'tce123', 'student'),
(8, 'karthick.v331996@gmail.com', 'karthick33', 'student'),
(7, 'akhthaaralibadhusha@gmail.com', 'akhthaar55555', 'student'),
(9, 'chithradevi0913@gmail.com', 'chikey1319', 'student'),
(10, 'vigneshl19896@gmail.com', 'chikey1319', 'student'),
(11, 'yasi@gmail.com', 'yasik', 'student'),
(12, 'devajaya7@gmail.com ', '9894405269', 'student'),
(13, 'maharani1118@gmail.com', '9245455358', 'student'),
(14, 'rsvenkates@gmail.com ', 'rsvenkateshhh', 'student'),
(15, 'vigneshviswa05@gmail.com', 'Kns@2012', 'student'),
(16, 'rkajithanand@gmail.com', 'anandbabu', 'teacher'),
(17, 'Venkatob7@gmail.com', '9042453050', 'student'),
(18, 'leelaaiswarya1996@gmail.com', '<leela>', 'student'),
(19, 'aji', 'aji', 'student'),
(20, 'baranipriya2195@gmail.com', 'saravana212495', 'student'),
(21, 'aathikuma2@gmail.com', '1122016h', 'student'),
(22, 'banuchand2628@gmail.com', 'banuchand', 'student'),
(23, 'prasannakrishnan1996@gmail.com', 'prasanna', 'student'),
(24, 'anuabirami7495@gmail.com ', 'anuabiramisaibaba', 'student'),
(25, 'balaji.nagarajan1996@gmail.com', 'balaji', 'student'),
(26, 'maheshwarichandrasekaran216@gmail.com', 'karthick216', 'student'),
(27, 'anufreebird26@gmail.com', 'anumani2616', 'student'),
(28, 'abinaya.n15@gmail.com', 'ammu86905046', 'student'),
(29, 'jesseprasanth06@gmail.com', 'anujessu', 'student'),
(30, 'kannanvj95@gmail.com', 'priyanka', 'student'),
(31, 'karthikeyan.vinayk@gmail.com', 'karthik_2401', 'student'),
(32, 'mathumathumitha133@gmail.com', 'mathu1995', 'student'),
(33, 'deepun518@gmail.com', 'deepun18', 'student'),
(34, 'madurairaja786@gmail.com', 'Vesam004', 'student'),
(35, 'sharans961999@gmail.com', 'mathu', 'student'),
(36, 'roobagunasingh@gmail.com ', 'lakshmi8356', 'student'),
(37, 'sushmithasushma555@gmail.com', 'sushmithaaa', 'student'),
(38, 'rrmukeshkanna@gmail.com', 'dhanarajam', 'student'),
(39, 'Visalinagalingam@gmail. Com', 'alwaysmyamma', 'student'),
(40, 'Karthicknathan95@gmail.com', 'saran123', 'student'),
(41, 'minnalpunnagai@gmail.com', 'pinky1050', 'student'),
(42, 'nivashinis96@gmail.com', 'Kannamma', 'student'),
(43, 'gracellagrace@gmail.com', 'juvenile', 'student'),
(44, 'sumi.m227@gmail.com', 'sumibala', 'student'),
(45, 'mahamaha2991995@gmail.com', 'yamunayogi', 'student'),
(46, 'sumim227@gmail.com ', 'sumibala', 'student'),
(47, 'manikandan.a96@gmail.com', 'brindhavanam', 'student'),
(48, 'anandzephyr05@gmail.com', 'CA15616666', 'student'),
(49, 'anitha.dm07@gmail.com', 'suriya', 'student'),
(50, 'reguramanrengaraj003@gmail.com', '9655260064', 'student'),
(51, 'karthiknpmk@gmail.com', 'karthi77089', 'student'),
(52, 'Dharshinipriya076@gmail.com', '@@##balaji@@##', 'student'),
(53, 'kanmani.k1110@gmail.com ', 'kanmanifencer', 'student'),
(54, 'karthi18011996@gmailcom', 'karthi123', 'student'),
(55, 'jeyaarchana.bca@gmail.com', 'rajviky', 'student'),
(56, 'romeonazibca@gmail.com', '7639493844', 'student'),
(57, 'revathikannan02@gmail.com', '9750161569', 'student'),
(58, 'pramila.t18@gmail.com ', 'pramila', 'student'),
(59, 'yasikraja3@gmail.com', 'yasik', 'student'),
(60, 'Sankari3697@gmail.com', 'sankari@97', 'student'),
(61, 'mpriyaa1995@gmail.com', 'sivaraman2015', 'student'),
(62, 'clareenamoses@gmail.com', 'tce123', 'student'),
(63, 'yasikraja@gmail.com', 'yasik', 'student'),
(64, 'karthisbk50@gmail.com ', '9750706873', 'student'),
(65, 'Karthikat0108@gmail.com', '1851197', 'student'),
(66, 'karthiin95@gmail.com', '2551995', 'student'),
(67, 'abinayaselvaraj1803@gmail.com', 'naughtygirl18', 'student'),
(68, 'karthipriya291@gmail.com', 'jesus291', 'student'),
(69, 'johnbennyvcet@gmail.com', '1234', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `stdcou`
--

CREATE TABLE `stdcou` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccode` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stdcou`
--

INSERT INTO `stdcou` (`no`, `uname`, `cname`, `ccode`) VALUES
(16, 'mahaswty5@gmail.com', 'technical', 'tc'),
(17, 'johnbennyvcet@gmail.com', 'technical', 'tc'),
(18, 'yasi@gmail.com', 'technical', 'tc'),
(19, 'aji', 'technical', 'tc');

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pword` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`no`, `uname`, `sname`, `dob`, `pword`) VALUES
(3, 'mahaswty5@gmail.com', 'Mahalakshmi​', '1996-05-25', 'jesus5balaji'),
(4, 'aashiquemd2212@gmail.com', 'Badhusha', '1996-02-02', 'tce123'),
(7, 'karthick.v331996@gmail.com', 'Karthick', '1996-05-23', 'karthick33'),
(6, 'akhthaaralibadhusha@gmail.com', 'Badhusha', '1996-02-02', 'akhthaar55555'),
(8, 'chithradevi0913@gmail.com', 'ChithraDevi', '1996-04-13', 'chikey1319'),
(9, 'vigneshl19896@gmail.com', 'Vignesh', '1996-08-19', 'chikey1319'),
(10, 'yasi@gmail.com', 'yasik', '2011-12-08', 'yasik'),
(11, 'devajaya7@gmail.com ', 'K.R. PRABHU DEVA', '1995-01-10', '9894405269'),
(12, 'maharani1118@gmail.com', 'T.Maharani', '1996-09-05', '9245455358'),
(13, 'rsvenkates@gmail.com', 'Venkatesh', '1996-03-03', 'rsvenkateshhh'),
(14, 'vigneshviswa05@gmail.com', 'KvigNeSh', '1996-12-20', 'Kns@2012'),
(15, 'Venkatob7@gmail.com', 'Venkatesh ob', '1995-12-15', '9042453050'),
(16, 'leelaaiswarya1996@gmail.com', 'Leela Aiswarya', '1996-03-25', '<leela>'),
(17, 'aji', 'aji', '2017-12-31', 'aji'),
(18, 'baranipriya2195@gmail.com', 'Barani priya', '1995-07-21', 'saravana212495'),
(19, 'aathikuma2@gmail.com', 'Aathikumar', '1995-11-12', '1122016h'),
(20, 'banuchand2628@gmail.com', 'Banuchandar', '1996-09-24', 'banuchand'),
(21, 'prasannakrishnan1996@gmail.com', 'prasanna', '1995-12-16', 'prasanna'),
(22, 'anuabirami7495@gmail.com ', 'Abirami', '1995-04-07', 'anuabiramisaibaba'),
(23, 'balaji.nagarajan1996@gmail.com', 'Balaji', '1996-02-26', 'balaji'),
(24, 'maheshwarichandrasekaran216@gmail.com', 'Maheswari', '1996-06-21', 'karthick216'),
(25, 'anufreebird26@gmail.com', 'Anupriya', '02.26.1996', 'anumani2616'),
(26, 'abinaya.n15@gmail.com', 'Abinaya', '1996-03-15', 'ammu86905046'),
(27, 'jesseprasanth06@gmail.com', 'Jessumer', '09.06.1995', 'anujessu'),
(28, 'kannanvj95@gmail.com', 'Kannan VJ', '28/05/1995', 'priyanka'),
(29, 'karthikeyan.vinayk@gmail.com', 'Karthikeyan.c', '1994-01-24', 'karthik_2401'),
(30, 'mathumathumitha133@gmail.com', 'P.Mathumitha', '1995-11-16', 'mathu1995'),
(31, 'deepun518@gmail.com', 'Deepika', '1995-11-18', 'deepun18'),
(32, 'madurairaja786@gmail.com', 'Rajasekar ', '1995-03-22', 'Vesam004'),
(33, 'sharans961999@gmail.com', 'P.Mathumitha', '1995-11-16', 'mathu'),
(34, 'roobagunasingh@gmail.com ', 'Rooba Gunasingh', '1995-11-20', 'lakshmi8356'),
(35, 'sushmithasushma555@gmail.com', 'sushmitha', '1995-11-29', 'sushmithaaa'),
(36, 'rrmukeshkanna@gmail.com', 'Mukesh Kanna R', '1995-11-30', 'dhanarajam'),
(37, 'Visalinagalingam@gmail. Com', 'Karthigavisali', '1995-09-20', 'alwaysmyamma'),
(38, 'Karthicknathan95@gmail.com', 'Karthick nathan', '1995-10-24', 'saran123'),
(39, 'minnalpunnagai@gmail.com', 'Minnal Punnagai', '1996-05-10', 'pinky1050'),
(40, 'nivashinis96@gmail.com', 'Nivashini', '1996-07-21', 'Kannamma'),
(41, 'gracellagrace@gmail.com', 'Stella', '1996-07-19', 'juvenile'),
(42, 'sumi.m227@gmail.com', 'sumithra', '1996-07-22', 'sumibala'),
(43, 'mahamaha2991995@gmail.com', 'Yamuna S', '1995-12-29', 'yamunayogi'),
(44, 'sumim227@gmail.com ', 'Sumi', '1996-07-22', 'sumibala'),
(45, 'manikandan.a96@gmail.com', 'Manikandan', '1996-04-01', 'brindhavanam'),
(46, 'anandzephyr05@gmail.com', 'AnandZephyr', '1995-09-19', 'CA15616666'),
(47, 'anitha.dm07@gmail.com', 'Anitha', '2017-11-20', 'suriya'),
(48, 'reguramanrengaraj003@gmail.com', 'Reguraman', '1995-05-10', '9655260064'),
(49, 'karthiknpmk@gmail.com', 'Karthikeyan', '1995-08-24', 'karthi77089'),
(50, 'Dharshinipriya076@gmail.com', 'Priyadharshini', '1995-08-18', '@@##balaji@@##'),
(51, 'kanmani.k1110@gmail.com ', 'kanmani', '1996-10-11', 'kanmanifencer'),
(52, 'karthi18011996@gmailcom', 'karthikeyan', '1996-01-18', 'burn111out'),
(53, 'jeyaarchana.bca@gmail.com', 'Archu', '1995-02-20', 'rajviky'),
(54, 'romeonazibca@gmail.com', 'Abu', '1995-03-08', '7639493844'),
(55, 'revathikannan02@gmail.com', 'Revathi K', '1995-03-21', '9750161569'),
(56, 'pramila.t18@gmail.com ', 'Pramila', '1996-02-18', 'pramila'),
(57, 'yasikraja3@gmail.com', 'yasikraja', '1995-02-14', 'yasik'),
(58, 'Sankari3697@gmail.com', 'Sankari', '1997-06-03', 'sankari@97'),
(59, 'mpriyaa1995@gmail.com', 'Priya', '2017-07-10', 'sivaraman2015'),
(60, 'clareenamoses@gmail. com', 'Clareena M', '1996-05-17', 'clarichwtty'),
(61, 'yasikraja@gmail.com', 'yasikraja', '1995-02-14', 'yasik'),
(62, 'karthisbk50@gmail.com ', 'karthi ', '1995-05-25', '9750706873'),
(63, 'Karthikat0108@gmail.com', 'Karthika', '1997-05-01', '1851197'),
(64, 'karthiin95@gmail.com', 'karthisbk', '1995-05-25', '2551995'),
(65, 'abinayaselvaraj1803@gmail.com', 'abinayaselvaraj', '1996-03-18', 'naughtygirl18'),
(66, 'karthipriya291@gmail.com', 'karthika s', '1996-01-29', 'jesus291'),
(67, 'johnbennyvcet@gmail.com', 'John', '2017-04-07', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `swift`
--

CREATE TABLE `swift` (
  `uname` varchar(40) DEFAULT NULL,
  `ccode` varchar(20) DEFAULT NULL,
  `mdl` varchar(20) DEFAULT NULL,
  `quz` varchar(20) DEFAULT NULL,
  `qno` int(11) DEFAULT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift`
--

INSERT INTO `swift` (`uname`, `ccode`, `mdl`, `quz`, `qno`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `tim`, `endtime`) VALUES
('johnbennyvcet@gmail.com', 'tc', 'm3', '3', 1, 'jyfjf', 'Radio', 2, '1', 5, 'ujygf~~~yug', '00:04:00', NULL),
('johnbennyvcet@gmail.com', 'tc', 'm3', '3', 2, 'kujygjkyuh', 'Radio', 2, '2', 5, 'uiu~~~UITYIU', '00:05:00', NULL),
('mahaswty5@gmail.com', 'tc', 'm3', '3', 3, 'kujgkj', 'Radio', 2, '1', 5, 'kg~~~khg', '00:03:00', NULL),
('johnbennyvcet@gmail.com', 'tc', 'm3', '3', 3, 'kujgkj', 'Radio', 2, '1', 5, 'kg~~~khg', '00:03:00', NULL),
('mahaswty5@gmail.com', 'tc', 'm3', '3', 4, 'jfuf', 'Radio', 2, '2', 5, 'ugkug~~~hjgjg', '00:05:00', NULL),
('johnbennyvcet@gmail.com', 'tc', 'm3', '3', 4, 'jfuf', 'Radio', 2, '2', 5, 'ugkug~~~hjgjg', '00:05:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_cnt`
--

CREATE TABLE `tc_m1_cnt` (
  `no` int(11) NOT NULL,
  `qname` varchar(20) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `pub` int(11) DEFAULT NULL,
  `qtype` varchar(20) DEFAULT NULL,
  `tim` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_cnt`
--

INSERT INTO `tc_m1_cnt` (`no`, `qname`, `dis`, `pub`, `qtype`, `tim`) VALUES
(13, 'frst', 'first', 1, 'Post', '00:03:00'),
(14, 'scccd', 'bg', 1, 'Post', '00:04:00'),
(15, 'kd', 'ytdf', 0, 'Live', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q13_que`
--

CREATE TABLE `tc_m1_q13_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q13_que`
--

INSERT INTO `tc_m1_q13_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`) VALUES
(1, 'ques1', 'Radio', 2, '2', 3, 'abc~~~def', 'exp1'),
(2, 'ques2', 'Check Box', 2, '1', 4, 'op1  ~~~op2  ', 'exp2  '),
(3, 'ques3', 'Radio', 3, '3', 5, 'op1~~~op2~~~op3 ', 'exp3'),
(4, 'ques4', 'Check Box', 3, '12', 2, 'nmvv ~~~jkg ~~~ dfsaf', 'exp4'),
(5, 'jhf', 'Check Box', 3, '13', 2, 'ugkug~~~kugku~~~kgk', 'kugk'),
(6, 'jfjfj', 'Text Box', 2, 'txt', 2, 'thhfd~~~gfdgf', 'hjff');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q13_res`
--

CREATE TABLE `tc_m1_q13_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL,
  `q3` varchar(25) DEFAULT NULL,
  `q4` varchar(25) DEFAULT NULL,
  `q5` varchar(25) DEFAULT NULL,
  `q6` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q13_res`
--

INSERT INTO `tc_m1_q13_res` (`no`, `uname`, `tot`, `tim`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`) VALUES
(1, 'mahaswty5@gmail.com', -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 7, '00:00:00', '1', '3', '3', NULL, NULL, NULL),
(4, 'aji', 4, '00:00:37', '1', '1', '2', '2', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q14_que`
--

CREATE TABLE `tc_m1_q14_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q14_que`
--

INSERT INTO `tc_m1_q14_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`) VALUES
(1, 'kjll', 'Radio', 4, '1', 5, 'kjgk~~~ugku~~~kutygk~~~ikut', 'yf'),
(2, 'jhfhg', 'Radio', 2, '2', 5, 'kujgyikj~~~iughiugh', 'iughkigju');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q14_res`
--

CREATE TABLE `tc_m1_q14_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q14_res`
--

INSERT INTO `tc_m1_q14_res` (`no`, `uname`, `tot`, `tim`, `endtime`, `q1`, `q2`) VALUES
(1, 'mahaswty5@gmail.com', -1, NULL, NULL, NULL, NULL),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 5, '00:00:07', '2018-10-01 18:07:06', '2', '2'),
(4, 'aji', -1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q15_que`
--

CREATE TABLE `tc_m1_q15_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `pub` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q15_que`
--

INSERT INTO `tc_m1_q15_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`, `tim`, `pub`) VALUES
(1, 'tyufu', 'Radio', 2, '1', 5, 'tyhdh~~~drdh', 'grfd', '00:00:55', 1),
(2, 'htyd', 'Radio', 3, '2', 5, 'uyttf~~~gfd~~~ytgfdghf', 'tygdfyth', '00:00:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m1_q15_res`
--

CREATE TABLE `tc_m1_q15_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m1_q15_res`
--

INSERT INTO `tc_m1_q15_res` (`no`, `uname`, `tot`, `tim`, `endtime`, `q1`, `q2`) VALUES
(1, 'mahaswty5@gmail.com', -1, NULL, NULL, NULL, NULL),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 9, NULL, NULL, '1', '2'),
(4, 'aji', -1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m2_cnt`
--

CREATE TABLE `tc_m2_cnt` (
  `no` int(11) NOT NULL,
  `qname` varchar(20) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `pub` int(11) DEFAULT NULL,
  `qtype` varchar(20) DEFAULT NULL,
  `tim` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_cnt`
--

CREATE TABLE `tc_m3_cnt` (
  `no` int(11) NOT NULL,
  `qname` varchar(20) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `pub` int(11) DEFAULT NULL,
  `qtype` varchar(20) DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_cnt`
--

INSERT INTO `tc_m3_cnt` (`no`, `qname`, `dis`, `pub`, `qtype`, `tim`, `endtime`) VALUES
(1, 'quiz1', 'jhgfg', 1, 'Post', '00:07:00', '2018-09-29 18:14:40'),
(2, 'scnd', 'grd', 1, 'Post', '00:04:00', NULL),
(3, 'frsliv', 'gdg', 0, 'Live', '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q1_que`
--

CREATE TABLE `tc_m3_q1_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q1_que`
--

INSERT INTO `tc_m3_q1_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`) VALUES
(1, 'gags', 'Radio', 3, '1', 5, 'jyfj~~~jykgtj~~~uigigk', 'ugiku'),
(2, 'lihkgh', 'Radio', 2, '2', 5, 'ugtjg~~~klugkjg', 'ugg'),
(3, 'jkghkijg', 'Radio', 4, '3', 5, 'kjugg~~~kug~~~uikghy~~~ityit', 'itgi');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q1_res`
--

CREATE TABLE `tc_m3_q1_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL,
  `q3` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q1_res`
--

INSERT INTO `tc_m3_q1_res` (`no`, `uname`, `tot`, `tim`, `q1`, `q2`, `q3`) VALUES
(1, 'mahaswty5@gmail.com', -1, NULL, NULL, NULL, NULL),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 15, '00:00:00', '1', '2', '3'),
(4, 'aji', -1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q2_que`
--

CREATE TABLE `tc_m3_q2_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q2_que`
--

INSERT INTO `tc_m3_q2_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`) VALUES
(1, 'jkugu', 'Radio', 2, '1', 5, 'htgdf~~~TGHD', 'HYTGFHG'),
(2, 'GFD', 'Radio', 2, '2', 5, 'GDS~~~GRFS', 'HTGDG');

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q2_res`
--

CREATE TABLE `tc_m3_q2_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q2_res`
--

INSERT INTO `tc_m3_q2_res` (`no`, `uname`, `tot`, `tim`, `endtime`, `q1`, `q2`) VALUES
(1, 'mahaswty5@gmail.com', 10, '00:00:00', '2018-09-29 19:02:01', '1', '2'),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 10, '00:00:17', '2018-10-01 18:03:18', '1', '2'),
(4, 'aji', -1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q3_que`
--

CREATE TABLE `tc_m3_q3_que` (
  `qid` int(11) NOT NULL,
  `ques` varchar(2000) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `nopts` int(11) DEFAULT NULL,
  `ans` varchar(25) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `opt` varchar(5100) DEFAULT NULL,
  `expl` varchar(1000) DEFAULT NULL,
  `tim` time DEFAULT NULL,
  `pub` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q3_que`
--

INSERT INTO `tc_m3_q3_que` (`qid`, `ques`, `otype`, `nopts`, `ans`, `points`, `opt`, `expl`, `tim`, `pub`) VALUES
(1, 'jyfjf', 'Radio', 2, '1', 5, 'ujygf~~~yug', 'yhghy', '00:04:00', 1),
(2, 'kujygjkyuh', 'Radio', 2, '2', 5, 'uiu~~~UITYIU', 'IUYIY', '00:05:00', 1),
(3, 'kujgkj', 'Radio', 2, '1', 5, 'kg~~~khg', 'khgkh', '00:03:00', 1),
(4, 'jfuf', 'Radio', 2, '2', 5, 'ugkug~~~hjgjg', 'jhgjhg', '00:05:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tc_m3_q3_res`
--

CREATE TABLE `tc_m3_q3_res` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) DEFAULT NULL,
  `tot` int(11) DEFAULT '-1',
  `tim` time DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `q1` varchar(25) DEFAULT NULL,
  `q2` varchar(25) DEFAULT NULL,
  `q3` varchar(25) DEFAULT NULL,
  `q4` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_m3_q3_res`
--

INSERT INTO `tc_m3_q3_res` (`no`, `uname`, `tot`, `tim`, `endtime`, `q1`, `q2`, `q3`, `q4`) VALUES
(1, 'mahaswty5@gmail.com', 19, '00:01:35', NULL, '1', '2', NULL, NULL),
(2, 'johnbennyvcet@gmail.com', -1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'yasi@gmail.com', 19, '00:00:00', NULL, '1', '2', '1', '2'),
(4, 'aji', 14, '00:00:17', NULL, '1', '', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tc_mdl`
--

CREATE TABLE `tc_mdl` (
  `no` int(11) NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_mdl`
--

INSERT INTO `tc_mdl` (`no`, `mname`, `dis`) VALUES
(1, 'c++', 'sadf'),
(2, 'cds', 'yufr'),
(3, 'maths', 'mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `tc_std`
--

CREATE TABLE `tc_std` (
  `no` int(11) NOT NULL,
  `sname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_std`
--

INSERT INTO `tc_std` (`no`, `sname`) VALUES
(1, 'mahaswty5@gmail.com'),
(2, 'johnbennyvcet@gmail.com'),
(3, 'yasi@gmail.com'),
(4, 'aji');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `no` int(11) NOT NULL,
  `uname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pword` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`no`, `uname`, `tname`, `dob`, `pword`) VALUES
(1, 'guru', 'guru', '1994-10-29', 'guru123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stdcou`
--
ALTER TABLE `stdcou`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m1_cnt`
--
ALTER TABLE `tc_m1_cnt`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m1_q13_que`
--
ALTER TABLE `tc_m1_q13_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m1_q13_res`
--
ALTER TABLE `tc_m1_q13_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m1_q14_que`
--
ALTER TABLE `tc_m1_q14_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m1_q14_res`
--
ALTER TABLE `tc_m1_q14_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m1_q15_que`
--
ALTER TABLE `tc_m1_q15_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m1_q15_res`
--
ALTER TABLE `tc_m1_q15_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m2_cnt`
--
ALTER TABLE `tc_m2_cnt`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m3_cnt`
--
ALTER TABLE `tc_m3_cnt`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m3_q1_que`
--
ALTER TABLE `tc_m3_q1_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m3_q1_res`
--
ALTER TABLE `tc_m3_q1_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m3_q2_que`
--
ALTER TABLE `tc_m3_q2_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m3_q2_res`
--
ALTER TABLE `tc_m3_q2_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_m3_q3_que`
--
ALTER TABLE `tc_m3_q3_que`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tc_m3_q3_res`
--
ALTER TABLE `tc_m3_q3_res`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_mdl`
--
ALTER TABLE `tc_mdl`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tc_std`
--
ALTER TABLE `tc_std`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `stdcou`
--
ALTER TABLE `stdcou`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `stud`
--
ALTER TABLE `stud`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tc_m1_cnt`
--
ALTER TABLE `tc_m1_cnt`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tc_m1_q13_que`
--
ALTER TABLE `tc_m1_q13_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tc_m1_q13_res`
--
ALTER TABLE `tc_m1_q13_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m1_q14_que`
--
ALTER TABLE `tc_m1_q14_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tc_m1_q14_res`
--
ALTER TABLE `tc_m1_q14_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m1_q15_que`
--
ALTER TABLE `tc_m1_q15_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tc_m1_q15_res`
--
ALTER TABLE `tc_m1_q15_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m2_cnt`
--
ALTER TABLE `tc_m2_cnt`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tc_m3_cnt`
--
ALTER TABLE `tc_m3_cnt`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tc_m3_q1_que`
--
ALTER TABLE `tc_m3_q1_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tc_m3_q1_res`
--
ALTER TABLE `tc_m3_q1_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m3_q2_que`
--
ALTER TABLE `tc_m3_q2_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tc_m3_q2_res`
--
ALTER TABLE `tc_m3_q2_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m3_q3_que`
--
ALTER TABLE `tc_m3_q3_que`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_m3_q3_res`
--
ALTER TABLE `tc_m3_q3_res`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tc_mdl`
--
ALTER TABLE `tc_mdl`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tc_std`
--
ALTER TABLE `tc_std`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teach`
--
ALTER TABLE `teach`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
