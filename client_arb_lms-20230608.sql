-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2023 at 06:10 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `client_arb_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(11, 'admin', '2020-12-21 08:37:51', 'Add Subject 1234'),
(12, 'admin', '2023-04-06 11:56:36', 'Add School Year 2022-2023'),
(13, '', '2023-04-12 20:01:37', 'Add School Year 2023-2024'),
(14, '', '2023-06-02 13:12:22', 'Add Subject WD101'),
(15, '', '2023-06-05 12:33:42', 'Add Subject SD101'),
(16, '', '2023-06-05 16:21:39', 'Add Subject FIL01');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(93, 39, '1', 'A'),
(94, 39, '2', 'B'),
(95, 39, '3', 'C'),
(96, 39, '4', 'D'),
(97, 40, '2', 'A'),
(98, 40, '2', 'B'),
(99, 40, '4', 'C'),
(100, 40, '2', 'D'),
(101, 42, 'w', 'A'),
(102, 42, 'w', 'B'),
(103, 42, 'w', 'C'),
(104, 42, '', 'D'),
(105, 43, 'g', 'A'),
(106, 43, 'g', 'B'),
(107, 43, '', 'C'),
(108, 43, '', 'D'),
(109, 45, '2', 'A'),
(110, 45, '3', 'B'),
(111, 45, '4', 'C'),
(112, 45, '5', 'D'),
(113, 46, 'eyo', 'A'),
(114, 46, 'mamamiya', 'B'),
(115, 46, 'ooooooo', 'C'),
(116, 46, 'lalla', 'D'),
(117, 47, 'w', 'A'),
(118, 47, 's', 'B'),
(119, 47, 'w', 'C'),
(120, 47, 'w', 'D'),
(121, 48, '', 'A'),
(122, 48, '', 'B'),
(123, 48, '', 'C'),
(124, 48, '', 'D'),
(125, 49, '5', 'A'),
(126, 49, '5', 'B'),
(127, 49, '5', 'C'),
(128, 49, '5', 'D'),
(129, 50, '1', 'A'),
(130, 50, '12', 'B'),
(131, 50, '11', 'C'),
(132, 50, '22', 'D'),
(133, 51, 'eyo', 'A'),
(134, 51, '12', 'B'),
(135, 51, '1', 'C'),
(136, 51, '1', 'D'),
(137, 55, 'aa', 'A'),
(138, 55, '2', 'B'),
(139, 55, '1ef', 'C'),
(140, 55, 'faf', 'D'),
(141, 57, '2', 'A'),
(142, 57, '3', 'B'),
(143, 57, '4', 'C'),
(144, 57, '1', 'D'),
(145, 62, 'Philippine Peso / Currency', 'A'),
(146, 62, 'Hypertext Preprocessor', 'B'),
(147, 62, 'Process Hypertext Processor', 'C'),
(148, 62, '', 'D'),
(149, 63, 'Drek Kolkevi', 'A'),
(150, 63, 'Rasmus Lerdorf', 'B'),
(151, 63, 'Willam Makepiece', 'C'),
(152, 63, 'List Barely', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(32, 'admin/uploads/7993_File_History (1).docx', '2023-04-11 15:15:59', 'Q', 9, 187, 'jov'),
(33, '', '2023-04-11 15:20:06', 'https://www.youtube.com/watch?v=xdyQr3H7Gm8&list=RDxdyQr3H7Gm8&start_radio=1', 9, 187, 'VID'),
(34, 'admin/uploads/6411_File_FORMAT-FOR-QUIZZES.txt', '2023-04-19 16:53:03', 'aaaa', 9, 189, 'aaaa'),
(35, 'admin/uploads/5819_File_FORMAT-FOR-QUIZZES.txt', '2023-04-20 04:24:58', 'data', 9, 189, 'dialog'),
(36, 'admin/uploads/assignments/6429_File_348355172_205694505613469_7189460674172096993_n.png', '2023-06-02 15:09:54', 'assignment 01', 24, 199, 'assignment 01');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'ABM11'),
(8, 'ABM12'),
(9, 'EPAS11'),
(10, 'EPAS12'),
(11, 'FBS, HK, COOKERY11'),
(12, 'FBS, HK, COOKERY12'),
(13, 'FBS, HK, EVENTS11'),
(14, 'FBS, HK, EVENTS12'),
(15, 'FBS, HK, FO11\r\n'),
(16, 'FBS, HK, FO12\r\n'),
(17, 'HUMSS11\r\n'),
(18, 'HUMSS12\r\n'),
(19, 'ICT11\r\n'),
(20, 'ICT12\r\n'),
(26, 'First Year High School');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

DROP TABLE IF EXISTS `class_quiz`;
CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `quiz_time` int NOT NULL,
  `quiz_id` int NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 187, 1200, 6),
(19, 187, 300, 7),
(20, 187, 300, 7),
(21, 187, 300, 6),
(22, 187, 300, 9),
(23, 187, 300, 6),
(24, 188, 300, 6),
(25, 189, 300, 6),
(26, 187, 240, 7),
(27, 188, 240, 7),
(28, 189, 240, 7),
(29, 187, 300, 7),
(30, 188, 300, 7),
(31, 189, 300, 7),
(32, 187, 300, 9),
(33, 188, 300, 9),
(34, 189, 300, 9),
(35, 187, 180, 9),
(36, 188, 180, 9),
(37, 189, 180, 9),
(38, 187, 300, 9),
(39, 188, 300, 9),
(40, 189, 300, 9),
(41, 187, 300, 7),
(42, 188, 300, 7),
(43, 189, 300, 7),
(44, 187, 300, 7),
(45, 188, 300, 7),
(46, 189, 300, 7),
(47, 187, 300, 10),
(48, 188, 300, 10),
(49, 189, 300, 10),
(50, 187, 300, 10),
(51, 188, 300, 10),
(52, 189, 300, 10),
(53, 187, 300, 10),
(54, 188, 300, 10),
(55, 189, 300, 10),
(56, 188, 300, 7),
(57, 189, 300, 7),
(58, 192, 300, 7),
(59, 193, 300, 7),
(60, 199, 300, 12);

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz_student`
--

DROP TABLE IF EXISTS `class_quiz_student`;
CREATE TABLE IF NOT EXISTS `class_quiz_student` (
  `class_quiz_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `quiz_time` int NOT NULL,
  `quiz_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz_student`
--

INSERT INTO `class_quiz_student` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`, `student_id`) VALUES
(1, 199, 900, 13, 372),
(2, 199, 900, 13, 372),
(3, 199, 600, 12, 372),
(4, 199, 420, 12, 372),
(5, 199, 420, 12, 376);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

