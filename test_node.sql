-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 10:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_node`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_number`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '0001', 0, 1, '2023-04-05 07:54:38', '2023-04-05 08:03:12'),
(2, '0002', 1, 1, '2023-04-05 08:26:50', '2023-04-05 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-04-05 07:54:38', '2023-04-05 07:54:38'),
(2, 1, 4, '2023-04-05 07:54:38', '2023-04-05 07:54:38'),
(3, 1, 5, '2023-04-05 07:54:38', '2023-04-05 07:54:38'),
(4, 2, 1, '2023-04-05 08:26:50', '2023-04-05 08:26:50'),
(5, 2, 3, '2023-04-05 08:26:50', '2023-04-05 08:26:50'),
(6, 2, 4, '2023-04-05 08:26:50', '2023-04-05 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(1, 'จาน เซรามิค', 50, 'จานบัวลึก จานเซรามิค จานกระเบื้อง จานสีขาว เนื้อพอร์ซเลน  สวยๆ มีให้เลือกหลายขนาด', 'จานบัวลึก จานเซรามิค จานกระเบื้อง จานสีขาว เนื้อพอร์ซเลน  สวยๆ มีให้เลือกหลายขนาด\r\n***สามารถเข้าไมโครเวฟได้ ทนต่อความร้อนสูง\r\n***เข้าเครื่องล้างจานได้\r\n***ใช้สำหรับใส่อาหารทุกชนิดในครัวเรือน\r\n\r\n****สำหรับสินค้าชำรุด แตกหัก โปรดแจ้งให้ทางร้านทราบ  เพื่อส่งสินค้าใหม่ให้อย่างรวดเร็ว\r\n\r\n#จาน #ชาม #ถ้วย ชาม #จาน ชาม #จานกระเบื้อง #ชามกระเบื้อง #ถ้วยกระเบื้อง #จานเซรามิก #จานเซรามิค #ถ้วยเซรามิก  #ถ้วยเซรามิค #ชามเซรามิก #ชามเซรามิค  #จานเนื้อดี #จานลายสวย #ส่งเร็ว #ceramic #จานลายสวย #จานราคาถูก #จานคุณภาพดี ', '2023-04-05 06:29:28', '2023-04-05 06:29:28'),
(2, 'แผ่นไม้แกะสลัก', 400, 'แผ่นไม้แกะสลัก แผ่นไม้แกะติดผนัง แผ่นไม้แกะช้าง แผ่นไม้แขวนผนัง ของตกแต่งผนัง ไม้แกะแขวน ไม้แกะสลัก แผ่นไม้แขวน', 'จานบัวลึก จานเซรามิค จานกระเบื้อง จานสีขาว เนื้อพอร์ซเลน  สวยๆ มีให้เลือกหลายขนาด\n***สามารถเข้าไมโครเวฟได้ ทนต่อความร้อนสูง\n***เข้าเครื่องล้างจานได้\n***ใช้สำหรับใส่อาหารทุกชนิดในครัวเรือน\n\n****สำหรับสินค้าชำรุด แตกหัก โปรดแจ้งให้ทางร้านทราบ  เพื่อส่งสินค้าใหม่ให้อย่างรวดเร็ว\n\n#จาน #ชาม #ถ้วย ชาม #จาน ชาม #จานกระเบื้อง #ชามกระเบื้อง #ถ้วยกระเบื้อง #จานเซรามิก #จานเซรามิค #ถ้วยเซรามิก  #ถ้วยเซรามิค #ชามเซรามิก #ชามเซรามิค  #จานเนื้อดี #จานลายสวย #ส่งเร็ว #ceramic #จานลายสวย #จานราคาถูก #จานคุณภาพดี แผ่นไม้แกะสลัก แผ่นไม้ติดผนัง แผ่นไม้ตกแต่งผนัง\n\nทำจากไม้สักทองแท้ โบราณ ไม่เก่า เนื้อไม้แข็งแรง\nไม่ผุพังง่าย เพราะเป็นไม้สัก แมลงไม่กัดกิน\nประดับบารมีและเป็นสิริมงคลแก่บ้าน\nเหมาะสำหรับ ของฝาก ของขึ้นบ้านใหม่ ตกแต่งบ้าน\n\nรูปแบบสินค้า:\nช้างคู่ แนวตั้ง 30*45 cm\nช้าง หันซ้าย-หันขวา 30*45 cm (ขายเป็น คู่)\nช้าง3ตัว หันซ้าย-หันขวา ขนาด 30*45 cm (ขายเป็น คู่)\nช้างคู่ แนวนอน 45*30 cm', '2023-04-05 06:29:28', '2023-04-05 06:29:28'),
(3, 'เเมส3D', 25, 'เเมส3D(กล่องละ20ชิ้น)หน้ากากอนามัยญี่ปุ่น​ แมส​ JN95 Mask​​ งานดีมีคุณภาพ พร้อมส่งทันที​see', '         ถ้าลูกค้าต้องการแมสคุณภาพ​ \r\n         Racha​ Mask​ ยินดีต้อนรับ​ครับ\r\n\r\n           ***มีของพร้อมส่งทันที***\r\n\r\n แมสjn95มีของเรียบแบบออกมาแล้วครับ​ เนื้อผ้าจะแข็งมากกระด้าง​ มีปั้มjapanเหมือนกันครับ​ โปรดระวังครับ\r\n                   ชัดเจน100% \r\n   \r\nช่วงสถานการณ์​เคอร์ฟิวขนส่งบาง​พื้นที่\r\nอาจดีเลย์​ 1วันครับ\r\n\r\nหน้ากากอนามัย4d​ ญี่ปุ่นKn95​\r\n\r\nโครงสร้าง​ 4​ชั้น​ ช่วยลดละอองเรณู\r\n\r\nโครงสร้างสามมิติ​ \r\n- ช่วยให้หายใจสะดวก​สบาย​\r\n  ใช้งานได้เป็นนเวลานาน\r\n\r\n- แผ่นกรองจมูกมีความยืดหยุ่น​และ\r\n  ยึดเกาะดีเยี่ยม​ ไม่ทำให้แว่นขุ่นมัว\r\n\r\n- สายรัดหู​นุ่ม​ สวมใส่สบาย\r\n\r\nคุณสมบัติ​ป้องกัน  \r\n  PEE ไวรัส\r\n  VFE ฝุ่นละอองขนาดเล็ก​0.1-5​ไมครอน \r\n  BFE แบคทีเรีย​ 99%\r\n  PFE 99%', '2023-04-05 06:29:28', '2023-04-05 06:29:28'),
(4, 'Apple AirPods (2nd generation) แอร์พอด by Studio7', 6000, 'AirPods ใหม่ พร้อมมอบประสบการณ์การใช้งานหูฟังแบบไร้สายที่แตกต่างไปจากที่เคย เพียงหยิบออกมาจากเคสชาร์จ หูฟังทั้งสองข้างก็พร้อมใช้งานกับ iPhone, Apple Watch, iPad หรือ Mac ของคุณแล้ว', '►AirPods พร้อมเคสชาร์จ\r\n\r\nAirPods ใหม่ พร้อมมอบประสบการณ์การใช้งานหูฟังแบบไร้สายที่แตกต่างไปจากที่เคย เพียงหยิบออกมาจากเคสชาร์จ หูฟังทั้งสองข้างก็พร้อมใช้งานกับ iPhone, Apple Watch, iPad หรือ Mac ของคุณแล้ว\r\n\r\n\r\n\r\n►เพียงตั้งค่าง่ายๆ ด้วยการแตะแค่ครั้งเดียว จากนั้น AirPods ก็พร้อมทำงานได้อย่างน่ามหัศจรรย์ เพราะจะเปิดโดยอัตโนมัติและเชื่อมต่ออยู่ตลอดเวลา แถม AirPods ยังรู้ได้เองว่าเมื่อไหร่ที่อยู่ในหูคุณ และจะหยุดเล่นเมื่อคุณถอดออก\r\n\r\n\r\n\r\n►หากต้องการปรับระดับเสียง เปลี่ยนเพลง โทรออก หรือแม้แต่ถามเส้นทาง ก็ทำได้ง่ายๆ แค่พูดว่า “หวัดดี Siri” แล้วคุณก็ออกคำสั่งได้เลย แถมคุณยังเลือกได้อย่างฟรีสไตล์ว่าจะใส่ AirPods ข้างเดียวหรือทั้งสองข้าง และถ้าฟังเพลงหรือพ็อดคาสท์อยู่แล้วนึกอยากกดเล่นหรือกดข้ามก็แค่แตะเพียงสองครั้ง\r\n\r\n\r\n\r\n►AirPods ให้คุณฟังได้นานถึง 5 ชั่วโมง และสนทนาได้สูงสุด 3 ชั่วโมงต่อการชาร์จเพียงครั้งเดียว2 อีกทั้งยังออกแบบมาให้พร้อมไปกับคุณได้ทุกที่ เพราะมีเคสชาร์จที่สามารถใช้ชาร์จได้หลายครั้ง เพื่อฟังได้นานกว่า 24 ชั่วโมง หรือถ้าต้องรีบใช้ก็ไม่มีปัญหา เพียงแค่ใส่ไว้ในเคส 15 นาที คุณก็ใช้ฟังได้นานถึง 3 ชั่วโมง หรือสนทนาได้สูงสุด 2 ชั่วโมง\r\n\r\n\r\n\r\n►AirPods มาพร้อมกับขุมพลังจากชิพหูฟัง Apple H1 แบบใหม่หมด และมีเซ็นเซอร์ออปติคอลและอุปกรณ์ตรวจจับการเคลื่อนไหวที่สามารถรับรู้ได้ทันทีเมื่ออยู่ในหูคุณ ดังนั้นไม่ว่าคุณจะใช้หูฟังทั้งสองข้างหรือเพียงข้างเดียว ชิพ H1 ก็จะส่งสัญญาณเสียงให้ออกมาที่หูฟัง พร้อมเปิดใช้งานไมโครโฟนโดยอัตโนมัติ และเมื่อคุณกำลังคุยโทรศัพท์หรือพูดกับ Siri อุปกรณ์ตรวจจับการเคลื่อนไหวจากการพูดจะทำงานร่วมกับไมโครโฟนแบบบีมฟอร์มมิ่ง เพื่อกรองเสียงรบกวนภายนอกและให้ความสำคัญกับเสียงของคุณเป็นหลัก', '2023-04-05 06:29:28', '2023-04-05 06:29:28'),
(5, 'เสื้อคนแก่เสื้อผู้หญิง', 350, 'ผู้สูงอายุเสื้อผ้าฤดูร้อนผู้หญิง 60-70-80 ปีเสื้อผ้าแม่เสื้อผ้าหญิงชราเสื้อยายเสื้อผ้าแขนกลาง', '??เน้นร้านค้าผู้หญิง เสื้อผ้าที่ทันสมัยที่สุด ดูดีที่สุด ราคาถูกที่สุด อย่าลืมให้ความสนใจกับเรา ??ผู้ติดตาม ร้านขายของ แบ่งปันไปที่Facebook lnstagram แพลตฟอร์มเครือข่าย คุณสามารถรับส่วนลด 10 บาท ??ยิ่งคุณซื้อส่วนลดมากขึ้นเท่านั้น ??ผลิตภัณฑ์ทั้งหมดที่ขายก่อนส่งมอบมีการควบคุมคุณภาพอย่างเคร่งครัด โปรดอย่าลังเลที่จะซื้อ ??ถ้าคุณได้รับสินค้าทีมีตำหนิ กรุณาติดต่อเราทันที เราจะรับผิดชอบเพื่อคุณพอใจกับการชื้อสินค้า\" น้ำเงิน\r\n2020 [เสื้อสีเขียว] \r\n2020 [เสื้อสีเขียว + กางเกง] \r\n2020 [เสื้อแขนสั้นสีเขียว] \r\n2020 [เสื้อแขนสั้นสีเขียว + กางเกง]\r\nL [น้ำหนักที่แนะนำ 37-45 กก.] \r\nXL【แนะนำ 45-52kg】\r\n2XL 【แนะนำ 52-60kg】\r\n3XL【แนะนำ 60-67kg】\r\n4XL【แนะนำ 67-75kg】\r\n 5XL [แนะนำ 75-85กก.]', '2023-04-05 06:29:28', '2023-04-05 06:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `tel`, `email`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'Test Last', '0888888888', 'test@test.com', '$2b$10$eHRPVP.7voTCkE6d3g12vuVtsdItBTWvEixypan3RKKol4D4RcyX2', 'Address', '2023-04-05 05:46:05', '2023-04-05 05:46:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
