-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 01:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tickme`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'food_and_beverages'),
(2, 'fashion'),
(3, 'stationary'),
(4, 'health_and_beauty'),
(5, 'furniture_and_electronics'),
(6, 'hobbies_and_toys'),
(7, 'kitchen_and_ingredients'),
(8, 'tools'),
(9, 'cleaning_and_supplies');

-- --------------------------------------------------------

--
-- Table structure for table `item2`
--

CREATE TABLE `item2` (
  `id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item2`
--

INSERT INTO `item2` (`id`, `nama`, `category_id`) VALUES
(1, 'Nasi Goreng', 1),
(2, 'Es Teh', 1),
(3, 'Pizza', 1),
(4, 'Burger', 1),
(5, 'Sushi', 1),
(6, 'Cola', 1),
(7, 'Orange Juice', 1),
(8, 'Iced Coffee', 1),
(9, 'Milkshake', 1),
(10, 'Mineral Water', 1),
(11, 'Spaghetti Bolognese', 1),
(12, 'Fried Chicken', 1),
(13, 'Ice Cream', 1),
(14, 'Hot Chocolate', 1),
(15, 'Caesar Salad', 1),
(16, 'Lemonade', 1),
(17, 'Steak', 1),
(18, 'Fish and Chips', 1),
(19, 'Mango Smoothie', 1),
(20, 'Chicken Alfredo', 1),
(21, 'Club Sandwich', 1),
(22, 'Mojito', 1),
(23, 'Shrimp Scampi', 1),
(24, 'Cheeseburger', 1),
(25, 'Chocolate Milkshake', 1),
(26, 'Pad Thai', 1),
(27, 'Cappuccino', 1),
(28, 'Chicken Teriyaki', 1),
(29, 'Greek Salad', 1),
(30, 'Pina Colada', 1),
(31, 'Lasagna', 1),
(32, 'Margarita', 1),
(33, 'Vegetarian Pizza', 1),
(34, 'Iced Tea', 1),
(35, 'Chicken Caesar Wrap', 1),
(36, 'Mushroom Risotto', 1),
(37, 'Blueberry Smoothie', 1),
(38, 'Vegetable Stir-Fry', 1),
(39, 'Mint Lemonade', 1),
(40, 'Clam Chowder', 1),
(41, 'T-Shirt', 2),
(42, 'Jeans', 2),
(43, 'Sneakers', 2),
(44, 'Dress', 2),
(45, 'Watch', 2),
(46, 'Handbag', 2),
(47, 'Hat', 2),
(48, 'Sunglasses', 2),
(49, 'Jacket', 2),
(50, 'Skirt', 2),
(51, 'Boots', 2),
(52, 'Suit', 2),
(53, 'Scarf', 2),
(54, 'Bracelet', 2),
(55, 'Ankle Boots', 2),
(56, 'Blouse', 2),
(57, 'Necklace', 2),
(58, 'High Heels', 2),
(59, 'Backpack', 2),
(60, 'Shorts', 2),
(61, 'Belt', 2),
(62, 'Cardigan', 2),
(63, 'Tie', 2),
(64, 'Leggings', 2),
(65, 'Earrings', 2),
(66, 'Purse', 2),
(67, 'Hoodie', 2),
(68, 'Loafers', 2),
(69, 'Coat', 2),
(70, 'Sweater', 2),
(71, 'Gloves', 2),
(72, 'Top Hat', 2),
(73, 'Bow Tie', 2),
(74, 'Sandals', 2),
(75, 'Jumpsuit', 2),
(76, 'Messenger Bag', 2),
(77, 'Cufflinks', 2),
(78, 'Poncho', 2),
(79, 'Flip Flops', 2),
(80, 'Wallet', 2),
(81, 'Kimono', 2),
(82, 'Notebook', 3),
(83, 'Pens', 3),
(84, 'Stapler', 3),
(85, 'Desk Organizer', 3),
(86, 'Highlighters', 3),
(87, 'Paper Clips', 3),
(88, 'Scissors', 3),
(89, 'Sticky Notes', 3),
(90, 'Binder', 3),
(91, 'Eraser', 3),
(92, 'Ruler', 3),
(93, 'Calculator', 3),
(94, 'Markers', 3),
(95, 'Index Cards', 3),
(96, 'Folder', 3),
(97, 'Pencil Case', 3),
(98, 'Whiteboard', 3),
(99, 'Post-it Pads', 3),
(100, 'Tape Dispenser', 3),
(101, 'Pencil Sharpener', 3),
(102, 'Rubber Bands', 3),
(103, 'Correction Tape', 3),
(104, 'Desk Lamp', 3),
(105, 'Envelopes', 3),
(106, 'Glue Stick', 3),
(107, 'Drawing Pins', 3),
(108, 'Graph Paper', 3),
(109, 'Desk Chair', 3),
(110, 'Bookends', 3),
(111, 'File Cabinet', 3),
(112, 'Desk Mat', 3),
(113, 'USB Flash Drive', 3),
(114, 'Notebook Stand', 3),
(115, 'Wireless Mouse', 3),
(116, 'Desk Calendar', 3),
(117, 'Desk Fan', 3),
(118, 'Desk Plant', 3),
(119, 'Desk Clock', 3),
(120, 'Paper Shredder', 3),
(121, 'Desk Drawer Organizer', 3),
(122, 'Mouse Pad', 3),
(123, 'Desk Nameplate', 3),
(124, 'Bulletin Board', 3),
(125, 'Desk Tray', 3),
(126, 'Shampoo', 4),
(127, 'Conditioner', 4),
(128, 'Toothpaste', 4),
(129, 'Toothbrush', 4),
(130, 'Soap', 4),
(131, 'Body Lotion', 4),
(132, 'Sunscreen', 4),
(133, 'Deodorant', 4),
(134, 'Razor', 4),
(135, 'Shaving Cream', 4),
(136, 'Hair Gel', 4),
(137, 'Facial Cleanser', 4),
(138, 'Moisturizer', 4),
(139, 'Hand Sanitizer', 4),
(140, 'Floss', 4),
(141, 'Mouthwash', 4),
(142, 'Face Mask', 4),
(143, 'Hairbrush', 4),
(144, 'Vitamins', 4),
(145, 'Essential Oils', 4),
(146, 'Acne Cream', 4),
(147, 'Lip Balm', 4),
(148, 'Nail Clippers', 4),
(149, 'Eye Cream', 4),
(150, 'Shower Gel', 4),
(151, 'Cotton Swabs', 4),
(152, 'Hair Dryer', 4),
(153, 'Scented Candles', 4),
(154, 'Foot Cream', 4),
(155, 'Massage Oil', 4),
(156, 'Tweezers', 4),
(157, 'Makeup Remover', 4),
(158, 'Blow Dryer', 4),
(159, 'Face Serum', 4),
(160, 'Foot Bath', 4),
(161, 'Hair Straightener', 4),
(162, 'Nail Polish', 4),
(163, 'Tea Tree Oil', 4),
(164, 'Facial Toner', 4),
(165, 'Hair Rollers', 4),
(166, 'Feminine Hygiene Products', 4),
(167, 'Electric Toothbrush', 4),
(168, 'Mouth Guard', 4),
(169, 'Body Scrub', 4),
(170, 'Sofa', 5),
(171, 'Coffee Table', 5),
(172, 'TV Stand', 5),
(173, 'Bookshelf', 5),
(174, 'Bed', 5),
(175, 'Dining Table', 5),
(176, 'Wardrobe', 5),
(177, 'Desk', 5),
(178, 'Recliner Chair', 5),
(179, 'Dresser', 5),
(180, 'Nightstand', 5),
(181, 'Office Chair', 5),
(182, 'Couch', 5),
(183, 'Mattress', 5),
(184, 'Computer Desk', 5),
(185, 'End Table', 5),
(186, 'Sectional Sofa', 5),
(187, 'Dining Chair', 5),
(188, 'Office Desk', 5),
(189, 'Bean Bag Chair', 5),
(190, 'Accent Chair', 5),
(191, 'TV Mount', 5),
(192, 'Bar Stool', 5),
(193, 'Shoe Rack', 5),
(194, 'Bedside Table', 5),
(195, 'Table Lamp', 5),
(196, 'Gaming Chair', 5),
(197, 'Cabinet', 5),
(198, 'Filing Cabinet', 5),
(199, 'Lounge Chair', 5),
(200, 'Console Table', 5),
(201, 'TV Console', 5),
(202, 'Bunk Bed', 5),
(203, 'Sofa Bed', 5),
(204, 'Dresser with Mirror', 5),
(205, 'Computer Chair', 5),
(206, 'Wall Shelves', 5),
(207, 'Ceiling Fan', 5),
(208, 'Standing Desk', 5),
(209, 'Smart TV', 5),
(210, 'Blender', 5),
(211, 'Refrigerator', 5),
(212, 'Washing Machine', 5),
(213, 'Microwave', 5),
(214, 'Air Purifier', 5),
(215, 'Robot Vacuum', 5),
(216, 'Board Games', 6),
(217, 'Action Figures', 6),
(218, 'Puzzle', 6),
(219, 'Remote Control Car', 6),
(220, 'LEGO Sets', 6),
(221, 'Dollhouse', 6),
(222, 'Model Kit', 6),
(223, 'Painting Supplies', 6),
(224, 'Chess Set', 6),
(225, 'Jigsaw Puzzle', 6),
(226, 'Art Easel', 6),
(227, 'Stuffed Animals', 6),
(228, 'Fishing Rod', 6),
(229, 'Guitar', 6),
(230, 'Karaoke Machine', 6),
(231, 'Camera', 6),
(232, 'Basketball', 6),
(233, 'Soccer Ball', 6),
(234, 'Table Tennis Set', 6),
(235, 'Scooter', 6),
(236, 'Bicycle', 6),
(237, 'Video Games', 6),
(238, 'VR Headset', 6),
(239, 'Kite', 6),
(240, 'Train Set', 6),
(241, 'Book Collection', 6),
(242, 'Comic Books', 6),
(243, 'Trampoline', 6),
(244, 'Drone', 6),
(245, 'Sewing Machine', 6),
(246, 'Pottery Kit', 6),
(247, 'Frisbee', 6),
(248, 'Foosball Table', 6),
(249, 'RC Helicopter', 6),
(250, 'Musical Instrument', 6),
(251, 'Watercolor Set', 6),
(252, 'Gardening Kit', 6),
(253, 'Scrapbooking Supplies', 6),
(254, 'Magic Kit', 6),
(255, 'Bird Watching Kit', 6),
(256, 'Science Experiment Kit', 6),
(257, 'Kite Surfing Gear', 6),
(258, 'Metal Detector', 6),
(259, ' Telescope', 6),
(260, 'Hot Wheels Set', 6),
(261, 'Camping Gear', 6),
(262, 'Blender', 7),
(263, 'Toaster', 7),
(264, 'Coffee Maker', 7),
(265, 'Knife Set', 7),
(266, 'Cookware Set', 7),
(267, 'Food Processor', 7),
(268, 'Stand Mixer', 7),
(269, 'Cutting Board', 7),
(270, 'Bakeware Set', 7),
(271, 'Microwave', 7),
(272, 'Mixing Bowls', 7),
(273, 'Can Opener', 7),
(274, 'Rice Cooker', 7),
(275, 'Slow Cooker', 7),
(276, 'Kitchen Scale', 7),
(277, 'Measuring Cups', 7),
(278, 'Peeler', 7),
(279, 'Mandoline Slicer', 7),
(280, 'Garlic Press', 7),
(281, 'Digital Thermometer', 7),
(282, 'Corkscrew', 7),
(283, 'Ice Cream Maker', 7),
(284, 'Waffle Maker', 7),
(285, 'Juicer', 7),
(286, 'Grill Pan', 7),
(287, 'Spatula', 7),
(288, 'Tongs', 7),
(289, 'Potato Masher', 7),
(290, 'Vegetable Spiralizer', 7),
(291, 'Cheese Grater', 7),
(292, 'Casserole Dish', 7),
(293, 'Pizza Cutter', 7),
(294, 'Salt and Pepper Shakers', 7),
(295, 'Canister Set', 7),
(296, 'Colander', 7),
(297, 'Cookie Cutters', 7),
(298, 'Apron', 7),
(299, 'Digital Kitchen Timer', 7),
(300, 'Food Storage Containers', 7),
(301, 'Tea Kettle', 7),
(302, 'Oven Mitts', 7),
(303, 'Basting Brush', 7),
(304, 'Meat Tenderizer', 7),
(305, 'Garbage Disposal', 7),
(306, 'Spice Rack', 7),
(307, 'Grill Tools Set', 7),
(308, 'Drill', 8),
(309, 'Screwdriver Set', 8),
(310, 'Wrench Set', 8),
(311, 'Pliers', 8),
(312, 'Hammer', 8),
(313, 'Measuring Tape', 8),
(314, 'Utility Knife', 8),
(315, 'Level', 8),
(316, 'Toolbox', 8),
(317, 'Cordless Screwdriver', 8),
(318, 'Flashlight', 8),
(319, 'Adjustable Wrench', 8),
(320, 'Carpenter Square', 8),
(321, 'Hacksaw', 8),
(322, 'Tape Measure', 8),
(323, 'Chisel Set', 8),
(324, 'Stud Finder', 8),
(325, 'Socket Set', 8),
(326, 'Power Drill', 8),
(327, 'Circular Saw', 8),
(328, 'Miter Saw', 8),
(329, 'Paintbrush Set', 8),
(330, 'Putty Knife', 8),
(331, 'Paint Roller', 8),
(332, 'Wire Strippers', 8),
(333, 'Pipe Wrench', 8),
(334, 'Jigsaw', 8),
(335, 'Air Compressor', 8),
(336, 'Sander', 8),
(337, 'Ladder', 8),
(338, 'Ratchet Set', 8),
(339, 'Plunger', 8),
(340, 'Plunger', 8),
(341, 'Duct Tape', 8),
(342, 'Gloves', 8),
(343, 'Safety Glasses', 8),
(344, 'First Aid Kit', 8),
(345, 'Fire Extinguisher', 8),
(346, 'Caulking Gun', 8),
(347, 'Staple Gun', 8),
(348, 'Paint Sprayer', 8),
(349, 'Workbench', 8),
(350, 'Electric Screwdriver', 8),
(351, 'Stapler', 8),
(352, 'Allen Wrench Set', 8),
(353, 'Broom', 9),
(354, 'Mop', 9),
(355, 'Vacuum Cleaner', 9),
(356, 'Dustpan and Brush Set', 9),
(357, 'Bucket', 9),
(358, 'Duster', 9),
(359, 'Cleaning Cloths', 9),
(360, 'Sponges', 9),
(361, 'Trash Bags', 9),
(362, 'Trash Can', 9),
(363, 'Cleaning Gloves', 9),
(364, 'Microfiber Towels', 9),
(365, 'Air Freshener', 9),
(366, 'Disinfectant Wipes', 9),
(367, 'Paper Towel', 9),
(368, 'Toilet Brush', 9),
(369, 'Plunger', 9),
(370, 'Toilet Paper', 9),
(371, 'Window Cleaner', 9),
(372, 'Glass Cleaner', 9),
(373, 'Dish Soap', 9),
(374, 'Laundry Detergent', 9),
(375, 'Fabric Softener', 9),
(376, 'Stain Remover', 9),
(377, 'Trash Compactor', 9),
(378, 'Oven Cleaner', 9),
(379, 'Carpet Cleaner', 9),
(380, 'Bleach', 9),
(381, 'Rubber Gloves', 9),
(382, 'Squeegee', 9),
(383, 'Dish Rack', 9),
(384, 'Lint Roller', 9),
(385, 'Bathroom Cleaner', 9),
(386, 'Floor Cleaner', 9),
(387, 'Grout Brush', 9),
(388, 'Dish Brush', 9),
(389, 'Shoe Rack', 9),
(390, 'Garbage Disposal Cleaner', 9),
(391, 'Mildew Remover', 9),
(392, 'Stainless Steel Cleaner', 9),
(393, 'Dishwasher Detergent', 9),
(394, 'Dust Mite Spray', 9),
(395, 'Carpet Freshener', 9),
(396, 'Trash Sorter', 9),
(397, 'Oven Mitts', 9);

-- --------------------------------------------------------

--
-- Table structure for table `list2`
--

CREATE TABLE `list2` (
  `list_id` int(12) NOT NULL,
  `user_id` int(5) NOT NULL,
  `name` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list2`