DROP TABLE IF EXISTS `class_subject_overview`;
CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n'),
(2, 187, '<p><span style=\"font-size:24px\"><span style=\"font-family:lucida sans unicode,lucida grande,sans-serif\">Thesis Writing11</span></span></p>\n'),
(3, 199, '<p>This subject focused on web application development</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<hr />\r\n<pre style=\"text-align:center\">\r\n<span style=\"font-family:georgia,serif\">\r\n<span style=\"font-size:48px\"><strong>Mission</strong></span></span></pre>\r\n\r\n<hr />\r\n<hr />\r\n<p style=\"text-align:justify\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:28px\"> &nbsp;</span></span><span style=\"font-size:28px\">Technological College of San Felipe&#39;s Fulfillment of the vision is inspired by our enthusiasm to equip students with essential knowledge, desirable attitude and develop necessary skills to be globally competitive and morally upright graduates with dedication to serve the society within the context of technological advancement.</span></span></p>\r\n'),
(2, 'Vision', '<hr />\r\n<pre style=\"text-align:center\">\r\n<span style=\"font-family:georgia,serif\"><span style=\"font-size:48px\"><strong>Vision</strong></span></span></pre>\r\n\r\n<hr />\r\n<hr />\r\n<p><span style=\"font-family:georgia,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:28px\">&nbsp;Technological College of San Felipe&#39;s Vision is to be an&nbsp;institution that provides quality and affordable education within the student&#39;s reach and prepares them to achieve their educational, social, personal, and professional aspirations&nbsp;.</span></span></p>\r\n'),
(3, 'History', '<hr />\r\n<p style=\"text-align: center;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:36px\"><strong>History</strong></span></span></p>\r\n\r\n<hr />\r\n<hr />\r\n<p style=\"text-align: justify;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:24px\">Technological College of San Felipe Inc. was founded on September 8, 2012, by Engr. Manny F. Pascual; registered with the Securities and Exchange Commission (SEC) as a non-stock, non-profit educational<br />\r\ninstitution first located at the 3rd floor of San Felipe Public Mall in Barangay West Feria, San Felipe, Zambales.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:24px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TCSF on its first year of operation offers programs under the Technical Education Skills and<br />\r\nDevelopment Authority (TESDA). It concentrates on Tourism Sector, Information Technology (IT), Hospitality Services and Electronics Servicing. Eventually becomes an assessment center and skills program institution for TESDA National Certificates (NCs). The primary purpose is to provide quality and affordable education within the reach of the people of San Felipe and the neighboring towns of Cabangan and San Narciso.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:24px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In its endeavor to foster quality education, TCSF applied for Senior High School programs (Grade 11 and Grade 12) and was approved &amp; recognized by the Department of Education (DepEd) with School ID 404858.<br />\r\nFurthermore, TCSF promotes dual training programs through close linkages with the industrial sector, where students are simultaneously exposed to both academic and actual work environment that will equip the<br />\r\nessential knowledge, desirable attitude and development of necessary skills to be globally competitive.</span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:24px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Since it opened its doors, TCSF has pursued its commitment to the holistic development of its students who eventually contribute to the development of our community. TCSF help prepare its students to be<br />\r\ncompetent professionals and responsible citizens. TCSF is looking forward for more opportunities to engage in the development and expansion of its existing programs offerings and upgrade its facilities to support its<br />\r\nvarious curriculum and courses.</span></span></p>\r\n'),
(4, 'Footer', '<p style=\"text-align:center\">TCSF Online Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2023</p>\r\n'),
(5, 'Upcoming Events', '<pre style=\"text-align: center;\">\r\n<span style=\"font-family:georgia,serif\"><span style=\"font-size:36px\">UP COMING EVENTS</span></span></pre>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:28px\"><strong>&gt;</strong> EXAM</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:28px\"><strong>&gt;</strong> DEFENSE</span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:28px\"><strong>&gt;</strong> ENROLLMENT</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">TCSF Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: April 2-3, 2023</p>\r\n\r\n<p>Semestrial Break:&nbsp; June, July, August 2023</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>August 09, 2022&nbsp;-&nbsp;December 12, 2022</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>December 12, 2022 - January 09, 2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>January 09, 2023 - April 2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>April 2023 -&nbsp; May&nbsp;2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>May 2023 - July 2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>August 09, 2022&nbsp;&nbsp;to December 12, 2023&nbsp;&ndash; First Semester AY 2022-2023</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 09, &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>College Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Academic/Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>Nov. 4, 2022&nbsp;to March 27, 2023&nbsp;&ndash; Second Semester AY 2022-2023</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>FLAG RAISING CEREMONY</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MONTHS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>UNIT-IN-CHARGE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp;-&nbsp;November,</p>\r\n			</td>\r\n			<td>\r\n			<p>SSG</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November - February</p>\r\n			</td>\r\n			<td>\r\n			<p>COL-STUD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March - May</p>\r\n			</td>\r\n			<td>\r\n			<p>SENIOR HIGH</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:36px\"><strong>Directories</strong></span></p>\r\n\r\n<hr />\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 x2lah0s x1nhvcw1 x1qjc9v5 xozqiw3 x1q0g3np xyamay9 xykv574 xbmpl8g x4cne27 xifccgj\" style=\"z-index: 0; position: relative; justify-content: flex-start; flex-flow: row nowrap; align-items: stretch; flex-shrink: 0; margin: -6px; display: flex; box-sizing: border-box; padding-top: 16px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x2lah0s x193iq5w xeuugli xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; z-index: 0; position: relative; flex-shrink: 0; display: flex; box-sizing: border-box; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\"><img alt=\"\" class=\"x1b0d499 xuo83w3\" src=\"https://static.xx.fbcdn.net/rsrc.php/v3/yT/r/Dc7-7AgwkwS.png?_nc_eui2=AeHH63YSqBGPvU-g-CJPF2pX_Z8lwuqCx1f9nyXC6oLHVx9dUGVG8em58zepBz1dEMhT5caD-iApUaFM_otAcQT0\" style=\"animation-name:none !important; border:0px; filter:var(--filter-placeholder-icon); height:20px; transition-property:none !important; vertical-align:-0.25em; width:20px\" /></div>\r\n\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x193iq5w xeuugli x1r8uery x1iyjqo2 xs83m0k xamitd3 xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; flex: 1 1 0px; z-index: 0; position: relative; display: flex; box-sizing: border-box; align-self: center; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x78zum5 xdt5ytf xz62fqu x16ldp7u\" style=\"margin-top: -5px; display: flex; flex-direction: column; margin-bottom: -5px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:times new roman,times,serif\"><span dir=\"auto\" style=\"color:var(--primary-text)\">(047) 602 1854</span></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 x2lah0s x1nhvcw1 x1qjc9v5 xozqiw3 x1q0g3np xyamay9 xykv574 xbmpl8g x4cne27 xifccgj\" style=\"z-index: 0; position: relative; justify-content: flex-start; flex-flow: row nowrap; align-items: stretch; flex-shrink: 0; margin: -6px; display: flex; box-sizing: border-box; padding-top: 16px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x2lah0s x193iq5w xeuugli xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; z-index: 0; position: relative; flex-shrink: 0; display: flex; box-sizing: border-box; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\"><img alt=\"\" class=\"x1b0d499 xuo83w3\" src=\"https://static.xx.fbcdn.net/rsrc.php/v3/yE/r/2PIcyqpptfD.png?_nc_eui2=AeFzFUfVid9UvnvGuLFhdTgEG5FnvESg51kbkWe8RKDnWRl2PM1k21CsKLGtNMpICyuLRCAwGfAF-7m7Cmu4eVDm\" style=\"animation-name:none !important; border:0px; filter:var(--filter-placeholder-icon); height:20px; transition-property:none !important; vertical-align:-0.25em; width:20px\" /></div>\r\n\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x193iq5w xeuugli x1r8uery x1iyjqo2 xs83m0k xamitd3 xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; flex: 1 1 0px; z-index: 0; position: relative; display: flex; box-sizing: border-box; align-self: center; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x78zum5 xdt5ytf xz62fqu x16ldp7u\" style=\"margin-top: -5px; display: flex; flex-direction: column; margin-bottom: -5px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:times new roman,times,serif\"><span dir=\"auto\" style=\"color:var(--primary-text)\">tcsf.official@gmail.com</span></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 x2lah0s x1nhvcw1 x1qjc9v5 xozqiw3 x1q0g3np xyamay9 xykv574 xbmpl8g x4cne27 xifccgj\" style=\"z-index: 0; position: relative; justify-content: flex-start; flex-flow: row nowrap; align-items: stretch; flex-shrink: 0; margin: -6px; display: flex; box-sizing: border-box; padding-top: 16px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x2lah0s x193iq5w xeuugli xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; z-index: 0; position: relative; flex-shrink: 0; display: flex; box-sizing: border-box; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\"><img alt=\"\" class=\"x1b0d499 xuo83w3\" src=\"https://static.xx.fbcdn.net/rsrc.php/v3/y3/r/BQdeC67wT9z.png?_nc_eui2=AeF71GDPH9eSV6z6ntOADf8_C-BjLWjhL2AL4GMtaOEvYCXAq24E5oZ2Aq1hqwaD7BMNZtG3RK20IdNtJEbtJIGa\" style=\"animation-name:none !important; border:0px; filter:var(--filter-placeholder-icon); height:20px; transition-property:none !important; vertical-align:-0.25em; width:20px\" /></div>\r\n\r\n<div class=\"x9f619 x1n2onr6 x1ja2u2z x78zum5 xdt5ytf x193iq5w xeuugli x1r8uery x1iyjqo2 xs83m0k xamitd3 xsyo7zv x16hj40l x10b6aqq x1yrsyyn\" style=\"padding: 6px; max-width: 100%; flex: 1 1 0px; z-index: 0; position: relative; display: flex; box-sizing: border-box; align-self: center; flex-direction: column; min-width: 0px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div style=\"animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<div class=\"x78zum5 xdt5ytf xz62fqu x16ldp7u\" style=\"margin-top: -5px; display: flex; flex-direction: column; margin-bottom: -5px; animation-name: none !important; transition-property: none !important; font-family: inherit;\">\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:times new roman,times,serif\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1qq9wsj L-Affiliate-Tagged\" href=\"http://www.tcsf.com.ph/?fbclid=IwAR0sUZOyhBFC1lrO9E2g3LXcw3o1D14jdQEgtVoda4iLg-ghmRE0S7Fd6Kw\" rel=\"nofollow noopener\" style=\"color: var(--accent); cursor: pointer; border-width: 0px; border-style: initial; border-color: initial; outline: none; list-style: none; margin: 0px; text-align: inherit; padding: 0px; -webkit-tap-highlight-color: transparent; box-sizing: border-box; touch-action: manipulation; background-color: transparent; display: inline; font-family: inherit; animation-name: none !important; transition-property: none !important;\" tabindex=\"0\" target=\"_blank\"><span dir=\"auto\" style=\"color:var(--accent)\">tcsf.com.ph</span></a></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p><img alt=\"Facebook Comments - Facebook Icon Png Free Download Transparent PNG -  980x980 - Free Download on NicePNG\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1FikIh0KweafQhPvyrvlVJpkB7tp2t-lnHA&amp;usqp=CAU\" style=\"height:20px; width:20px\" /><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp; <span style=\"font-size:18px\">&nbsp; https://web.facebook.com/TechnologicalCollegeOfSanFelipe</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n'),
(12, 'president', '<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\nEngnr. Manny Pascual</p>\r\n\r\n<p>School President<br />\r\n&nbsp;</p>\r\n'),
(13, 'motto', '<p><span style=\"font-family:tr century gothic,arial,sans-serif; font-size:20px\">Quality Education Within Reach</span><span style=\"color:rgb(255, 255, 255); font-family:tr century gothic,arial,sans-serif; font-size:20px\">chc</span></p>\r\n'),
(14, 'Branch', '<p>&nbsp;</p>\n\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:48px\">Branch</span></span></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:center\"><span style=\"font-size:28px\">Kolehiyo ng Subic</span></li>\n</ul>\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(11, 'Senior High', 'Arriane Saldejano');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(159, 'admin/uploads/7223_File_Screenshot (87).png', '2023-04-26 15:11:25', 'E', 0, 0, 'jov', 'AprilBasa'),
(158, 'admin/uploads/7223_File_Screenshot (87).png', '2023-04-24 11:11:02', 'E', 9, 189, 'jov', 'AprilBasa'),
(157, 'admin/uploads/7223_File_Screenshot (87).png', '2023-04-24 11:11:02', 'E', 9, 188, 'jov', 'AprilBasa'),
(156, 'admin/uploads/7223_File_Screenshot (87).png', '2023-04-24 11:11:02', 'E', 9, 187, 'jov', 'AprilBasa'),
(155, 'admin/uploads/4404_File_5054_File_download.jpg', '2023-04-22 09:58:29', 'sagutan', 0, 189, 'kewkew', 'jovelyncalina'),
(150, 'admin/uploads/8588_File_class_subject_overview.sql', '2023-04-11 15:15:13', 'FD', 0, 187, 'twitch', 'DrexTorres'),
(151, 'admin/uploads/7834_File_Screenshot (87).png', '2023-04-17 20:43:54', 'E', 9, 187, 'hi', 'AprilBasa'),
(152, 'admin/uploads/7834_File_Screenshot (87).png', '2023-04-17 20:43:54', 'E', 9, 188, 'hi', 'AprilBasa'),
(148, 'admin/uploads/4497_File_cute-bear-with-bubble-tea-cartoon-vector-illustration_42750-816.avif', '2023-04-10 15:21:29', 's', 9, 188, 'S', 'AprilBasa'),
(147, 'admin/uploads/4497_File_cute-bear-with-bubble-tea-cartoon-vector-illustration_42750-816.avif', '2023-04-10 15:21:29', 's', 9, 187, 'S', 'AprilBasa'),
(145, 'admin/uploads/6942_File_Grade 11 courses.docx', '2023-04-10 13:45:23', 'w', 9, 188, 'jov', 'AprilBasa'),
(144, 'admin/uploads/6942_File_Grade 11 courses.docx', '2023-04-10 13:45:23', 'w', 9, 187, 'jov', 'AprilBasa'),
(153, 'admin/uploads/7834_File_Screenshot (87).png', '2023-04-17 20:43:54', 'E', 9, 189, 'hi', 'AprilBasa'),
(154, 'admin/uploads/9737_File_Publication2.pub', '2023-04-19 16:51:56', 'sss', 9, 189, 'ss', 'AprilBasa'),
(160, 'admin/uploads/downloadable/4850_File_348355172_205694505613469_7189460674172096993_n.png', '2023-06-02 14:17:12', 'testmod', 24, 199, 'testmod', 'AstaLavista');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `reciever_id` int NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(32, 9, 'hello po', '2023-04-11 15:12:02', 110, 'April Basa', 'Drex Torres', ''),
(33, 110, '0000000', '2023-04-11 15:12:43', 9, 'Drex Torres', 'April Basa', 'read'),
(34, 359, 'hello welcome\r\n', '2023-04-17 19:55:15', 9, 'jovelyn calina', 'April Basa', 'read'),
(35, 359, 'ffffff', '2023-04-19 18:58:59', 9, 'jovelyn calina', 'April Basa', 'read'),
(36, 359, 'hello', '2023-05-02 23:52:37', 359, 'jovelyn calina', 'jovelyn calina', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

DROP TABLE IF EXISTS `message_sent`;
CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int NOT NULL AUTO_INCREMENT,
  `reciever_id` int NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(17, 9, 'hello po', '2023-04-11 15:12:02', 110, 'April Basa', 'Drex Torres'),
(18, 110, '0000000', '2023-04-11 15:12:43', 9, 'Drex Torres', 'April Basa'),
(19, 359, 'hello welcome\r\n', '2023-04-17 19:55:15', 9, 'jovelyn calina', 'April Basa'),
(20, 359, 'ffffff', '2023-04-19 18:58:59', 9, 'jovelyn calina', 'April Basa'),
(21, 359, 'hello', '2023-05-02 23:52:37', 359, 'jovelyn calina', 'jovelyn calina');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`) VALUES
(24, 187, 'Add Annoucements', '2023-04-06 15:41:39', 'announcements_student.php', 0),
(25, 187, 'Add Practice Quiz file', '2023-04-06 15:53:06', 'student_quiz_list.php', 0),
(26, 187, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-06 16:10:06', 'downloadable_student.php', 0),
(27, 187, 'Add Practice Quiz file', '2023-04-06 16:16:57', 'student_quiz_list.php', 0),
(28, 187, 'Add Practice Quiz file', '2023-04-06 16:17:19', 'student_quiz_list.php', 0),
(29, 187, 'Add Practice Quiz file', '2023-04-06 16:51:47', 'student_quiz_list.php', 0),
(30, 187, 'Add Downloadable Materials file name <b>hi</b>', '2023-04-07 17:19:45', 'downloadable_student.php', 0),
(31, 187, 'Add Practice Quiz file', '2023-04-07 23:38:41', 'student_quiz_list.php', 0),
(32, 187, 'Add Practice Quiz file', '2023-04-10 13:09:07', 'student_quiz_list.php', 0),
(33, 188, 'Add Practice Quiz file', '2023-04-10 13:09:07', 'student_quiz_list.php', 0),
(34, 189, 'Add Practice Quiz file', '2023-04-10 13:09:08', 'student_quiz_list.php', 0),
(35, 187, 'Add Practice Quiz file', '2023-04-10 13:12:59', 'student_quiz_list.php', 0),
(36, 188, 'Add Practice Quiz file', '2023-04-10 13:12:59', 'student_quiz_list.php', 0),
(37, 189, 'Add Practice Quiz file', '2023-04-10 13:12:59', 'student_quiz_list.php', 0),
(38, 187, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-10 13:45:23', 'downloadable_student.php', 0),
(39, 188, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-10 13:45:23', 'downloadable_student.php', 0),
(40, 189, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-10 13:45:23', 'downloadable_student.php', 0),
(41, 187, 'Add Downloadable Materials file name <b>S</b>', '2023-04-10 15:21:29', 'downloadable_student.php', 0),
(42, 188, 'Add Downloadable Materials file name <b>S</b>', '2023-04-10 15:21:29', 'downloadable_student.php', 0),
(43, 189, 'Add Downloadable Materials file name <b>S</b>', '2023-04-10 15:21:29', 'downloadable_student.php', 0),
(44, 187, 'Add Practice Quiz file', '2023-04-11 13:42:57', 'student_quiz_list.php', 0),
(45, 188, 'Add Practice Quiz file', '2023-04-11 13:42:57', 'student_quiz_list.php', 0),
(46, 189, 'Add Practice Quiz file', '2023-04-11 13:42:57', 'student_quiz_list.php', 0),
(47, 187, 'Add Annoucements', '2023-04-11 13:43:40', 'announcements_student.php', 0),
(48, 188, 'Add Annoucements', '2023-04-11 13:43:40', 'announcements_student.php', 0),
(49, 189, 'Add Annoucements', '2023-04-11 13:43:40', 'announcements_student.php', 0),
(50, 187, 'Add Annoucements', '2023-04-11 15:14:21', 'announcements_student.php', 0),
(51, 188, 'Add Annoucements', '2023-04-11 15:14:21', 'announcements_student.php', 0),
(52, 189, 'Add Annoucements', '2023-04-11 15:14:21', 'announcements_student.php', 0),
(53, 187, 'Add Assignment file name <b>jov</b>', '2023-04-11 15:15:59', 'assignment_student.php', 0),
(54, 187, 'Add Assignment file name <b>VID</b>', '2023-04-11 15:20:06', 'assignment_student.php', 0),
(55, 187, 'Add Practice Quiz file', '2023-04-11 15:55:21', 'student_quiz_list.php', 0),
(56, 188, 'Add Practice Quiz file', '2023-04-11 15:55:21', 'student_quiz_list.php', 0),
(57, 189, 'Add Practice Quiz file', '2023-04-11 15:55:21', 'student_quiz_list.php', 0),
(58, 187, 'Add Practice Quiz file', '2023-04-11 16:21:30', 'student_quiz_list.php', 0),
(59, 188, 'Add Practice Quiz file', '2023-04-11 16:21:30', 'student_quiz_list.php', 0),
(60, 189, 'Add Practice Quiz file', '2023-04-11 16:21:30', 'student_quiz_list.php', 0),
(61, 187, 'Add Practice Quiz file', '2023-04-11 16:45:41', 'student_quiz_list.php', 0),
(62, 188, 'Add Practice Quiz file', '2023-04-11 16:45:41', 'student_quiz_list.php', 0),
(63, 189, 'Add Practice Quiz file', '2023-04-11 16:45:41', 'student_quiz_list.php', 0),
(64, 187, 'Add Practice Quiz file', '2023-04-11 21:07:20', 'student_quiz_list.php', 0),
(65, 188, 'Add Practice Quiz file', '2023-04-11 21:07:20', 'student_quiz_list.php', 0),
(66, 189, 'Add Practice Quiz file', '2023-04-11 21:07:20', 'student_quiz_list.php', 0),
(67, 187, 'Add Practice Quiz file', '2023-04-11 21:09:40', 'student_quiz_list.php', 0),
(68, 188, 'Add Practice Quiz file', '2023-04-11 21:09:40', 'student_quiz_list.php', 0),
(69, 189, 'Add Practice Quiz file', '2023-04-11 21:09:40', 'student_quiz_list.php', 0),
(70, 187, 'Add Practice Quiz file', '2023-04-17 08:26:36', 'student_quiz_list.php', 0),
(71, 188, 'Add Practice Quiz file', '2023-04-17 08:26:36', 'student_quiz_list.php', 0),
(72, 189, 'Add Practice Quiz file', '2023-04-17 08:26:37', 'student_quiz_list.php', 0),
(73, 187, 'Add Downloadable Materials file name <b>hi</b>', '2023-04-17 20:43:54', 'downloadable_student.php', 0),
(74, 188, 'Add Downloadable Materials file name <b>hi</b>', '2023-04-17 20:43:54', 'downloadable_student.php', 0),
(75, 189, 'Add Downloadable Materials file name <b>hi</b>', '2023-04-17 20:43:54', 'downloadable_student.php', 0),
(76, 189, 'Add Downloadable Materials file name <b>ss</b>', '2023-04-19 16:51:56', 'downloadable_student.php', 0),
(77, 189, 'Add Assignment file name <b>aaaa</b>', '2023-04-19 16:53:03', 'assignment_student.php', 0),
(78, 189, 'Add Assignment file name <b>dialog</b>', '2023-04-20 04:24:58', 'assignment_student.php', 0),
(79, 187, 'Add Practice Quiz file', '2023-04-22 10:02:55', 'student_quiz_list.php', 0),
(80, 188, 'Add Practice Quiz file', '2023-04-22 10:02:55', 'student_quiz_list.php', 0),
(81, 189, 'Add Practice Quiz file', '2023-04-22 10:02:55', 'student_quiz_list.php', 0),
(82, 187, 'Add Practice Quiz file', '2023-04-22 10:03:49', 'student_quiz_list.php', 0),
(83, 188, 'Add Practice Quiz file', '2023-04-22 10:03:49', 'student_quiz_list.php', 0),
(84, 189, 'Add Practice Quiz file', '2023-04-22 10:03:49', 'student_quiz_list.php', 0),
(85, 187, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-24 11:11:02', 'downloadable_student.php', 0),
(86, 188, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-24 11:11:02', 'downloadable_student.php', 0),
(87, 189, 'Add Downloadable Materials file name <b>jov</b>', '2023-04-24 11:11:02', 'downloadable_student.php', 0),
(88, 188, 'Add Practice Quiz file', '2023-05-03 01:36:53', 'student_quiz_list.php', 0),
(89, 189, 'Add Practice Quiz file', '2023-05-03 01:36:53', 'student_quiz_list.php', 0),
(90, 192, 'Add Practice Quiz file', '2023-05-03 01:36:53', 'student_quiz_list.php', 0),
(91, 193, 'Add Practice Quiz file', '2023-05-03 01:36:53', 'student_quiz_list.php', 0),
(92, 199, 'Add Downloadable Materials file name <b>testmod</b>', '2023-06-02 14:17:12', 'downloadable_student.php', 0),
(93, 199, 'Add Practice Quiz file', '2023-06-02 14:28:18', 'student_quiz_list.php', 0),
(94, 199, 'Add Assignment file name <b>assignment 01</b>', '2023-06-02 15:09:54', 'assignment_student.php', 0),
(95, 199, 'Add Quiz to Student', '2023-06-05 16:11:35', 'student_quiz_list.php', 372),
(96, 199, 'Add Quiz to Student with ID#Array', '2023-06-05 16:15:10', 'student_quiz_list.php', 372),
(97, 199, 'Add Quiz to Student with ID#372', '2023-06-05 17:00:17', 'student_quiz_list.php', 372),
(98, 199, 'Add Quiz to Student with ID#376', '2023-06-05 17:00:17', 'student_quiz_list.php', 376);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

DROP TABLE IF EXISTS `notification_read`;
CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(38, 359, 'yes', 72),
(39, 359, 'yes', 69),
(40, 359, 'yes', 66),
(41, 359, 'yes', 63),
(42, 359, 'yes', 60),
(43, 359, 'yes', 57),
(44, 359, 'yes', 52),
(45, 359, 'yes', 49),
(46, 359, 'yes', 46),
(47, 359, 'yes', 43),
(48, 359, 'yes', 40),
(49, 359, 'yes', 37),
(50, 359, 'yes', 34),
(51, 359, 'yes', 75),
(52, 359, 'yes', 76),
(53, 359, 'yes', 77),
(54, 359, 'yes', 87),
(55, 359, 'yes', 84),
(56, 359, 'yes', 78),
(57, 359, 'yes', 81),
(58, 359, 'yes', 89),
(59, 372, 'yes', 92);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

DROP TABLE IF EXISTS `notification_read_teacher`;
CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 9, 'yes', 18),
(10, 9, 'yes', 20),
(11, 9, 'yes', 19),
(12, 9, 'yes', 21),
(13, 9, 'yes', 22),
(14, 9, 'yes', 23),
(15, 9, 'yes', 25),
(16, 9, 'yes', 24);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False'),
(3, 'essay');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `taken_time` time NOT NULL,
  `teacher_id` int NOT NULL,
  `passing_grade_pct` float DEFAULT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `taken_time`, `teacher_id`, `passing_grade_pct`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', '00:00:00', 12, NULL),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', '00:00:00', 14, NULL),
(5, 'test3', '123', '2014-01-16 04:12:07', '00:00:00', 12, NULL),
(7, 'mapeh', 'sagot', '2023-04-06 16:16:25', '00:00:00', 9, NULL),
(8, 'mapeh', 'sagot', '2023-04-06 16:49:56', '00:00:00', 110, NULL),
(12, 'Web Development', 'This quiz focuses on fundamentals of web application development', '2023-06-02 11:55:34', '00:00:00', 24, 90),
(13, 'Test Quiz', 'Test Description', '2023-06-02 14:40:08', '00:00:00', 24, 80.5),
(14, 'Test Quiz SDLC', 'second test only to see how it works', '2023-06-05 17:15:21', '00:00:00', 24, 90),
(15, 'Test Quiz 2', 'The second test to see how it works', '2023-06-08 09:42:24', '00:00:00', 24, 85);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int NOT NULL,
  `points` int NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False'),
(40, 7, '<p>what is the highest number?</p>\r\n', 1, 0, '2023-04-06 16:21:09', 'C'),
(41, 8, '<p>dddheaad</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 0, '2023-04-06 16:50:34', 'True'),
(42, 9, '<p>maraming sagot</p>\r\n', 1, 0, '2023-04-07 23:38:06', 'B'),
(43, 9, '<p>ssssssssssssssss</p>\r\n', 1, 0, '2023-04-07 23:38:27', 'A'),
(44, 9, '<p>blah blah</p>\r\n', 2, 0, '2023-04-14 16:45:12', 'False'),
(45, 9, '<p>5 or 2?</p>\r\n', 1, 0, '2023-04-14 16:45:41', 'D'),
(46, 9, '<p>hahha hohoho eyo</p>\r\n', 1, 0, '2023-04-14 16:46:10', 'A'),
(47, 9, '<p>ssssss</p>\r\n', 1, 0, '2023-04-14 16:54:03', 'B'),
(48, 10, '<p>what is the history of tcsf</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3, 0, '2023-04-17 08:19:37', ''),
(49, 10, '5', 1, 0, '2023-04-19 14:43:13', 'A'),
(50, 10, '5', 1, 0, '2023-04-22 10:03:27', 'A'),
(51, 7, '3', 1, 0, '2023-05-02 22:32:10', 'A'),
(52, 7, '<p>wwwwwwww</p>\r\n', 2, 0, '2023-05-03 01:34:53', 'True'),
(53, 7, '<p>sssss</p>\r\n', 2, 0, '2023-05-03 01:35:07', 'False'),
(54, 7, '<p>sfsfdfdfd</p>\r\n', 2, 0, '2023-05-03 01:35:15', 'True'),
(55, 7, '<p>df1 0r 2</p>\r\n', 1, 0, '2023-05-03 01:35:33', 'B'),
(56, 7, '<p>fsfsaF</p>\r\n', 2, 0, '2023-05-03 01:35:41', 'True'),
(57, 7, '<p>1 @ 2</p>\r\n', 1, 0, '2023-05-03 01:36:08', 'D'),
(58, 7, '<p>aaaa</p>\r\n', 2, 0, '2023-05-03 01:36:19', 'True'),
(59, 7, '<p>ssss</p>\r\n', 2, 0, '2023-05-03 01:36:34', 'True'),
(60, 12, '<p>PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pa', 2, 0, '2023-06-02 11:56:52', 'True'),
(61, 12, '<p>PHP is a widely-used, not open-source, and efficient alternative to competitors such as Microsoft', 2, 0, '2023-06-02 11:58:03', 'False'),
(62, 12, '<p>What is PHP?</p>\r\n', 1, 0, '2023-06-02 12:00:48', 'B'),
(63, 12, '<p>Who is the father of PHP?</p>\r\n', 1, 0, '2023-06-02 12:03:19', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

DROP TABLE IF EXISTS `school_year`;
CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `login_attempts` int NOT NULL DEFAULT '0' COMMENT 'max=3',
  `datetime_locked` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `about`, `status`, `login_attempts`, `datetime_locked`) VALUES
(358, 'drex', 'hi', 13, 'hello', 'mama\r\n', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(359, 'jovelyn', 'calina', 7, 'jovelyn', '1111', 'uploads/cute-bear-with-bubble-tea-cartoon-vector-illustration_42750-816.avif', '', 'Registered', 0, '0000-00-00 00:00:00'),
(360, 'aaa', 'aaa', 8, 'aaa', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(361, 'fafasfsaf', 'sfasfsaf', 12, '1111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(362, 'ssss', 'ssss', 8, 'wsss', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(363, '111', '111', 10, '1111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(364, 'sss', 'ssss', 8, 'ss', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(365, 'Ken', 'Martin', 17, '0001', '1111', 'uploads/logo.jpg', '', 'Registered', 0, '0000-00-00 00:00:00'),
(366, 'hello', 'world', 17, '0002', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(367, 'fASFasF', 'babet', 9, '1111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(368, 'meja', 'Gallardo', 8, '1111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(369, 'Samejalove', 'ssss', 7, '12', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(370, 'Samejalove', 'torres', 8, '12', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(371, 'Ken', 'Balingit', 10, '12', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Unregistered', 0, '0000-00-00 00:00:00'),
(372, 'Juan', 'Dela Cruz', 19, '123456', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 3, NULL),
(377, 'Joan', 'Dela Cruz', 26, '2222222222', '2222222222', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 0, NULL),
(376, 'Miguel', 'Arce', 26, '1111111111', '1111111111', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 0, NULL),
(378, 'Test', 'Student', 26, '3333333333', '3333333333', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 0, NULL),
(379, 'Test', 'Student', 26, '4444444444', '4444444444', 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 3, '2023-06-07 19:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `class_id` int NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `about` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

DROP TABLE IF EXISTS `student_assignment`;
CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, ''),
(2, 32, 'admin/uploads/1282_File_History (1).docx', '2023-04-11 15:16:55', 'FD', 'youtube', 110, ''),
(3, 33, 'admin/uploads/3831_File_1282_File_History (1).docx', '2023-04-11 15:33:11', 'S', 'youtube', 110, '90'),
(4, 34, 'admin/uploads/8280_File_Publication2.pub', '2023-04-19 18:45:52', 'abm11', 'jovelyn', 359, '90'),
(5, 35, 'admin/uploads/8304_File_FORMAT-FOR-QUIZZES.txt', '2023-04-20 04:32:10', 'E', 'jov', 359, '90'),
(6, 35, 'admin/uploads/2626_File_logo.jpg', '2023-04-24 12:05:54', '\'\'\'', '\'', 359, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

DROP TABLE IF EXISTS `student_backpack`;
CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(5, 'admin/uploads/8228_File_download.jpg', '2023-04-06 16:11:00', 'sagutan', 110, 'jov'),
(6, 'admin/uploads/5054_File_download.jpg', '2023-04-10 12:49:20', 'sagutan', 110, 'hi'),
(7, 'admin/uploads/8228_File_download.jpg', '2023-04-10 12:49:20', 'sagutan', 110, 'jov'),
(8, 'admin/uploads/6942_File_Grade 11 courses.docx', '2023-04-10 13:54:46', 'w', 110, 'jov'),
(9, 'admin/uploads/7834_File_Screenshot (87).png', '2023-04-17 20:44:47', 'E', 359, 'hi'),
(10, 'admin/uploads/7223_File_Screenshot (87).png', '2023-05-02 21:55:07', 'E', 359, 'jov');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

DROP TABLE IF EXISTS `student_class_quiz`;
CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int NOT NULL,
  `student_id` int NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(32, 57, 359, '3580', '7 out of 10'),
(33, 55, 359, '3600', '0 out of 0'),
(35, 60, 376, '3600', '4 out of 4'),
(36, 60, 377, '3600', '3 out of 4'),
(46, 60, 372, '38', '3 out of 4');

-- --------------------------------------------------------

--
-- Table structure for table `student_log`
--

DROP TABLE IF EXISTS `student_log`;
CREATE TABLE IF NOT EXISTS `student_log` (
  `student_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `login_date` varchar(100) NOT NULL,
  `logout_date` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`student_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(14, 'IS 411A', 'Senior Systems Project 1', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n<p>&nbsp;</p>\r\n<p>The project requirement for this subject are:</p>\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n<p>100% Running System at the end of semester</p>\r\n<p>&nbsp;</p>', 3, '', ''),
(15, 'IS 412', 'Effective Human Communication for IT Professional', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', ''),
(16, 'IS 311', 'Programming Languages', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', ''),
(17, 'IS 413', 'Introduction to the IM Professional and Ethics', '', '<p>This subject discusses about Ethics, E-Commerce, Cybercrime Law, Computer Security, etc.</p>', 0, '', ''),
(22, 'IS 221', 'Application Development', '', '', 3, '', '2nd'),
(23, 'IS 222', 'Network and Internet Technology', '', '', 3, '', '2nd'),
(24, 'IS 223', 'Business Process', '', '', 3, '', '2nd'),
(25, 'IS 224', 'Discrete Structures', '', '', 3, '', '2nd'),
(26, 'IS 227', 'IS Programming 2', '', '', 3, '', '2nd'),
(27, 'SS POL GOV', 'Politics and Governance with Philippine Constitution', '', '', 3, '', '2nd'),
(28, 'LIT 1', 'Philippine  Literature', '', '', 3, '', '2nd'),
(29, 'ACCTG 2', 'Fundamentals of Accounting 2', '', '', 3, '', '2nd'),
(30, 'PE 4', 'Team Sports', '', '', 3, '', '2nd'),
(31, 'IS 302', 'Survey of Programming Languages', '', '', 3, '', '2nd'),
(32, 'IS 303', 'Structured Query Language', '', '', 3, '', '2nd'),
(33, 'IS 321', 'Information System Planning', '', '', 3, '', '2nd'),
(34, 'IS 322', 'Management of Technology', '', '', 3, '', '2nd'),
(35, 'IS 323', 'E-commerce Strategy Architectural', '', '', 3, '', '2nd'),
(36, 'IS 324', 'System Analysis and Design', '', '', 3, '', '2nd'),
(37, 'Law 1', 'Law on Obligation and Contracts', '', '', 3, '', '2nd'),
(38, 'Philo 1', 'Social Philosophy & Logic', '', '', 3, '', '2nd'),
(39, 'MQTB', 'Quantitative Techniques in Business', '', '', 3, '', '2nd'),
(40, 'RIZAL', 'Rizal: Life and Works', '', '<p>COURSE OUTLINE<br />\r\n1. Course Code : RIZAL</p>\r\n\r\n<p>2. Course Title &nbsp;: RIZAL (Rizal Life and Works)<br />\r\n3. Pre-requisite : none<br />\r\n5. Credit/ Class Schedule : 3 units; 3 hrs/week<br />\r\n6. Course Description&nbsp;<br />\r\n1. A critical analysis of Jose Rizal&rsquo;s life and ideas as reflected in his biography, his novels Noli Me Tangere and El Filibusterismo and in his other writings composed of essays and poems to provide the students a value based reference for reacting to certain ideas and behavior.<br />\r\n<br />\r\n<strong>PROGRAM OBJECTIVES</strong><br />\r\n1. To instill in the students human values and cultural refinement through the humanities and social sciences.<br />\r\n2. To inculcate high ethical standards in the students through its integration in the learning activities.<br />\r\n3. To have critical studies and discussions why Rizal is made the national hero of the Philippines.<br />\r\n<br />\r\nTOPICS:&nbsp;<br />\r\n1. A Hero is Born&nbsp;<br />\r\n2. Childhood Days in Calamba<br />\r\n3. School Days in Binan<br />\r\n4. Triumphs in the Ateneo<br />\r\n5. At the UST<br />\r\n6. In Spain<br />\r\n7. Paris to Berlin<br />\r\n8. Noli Me Tangere<br />\r\n9. Elias and Salome<br />\r\n10. Rizal&rsquo;s Tour of Europe with with Viola<br />\r\n11. Back to Calamba<br />\r\n12. HK, Macao and Japan<br />\r\n13. Rizal in Japan<br />\r\n14. Rizal in America<br />\r\n15. Life and Works in London<br />\r\n16. In Gay Paris<br />\r\n17. Rizal in Brussles<br />\r\n18. In Madrid<br />\r\n19. El Filibusterismo<br />\r\n20. In Hong Kong<br />\r\n21. Exile in Dapitan<br />\r\n22. The Trial of Rizal<br />\r\n23. Martyrdom at Bagumbayan<br />\r\n<br />\r\nTextbook and References:<br />\r\n1. Rizal&rsquo;s Life, Works and Writings (The Centennial Edition) by: Gregorio F. Zaide<br />\r\nand Sonia M. Zaide Quezon City, 1988. All Nations Publishing Co.<br />\r\n2. Coates, Austin. Rizal: First Filipino Nationalist and Martyr, Quezon City, UP Press 1999.<br />\r\n3. Constantino, Renato. Veneration Without Understanding. Quezon City, UP Press Inc., 2001.<br />\r\n4. Dela Cruz, W. &amp; Zulueta, M. Rizal: Buhay at Kaisipan. Manila, NBS Publications 2002.<br />\r\n5. Ocampo, Ambeth. Rizal Without the Overcoat (New Edition). Pasig City, anvil Publishing House 2002.<br />\r\n6. Odullo-de Guzman, Maria. Noli Me Tangere and El Filibusterismo. Manila, NBS Publications 1998.<br />\r\n7. Palma, Rafael. Rizal: The Pride of the Malay Race. Manila, Saint Anthony Company 2000.<br />\r\n8.Romero, M.C. &amp; Sta Roman, J. Rizal &amp; the Development of Filipino Consciousness (Third Edition). Manila, JMC Press Inc., 2001.<br />\r\n<br />\r\nCourse Evaluation:<br />\r\n<br />\r\n1. Quizzes : 30 %<br />\r\n2. Exams : 40 %<br />\r\n3. Class Standing : 20 %<br />\r\n- recitation<br />\r\n- attendance<br />\r\n- behavior<br />\r\n4. Final Grade<br />\r\n- 40 % previous grade<br />\r\n- 60 % current grade</p>\r\n', 3, '', '2nd'),
(41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd'),
(42, '1234', 'Sample Subject', '', '<p>Sample Only</p>\r\n', 3, '', '1st'),
(43, 'WD101', 'Web Development', '', '<p>This is just a test</p>\r\n', 5, '', '1st'),
(44, 'SD101', 'System Development', '', '<p>This is just a test to see how it works</p>\r\n\r\n<p><strong>This is just a test to see how it works</strong></p>\r\n\r\n<p><big>This is just a test to see how it works</big></p>\r\n\r\n<h2>This is just a test to see how it works</h2>\r\n\r\n<h1>This is just a test to see how it works</h1>\r\n', 25, '', '1st'),
(45, 'FIL01', 'Filipino 01', '', '<p>Filipino in First Year High</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Filipino in First Year High</h1>\r\n', 10, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(10000) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'April', 'Basa', 4, 'uploads/april.jpg', '', 'Registered', 'Deactivated'),
(5, '1002', 'red', 'Japoy', 'Laaa', 4, 'uploads/logo.jpg', '', '', 'Deactivated'),
(24, 'asta.lavista', 'asta.lavista', 'Asta', 'Lavista', 11, 'uploads/user (1).png', '', 'Registered', ''),
(25, 'migs.monleon', 'migs.monleon', 'Migs', 'Monleon', 11, 'uploads/man (4).png', '', 'Registered', ''),
(26, 'migs.monleon1', 'migs.monleon1', 'Migs', 'Monleon', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

DROP TABLE IF EXISTS `teacher_backpack`;
CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

DROP TABLE IF EXISTS `teacher_class`;
CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `class_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `students_limit` int DEFAULT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`, `students_limit`) VALUES
(188, 9, 8, 42, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(189, 9, 7, 42, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(190, 22, 20, 29, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(191, 9, 20, 42, 'admin/uploads/thumbnails.jpg', '2023-2024', NULL),
(192, 9, 20, 29, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(193, 9, 17, 42, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(194, 5, 7, 24, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(195, 5, 8, 24, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(196, 5, 10, 24, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(197, 5, 11, 24, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(198, 5, 12, 24, 'admin/uploads/thumbnails.jpg', '2022-2023', NULL),
(199, 24, 19, 43, 'admin/uploads/thumbnails.jpg', '2022-2023', 25),
(200, 24, 20, 44, 'admin/uploads/thumbnails.jpg', '2022-2023', 15);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

DROP TABLE IF EXISTS `teacher_class_announcements`;
CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00'),
(40, '<h1>Magandang Umaga!!!</h1>\r\n', '9', 187, '2023-04-06 15:41:39'),
(41, '<p><span style=\"font-size:36px\">GOOD MORNING!!</span></p>\r\n', '9', 187, '2023-04-11 13:43:40'),
(42, '<p><span style=\"font-size:36px\">GOOD MORNING!!</span></p>\r\n', '9', 188, '2023-04-11 13:43:40'),
(43, '<p><span style=\"font-size:36px\">GOOD MORNING!!</span></p>\r\n', '9', 189, '2023-04-11 13:43:40'),
(44, '<p><span style=\"font-size:20px\"><img alt=\"enlightened\" src=\"https://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/lightbulb.gif\" style=\"height:20px; width:20px\" title=\"enlightened\" />HINT:</span></p>\r\n', '9', 187, '2023-04-11 15:14:21'),
(45, '<p><span style=\"font-size:20px\"><img alt=\"enlightened\" src=\"https://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/lightbulb.gif\" style=\"height:20px; width:20px\" title=\"enlightened\" />HINT:</span></p>\r\n', '9', 188, '2023-04-11 15:14:21'),
(46, '<p><span style=\"font-size:20px\"><img alt=\"enlightened\" src=\"https://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/lightbulb.gif\" style=\"height:20px; width:20px\" title=\"enlightened\" />HINT:</span></p>\r\n', '9', 189, '2023-04-11 15:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

DROP TABLE IF EXISTS `teacher_class_student`;
CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `student_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(378, 186, 213, 9),
(379, 186, 214, 9),
(380, 186, 215, 9),
(381, 186, 216, 9),
(382, 186, 219, 9),
(383, 187, 107, 9),
(384, 187, 110, 9),
(385, 188, 227, 9),
(386, 189, 226, 9),
(387, 190, 228, 22),
(388, 190, 229, 22),
(389, 187, 236, 9),
(390, 191, 228, 9),
(391, 191, 229, 9),
(392, 191, 220, 9),
(393, 191, 110, 110),
(395, 189, 359, 9),
(396, 193, 365, 9),
(397, 193, 366, 9),
(398, 194, 359, 5),
(399, 194, 369, 5),
(400, 195, 360, 5),
(401, 195, 362, 5),
(402, 195, 364, 5),
(403, 195, 368, 5),
(404, 195, 370, 5),
(405, 196, 363, 5),
(406, 196, 371, 5),
(407, 198, 361, 5),
(408, 199, 372, 24),
(409, 199, 376, 24),
(410, 199, 377, 24);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_log`
--

DROP TABLE IF EXISTS `teacher_log`;
CREATE TABLE IF NOT EXISTS `teacher_log` (
  `teacher_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `login_date` varchar(100) NOT NULL,
  `logout_date` varchar(100) NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`teacher_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

DROP TABLE IF EXISTS `teacher_notification`;
CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(19, 187, 'Add Downloadable Materials file name <b>twitch</b>', '2023-04-11 15:15:13', 'downloadable.php', 110, 0),
(20, 187, 'Submit Assignment file name <b>youtube</b>', '2023-04-11 15:16:55', 'view_submit_assignment.php', 110, 32),
(21, 187, 'Submit Assignment file name <b>youtube</b>', '2023-04-11 15:33:11', 'view_submit_assignment.php', 110, 33),
(22, 189, 'Submit Assignment file name <b>jovelyn</b>', '2023-04-19 18:45:52', 'view_submit_assignment.php', 359, 34),
(23, 189, 'Submit Assignment file name <b>jov</b>', '2023-04-20 04:32:10', 'view_submit_assignment.php', 359, 35),
(24, 189, 'Add Downloadable Materials file name <b>kewkew</b>', '2023-04-22 09:58:29', 'downloadable.php', 359, 0),
(25, 189, 'Submit Assignment file name <b>\'</b>', '2023-04-24 12:05:54', 'view_submit_assignment.php', 359, 35);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

DROP TABLE IF EXISTS `teacher_shared`;
CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `shared_teacher_id` int NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(86, 'admin', '2023-04-06 11:56:08', '2023-06-08 16:34:27', 15),
(87, 'admin', '2023-04-06 14:57:24', '2023-06-08 16:34:27', 15),
(88, 'admin', '2023-04-06 15:18:18', '2023-06-08 16:34:27', 15),
(89, 'admin', '2023-04-06 15:21:57', '2023-06-08 16:34:27', 15),
(90, 'admin', '2023-04-07 17:36:05', '2023-06-08 16:34:27', 15),
(91, 'admin', '2023-04-07 18:17:41', '2023-06-08 16:34:27', 15),
(92, 'admin', '2023-04-10 11:25:12', '2023-06-08 16:34:27', 15),
(93, 'admin', '2023-04-10 14:24:59', '2023-06-08 16:34:27', 15),
(94, 'admin', '2023-04-10 14:34:46', '2023-06-08 16:34:27', 15),
(95, 'admin', '2023-04-11 13:53:36', '2023-06-08 16:34:27', 15),
(96, 'admin', '2023-04-11 15:09:51', '2023-06-08 16:34:27', 15),
(97, 'admin', '2023-04-12 01:07:56', '2023-06-08 16:34:27', 15),
(98, 'admin', '2023-04-12 15:34:30', '2023-06-08 16:34:27', 15),
(99, 'admin', '2023-04-12 19:11:36', '2023-06-08 16:34:27', 15),
(100, 'admin', '2023-04-12 19:41:21', '2023-06-08 16:34:27', 15),
(101, 'admin', '2023-04-12 19:57:18', '2023-06-08 16:34:27', 15),
(102, 'admin', '2023-04-12 19:59:18', '2023-06-08 16:34:27', 15),
(103, 'admin', '2023-04-12 19:59:53', '2023-06-08 16:34:27', 15),
(104, 'admin', '2023-04-13 18:39:43', '2023-06-08 16:34:27', 15),
(105, 'admin', '2023-04-14 14:45:49', '2023-06-08 16:34:27', 15),
(106, 'admin', '2023-04-14 15:53:04', '2023-06-08 16:34:27', 15),
(107, 'admin', '2023-04-15 02:17:18', '2023-06-08 16:34:27', 15),
(108, 'admin', '2023-04-15 05:34:33', '2023-06-08 16:34:27', 15),
(109, 'admin', '2023-04-16 19:02:03', '2023-06-08 16:34:27', 15),
(110, 'admin', '2023-04-16 19:10:49', '2023-06-08 16:34:27', 15),
(111, 'admin', '2023-04-16 20:28:40', '2023-06-08 16:34:27', 15),
(112, 'admin', '2023-04-16 21:00:00', '2023-06-08 16:34:27', 15),
(113, 'admin', '2023-04-16 21:00:02', '2023-06-08 16:34:27', 15),
(114, 'admin', '2023-04-16 21:13:24', '2023-06-08 16:34:27', 15),
(115, 'admin', '2023-04-17 04:36:57', '2023-06-08 16:34:27', 15),
(116, 'admin', '2023-04-17 20:29:40', '2023-06-08 16:34:27', 15),
(117, 'admin', '2023-04-18 15:02:54', '2023-06-08 16:34:27', 15),
(118, 'admin', '2023-04-18 15:08:43', '2023-06-08 16:34:27', 15),
(119, 'admin', '2023-04-22 10:01:13', '2023-06-08 16:34:27', 15),
(120, 'admin', '2023-04-24 11:06:17', '2023-06-08 16:34:27', 15),
(121, 'admin', '2023-04-24 11:52:58', '2023-06-08 16:34:27', 15),
(122, 'admin', '2023-04-26 18:17:44', '2023-06-08 16:34:27', 15),
(123, 'admin', '2023-04-26 18:31:19', '2023-06-08 16:34:27', 15),
(124, 'admin', '2023-04-29 18:29:48', '2023-06-08 16:34:27', 15),
(125, 'admin', '2023-05-02 09:54:55', '2023-06-08 16:34:27', 15),
(126, 'admin', '2023-05-02 11:10:20', '2023-06-08 16:34:27', 15),
(127, 'admin', '2023-05-02 13:16:02', '2023-06-08 16:34:27', 15),
(128, 'admin', '2023-05-02 21:50:58', '2023-06-08 16:34:27', 15),
(129, 'admin', '2023-05-03 00:25:03', '2023-06-08 16:34:27', 15),
(130, 'admin', '2023-05-03 01:59:19', '2023-06-08 16:34:27', 15),
(131, 'admin', '2023-05-03 04:36:21', '2023-06-08 16:34:27', 15),
(132, 'admin', '2023-05-03 04:49:51', '2023-06-08 16:34:27', 15),
(133, 'admin', '2023-05-03 10:23:22', '2023-06-08 16:34:27', 15),
(134, 'admin', '2023-05-09 09:02:25', '2023-06-08 16:34:27', 15),
(135, 'admin', '2023-05-30 18:02:52', '2023-06-08 16:34:27', 15),
(136, 'admin', '2023-06-02 11:13:09', '2023-06-08 16:34:27', 15),
(137, 'admin', '2023-06-02 11:28:15', '2023-06-08 16:34:27', 15),
(138, 'admin', '2023-06-02 11:43:41', '2023-06-08 16:34:27', 15),
(139, 'admin', '2023-06-02 12:21:33', '2023-06-08 16:34:27', 15),
(140, 'admin', '2023-06-02 13:13:56', '2023-06-08 16:34:27', 15),
(141, 'admin', '2023-06-02 15:22:37', '2023-06-08 16:34:27', 15),
(142, 'admin', '2023-06-02 16:36:58', '2023-06-08 16:34:27', 15),
(143, 'admin', '2023-06-05 10:31:36', '2023-06-08 16:34:27', 15),
(144, 'admin', '2023-06-05 12:14:47', '2023-06-08 16:34:27', 15),
(145, 'admin', '2023-06-05 12:16:25', '2023-06-08 16:34:27', 15),
(146, 'admin', '2023-06-05 13:49:03', '2023-06-08 16:34:27', 15),
(147, 'admin', '2023-06-05 14:15:07', '2023-06-08 16:34:27', 15),
(148, 'admin', '2023-06-05 16:17:07', '2023-06-08 16:34:27', 15),
(149, 'admin', '2023-06-05 17:06:37', '2023-06-08 16:34:27', 15),
(150, 'admin', '2023-06-05 17:12:30', '2023-06-08 16:34:27', 15),
(151, 'admin', '2023-06-08 09:27:27', '2023-06-08 16:34:27', 15),
(152, 'admin', '2023-06-08 16:10:28', '2023-06-08 16:34:27', 15),
(153, 'admin', '2023-06-08 16:10:56', '2023-06-08 16:34:27', 15),
(154, '123456', '2023-06-08 16:16:11', '2023-06-08 17:00:04', 372),
(155, 'asta.lavista', '2023-06-08 16:20:02', '2023-06-08 16:20:16', 24),
(156, '123456', '2023-06-08 16:33:18', '2023-06-08 17:00:04', 372),
(157, 'asta.lavista', '2023-06-08 16:34:39', '', 24);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
