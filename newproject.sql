-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2017 at 08:06 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Apple'),
(3, 'Asus'),
(4, 'Microsoft'),
(5, 'Samsung'),
(6, 'Beats'),
(15, 'Dell'),
(11, 'Lenovo'),
(14, 'Adata'),
(16, 'Acer'),
(17, 'Huawei'),
(18, 'Kaspersky'),
(19, 'Intel'),
(20, 'Gigabyte'),
(21, 'MSI'),
(22, 'One Plus'),
(23, 'Blackberry'),
(24, 'Corsair');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(1, 'Notebook', 0),
(2, 'Components', 0),
(3, 'Tablet PC', 0),
(4, 'SOFTWARE', 0),
(33, 'Routers', 28),
(6, 'Dell', 1),
(7, 'Asus', 1),
(8, 'Lenovo', 1),
(9, 'Processor', 2),
(10, 'Mainboard', 2),
(11, 'Graphics Card', 2),
(12, 'Desktop RAM', 2),
(13, 'Samsung', 3),
(14, 'Huawei', 3),
(16, 'Microsoft Office', 4),
(17, 'Optical Device', 2),
(18, 'Power Supply', 2),
(19, 'Desktop', 0),
(20, 'Sound', 0),
(21, 'Headphones', 20),
(22, 'Home Theater Systems', 20),
(23, 'All In One PCs', 19),
(28, 'Accessories', 0),
(34, 'Mobiles and Telephony', 0),
(35, 'Samsung', 34),
(36, 'Iphone', 34),
(41, 'One Plus', 34),
(40, 'Blackberry', 34),
(42, 'Apple', 1),
(44, 'Toshiba', 1),
(45, 'Acer', 1),
(46, 'Anti Virus', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `list_price` decimal(10,0) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `sizes` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `list_price`, `brand`, `categories`, `image`, `description`, `featured`, `sizes`, `deleted`) VALUES
(1, 'Macbook Pro', '1100', '1299', 1, '42', '/New Project/image/products/macbookPro.jpg', 'It\'s razor thin, feather light, and even faster and more powerful than before. It has the brightest, most colorful Mac notebook display ever. And it features the Touch Bar  a Multi-Touch enabled strip of glass built into the keyboard for instant access to the tools you want, right when you want them. MacBook Pro is built on groundbreaking ideas. And it\'s ready for yours.', 1, '13:5,15:3 ', 0),
(2, 'ROG Zephyrus  Black', '3150', '3289', 3, '7', '/New Project/image/products/rogZephyrus1.png', 'ROG Zephyrus is a revolutionary gaming laptop born from ROG\'s persistent dedication to innovation. Despite being thinner than all previous ROG laptops, it has the hardware to rival high-end gaming desktops: NVIDIA GeForce GTX 1080 graphics with Max-Q design, a 7th Generation Intel Core processor, an optional 120Hz wide-view display, and Windows 10 Pro. ROG slimmed the body to a mere 16.9-17.9mm while maintaining powerful cooling and unbeatable acoustic efficiency thanks to a clever new air-flow design: Active Aerodynamic System. The sleek chassis also includes an RGB keyboard that will feel familiar to gamers who typically play on desktop PCs.', 1, '15.6:8', 0),
(3, 'Apple iMac', '1288', '1377', 1, '23', '/New Project/image/products/imac.PNG', 'A desktop experience that draws you in and keeps you there. This is the idea behind today\'s iMac. And now that idea is more powerful than ever. The new iMac is packed with all-new processors, the latest graphics technologies, innovative storage, and higher-bandwidth connectivity. And it all comes to life on the brightest and most colorful Retina display iMac has ever seen. So you get an even more immersive experience and a scintillating new way to take it all in.\n\n21.5-inch iMac with Retina 4K display', 1, '21.5:3', 0),
(4, 'Surface Studio', '2875', '2999', 4, '19', '/New Project/image/products/surfaceStudio.PNG', 'Turn your desk into a Studio.\nSurface Studio is designed for the creative process. The 28" PixelSense Display gives you a huge canvas for all kinds of work. Use it upright, or draw on it like a drafting table.', 1, '28:8', 0),
(5, 'Galaxy Tab S3', '598', '651', 5, '13', '/New Project/image/products/galaxytabs3.jpg', 'All-new glass design\nFor the first time, enjoy the sleekness of a smartphone with all the benefits of a tablet. The glossy glass back of the Galaxy Tab S3 provides a premium look that also feels premium in your hands.', 1, '9.1:10', 0),
(6, 'GEFORCE GTX 1080 Ti 11GB', '840', '920', 3, '11', '/New Project/image/products/geforceGTX1080TI.jpg', '11GB GDDR5X 352-bit memory with 3584 CUDA cores, an 11GB Frame Buffer and 1582 MHz Boost Clock (OC Mode)\n5K Gaming and VR Ready with 1x HDMI 2.0, 3x DisplayPort, and 1x DP-DVI adapterto simultaneously connect your VR headset and monitors\nGPU Tweak II makes monitoring performance and streaming easier than ever, featuring Game Booster and a free 1-year premium license of XSplit Gamecaster\nSupports the latest DirectX 12 and GeForce gaming features while delivering a maximum resolution of 7680 x 4320 for the ultimate 5K gaming experience\nRadial Fan with advanced vapor chamber provides consistent performance in the most thermally challenging environments', 1, '7.5:15', 0),
(7, 'Beats Studio Wireless', '380', '350', 6, '21', '/New Project/image/products/beatsstudioheadphone.jpg', 'Dual-Mode Adaptive Noise Canceling\nIconic Beats sound\n20 hour rechargeable battery with fuel gauge\nTake calls and control music with RemoteTalk cable', 1, '7:11', 0),
(8, 'BOSE Acoustimass 10 Series V home theater speaker system', '951', '1000', 7, '22', '/New Project/image/products/bosehometheatre.jpg', 'Spacious, five-speaker performance. Powerful bass. Sleek design. The Acoustimass 10 Series V speaker system has it all for component-minded home theater enthusiasts. It\'s our best-performing Acoustimass system, with redesigned Direct/Reflecting Series II cube speakers that pair nicely with your HDTV. Resounding bass performance from an advanced Acoustimass module lets you enjoy all your entertainment even more, every day.', 1, '20:5', 0),
(9, 'Dell Inspiron 13-5378', '900', '950', 15, '6', '	\r\n/New Project/image/products/dell-inspiron.gif', 'Model - Dell Inspiron 13-5378, Processor - 7th Gen INTEL CORE i5 7200U, Processor Clock Speed - 2.30-3.10GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - TOUCH LED Display, RAM - 8GB, RAM Type - DDR4, RAM Slot - 2, Max RAM Support - 16GB, HDD - 1TB HDD, Graphics Chipset - Intel HD 620, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Finger Print - No, Keyboard Back-Light - Yes, Battery - 3 Cell, Backup Time - Up to 4 Hrs., Operating System - FreeDOS, Weight - 1.71Kg, Color - Gray, Warranty - 2 year (Battery, Adapter 1 year), Country of Origin - USA', 0, '13.3:5', 0),
(10, 'Acer Aspire Swift 7 SF713-51-M96X', '1500', '1650', 16, '45', '	\r\n/New Project/image/products/acer_aspire.jpg', 'Model - Dell Inspiron 13-5378, Processor - 7th Gen INTEL CORE i5 7200U, Processor Clock Speed - 2.30-3.10GHz, CPU Cache - 3MB, Display Size - 13.3", Display Type - TOUCH LED Display, RAM - 8GB, RAM Type - DDR4, RAM Slot - 2, Max RAM Support - 16GB, HDD - 1TB HDD, Graphics Chipset - Intel HD 620, Graphics Memory - Shared, Optical Device - No, Networking - LAN, WiFi, Bluetooth, Card Reader, Webcam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.0, 1 x USB2.0, Finger Print - No, Keyboard Back-Light - Yes, Battery - 3 Cell, Backup Time - Up to 4 Hrs., Operating System - FreeDOS, Weight - 1.71Kg, Color - Gray, Warranty - 2 year (Battery, Adapter 1 year), Country of Origin - USA', 0, '13.3:10', 0),
(11, 'Huawei MediaPad T1 8.0, S8-701u', '180', '200', 17, '14', '/New Project/image/products/huawei_mediapad.jpg', 'Huawei MediaPad T1 8.0, S8-701u (Qualcomm MSM8212 Quad-Core A7 1.2GHz,1GB,8GB) 8.0" IPS Tablet', 0, '8:3', 0),
(12, 'Kaspersky 2017 Internet Security', '22', '25', 18, '46', '/New Project/image/products/kaspersky.gif', 'Model - Kaspersky 2017, Protiction Type - Internet Security, System Requierment - Windows 10 / 8 / 7 / XP, Mac OS X, Licence Qty - 1 User', 0, '1:19', 0),
(13, 'Microsoft Office 365 Personal', '60', '65', 4, '16', '/New Project/image/products/microsoft-office.jpg', 'Model - Microsoft Office 365, Software Type - Application, Supporting OS - Windows7 or higher, User Limit - 1 Desktop + 1 Tablet + 1 Mobile, Product Includes - All MS Office application, Others - 1 Year Subscription\r\n', 0, '1:45', 0),
(14, 'Intel Kaby Lake Core i3 7100 3.90GHz 3MB Cache', '1200', '1250', 19, '9', '/New Project/image/products/intel_corei7.jpg', 'Model - Intel Kaby Lake Core i3 7100, Code-Name - Kaby Lake, Generation - 7th, Base Frequency - 3.90 GHz, Core - 2, Threads - 4, Smart Cache - 3 MB, Bus Speed - 8 GT/s DMI3, TDP - 51 W, Lithography - 14 nm, Memory Max. - 64 GB, Memory Type - DDR4-2133/2400, DDR3L-1333/1600 @ 1.35V, Memory Chanels - 2, Processor Graphics - Intel HD 630, Graphics Base Frequency - 350.00 MHz, Graphics Dynamic Frequency Max. - 1.10 GHz, Graphics Video Memory Max. - 64 GB, Graphics Resolution Max. - 4096x2304@24Hz, DirectX Support - 12, OpenGL Support - 4.4, Sockets Supported - LGA1151, Warranty - 3 Year, Specialty - InTru 3D Technology, Clear Video HD Technology, Displays Supported-3, Hyper-Threading Technology, Virtualization Technology, 4K Support, Optane Memory Supported, Compatible Products - Chipset: Z270, Z170, H170, H270, H110, B150, B250, Q270, Q170', 0, '1:30', 0),
(15, 'Gigabyte GA-Z170X Gaming G1 6Th Gen. LGA1151 Socket Mainboard', '600', '622', 20, '10', '/New Project/image/products/gigabyte.jpg', 'Model - GA-Z170X Gaming G1, CPU Sockets - LGA1151, Chipset - Intel Z170, Supported CPU - 6th Gen Intel Core i7 / i5 / i3 / Pentium / Celeron processors, Memory Type - DDR4, Memory MHz - 3666(O.C) /3600(O.C.) /3466(O.C.) /3400(O.C.) /3333(O.C.) /3300(O.C.) /3200(O.C.) /3000(O.C.) /2800(O.C.) /2666(O.C.) /2400(O.C.) /2133 MHz, Memory Channel - Dual, Memory Slot - 4, Memory Max. - 64 GB, Graphic - Integrated Graphics, Multi-GPU Support - NVIDIA Quad-GPU SLI, 4-Way/3-Way/2-Way NVIDIA SLI, AMD Quad-GPU CrossFireX, 4-Way/3-Way/2-Way AMD CrossFire, PCI Express Slot - 2 x PCI Express 3.0 x 16 running at x16 (PCIEX16_1, PCIEX16_2), running at x8 (PCIEX8_1, PCIEX8_2), Storage Interface - 6Gb/s, LAN Chipset - Killer E2400, LAN Speed (Mbps) - 10/100/1000 x 2 Mbit, Audio Chipset - Creative Sound Core 3D, Audio Channel - 2/5.1-channel, USB Port - 4 x USB 3.0/2.0, 6 x USB 2.0/1.1, HDMI Port - 1, SATA Port - 6 x SATA, BIOS Type - 2 x 128 Mbit flash, BIOS Model - AMI UEFI BIOS, BIOS Version - PnP 1.0a, DMI 2.7, WfM 2.0, SM BIOS 2.7, ACPI 5.0, Supported Operating System - Windows 7 / 8.1 / 10, Form Factor - E-ATX, RaidSupport - 0,1,5,10, Warranty - 3 year, Others - 2 x M.2', 1, '1:16', 0),
(16, 'MSI X99A GODLIKE Gaming DDR4 Next Gen. LGA 2011-3 socket Mainboard', '650', '677', 21, '10', '	\r\n/New Project/image/products/msi.jpg', 'Model - MSI X99A GODLIKE GAMING, CPU Sockets - LGA 2011-3, Chipset - Intel X99 Express, Supported CPU - New Intel Core i7 Processors Extreme Edition, Memory Type - DDR4, Memory MHz - 2133/2200/2400/2600/2666/2750/2800/3000/3110/3333/3400(OC)MHz, Memory Channel - Quad, Memory Slot - 8, Memory Max. - 128GB, Multi-GPU Support - 4-Way AMD CrossFire, 4-Way NVIDIA SLI, 3-Way NVIDIA SLI, PCI Express Slot - 5 x PCI-E 3.0 x 16, Storage Interface - 6Gb/s, LAN Chipset - Killer E2400, LAN Speed (Mbps) - 10/100/1000 x 2, Audio Chipset - Realtek ALC1150, Audio Channel - 7.1-Channel, USB Port - 8 x USB3.1, 6 x USB2.0, SATA Port - 10 x SATAIII (2 x ports compatible with 1 x SATA Express port), Supported Operating System - Windows 7/ 8/ 8.1, Form Factor - E-ATX, RaidSupport - 0,1,5,10, CrossFire Support - Yes, Sli Support - Yes, Warranty - 3 year, Others - 1 x M.2', 0, '1:7', 0),
(17, 'Apple iPhone 7 Plus', '1000', '1100', 3, '36', '	\r\n/New Project/image/products/iphone.jpg', 'Keep everything you love about iPhone up to date, secure, and accessible from any device with iCloud.\r\nMulti-Touch display with IPS technology.\r\nWith just a single press, 3D Touch lets you do more than ever before.\r\nThe 12-megapixel iSight camera captures sharp, detailed photos. It takes 4K video, up to four times the resolution of 1080p HD video.', 0, '6:15', 0),
(18, 'Samsung Galaxy S8+', '675', '700', 5, '35', '	\r\n/New Project/image/products/samsung.jpg', 'Infinity Display: a bezel-less, full-frontal, edge-to-edge screen. Default resolution is Full HD+ and can be changed to Quad HD+ (WQHD+) in Settings\r\nCamera resolution - Front: 8 MP AF, Rear: 12 MP OIS AF\r\nMemory: Internal Memory 64 GB, RAM 4GB', 0, '6.2:10', 0),
(19, 'OnePlus 5 A5000 - Black ', '620', '636', 22, '41', '	\r\n/New Project/image/products/oneplus.jpg', 'OnePlus 5 A5000 (China Model), Operating System: OxygenOS based on Android™ Nougat, CPU: Qualcomm® Snapdragon™ 835, Quad Core, Kryo™: 2x 2.35 GHz, 2x 1.6 GHz, Storage: 128GB/ 8GB LPDDR4, Sensors: Fingerprint sensor, Hall sensor, Accelerometor, Gyroscope, Proximity sensor, Ambient light sensor and Electronic Compass. Dual SIM (Nano-SIM, dual stand-by).\r\nUnlocked cell phones are compatible with GSM carrier such as AT&T and T-Mobile, but are not compatible with CDMA carriers such as Verizon and Sprint.\r\nPlease check if your GSM cellular carrier supports the bands for this model before purchasing, LTE may not be available in all regions: WCDMA: Bands 1/2/5/8, FDD-LTE : Bands 1/3/5/7/8, TDD-LTE: Bands 38/39/40/41, TD-SCDMA : Bands 34/39, CDMA EVDO: BC0.\r\nThis device may not include a US warranty as some manufacturers do not honor warranties for international items. Please contact the seller for specific warranty information.\r\nThe box contains: Your new device, USB cable, Charger, Documentation.', 0, '6:7', 0),
(20, 'BlackBerry KEYone 32GB', '657', '680', 23, '40', '	\r\n/New Project/image/products/blackberry.jpg', 'Fully Android / Access to over a million apps on Google Play\r\nFingerprint Sensor / BlackBerry Security software\r\n4.5" scratch-resistant display\r\nConvenience Key\r\n8MP front camera with flash / 12MP auto-focus large pixel rear camera', 0, '4.5:5', 0),
(21, 'Corsair Dominator 16GB DDR4 3200 BUS BLACK Desktop RAM', '245', '256', 24, '12', '	\r\n/New Project/image/products/corsair.jpg', 'Model - Corsair Dominator, Capacity(MB) - 16GB, Type - DDR4, Bus Speed(MHz) - 3200MHz, Warranty - Product lifetime', 0, '16:10', 0),
(22, 'Asus SBW-06D2X-U USB External Slim Blu-Ray DVD Writer', '100', '110', 3, '17', '	\r\n/New Project/image/products/dvd.jpg', 'Model - Asus SBW-06D2X-U, Type - External DVD Writer, Interface - USB 2.0, Write Speed (DVD) - 8X, 6X, 5X, Write Speed (CD) - 24X, 16X, Read Speed (DVD) - 8X, Read Speed (CD) - 24X, Access Time DVD (ms) - 190ms, Access Time CD (ms) - 190ms, OS Supported - Windows 10, 8, 7, Vista, XP, Mac OS X 10.6, Warranty - 1 Year', 0, '1:9', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Tanzeer Hossain', 'tanzeerhossain@gmail.com', '$2y$10$66V6GoyEJYr3bAbHrII7Fuik797foDvFlEvLGcBHPFZ6L1opJbybK', '2017-08-07 01:34:08', '2017-08-07 19:36:38', 'admin,editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
