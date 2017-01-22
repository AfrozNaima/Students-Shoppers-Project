-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2017 at 08:02 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Pen'),
(2, 'Pencil'),
(3, 'Eraser'),
(4, 'Color pencil'),
(5, 'Marker'),
(7, 'Notebook'),
(8, 'Paper'),
(9, 'Stapler'),
(10, 'Sharpner'),
(11, 'Pencil box\r\n'),
(12, 'Paper weight'),
(13, 'Pen holder'),
(15, 'Calculator\r\n'),
(16, 'Paper punches'),
(17, 'Cutter'),
(18, 'Files'),
(19, 'Tape'),
(20, 'Khata');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` int(11) NOT NULL,
  `price` double NOT NULL,
  `cover` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `title`, `description`, `category`, `price`, `cover`, `date`) VALUES
(26, 'Kangaroo Stapler Machine', 'Brand: Kangaroo , metal construction with plastic cover,Rotating anvil & reload indicator,Quick loading mechanism,Stapling capacity: 30 sheet,Staple use : 24/6~26/6  Loading Capacity: 50/100 Staples', 9, 390, 'images/014-21-52other-3975-2619201-1-zoom.jpg', '2016-12-24 13:21:52'),
(27, 'kangaro LE-10 Stapler (Small)', 'Brand: Kangaroo stapler machine, model: Small LE-10,50% Less Effort Stapler as Compare to Regular Stapler Staple Remover with Pin Holder Quick Loading', 9, 150, 'images/014-25-28other-5360-2218501-1-zoom.jpg', '2016-12-24 13:25:28'),
(28, 'Kangaro Stapler Machine', 'Features:  Stainless Steel,  Inbuilt Stapler Pin Remover,  52mm Throat Depth,  Staple Pin Refill Indicator', 9, 185, 'images/014-27-47other-3502-4408501-1-zoom.jpg', '2016-12-24 13:27:47'),
(30, 'Kangaro Stapler', 'Brand: Kangaro  Stapler machine model: Big HD No.10  Package contain: 1 stapler machine ', 9, 190, 'images/014-32-26other-4197-098369-1-zoom.jpg', '2016-12-24 13:32:26'),
(31, 'Kangaroo DS 45N Stapler', 'Brand: Kangaroo, Metal construction with plastic casing,  Rotating anvil & reload indicator,  Quick loading mechanism : 30 sheet,  Staple use : 24/6-26/6  Loading Capacity: 50 Staples (24/6), 100 Staples (26/6)', 9, 190, 'images/014-37-03other-0842-518369-1-zoom.jpg', '2016-12-24 13:37:03'),
(32, 'Kangaro Stapler Small LE-10', 'Brand: Kangaro  Stapler machine model : Small LE-10  Package contain:1 stapler machine', 9, 150, 'images/014-39-31other-3513-478369-1-zoom.jpg', '2016-12-24 13:39:31'),
(33, 'KANGARO HP45 Stapler', 'FEATURES :  Quick steel construction with plastic cover on top. Quick Ideal for less force stapling with plier type action. Quick loading mechanism. Rotating anvil for stapling and pining.', 9, 340, 'images/014-40-58other-3716-6408501-1-zoom.jpg', '2016-12-24 13:40:58'),
(34, 'Multi Functional Pen', 'Used as normal pen, with ink Stylus Pen: Designed for your touch screen Flashlight: With flexible goose neck to meet your angle requirement Laser Pointer: Red powerful laser pointer guidance UV Light: Detector will help you detect counterfeit money Light powered by 3 x LR41 button cells (Included) Length: 13.5 cm', 1, 370, 'images/014-52-36other-4065-722549-1-zoom.jpg', '2016-12-24 13:52:36'),
(35, 'Digital Clock Pen Holder', ' A superb multipurpose Pen Stand,  Pen Holder ,Countdown Timer ,Time Display ,Alarm Clock, Temperature Display, Condition: New Weight: 0.50 kg', 13, 632, 'images/014-56-54other-4762-922744-1-zoom.jpg', '2016-12-24 13:56:54'),
(36, 'Digital Pen Holder with Clock', 'This Stylish Pen Holder also features a clock telling the date & time. Digital desk Alarm clock & stylish mesh pen holder Display Time includes Alarm & Thermometer Calendar with day, date and month display Flashing colour LEDs at the sides make it look fantastic Flashing LEDs function can be turned On/Off When Flashing LEDs are on Clock backlight illuminates Battery Operated (Requires 3xAAA Batteries)- When Flashing LEDs are on Clock backlight illuminates Battery Operated (Requires 3xAAA Batteri', 13, 480, 'images/014-58-45other-2471-4443301-1-zoom.jpg', '2016-12-24 13:58:45'),
(37, 'Digital Pen Holder', 'Six in One Pen Holder :   • Pen holder • Color light • Countdown timer • Alarm clock • Time display • Temperature display   3 AAA battery not Included', 13, 370, 'images/015-00-04other-7670-170989-1-zoom.jpg', '2016-12-24 14:00:04'),
(38, 'Pencil Shaped Pen Holder', 'Pencil Shape design,exquisite,fancy Perfect for holding pens or pencils,etc Also an ideal gift for others And also a wonderful ornament to make your home/room/office be more exquisite and outstanding', 13, 499, 'images/015-01-30other-5573-893599-1-zoom.jpg', '2016-12-24 14:01:30'),
(39, 'Perpetual Calendar Electronic Pen Pencil Holder Container', 'Can set the birthday reminders specific time, date, the point will have a birthday song broadcast, as a blessing. The timer mode can be set to reverse timing timing range of hours. When time comes, It will ring. Automatic detection of ambient temperature. In the normal state, the key SET can be used to achieve the conversion of  In the normal state, you can open or close the function of music appreciation.', 14, 450, 'images/015-02-34other-0128-3933401-1-zoom.jpg', '2016-12-24 14:02:34'),
(40, 'Pine Pencil Box', 'AS SEEN IN PICTURE  PENCIL HOLDER,  HANDY CRAFT, PRODUCT Material: good Quality, Material Color: As seen As picture Good Quality Product Easy to Use', 11, 199, 'images/015-04-24other-6553-0152001-1-zoom.jpg', '2016-12-24 14:04:24'),
(42, 'Pen Stand', 'Specification: Deli 909,  Shape: round,  Package contain: 1 pen holder', 13, 150, 'images/015-08-15other-3065-168369-1-zoom.jpg', '2016-12-24 14:08:15'),
(43, 'Wooden Pen Holder', 'Brand: YUE SHENG, Model: YS-314 B,  Shape: 4 other compartment (Movable )', 13, 350, 'images/015-10-04other-4029-588369-1-zoom.jpg', '2016-12-24 14:10:04'),
(45, 'Desktop Pen Stand with Drawer Weed', 'Material: MDF,PVC  ,Available at office or home,  Design color: random ', 13, 549, 'images/015-15-02other-3029-2586001-1-zoom.jpg', '2016-12-24 14:15:02'),
(46, 'Red Color Pencil Box', 'Condition: New ,Gender: Unisex, Material: Other, Weight: 0.25 kg', 11, 650, 'images/015-18-43other-8715-167202-1-zoom.jpg', '2016-12-24 14:18:43'),
(47, 'Pink Color Pencil Box', 'Condition: New, Gender: Unisex, Material: Other ,Weight: 0.25 kg', 11, 650, 'images/015-20-00other-8613-267202-1-zoom.jpg', '2016-12-24 14:20:00'),
(48, 'Pink Color Small Pencil Box', ' Condition: New, Gender: Unisex, Material: Other, Weight: 0.25 kg', 11, 450, 'images/015-21-44other-8724-367202-1-zoom.jpg', '2016-12-24 14:21:44'),
(49, 'Benten Pencil Box', 'Material: good Quality, Material Color: As seen As picture, Good Quality Product, Easy to Use', 11, 340, 'images/015-23-19other-7241-5558501-1-zoom.jpg', '2016-12-24 14:23:19'),
(50, 'Automatic pencil sharpner', 'Brand: Eagle, Model: EG-5008, Material: Plastic battery operated', 10, 600, 'images/015-31-05smallImage1.jpg', '2016-12-24 14:31:05'),
(51, 'Deli Pencil Sharpner', 'Brand: Deli, easy to cut the pencil, looking nice,There is no chance  breaking the pencil,1 Deli pencil with it', 10, 399, 'images/015-34-30smallImage1 (1).jpg', '2016-12-24 14:34:30'),
(52, 'Reflex eraser (12 pcs)', 'Model: RX-2882, Multi color premium, Quality: non toxic ,easy to clean', 3, 310, 'images/015-36-48smallImage1 (2).jpg', '2016-12-24 14:36:48'),
(54, 'Reflex eraser (20 pics)', 'Model: RX-703 ,Dimension: 62 mm x 14 mm x 11 mm ,easy to carry', 3, 250, 'images/015-40-14smallImage1 (4).jpg', '2016-12-24 14:40:14'),
(55, 'Reflex pencil sharpener (24 pics)', 'Model: RX-22, Stainless steel blades,Different colored sharpener, high quality product', 10, 220, 'images/015-42-42smallImage1 (5).jpg', '2016-12-24 14:42:42'),
(56, 'Nataraj HB Pencil (12 pcs)', 'Superior bonded lead resists breakage, Long lasting tip ,Smooth & clear writing, Soft wood for easy sharpening', 2, 79, 'images/015-48-32nataraj-hb-pencil-12-pcs.jpeg', '2016-12-24 14:48:32'),
(58, 'Faber Castell 2B pencil (12 pcs)', 'High Quality homogenous, perfectly centered & securely bonded lead, Non-fibrous, superior quality wood ,Pre-sharpened pencils ,Graded pencils can be used for drawing, sketching, shading & shorthand ,Set containing one pencil each of Black Matt - HB, 2B, 3B, 4B, 5B, 6B, 8B grades', 2, 113, 'images/015-53-40413PzpHinvL.jpg', '2016-12-24 14:53:40'),
(60, 'Good Luck 2B Pencil (10 pcs)', '2B grade lead,Extra dark writing, Good quality wood , Stylish black and silver body , 3 Packs of 10 pencils each', 2, 77, 'images/015-59-19good-luck-2b-pencil-10-pcs.jpeg', '2016-12-24 14:59:19'),
(61, 'Montex Hy-Speed Gel Ink Rollerball Pens (Pack of 5)', 'Material: Plastic ,Ink Color: Blue Tip, Description: Gel Point, Type: Fine Package, Contents: 1 Pack of 5 Pens', 1, 167, 'images/016-03-1381Xj9dqenpL._SL1500_.jpg', '2016-12-24 15:03:13'),
(62, 'Matador Gripper Gel Red', 'Material: Plastic ,Ink Color: Black, Tip Description: Gel Point, Type: Fine, Package Contents: 1 Pack of 1 Pens', 1, 5, 'images/016-06-16matador-gripper-gel-red-1-pcs.jpeg', '2016-12-24 15:06:16'),
(65, 'Color Paper A4', 'Pack of 100 A4 Size Color Papers. General Purpose Color Papers For Home Use, Schools or Office Use,10 Colors (10 Sheets Per Color) - Great for Hobby Ideas and Creative Art and Craft Projects,Solid Colors - Can be Used for Making Charts, Drawing, Diagrams etc. Versatile Paper - Can be Used for Printers, Copiers, etc. Quantity: 100 Sheets; Size: A4 (21 x 29.7 cm); Material: Paper; Colors: Assorted', 8, 2, 'images/016-12-30color-paper-a4-1-pcs.jpeg', '2016-12-24 15:12:30'),
(66, 'Spiral University A4 White Notebook 300 pages', 'The convenient B5 size of this 5 subject notebook makes it easy for you to take it with you wherever you go. You can easily keep it in most bags and backpacks and even carry it around by hand effortlessly. 300  ruled pages: Take notes, jot down ideas or write down all your personal thoughts in the 300 pages at your disposal in this Staples 5 subject notebook. The rulings on each page keep your work neat and let you organize your writing. Experience smooth writing thanks to the great quality pape', 7, 79, 'images/016-16-36spiral-university-a4-white-notebook-300-pages.jpeg', '2016-12-24 15:16:36'),
(67, 'Faber Castell 12 Classic Colour Pencils Big', 'Super fluorescent highlighter, Longer writing length, Special non-porous polypropylene body for longer shelf life, Uniform ink flow due to unique ink injection technology Washable, non toxic ink, Pocket clip for convenience of carrying Available in 5 colors, yellow, pink, green, orange and blue', 4, 155, 'images/016-22-36faber-castell-12-classic-colour-pencils-big-1-packet (1).jpeg', '2016-12-24 15:22:36'),
(71, 'Faber Castell Highlighter Marker Green', 'These Faber Castell marker pens are perfect for use on OHPs, allowing you to writer neatly and legibly. Available in assorted colours, this set of 4 Faber Castell permanent markers can also be used to write on a variety of other surfaces such as CDs/DVDs, ceramic and glass or anywhere that is completely smooth. Avoid using them on paper however, since the texture of paper can damage the fine tip of your Faber Castell marker pen.', 5, 38, 'images/016-30-50faber-castell-highlighter-marker-green-1-pcs.jpeg', '2016-12-24 15:30:50'),
(72, 'Red Leaf 303 Flourescent Highlighter Lemon', 'This permanent marker from Staples can be used to write and draw on a variety of objects like CDs, paper, cloth and Carton boxes. With this permanent marker pen you can unleash your creativity. The ink is non-toxic and is safe for both adults and children. The ink is of good quality and stays as good as new for a long time. Set of 4 pieces: It comes in a set of 4 pieces of different colors. You can use whichever is appropriate for your project. The markers are slim and provide a strong grip. Fib', 5, 38, 'images/016-32-32red-leaf-303-flourescent-highlighter-lemon-1-pcs.jpeg', '2016-12-24 15:32:32'),
(73, 'Faber Castell Highlighter Marker Pink', 'These Faber Castell marker pens are perfect for use on OHPs, allowing you to writer neatly and legibly. Available in assorted colours, this set of 4 Faber Castell permanent markers can also be used to write on a variety of other surfaces such as CDs/DVDs, ceramic and glass or anywhere that is completely smooth. Avoid using them on paper however, since the texture of paper can damage the fine tip of your Faber Castell marker pen.', 5, 37, 'images/016-33-53faber-castell-highlighter-marker-pink-1-pcs.jpeg', '2016-12-24 15:33:53'),
(74, 'Faber Castell Highlighter Marker Orange', 'These Faber Castell marker pens are perfect for use on OHPs, allowing you to writer neatly and legibly. Available in assorted colours, this set of 4 Faber Castell permanent markers can also be used to write on a variety of other surfaces such as CDs/DVDs, ceramic and glass or anywhere that is completely smooth. Avoid using them on paper however, since the texture of paper can damage the fine tip of your Faber Castell marker pen.', 5, 37, 'images/016-34-45faber-castell-highlighter-marker-orange-1-pcs.jpeg', '2016-12-24 15:34:45'),
(75, 'Hua JIe Highlighter Marker Pen Green', 'Whiteboard Marker Pens are non-permanent markers, which use erasable ink that adheres to the writing surface without binding or being absorbed by it. The area of its use is diverse and it is a popular choice in schools and offices. The Staples ST-50002 White Board Marker comes in a pack of four. Its ink is green in color. Plastic body The body makes it durable and resistant to breakage even if it is dropped multiple times. Easy to Erase A regular duster or a piece of cloth is all it takes for yo', 5, 40, 'images/016-36-02hua-jie-highlighter-marker-pen-green-1-pcs.jpeg', '2016-12-24 15:36:02'),
(76, 'Apsara Eraser', 'The Apsara Nondust Eraser is a staple that you will find in almost every student?s, architect?s and artist?s stationery kit. It provides an extremely clean and neat erasing experience. This Apsara eraser erases without tearing the paper and you can easily write on the erased area without worrying about the ink getting smudged or blurred. The Jumbo size ensures that these erasers last for a really long time. Buy these Apsara erasers online from Staples and get 20 erasers in a single purchase.  ', 3, 5, 'images/016-37-36apsara-eraser-1-pcs.jpeg', '2016-12-24 15:37:36'),
(77, 'Deli Correction Pen 8 ml', 'The correction pen is a substitute for proper white dry erase boards. It comes in the form of a film roll that is self adhesive and you just need to stick it on any surface. The adhesive is of good quality and ensures that the film stays stuck for a long time. About the whiteboard self adhesive film roll: The self adhesive roll is white in color and can be used on almost all surfaces like metal, wall, glass, wood, and other surfaces. The roll has a width of 45 cm and a length of 200 cm that will', 3, 42, 'images/016-40-29deli-correction-pen-8-ml-1-pcs.jpeg', '2016-12-24 15:40:29'),
(78, 'Push Eraser', 'BAILE NEW MECHANICAL ERASER PENCILS BL-600 FOR PENCIL AND COLOR PENCIL, THE ERASER DUST WILL STICK TOGETHER Comfortable finger clip ,Smooth erasing Smooth erasing Comfortable finger clip COLOR MAY VERY THIS IS BAILE CLUTCH ERASER SET OF 6 + 1 PACK ERASER REFILL IS VERY USEFULL PRODUCT', 3, 30, 'images/016-42-14push-eraser-1-pcs.jpeg', '2016-12-24 15:42:14'),
(79, 'Crystal 3D laser Moon Cube, Crystal Paperweight', 'Material:Crystal,Theme:Iceberg,color:transparent,size:60mm,packing:white box', 12, 26, 'images/016-47-36Free-Shipping-Beautiful-Design-Crystal-3D-laser-Moon-Cube-Crystal-Paperweight-as-art-Collection-for-Home.jpg_50x50.jpg', '2016-12-24 15:47:36'),
(80, 'CASIO', '12 Digits EXTRA BIG LC-Display,Two Way Power,Dimensions (H x W x L): 35 x 140 x 191 mm,150 Steps Check.Plastic Keys,Key Rollover,Weight: ca. 205 g, Battery: 1x LR44 EAN-Code: 4971850-465522', 15, 1150, 'images/016-51-270009634_casio-dj-120d_300.jpeg', '2016-12-24 15:51:27'),
(81, 'CASIO FX-100MS', '2-line Display Fraction Calculations Integration Calculations Combination and Permutation Statistics Base-n calculations>/li> Logical operations Complex Number Calculations CALC Memory Engineering Symbol Calculations', 15, 1150, 'images/018-39-590003856_casio-fx-100ms_300.jpeg', '2016-12-24 17:39:59'),
(82, 'CASIO FX-570ES', 'New equation mode Random integers,Fraction calculations Combination and permutation Statistics (List-based STAT data editor, standard deviation, regression analysis) 9 variables Table function Comes with new slide-on hard case', 15, 1550, 'images/018-41-330003859_casio-fx-570es-plus_300.jpeg', '2016-12-24 17:41:33'),
(83, 'CASIO DM-1400S', 'Extra Large display Larger display makes more data easier to read.   Two-way power (Solar + Battery) Solar powered when light is sufficient, battery powered when light is insufficient.   Key rollover Key operations are stored in a buffer, so nothing is lost even during high-speed input.   Plastic keys Designed and engineered for easy operation.   Durable metal Faceplate Tough cover stands up to rough treatment.   Tax calculation Automatic calculation of price plus tax, price less tax, discount, ', 15, 1450, 'images/018-43-140009625_casio-dm-1400s_300.jpeg', '2016-12-24 17:43:14'),
(84, 'CASIO DM-1200MS', 'Extra Large display Larger display makes more data easier to read.   Two-way power (Solar + Battery) Solar powered when light is sufficient, battery powered when light is insufficient.   Key rollover Key operations are stored in a buffer, so nothing is lost even during high-speed input.   Plastic keys Designed and engineered for easy operation.   Durable metal Faceplate Tough cover stands up to rough treatment.   Tax calculation Automatic calculation of price plus tax, price less tax, discount, ', 15, 1150, 'images/018-44-460009626_casio-dm-1200ms_300.jpeg', '2016-12-24 17:44:46'),
(85, 'CASIO Dj-240D Plus', 'product type - Desktop Calculator color - Black/Grey number of digits displayed - 14 Digit screen proportion - Extra Large Display number of functions - 300 Steps Check + Recheck Function selectors - Yes automatic shut off - Yes power source - Battery/Solar Powered battery type - LR44/A76 (Button Cell) batteries included - Yes number of batteries required - 1 Battery nonskid base - Yes width - 146.00 mm ( 5.75 in ) height - 38.00 mm ( 1.50 in ) depth - 219.00 mm ( 8.62 in )', 15, 1650, 'images/018-47-070019682_casio-dj-240d-plus_300.jpeg', '2016-12-24 17:47:07'),
(86, 'MATADOR PEN ORBIT', 'Matador Ball Pen for hight quality writing  Oil gel Ink 0.6mm Ball Colorful co-extuded body', 1, 5, 'images/018-53-440000101_matador-pen-orbit_370.jpeg', '2016-12-24 17:53:44'),
(87, ' CELLO GEL PEN', 'Key Features: Japanese waterproof ink Ultra smooth writing technology Specifications: Brand - Cello Type - Gel Pen Ink color - Black Ball point - 0.5 mm Quantity - 1/Packet', 1, 35, 'images/018-54-460000102_cello-gel-pen_370.jpeg', '2016-12-24 17:54:46'),
(88, 'FLUID PEN', 'Features:  Quick dry for fast corrections Multi-purpose', 6, 40, 'images/018-56-240000103_fluid-pen_370.jpeg', '2016-12-24 17:56:24'),
(90, 'pencil', 'POINT STAYS SHARP. Seasoned wood is bonded to lead giving you a sharp fine point every time you sharpen. Easy to sharpen and erase High resistance to breakage. Made in Germany. Specification: Descriptive Colour    Grey Lead Grade                2B Product Type             Graphite pencils Packaged Quantity    12 Forest Certification   Program for Endorsement of Forest Certification (PEFC) Product Type Graphite pencils Pigment Colour Black Lead Grade 2B', 2, 15, 'images/018-57-500000104_pencil_370.jpeg', '2016-12-24 17:57:50'),
(91, 'WHITE BOARD MEAKER (RED LEAF)', 'The rich, dense colours of the Whiteboard Marker will really stand out on your whiteboard presentations. It is also suitable to use on electronic whiteboards. Nib size is 2.0mm Bullet type nib for round edged writing Contains dry erase ink for use with enamel porcelain or melamine surfaces Suitable for use on electronic whiteboards Metal barrel for extra durability Xylene-free', 5, 80, 'images/019-05-330000105_white-board-meaker-red-leaf_370.jpeg', '2016-12-24 18:05:33'),
(92, 'GQ BALL PEN', 'The Enterprise assures to meet the increasing demand for quality product both home and abroad.', 1, 5, 'images/019-07-240000124_gq-ball-pen_370.jpeg', '2016-12-24 18:07:24'),
(93, 'CARBON PAPER (BOX-100PCS)', '8-1/2" x 11" 100 Sheets Curl and smudge resistant For use with standard or electric typewriters  ', 8, 150, 'images/019-10-110000213_carbon-paper-box-100pcs_370.jpeg', '2016-12-24 18:10:11'),
(94, 'POS ROLL PAPER (THERMAL)', 'Width 79 mm (3.1 Inch) X Diameter 60 mm (2.4 Inch).Paper Type	Thermal', 8, 100, 'images/019-11-400000315_pos-roll-paper-thermal_370.jpeg', '2016-12-24 18:11:40'),
(95, 'OFFSET PAPER A4 DOUBLE A', 'Double A is committed to helping your business run smoother with the Double A 80gsm A4 Copy Paper 5 Ream Carton. Double A Copy Paper has an extra-smooth surface and is whiter, brighter, thicker and cleaner for an all-round quality finish. Suitable for use in copiers, printers and fax machines of all kinds. High-quality, performance paper with an environmentally sustainable model To reduce the logging of native forests, Double A produces paper from farmed trees Production process uses fewer resou', 8, 385, 'images/019-13-040000113_offset-paper-a4-double-a_370.jpeg', '2016-12-24 18:13:04'),
(96, 'BASHUNDHARA PAPER A4', 'Bashundhara is committed to helping your business run smoother with the Bashundhara A4 80gsm Paper 5 Ream Carton. Bashundhara A4 Copy Paper has an extra-smooth surface and is whiter, brighter, thicker and cleaner for an all-round quality finish. Suitable for use in copiers, printers and fax machines of all kinds. High-quality, performance paper with an environmentally sustainable model To reduce the logging of native forests, Bashundhara  produces paper from farmed trees Production process uses ', 8, 285, 'images/019-14-040000114_bashundhara-paper-a4_370.jpeg', '2016-12-24 18:14:04'),
(97, 'PAPER ONE A4', 'Paper is more than just paper at PaperOneTM. To us, it is a medium that inspires, connects and creates new experiences. In all PaperOneTM products, you will find a care and thoughtfulness that make them stand out from ordinary paper. Key to this is quality. Made from renewable fiber, PaperOneTM products are designed for the most demanding printing and copying tasks. With our superior opacity, PaperOneTM products let users print in different directions and on both sides. Being available in a comp', 8, 345, 'images/019-15-090000157_paper-one-a4_370.jpeg', '2016-12-24 18:15:09'),
(98, 'SPRIAL NOTE BOOK', '22-lb premium white paper features ruled lines so your writing remains neat and organized.  Pages are perforated for easy removal', 7, 150, 'images/019-17-190000174_sprial-note-book_370.jpeg', '2016-12-24 18:17:19'),
(99, 'NOTEBOOK 7''* 9''', 'Artists often use large notebooks, which include wide spaces of blank paper appropriate for drawing. Lawyers use rather large notebooks known as legal pads that contain lined paper (often yellow) and are appropriate for use on tables and desks. These horizontal lines or "rules" are sometimes classified according to their space apart with "wide rule" the farthest, "college rule" closer, "legal rule" slightly closer and "narrow rule" closest, allowing more lines of text per page. When sewn into a ', 7, 140, 'images/019-18-270000187_notebook-7-9_370.jpeg', '2016-12-24 18:18:27'),
(100, 'PUNCH MACHINE 600 DP', ' Features Medium size punch All metal construction Removable chip tray Specifications Punching Capacity :	22 Sheets Punching Distance:	80 mm Punching Dia:	5.50 mm', 16, 195, 'images/019-21-340000183_punch-machine-600-dp_370.jpeg', '2016-12-24 18:21:34'),
(101, 'PUNCH MACHINE SMALL 280', 'For accurate hole punching when using prong fasteners Adjustable centering gauge for punching accuracy Easy to empty chip tray Punches 15/20 sheets of 20 lb. paper Punches 1/4" holes', 16, 90, 'images/019-23-030000184_punch-machine-small-280_370.jpeg', '2016-12-24 18:23:03'),
(102, 'PUNCH MACHINE 800 DP', 'Features Aluminum die casted heavy duty punch Handle lock for easy storage Metal guide bar Removable chip tray Specifications Punching Capacity :	63 Sheets Punching Distance:	80 mm Punching Dia:	5.50 mm', 16, 1550, 'images/019-23-570001344_punch-machine-800-dp_370.jpeg', '2016-12-24 18:23:57'),
(103, 'KANGARO DP-700 PUNCHING MACHINE', 'Brand: Kangaro Model Number: DP-700 Colour:Multi Material:Steel and Plastic Manufacturer Part Number: DP-700  ', 16, 550, 'images/019-25-140001360_kangaro-dp-700-punching-machine_370.jpeg', '2016-12-24 18:25:14'),
(104, 'KANGARO DP-900 PUNCHING MACHINE', 'Brand: Kangaro Model Number: DP-900 Colour:Multi Material:Steel and Plastic Manufacturer Part Number: DP-900  ', 16, 1500, 'images/019-26-150001364_kangaro-dp-900-punching-machine_370.jpeg', '2016-12-24 18:26:15'),
(105, 'KANGARO SLP 154 SLOT PUNCH', 'Aluminum die casted heavy duty punch Handle lock for easy storage Metal guide bar Removable chip tray', 16, 350, 'images/019-27-020001631_kangaro-slp-154-slot-punch_370.jpeg', '2016-12-24 18:27:02'),
(106, 'PENCIL FABER CASTLE', 'POINT STAYS SHARP. Seasoned wood is bonded to lead giving you a sharp fine point every time you sharpen. Easy to sharpen and erase High resistance to breakage. Made in Germany. Specification: Descriptive Colour    Grey Lead Grade                2B Product Type             Graphite pencils Packaged Quantity    12 Forest Certification   Program for Endorsement of Forest Certification (PEFC) Product Type Graphite pencils Pigment Colour Black Lead Grade 2B', 2, 15, 'images/019-28-260000169_pencil-faber-castle_370.jpeg', '2016-12-24 18:28:26'),
(107, 'METAL MESH BUSINESS CARD DISPLAY STAND, BLACK', 'Metal Mesh Business Card Display Stand, Black', 12, 200, 'images/019-30-150001410_metal-mesh-business-card-display-stand-black_370.jpeg', '2016-12-24 18:30:15'),
(108, 'PAPER WEIGHT', 'Paper weight', 12, 75, 'images/019-31-160001383_paper-weight_370.jpeg', '2016-12-24 18:31:16'),
(110, ' ANTI CUTTER', 'Place of Origin:	 Zhejiang China (Mainland) Brand Name:	 ASSIST Model Number:	 01G-L3 Type:	 Sliding Blade Knife Blade Material:	 Stainless Steel,SK2/SK4/SK5/60C Handle Material:	 Plastic Application:	 Utility Knife Color:	 Yellow+Black/customize Case:	 ABS +Rubber MOQ:	 1000pcs Blade Width:	 18mm Blade thickness:	 0.5mm Lock force:	 25KG Handel Material:	 ABS Lock Color:	 Black Certificate:	 ISO9001 BSCI CE', 17, 100, 'images/019-35-220000182_anti-cutter_370.jpeg', '2016-12-24 18:35:22'),
(111, ' NON-BRAND ANTI CUTTER KNIFE, SMALL,', 'Non-Brand Anti Cutter Knife, Small', 17, 50, 'images/019-36-460001366_non-brand-anti-cutter-knife-small_370.jpeg', '2016-12-24 18:36:46'),
(112, 'SDI ANTI CUTTER, BIG', 'Push brake block backward to lock blade Grooved plastic body with grip to ensure comfortable use Comes with 1 reloaded blade To assist with snapping blunt blades Ideal for cutting cardboard, foam board, and other light cutting Available in 4 colors: Red/Pink, Purple, Yellow, Green', 17, 75, 'images/019-37-400001368_sdi-anti-cutter-big_370.jpeg', '2016-12-24 18:37:40'),
(113, 'MATADOR ERASER', 'Matador eraser for hight quality removes  Oil gel Ink 0.6mm Ball Colorful co-extuded body', 3, 8, 'images/019-40-110001385_matador-eraser_370.png', '2016-12-24 18:40:11'),
(114, 'SHARPENER', 'Specialized sharpeners are available that operate on non-standard sizes of pencil, such as the large art pencils used in primary schools.', 10, 12, 'images/019-40-590000145_sharpener_370.png', '2016-12-24 18:40:59'),
(115, 'NATARAJ SHARPENER', 'ECONOMICAL PLASTIC SINGLE HOLE PENCIL SHARPENERS.  QUALITY METAL BLADES TO SHARPEN YOUR PENCILS WITH EASE.  PACK OF 4 SINGLE HOLE SHARPENERS. ASSORTED COLOURS.', 10, 7, 'images/019-41-580001402_nataraj-sharpener_370.jpeg', '2016-12-24 18:41:58'),
(116, 'MAGAZINE FILE(PAPER)', 'Key features - Easy to pull out and lift as the magazine file has handles. Designer:   K Hagberg/M Hagberg Package measurements and weight Package: 1 Article Number: 402.194.74  Width:  Height:  Length:  Weight: 2lb  Quantity: 1   Article Number: 402.194.74  Width: cm  Height: cm  Length: cm Weight: 0.9 kg  Quantity: 1  People & Planet The material in this product MAY BE recyclable. Please check the recycling rules in your community and if recycling facilities exist in your area.', 18, 60, 'images/019-46-070000099_magazine-filepaper_370.jpeg', '2016-12-24 18:46:07'),
(117, 'RING FILE PAPER 3"', 'Metal finger ring aids shelf retrieval Slotted covers provide added file stability when in use Supplied complete with compressor bar 70mm capacity A3 landscape', 18, 75, 'images/019-47-000000214_ring-file-paper-3_370.jpeg', '2016-12-24 18:47:00'),
(118, 'OFFICE FILE PLASTIC', 'Divide and organize work projects Sealed on 2 sides and features a thumb cut for easy loading and access.  Photocopy transfer safe and protects your documents.  Offers reduced glare. ', 18, 20, 'images/019-47-440000096_office-file-plastic_370.jpeg', '2016-12-24 18:47:44'),
(119, 'SCOTCH TAPE 0.75" SMALL', 'For general purpose use .  Weighted base has a rubberized bottom for nonslip, mar-free use.  Comes with 8 refills of glossy finish tape. ', 19, 12, 'images/019-50-380000216_scotch-tape-075-small_370.jpeg', '2016-12-24 18:50:38'),
(120, 'GLUE STICK', 'glue stick', 19, 45, 'images/019-52-530000146_glue-stick_370.jpeg', '2016-12-24 18:52:53'),
(121, 'BINDING TAPE', 'Binding tape is always used for binding', 19, 55, 'images/019-55-540000334_binding-tape_370.jpeg', '2016-12-24 18:55:54'),
(122, 'PAPER PADS', 'It is used for writing document', 7, 150, 'images/019-57-280000308_paper-pads_370.jpeg', '2016-12-24 18:57:28'),
(123, 'Prang Colored Woodcase Pencils 3.3 mm 36 Assorted Colors', 'Materials: Wood Color: Assorted Weight: 10 ounces Model: Colored Woodcase Pencils Pack of: 36 Pocket Clip: No Refillable: No Retractable: No Point Size: 3.3mm Eraser: No Lead Degree: Soft Dimensions: 5.5 inches long', 4, 1914, 'images/020-05-53Prang-Colored-Woodcase-Pencils-3.3-mm-36-Assorted-Colors-Set-34eb1dc3-c04c-4765-97c2-b46fe6bac9f5_600.jpg', '2016-12-24 19:05:53'),
(124, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack', 'Puts a new spin on creativity! Just turn the ends to twist up 30 vibrant colors. Clear plastic barrel lets you see the colored cores as you twist them up. No sharpening is needed, removing the mess of pencil shavings.   Materials: Plastic Color: Assorted Weight: 13 ounces Model: Twistables Pack of: 30 Pocket Clip: No Refillable: No Retractable: Yesp Eraser: No Dimensions: 5.5 inches long', 4, 1273, 'images/020-08-18Crayola-Twistables-Colored-Pencils-30-Assorted-Colors-Pack-e754a58a-5b59-4d59-9cd7-9daa6e91ad2c_600.jpg', '2016-12-24 19:08:18'),
(126, 'Floral Spiral Khata -300 Page (Size-11.2', 'Title	Floral Spiral Khata -300 Page (Size-11.2 Company	Hearts Bangladesh Categories	Product  Product  Stationery Country	Bangladesh Language	English', 20, 85, 'images/017-22-31rokimg_20141020_90436.gif', '2016-12-28 16:22:31'),
(128, 'Floral Spiral Khata -96 Page', 'Title	Floral Spiral Khata -96 Page (Size -11.2 Company	Hearts Bangladesh Categories	Product  Product  Stationery Country	Bangladesh Language	English', 20, 32, 'images/017-26-01rk2.gif', '2016-12-28 16:26:01'),
(129, 'Floral Binding Khata -Roll (120 Page) ', 'Title	Floral Binding Khata -Roll (120 Page) (Size-11.2 Company	Hearts Bangladesh Categories	Product  Product  Stationery Country	Bangladesh Language	English', 20, 40, 'images/017-30-09rk5.gif', '2016-12-28 16:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_rating`
--

