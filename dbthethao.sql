-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 12:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbthethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(40, '1561', 15, 1),
(49, '5709', 24, 1),
(50, '5709', 23, 1),
(51, '4108', 21, 1),
(52, '9029', 5, 1),
(53, '1972', 20, 2),
(54, '3460', 19, 1),
(55, '7171', 16, 2),
(68, '19', 22, 1),
(69, '1504', 23, 1),
(70, '8346', 21, 1),
(71, '7761', 19, 2),
(72, '740', 21, 1),
(73, '3720', 14, 2),
(74, '5924', 15, 1),
(75, '1076', 22, 1),
(86, '1392', 18, 1),
(87, '1103', 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(5, 'Oeung Chiva', 'oeungchivaa@gmail.com', '202cb962ac59075b964b07152d234b70', 888255118, 'oeungchivaa@gmail.com', '74truongchinh', 0),
(6, 'Sa Mi', 'sami@gmail.com', '202cb962ac59075b964b07152d234b70', 888255111, 'sami@gmail.com', 'ABC', 0),
(7, 'va', 'va@gmail.com', '202cb962ac59075b964b07152d234b70', 888255119, 'va@gmail.com', 'ACS', 0),
(8, 'chi', 'chi@gmail.com', '202cb962ac59075b964b07152d234b70', 888255117, 'chi@gmail.com', 'XCV', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(5, 'Swimming', 1),
(6, 'Tennis', 2),
(7, 'Football', 3),
(9, 'Volleyball', 4),
(10, 'Basketball', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` datetime NOT NULL,
  `cart_payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`) VALUES
(63, 6, '19', 0, '2022-06-24 22:59:47', 'Tiền Mặt'),
(64, 5, '1504', 0, '2022-06-24 23:02:02', 'Tiền Mặt'),
(65, 7, '8346', 0, '2022-06-24 23:02:50', 'Tiền Mặt'),
(66, 7, '7761', 0, '2022-06-24 23:03:26', 'Tiền Mặt'),
(67, 7, '740', 0, '2022-06-25 00:22:27', 'Tiền Mặt'),
(68, 8, '3720', 0, '2022-06-25 00:23:25', 'Tiền Mặt'),
(69, 8, '5924', 0, '2022-06-30 22:00:16', 'Tiền Mặt'),
(70, 8, '1076', 0, '2022-06-30 22:00:37', 'Tiền Mặt'),
(78, 7, '1392', 0, '2022-07-07 21:41:07', 'Tiền Mặt'),
(79, 7, '1103', 0, '2022-07-07 21:41:24', 'Tiền Mặt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(6, 'FOOTBALL SUIT', 'FSUIT01', 400000, 10, 'argentina bích.jpg', '<p>- 100% Polyester.<br />\r\n<br />\r\n- Adjustable elastic straps are used in the shorts.</p>\r\n', '', 7, 0),
(7, 'WILSON Evolution Game Basketball', 'BBALL01', 2000000, 10, '91vdgs5FY4L._AC_SX679_.jpg', '<p>Color: Game Ball</p>\r\n\r\n<p>Material: Composite</p>\r\n\r\n<p>Item Diameter: 27.5 Inches</p>\r\n', '', 10, 1),
(8, 'Basketball Jersey Set Custom Vest with Shorts Shirt', 'BSUIT01', 500000, 10, '51+qiG9jziL._AC_UX569_.jpg', '<p>- 100% Polyester.<br />\r\n<br />\r\n- Adjustable elastic straps are used in the shorts.</p>\r\n', '', 10, 1),
(10, 'swimming suit for man', 'SSUIT02', 500000, 5, 'main-qimg-6005b15f0ac10f83365401be5d5c1cbc-lq.jpg', '<p>Product Type:&nbsp;Swimsuits</p>\r\n\r\n<p>Material:&nbsp;lycra</p>\r\n\r\n<p>Brand:&nbsp;Dive</p>\r\n', '', 5, 0),
(11, 'Dive Navy Blue and Red Ladies Swimming Suit ', 'SSUIT01', 500000, 5, 'ladies-swimming-suit-500x500.jpg', '<p>Product Type:&nbsp;Swimsuits</p>\r\n\r\n<p>Material:&nbsp;lycra</p>\r\n\r\n<p>Brand:&nbsp;Dive</p>\r\n', '', 5, 1),
(12, 'Swimming goggles - xbase s clear lenses - blue yellow', 'goggles01', 150000, 10, 'swimming-goggles-100-xbase-size-s-pink.jpg', '<p>Our design teams have developed these goggles for beginner swimmers wanting to get into or back into swimming</p>\r\n', '', 5, 0),
(13, 'Racket PRINCE VENOM PRO', 'Racket01', 7500000, 5, 'Prince_Venom_Pro_2022_Squash_Racket637841491159165163.jpg', '<p>The Prince Venom Pro Squash Racket!</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Headsize: 460 cm2.</p>\r\n	</li>\r\n	<li>\r\n	<p>Weight: Unstrung 130g.</p>\r\n	</li>\r\n	<li>\r\n	<p>Balance: 35.0cm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Length: 27&Prime;.</p>\r\n	</li>\r\n	<li>\r\n	<p>String Pattern: 16', '', 6, 1),
(14, 'PRINCE NX TOUR PRO', 'TBALL01', 300000, 5, 'PNCET4T_4Ball_Championship_W637605594806774785.jpg', '<p>The Prince NX Tour Pro Tennis Balls!</p>\r\n\r\n<p>NX Tour Pro Tennis Balls are tournament quality for all court surfaces.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>High player comfort.</p>\r\n	</li>\r\n	<li>\r\n	<p>Superior quality woven felt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Consistent ', '', 6, 1),
(15, 'RXN Men New Football Shoes', 'FSHOES01', 2000000, 5, 'new-football-shoes-500x500.jpeg', '<p>Under the meticulous supervision of our skilled professionals, we are providing a high-quality range of Sports shoes .</p>\r\n', '', 7, 1),
(16, 'WAVE MOMENTUM 2', 'VSHOES01', 1000000, 5, 'SH_V1GA211236_00.png', '<p>WEIGHT(G):&nbsp;345</p>\r\n\r\n<p>STACK (MM):&nbsp;15.5/27.5</p>\r\n', '<p>Stay on top of your game from start to finish with the new Momentum 2&#39;s unprecedented comfort and cushioning. This volleyball shoe features the latest MIZUNO ENERZY technology for enhanced cushioning and response, as well as the well-known Mizuno Wave for stability and cushioning at the heel. In addition, the new eyelet structure brings an optimal fit and reduces stress with no pressure points.</p>\r\n', 9, 1),
(18, 'Mikasa V330W Volleyball Ball', 'VBALL01', 800000, 10, 'mikasa-v330w-volleyball-ball.jpg', '<p>- Club version of the FIVB game ball<br />\r\n- Unique 18 panel design<br />\r\n- Exclusive composite cover<br />\r\n- Nylon wound center<br />\r\n- Retail packaging available<br />\r\n- Official</p>\r\n', '', 9, 0),
(19, 'Mikasa VBN-2 Competition Volleyball Net', 'Net01', 1000000, 10, 'mikasa-vbn-2-competition-net-volleyball-equipment-nets.jpg', '<ul>\r\n	<li>The Competition Net was built with a STEEL AC CABLE to handle any tough game</li>\r\n	<li>Premium polyethylene netting</li>\r\n	<li>Indoors or outdoors, this net will stand up to any hitter</li>\r\n	<li>Net size is 32&#39; x 3&#39;</li>\r\n	<li>Reinfor', '', 9, 1),
(20, 'FC BAYERN 22/23 HOME SOCKS', 'SOCKS01', 500000, 10, 'FC BAYERN HOME SOCKS.jpg', '<ul>\r\n	<li>Knee length</li>\r\n	<li>84% recycled polyester, 11% cotton, 5% elastane</li>\r\n	<li>Moisture-absorbing AEROREADY</li>\r\n	<li>FORMOTION</li>\r\n	<li>Cushioned heel and toe</li>\r\n	<li>Specific left and right fit</li>\r\n	<li>Engineered club artwork</li>', '<p>FC BAYERN SOCKS IN THEIR HOME COLOURS, MADE IN PART WITH RECYCLED MATERIALS.</p>\r\n\r\n<p>Flash your FC Bayern pride. Get the team look in their home colours with these adidas football socks. They have cushioning in the heel and toe for added comfort, and moisture-absorbing AEROREADY ensures you stay dry and fresh no matter how fancy your footwork gets. Made with a series of recycled materials, and at least 60% recycled content, this product represents just one of our solutions to help end plastic waste.</p>\r\n', 7, 1),
(21, 'FC BAYERN FIELDPLAYER GLOVES', 'GLOVES02', 900000, 10, 'FC BAYERN FIELDPLAYER GLOVES.jpg', '<ul>\r\n	<li>Main: 100% recycled polyester fleece</li>\r\n	<li>Palm: 100% recycled polyester French terry</li>\r\n	<li>Insulating COLD.RDY</li>\r\n	<li>Ribbed cuffs</li>\r\n	<li>Conductive tips on index finger and thumb for touchscreen use</li>\r\n	<li>Silicone on pa', '<p>TOUCHSCREEN-FRIENDLY FC BAYERN GLOVES MADE IN PART WITH RECYCLED MATERIALS.</p>\r\n\r\n<p>Proud of its roots. Prised by fans across the globe. These adidas FC Bayern football gloves display a printed version of the club&#39;s famous badge. Turn them over and you&#39;ll find a silicone print designed to give you extra grip. Fleece fabric and COLD.RDY team up to keep you warm. Made with a series of recycled materials, and at least 60% recycled content, this product represents just one of our solutions to help end plastic waste.</p>\r\n', 7, 1),
(22, 'PREDATOR PRO GOALKEEPER GLOVES', 'GLOVES01', 2800000, 10, 'PREDATOR PRO GOALKEEPER GLOVES.jpg', '<ul>\r\n	<li>Negative cut</li>\r\n	<li>Body: 91% polyester, 8% elastane, 1% nylon plain knit</li>\r\n	<li>Palm: URG 2.0 100% rubber foam</li>\r\n	<li>Anatomical flex zones</li>\r\n	<li>Zone Skin on fingers and backhand</li>\r\n	<li>Knit entry</li>\r\n	<li>Product colou', '<p>FIND YOUR FOOTBALL EDGE IN THESE GRIPPY MATCH GLOVES.</p>\r\n\r\n<p>Designed to perform in all the right places. These adidas Predator goalkeeper gloves have a silicone Zone Skin coating on their adaptive knit backhand to help you clear the ball. Protected by an abrasion zone on the lateral side, the top-quality URG 2.0 palm offers extended grip and cushioning. A strapless, compressive entry keeps the fit feeling natural.</p>\r\n', 7, 1),
(23, 'AL RIHLA LEAGUE FOOTBALL', 'BALL02', 800000, 10, 'AL RIHLA LEAGUE FOOTBALL.jpg', '<ul>\r\n	<li>100% TPU cover</li>\r\n	<li>Butyl bladder</li>\r\n	<li>Seamless TSBE construction</li>\r\n	<li>FIFA Quality certified</li>\r\n	<li>FIFA World Cup&trade; printed logo</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Requires inflation</li>\r\n	<li>Film</li>\r\n	<li>Product colour', '<p>WRITE YOUR OWN FOOTBALL STORIES WITH THIS SEAMLESS, TEXTURED BALL.</p>\r\n\r\n<p>Al Rihla means the Journey, the ball is just the beginning. The rest of your football journey is yet to be written. Displaying graphics inspired by the FIFA World Cup&trade; official match ball, this adidas Al Rihla League ball is perfect for matches and training sessions. Its seamless TSBE construction adds assurance to touches. The butyl bladder means more playing, less pumping.</p>\r\n', 7, 0),
(24, 'TIRO CLUB BALL', 'BALL01', 400000, 10, 'TIRO CLUB BALL.jpg', '<ul>\r\n	<li>100% TPU cover</li>\r\n	<li>Football for training sessions</li>\r\n	<li>Butyl bladder for best air retention</li>\r\n	<li>Machine-stitched construction</li>\r\n	<li>Requires inflation</li>\r\n	<li>Product colour: Team Solar Yellow / Black</li>\r\n</ul>\r\n', '<p>A VERSATILE BALL THAT MAKES YOUR TEAM WORK</p>\r\n\r\n<p>Clean and classic, the adidas Tiro football range covers all your team&#39;s needs. Pull this Tiro Club Ball out of your kit bag when you need a quick fix on the training field or at the local park.</p>\r\n', 7, 1),
(28, 'D', '12', 10000, 0, '0ae1354c5b479719ce56.jpg', '<p>gt</p>\r\n', '<p>hy</p>\r\n', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `adress`, `note`, `id_dangky`) VALUES
(1, '', '', '', '', 3),
(2, '', '', '', '', 3),
(3, 'nguyễn Minh Tâm', '05658421', '23/C', '', 1),
(4, 'Pham Anh Vinh', '', '', '', 3),
(5, 'Pham Anh Vinh', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) CHARACTER SET armscii8 NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(2, '2022-06-24', 14, '3900000', 1),
(3, '2022-06-25', 2, '900000', 1),
(4, '2022-06-30', 2, '4800000', 1),
(7, '2022-07-07', 2, '4800000', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD CONSTRAINT `tbl_danhmuc_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_sanpham` (`id_danhmuc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_dangky` (`id_khachhang`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