--

INSERT INTO `list2` (`list_id`, `user_id`, `name`, `date`, `message`) VALUES
(24, 25, 'p', '2023-12-06', NULL),
(42, 25, 'health', '2023-12-08', NULL),
(44, 25, 'b', '2023-12-08', NULL),
(45, 25, 'v', '2023-12-08', NULL),
(46, 25, 'health', '2023-12-08', NULL),
(47, 25, 'b', '2023-12-08', NULL),
(48, 25, 'qwert', '2023-12-09', NULL),
(49, 25, 'fgdgdf', '0000-00-00', NULL),
(50, 25, 'jhjjh,', '2023-12-10', NULL),
(51, 25, 'yo', '2023-12-09', NULL),
(52, 25, 'qwer', '2023-12-09', NULL),
(70, 33, ',,,', '2023-12-15', NULL),
(71, 33, 'food', '2023-12-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list2_item2`
--

CREATE TABLE `list2_item2` (
  `id` int(5) NOT NULL,
  `list2_id` int(5) NOT NULL,
  `item2_id` int(5) NOT NULL,
  `price` decimal(9,0) NOT NULL,
  `quantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list2_item2`
--

INSERT INTO `list2_item2` (`id`, `list2_id`, `item2_id`, `price`, `quantity`) VALUES
(22, 24, 310, 2000, 20),
(29, 24, 12, 0, 0),
(31, 24, 218, 0, 0),
(36, 24, 134, 0, 0),
(39, 48, 42, 0, 0),
(43, 51, 47, 0, 0),
(46, 24, 22, 1000, 10),
(135, 71, 263, 4000, 9),
(138, 71, 264, 3000, 2),
(139, 71, 1, 3000, 2),
(140, 71, 127, 4000, 55);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `confirmpassword` varchar(70) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `confirmpassword`, `username`) VALUES
(25, 'p@P', '$2y$10$8wyswrRQhp1DwefmQBsHTeL4J1uUlU39a54q5qT/FHf94JIKmZGQu', '', 'p'),
(26, 'fawn@gmail.com', '$2y$10$jrNx/GUK03zmuGJeVSwIwuXEmPRi2ItSXdp4sw0I62LRK2NOCwJhq', '', 'fawn'),
(27, 'saya@gmail.com', '$2y$10$6e4OCpEiCveYMH3xqQX/XOgKWA1JcumWJbEQUPshD0DtkKvbfdRly', '', 'saya'),
(28, 'shakilaaswaliyah@gmail.com', '$2y$10$cYUNI0B5R6lhsmauajllE.vpJT97U1fSxNmTmi6NCOcWFSy3CRKTu', '', 'kila'),
(29, 'wan@gmail.com', '$2y$10$YghRKX61cjtv5w/N983CnOUqJBHTG98PqrKfvBO5LQyoZtH9Exfym', '', 'wan'),
(30, 'q@gmail.com', '$2y$10$b4K3mAIL488sSxvwREMU1.UrZRNWbEkUpmk5YLaeZbPfla7YDdL1C', '', 'q'),
(31, 'c@gmail.com', '$2y$10$phtzRzHM59FiRlPIWb19a.xQuZ18VLuccJWOPknafbXUMEBRw7Xiu', '', 'c'),
(32, 'x@gmail.com', '$2y$10$7AJIBXJhb2mqAdjAuDgf2OlxR9y4VLv9Atvj5IPkWwE7.M8Z2X/iu', '', 'x'),
(33, 'w@gmail.com', '$2y$10$s6xCKwElVKS1qCYQx1hiROj80gKj81N/U5j7WUNBdv.vrKMiwceYi', '', 'w');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item2`
--
ALTER TABLE `item2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `list2`
--
ALTER TABLE `list2`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `list2_item2`
--
ALTER TABLE `list2_item2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list2_id` (`list2_id`),
  ADD KEY `item2_id` (`item2_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item2`
--
ALTER TABLE `item2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `list2`
--
ALTER TABLE `list2`
  MODIFY `list_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `list2_item2`
--
ALTER TABLE `list2_item2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item2`
--
ALTER TABLE `item2`
  ADD CONSTRAINT `item2_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list2`
--
ALTER TABLE `list2`
  ADD CONSTRAINT `list2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list2_item2`
--
ALTER TABLE `list2_item2`
  ADD CONSTRAINT `list2_item2_ibfk_1` FOREIGN KEY (`list2_id`) REFERENCES `list2` (`list_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list2_item2_ibfk_2` FOREIGN KEY (`item2_id`) REFERENCES `item2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