CREATE TABLE `post_rating` (
  `rating_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `description`, `price`, `user`) VALUES
(7, 'The Math Book(2)<br>', 400, 0),
(9, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(10, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(11, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(12, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(13, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(14, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(15, 'Crayola Twistables Colored Pencils 30 Assorted Colors/Pack(3)<br>', 3819, 0),
(18, '', 0, 0),
(19, 'PENCIL FABER CASTLE(2)<br>', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `review` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user`, `product`, `review`) VALUES
(1, 0, 14, ''),
(2, 0, 14, ''),
(3, 0, 14, 'review'),
(4, 10, 16, 'abcd'),
(5, 8, 23, ''),
(6, 8, 23, ''),
(7, 8, 23, ''),
(8, 8, 23, 'nice'),
(9, 8, 115, 'nice sharpner'),
(10, 8, 121, 'Nice');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `mobile`) VALUES
(3, 'asdf', 'asfd@a', '1234', '2345'),
(4, 'rafee', 'tsmrafee@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '01829685347'),
(6, 'Mobashir Sadat', 'shafin2307@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '01521211255'),
(7, 'Mamun', 'm@m.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '018123474153'),
(8, 'nipa', 'afroznaima21@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '99999999'),
(9, 'SMHridoy', 'ahmedhridoy009@gmail.com', 'd8699e2589d897ff4c5b625d54a302fd09111240', '01521336082'),
(10, 'rafee', 'a@b', '81fe8bfe87576c3ecb22426f8e57847382917acf', 'asdf'),
(11, 'b', 'b@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '056');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_rating`
--
ALTER TABLE `post_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `post_rating`
--
ALTER TABLE `post_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
