-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-29 04:11:04
-- 服务器版本： 5.7.18
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zepc`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `available` int(11) NOT NULL COMMENT '1可用，2禁止'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`uid`, `username`, `password`, `available`) VALUES
(4, 'zjh4473', 'zjh19970223', 1),
(5, '1299415013', '1299415013@qq.com', 1),
(6, '2912285367', '2912285367@qq.com', 2);

-- --------------------------------------------------------

--
-- 表的结构 `admin_status`
--

CREATE TABLE `admin_status` (
  `id` int(1) NOT NULL,
  `verifystatus` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_status`
--

INSERT INTO `admin_status` (`id`, `verifystatus`) VALUES
(1, '2');

-- --------------------------------------------------------

--
-- 表的结构 `userverify`
--

CREATE TABLE `userverify` (
  `uid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `xuehao` varchar(10) NOT NULL,
  `major` varchar(50) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-审核通过;2-审核中;3-已驳回',
  `verifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userverify`
--

INSERT INTO `userverify` (`uid`, `name`, `xuehao`, `major`, `status`, `verifytime`) VALUES
(1, '张晋华', '0705150231', '0705||供用电技术', 1, '2017-07-13 13:06:09'),
(22, '李昂', '0200160813', '0201||发电厂及电力系统', 1, '2017-09-06 08:02:36'),
(23, '陈源', '0200160724', '0201||发电厂及电力系统', 1, '2017-09-06 08:05:32'),
(24, '田锦林', '0300160313', '0303||火电厂集控运行', 1, '2017-09-10 03:58:18'),
(25, '常倚硕', '0300160443', '0301||电厂热能动力装置', 1, '2017-09-11 04:23:28'),
(26, '刘明帅', '0200160519', '0201||发电厂及电力系统', 1, '2017-09-11 04:30:59'),
(27, '周瑞祥', '0300160312', '0301||电厂热能动力装置', 1, '2017-09-11 04:35:39'),
(28, '杜永涛', '0300160521', '0301||电厂热能动力装置', 1, '2017-09-11 04:37:55'),
(29, '胡俊豪', '0300160433', '0301||电厂热能动力装置', 1, '2017-09-11 05:11:48'),
(30, '马新源', '0300160432', '0301||电厂热能动力装置', 1, '2017-09-11 05:13:32'),
(31, '王帅强', '0200160827', '0201||发电厂及电力系统', 1, '2017-09-11 05:19:32'),
(32, '张家铭', '0600160332', '0607||软件技术', 1, '2017-09-11 05:21:48'),
(33, '李红涛', '0200160824', '0201||发电厂及电力系统', 1, '2017-09-11 08:01:53'),
(34, '李研', '0300160127', '0301||电厂热能动力装置', 1, '2017-09-11 08:02:56'),
(35, '胡苑波', '0300160207', '0301||电厂热能动力装置', 1, '2017-09-11 08:06:17'),
(36, '郝常征', '0500160324', '0301||电厂热能动力装置', 1, '2017-09-11 08:09:39'),
(37, '李汶霏', '0707160237', '0703||电力系统自动化技术', 1, '2017-09-11 08:12:55'),
(38, '鲁柯新', '0200160312', '0203||电气自动化技术', 1, '2017-09-11 08:32:46'),
(39, '赵崟斐', '0707160111', '0703||电力系统自动化技术', 1, '2017-09-11 08:45:13'),
(40, '向俊杰', '0500160321', '0501||机电一体化技术', 1, '2017-09-11 09:08:18'),
(41, '苏晓楠', '0707160230', '0703||电力系统自动化技术', 1, '2017-09-11 09:08:37'),
(42, '王远博', '0707160215', '0703||电力系统自动化技术', 1, '2017-09-11 09:10:52'),
(43, '周宜彬', '0500160339', '0204||电力系统继电保护与自动化', 1, '2017-09-11 09:36:26'),
(44, '刘彬', '0500160518', '0504||机械制造与自动化', 1, '2017-09-11 09:36:48'),
(45, '郭安鹏', '0707160223', '0703||电力系统自动化技术', 1, '2017-09-11 09:39:51'),
(46, '宋晨', '0707160216', '0703||电力系统自动化技术', 1, '2017-09-11 09:41:33'),
(47, '高仕琪', '0500160522', '0504||机械制造与自动化', 1, '2017-09-11 09:43:08'),
(48, '王亚焯', '0300160514', '0301||电厂热能动力装置', 1, '2017-09-11 09:50:38'),
(49, '崔欣欣', '0500160520', '0504||机械制造与自动化', 1, '2017-09-11 09:52:09'),
(50, '朱泽亮', '0500160523', '0504||机械制造与自动化', 1, '2017-09-11 09:57:41'),
(51, '贺浩然', '0500160437', '0501||机电一体化技术', 1, '2017-09-11 10:15:48'),
(52, '蔡孟辉', '0300160531', '0301||电厂热能动力装置', 1, '2017-09-11 10:45:40'),
(53, '孙俊俊', '0301150226', '0301||电厂热能动力装置', 1, '2017-09-11 11:12:52'),
(54, '郭英儒', '0300160920', '0301||电厂热能动力装置', 1, '2017-09-11 11:31:06'),
(55, '任泽一', '0400160340', '0703||电力系统自动化技术', 1, '2017-09-11 11:46:42'),
(56, '杨杨', '0707160312', '0703||电力系统自动化技术', 1, '2017-09-11 12:19:15'),
(57, '许馨尹', '0707160302', '0705||供用电技术', 1, '2017-09-11 12:22:23'),
(58, '张馨', '0703150105', '0703||电力系统自动化技术', 1, '2017-09-11 12:28:39'),
(59, '邢珂', '0703150106', '0703||电力系统自动化技术', 1, '2017-09-11 12:29:47'),
(61, '姚思琦', '0707160304', '0703||电力系统自动化技术', 1, '2017-09-11 12:35:55'),
(62, '张智铭', '0301150209', '0301||电厂热能动力装置', 1, '2017-09-11 12:40:56'),
(63, '俞建国', '0301150218', '0301||电厂热能动力装置', 1, '2017-09-11 12:44:13'),
(64, '王隆川', '0200160623', '0203||电气自动化技术', 1, '2017-09-11 13:00:10'),
(65, '史建林', '0300160212', '0305||电厂热工自动化技术', 1, '2017-09-11 13:10:44'),
(66, '张梦梦', '0707160303', '0703||电力系统自动化技术', 1, '2017-09-11 13:15:52'),
(67, '刘艳喜', '0300160230', '0301||电厂热能动力装置', 1, '2017-09-11 13:46:55'),
(68, '祝名哲', '0400160236', '0403||市场营销', 1, '2017-09-11 14:00:55'),
(69, '李康平', '0200160836', '0201||发电厂及电力系统', 1, '2017-09-11 14:08:05'),
(70, '孙亚萌', '0203150103', '0203||电气自动化技术', 1, '2017-09-11 14:14:22'),
(71, '李文怀', '0300160525', '0201||发电厂及电力系统', 1, '2017-09-11 14:23:57'),
(72, '雷博', '0300160425', '0201||发电厂及电力系统', 1, '2017-09-11 14:25:56'),
(73, '贾亚琦', '0708160106', '0703||电力系统自动化技术', 1, '2017-09-11 14:26:05'),
(74, '朱冬媛', '0707160301', '0703||电力系统自动化技术', 1, '2017-09-11 14:27:05'),
(75, '朱渊博', '0300160319', '0301||电厂热能动力装置', 1, '2017-09-11 23:31:36'),
(76, '乔鑫轲', '0602140146', '0602||计算机应用技术', 1, '2017-09-12 01:15:37'),
(77, '郑前磊', '0300160333', '0301||电厂热能动力装置', 1, '2017-09-12 01:19:48'),
(78, '杜瑞', '0500160426', '0505||工业机器人技术', 1, '2017-09-12 01:59:55'),
(79, '李桂锋', '0500160310', '0505||工业机器人技术', 1, '2017-09-12 02:02:47'),
(80, '王哲', '0200160422', '0203||电气自动化技术', 1, '2017-09-12 02:03:43'),
(81, '张青', '0400160317', '0401||会计', 1, '2017-09-12 02:04:14'),
(82, '崔原', '0300160517', '0303||火电厂集控运行', 1, '2017-09-12 02:43:22'),
(83, '张强', '0300160338', '0303||火电厂集控运行', 1, '2017-09-12 02:57:23'),
(84, '张宁峰', '0708160137', '0703||电力系统自动化技术', 1, '2017-09-12 03:02:34'),
(85, '孙晨菲', '0400160202', '0403||市场营销', 1, '2017-09-12 03:06:06'),
(86, '高晨', '0600160125', '0605||计算机网络技术', 1, '2017-09-12 03:06:45'),
(87, '李锦明', '0707160102', '0703||电力系统自动化技术', 1, '2017-09-12 03:09:40'),
(88, '黄迁帅', '0708160221', '0703||电力系统自动化技术', 1, '2017-09-12 03:16:47'),
(89, '樊稼威', '0708160220', '0703||电力系统自动化技术', 1, '2017-09-12 03:17:19'),
(90, '袁琳', '0400160218', '0403||市场营销', 1, '2017-09-12 03:19:25'),
(91, '王爽', '0403150113', '0403||市场营销', 1, '2017-09-12 03:25:33'),
(92, '朱黎飞', '0500160412', '0505||工业机器人技术', 1, '2017-09-12 03:40:44'),
(93, '张振翔', '0500160434', '0501||机电一体化技术', 1, '2017-09-12 03:49:26'),
(94, '王卓平', '0203150317', '0203||电气自动化技术', 1, '2017-09-12 03:53:55'),
(95, '李子涵', '0203150319', '0203||电气自动化技术', 1, '2017-09-12 03:54:53'),
(96, '孙荣墨', '0203140238', '0203||电气自动化技术', 1, '2017-09-12 03:55:27'),
(97, '朱建宇', '0500160220', '0501||机电一体化技术', 1, '2017-09-12 04:09:52'),
(98, '李胜利', '0500160337', '0505||工业机器人技术', 1, '2017-09-12 04:10:14'),
(99, '张智高', '0300160145', '0305||电厂热工自动化技术', 1, '2017-09-12 04:14:35'),
(100, '周如', '0400160421', '0403||市场营销', 1, '2017-09-12 04:19:26'),
(101, '高子严', '0300160214', '0301||电厂热能动力装置', 1, '2017-09-12 04:20:24'),
(102, '刘子歆', '0500160424', '0201||发电厂及电力系统', 1, '2017-09-12 04:20:48'),
(103, '杨钰松', '0707160228', '0703||电力系统自动化技术', 1, '2017-09-12 04:22:04'),
(104, '朱家坤', '0500160208', '0501||机电一体化技术', 1, '2017-09-12 04:27:14'),
(105, '裴宇轩', '0300160225', '0301||电厂热能动力装置', 1, '2017-09-12 04:28:06'),
(106, '荆磊', '0708160118', '0706||电厂热能动力装置', 1, '2017-09-12 04:29:05'),
(107, '王硕', '0300160144', '0301||电厂热能动力装置', 1, '2017-09-12 04:29:38'),
(108, '张哲豪', '0708160134', '0703||电力系统自动化技术', 1, '2017-09-12 04:30:13'),
(109, '邢一松', '0300160216', '0301||电厂热能动力装置', 1, '2017-09-12 04:30:35'),
(110, '崔少辉', '0200160620', '0203||电气自动化技术', 1, '2017-09-12 04:31:32'),
(111, '王浩祥', '0300160315', '0301||电厂热能动力装置', 1, '2017-09-12 04:31:44'),
(112, '史洁庆', '0300160317', '0301||电厂热能动力装置', 1, '2017-09-12 04:32:01'),
(113, '谭伦升', '0200160917', '0202||供用电技术', 1, '2017-09-12 04:33:33'),
(114, '裴诗帆', '0300160130', '0301||电厂热能动力装置', 1, '2017-09-12 04:36:07'),
(115, '付宁宁', '0400160208', '0401||会计', 1, '2017-09-12 04:38:15'),
(116, '鲁子霆', '0301150454', '0301||供用电技术', 1, '2017-09-12 04:40:52'),
(117, '符航瑜', '0300160716', '0203||电气自动化技术', 1, '2017-09-12 04:40:52'),
(118, '郑逍', '0304150118', '0703||电力系统自动化技术', 1, '2017-09-12 04:42:45'),
(119, '郭志刚', '0500160218', '0501||机电一体化技术', 1, '2017-09-12 04:43:51'),
(120, '邵子熙', '0703150242', '0703||电力系统自动化技术', 1, '2017-09-12 04:45:12'),
(121, '赵嘉薇', '0200160104', '0204||电力系统继电保护与自动化', 1, '2017-09-12 04:45:26'),
(122, '王梦茜', '0703150245', '0703||电力系统自动化技术', 1, '2017-09-12 04:46:41'),
(123, '杨雨沛', '0200160106', '0203||电气自动化技术', 1, '2017-09-12 04:46:57'),
(124, '孙皓衍', '0705150237', '0705||供用电技术', 1, '2017-09-12 04:49:09'),
(125, '杨亦舒', '0703150217', '0703||电力系统自动化技术', 1, '2017-09-12 04:50:03'),
(126, '孟德正', '0300160928', '0303||火电厂集控运行', 1, '2017-09-12 04:51:27'),
(127, '冯伟光', '0705150419', '0705||供用电技术', 1, '2017-09-12 04:53:42'),
(128, '田忠阳', '0707160538', '0705||供用电技术', 1, '2017-09-12 04:54:17'),
(129, '高振昊', '0200160837', '0201||发电厂及电力系统', 1, '2017-09-12 04:54:27'),
(130, '石瞻瑜', '0705150417', '0705||供用电技术', 1, '2017-09-12 04:54:28'),
(131, '陈荟颖', '0200160603', '0204||电力系统继电保护与自动化', 1, '2017-09-12 04:55:12'),
(132, '李悦', '0200160208', '0203||电气自动化技术', 1, '2017-09-12 04:56:04'),
(133, '程冉', '0500160417', '0504||机械制造与自动化', 1, '2017-09-12 04:56:14'),
(134, '李承育', '0400160424', '0703||电力系统自动化技术', 1, '2017-09-12 05:00:25'),
(135, '李辰阳', '0703150224', '0703||电力系统自动化技术', 1, '2017-09-12 05:06:43'),
(136, '王晨', '0300160116', '0201||发电厂及电力系统', 1, '2017-09-12 05:10:41'),
(137, '李梦伟', '0301150243', '0301||电厂热能动力装置', 1, '2017-09-12 05:13:34'),
(138, '张艳林', '0200160810', '0201||发电厂及电力系统', 1, '2017-09-12 05:16:31'),
(139, '柳伟光', '0500160120', '0501||机电一体化技术', 1, '2017-09-12 06:23:39'),
(140, '万金林', '0200160831', '0201||发电厂及电力系统', 1, '2017-09-13 02:45:13'),
(141, '张利霞', '0200160803', '0201||发电厂及电力系统', 1, '2017-09-13 02:51:39'),
(142, '王浩创', '0200160716', '0201||发电厂及电力系统', 1, '2017-09-15 05:24:38'),
(143, '赵嘉楠', '0600160209', '0605||计算机网络技术', 3, '2017-09-16 14:55:37'),
(144, '范宁宁', '0504170201', '0504||机械制造与自动化', 1, '2017-09-18 11:52:39'),
(145, '孙银朴', '0703170410', '0703||电力系统自动化技术', 1, '2017-09-18 13:49:52'),
(146, '赵朕伟', '0703170436', '0703||电力系统自动化技术', 1, '2017-09-19 04:43:29'),
(147, '马靖坤', '0602170130', '0602||计算机应用技术', 1, '2017-09-19 04:48:19'),
(148, '郎家琦', '0203170306', '0203||电气自动化技术', 1, '2017-09-28 03:17:22'),
(149, '赵博文', '0200160619', '0206||高压输配电线路施工运行与维护', 3, '2017-09-28 03:26:04'),
(150, '赵若冰', '0501170301', '0501||机电一体化技术', 1, '2017-09-28 04:47:43'),
(151, '冯乐宜', '0201170219', '0201||发电厂及电力系统', 1, '2017-09-28 04:49:03'),
(152, '程宏利', '0305170117', '0305||电厂热工自动化技术', 1, '2017-09-28 04:50:08'),
(153, '杜雅洁', '0206170103', '0206||高压输配电线路施工运行与维护', 1, '2017-09-28 04:56:31'),
(154, '曹银婷', '0206170104', '0206||高压输配电线路施工运行与维护', 1, '2017-09-28 05:15:56'),
(155, '曹坤鹏', '0203170327', '0203||电气自动化技术', 1, '2017-09-28 05:16:44'),
(156, '冉雪锦', '0206170102', '0206||高压输配电线路施工运行与维护', 1, '2017-09-28 05:16:48'),
(157, '闫雨豪', '0302170109', '0302||供热通风与空调工程技术（暖通）', 1, '2017-09-28 05:18:29'),
(158, '杨震豪', '0305170137', '0305||电厂热工自动化技术', 1, '2017-09-28 05:19:30'),
(159, '郭梦娜', '0706170309', '0704||会计（西方会计方向）', 1, '2017-09-28 05:20:27'),
(160, '龙明', '0305170132', '0305||电厂热工自动化技术', 1, '2017-09-28 05:22:24'),
(161, '王东辉', '0703170530', '0703||电力系统自动化技术', 1, '2017-09-28 05:33:17'),
(162, '樊港', '0201170331', '0201||发电厂及电力系统', 1, '2017-09-28 05:36:13'),
(163, '陈莹莹', '0607170106', '0607||软件技术', 1, '2017-09-28 05:41:00'),
(164, '袁玉龙', '0706170439', '0706||电厂热能动力装置', 1, '2017-09-28 05:42:30'),
(165, '姜智源', '0401170106', '0401||会计', 1, '2017-09-28 05:48:01'),
(166, '元露', '0206170133', '0206||高压输配电线路施工运行与维护', 1, '2017-09-28 05:48:28'),
(167, '刘劲光', '0504170217', '0504||机械制造与自动化', 1, '2017-09-28 05:49:21'),
(168, '王彪', '0602170125', '0602||计算机应用技术', 1, '2017-09-28 05:49:43'),
(169, '李振文', '0401170131', '0401||会计', 1, '2017-09-28 05:51:26'),
(170, '张家瑞', '0401170135', '0401||会计', 1, '2017-09-28 05:54:02'),
(171, '田翔宇', '0206170144', '0206||高压输配电线路施工运行与维护', 1, '2017-09-28 05:55:37'),
(172, '朱文峰', '0302170206', '0302||供热通风与空调工程技术（暖通）', 1, '2017-09-28 06:05:35'),
(173, '王鹏翔', '0302170207', '0302||供热通风与空调工程技术（暖通）', 1, '2017-09-28 06:17:05'),
(174, '张宏阳', '0302170208', '0302||供热通风与空调工程技术（暖通）', 1, '2017-09-28 06:19:19'),
(175, '贾宗尧', '0607170113', '0607||软件技术', 1, '2017-09-28 07:04:26'),
(176, '常瑶', '0707160306', '0703||电力系统自动化技术', 1, '2017-09-28 12:54:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `userverify`
--
ALTER TABLE `userverify`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `userverify`
--
ALTER TABLE `userverify`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
