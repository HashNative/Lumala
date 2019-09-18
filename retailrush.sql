-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: custsql-ipg22.eigbox.net
-- Generation Time: Sep 18, 2019 at 01:23 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retailrush`
--
CREATE DATABASE IF NOT EXISTS `retailrush` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `retailrush`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `active` int(11) NOT NULL,
  `parent_category` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`, `parent_category`) VALUES
(30, 'Electronics', 1, '0'),
(31, 'House Hold', 1, '0'),
(32, 'Toys', 1, '0'),
(33, 'Kitchen, Dining & Bar', 1, '31'),
(34, 'Household Cleaning Tools & Accessories', 1, '31'),
(35, 'Home Storage & Organization', 1, '31'),
(36, 'Household Sundries', 1, '31'),
(37, 'Home Decor', 1, '31'),
(38, 'Bathroom Products', 1, '31'),
(39, 'Garden Supplies', 1, '31'),
(40, 'Other Toys & Hobbies', 1, '32'),
(41, 'Ride On Car', 1, '32'),
(42, 'Light-Up Toys', 1, '32'),
(43, 'Play Mats', 1, '32'),
(44, 'Baby Teethers', 1, '32'),
(45, 'Mobile phone Accessories', 1, '30'),
(46, 'Other electronics', 1, '30'),
(47, 'Ear buds', 1, '45');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charge`
--

CREATE TABLE `delivery_charge` (
  `id` int(11) NOT NULL,
  `area` varchar(2000) DEFAULT NULL,
  `charge` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `delivery_address` varchar(2500) DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `items` varchar(2500) DEFAULT NULL,
  `delivery_charge` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(2500) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `color` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `delivery_address`, `order_id`, `items`, `delivery_charge`, `total`, `status`, `customer_id`, `phone`, `city`, `date`, `method`, `district`, `country`, `color`) VALUES
(70, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-B2CED', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-Black</strong> :1x2300<br>', '0.00', '2,300.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(71, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-EC832', '<strong>NH 001-Food Grade Baby Squirrel Silicone Teether Wholesale Baby Teething For DIY Necklace-AntiqueWhite</strong> :1x100<br>', '0.00', '100.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(72, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-29818', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-</strong> :1x2300<br>', '0.00', '2,300.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(73, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-50F0F', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-Black</strong> :2x2300<br>', '0.00', '4,600.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(74, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-0478F', '<strong>NH 001-Food Grade Baby Squirrel Silicone Teether Wholesale Baby Teething For DIY Necklace-AntiqueWhite</strong> :1x100<br>', '0.00', '100.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(75, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-149AB', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-Black</strong> :1x2300<br>', '0.00', '2,300.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(76, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-2243E', '<strong>NH 001-Food Grade Baby Squirrel Silicone Teether Wholesale Baby Teething For DIY Necklace-AntiqueWhite</strong> :1x100<br>', '0.00', '100.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(77, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-8F0F7', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-White</strong> :1x2300<br>', '0.00', '2,300.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Online Payment', NULL, 'Sri Lanka', ''),
(78, 'ilhamsafeek', 'Kurinchakerny-03,Kinniya', 'ORD-67FA9', '<strong>JR-SP1-Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset-Black</strong> :1x2300<br>', '0.00', '2,300.00', 'Order Placed', '8', '+94777140803', 'Colombo', '1559534400', 'Cash on delivery', NULL, 'Sri Lanka', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(2500) DEFAULT NULL,
  `category_id` varchar(2500) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `cut_price` varchar(45) DEFAULT NULL,
  `offer` varchar(45) DEFAULT NULL,
  `image` text,
  `color` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `description` text,
  `featured` varchar(45) DEFAULT NULL,
  `reorderlevel` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `parent_category` varchar(45) DEFAULT NULL,
  `details` text,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `cut_price`, `offer`, `image`, `color`, `brand`, `description`, `featured`, `reorderlevel`, `quantity`, `parent_category`, `details`, `code`) VALUES
(18, 'Lead & Cadmium-free high quality ceramic blac', '[\"House Hold\",\"Kitchen, Dining & Bar\"]', '1200', '1300', '', 'assets/images/product_image/5cf49f6ed439c.png', '[\"AliceBlue\",\"Aquamarine\",\"Azure\"]', '', '', '1', '', '200', NULL, '<p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Type: Utensils\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Utensils <br></div><div>Type:Utensil Sets <br></div><div>Material:Metal <br></div><div>Metal Type:Stainless Steel <br></div><div>                                    \r\n            \r\n                    \r\n                \r\n                    Certification:CE / EU, FDA, SGS <br></div><div>                                    \r\n            \r\n                    \r\n                \r\n                    Feature:Eco-Friendly, Stocked, stock <br></div><div>Place of Origin:Guangdong, China (Mainland) <br></div><div>Brand Name:\r\n                \r\n                \r\n                                            <div>OEM</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>XH-1333</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product Name:\r\n                \r\n                \r\n                                            <div>kitchen tools 6pcs stainless steel kitchenware set / cooking utensil</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>silver</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Usage:\r\n                \r\n                \r\n                                            <div>household&amp;hotel&amp;restaurant&amp;ceremony&amp;party</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Style:\r\n                \r\n                \r\n                                            <div>simple</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Logo:\r\n                \r\n                \r\n                                            <div>customized</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Packing:\r\n                \r\n                \r\n                                            <div>shelf+color box  12 sets/carton or as requested</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    MOQ:\r\n                \r\n                \r\n                                            <div>100pcs/20 sets</div>\r\n                                    \r\n            \r\n            </div>\r\n</div>\r\n\r\n    \r\n        \r\n    \r\n\r\n    \r\n        \r\n    \r\n                            \r\n                                        <div>\r\n          <h3>Packaging &amp; Delivery</h3>\r\n          <div>\r\n                            \r\n                Selling Units:\r\n                Single item\r\n                \r\n                \r\n                Single package size: \r\n                \r\n                                            20X20X20 cm\r\n                                    \r\n                \r\n                    \r\n                    Single gross weight:\r\n                    0.5 kg\r\n                </div></div><br><p></p>', 'XH-1333'),
(19, '12pcs Stainless Steel thomas inox cookware se', '[\"House Hold\",\"Kitchen, Dining & Bar\"]', '2000', '2200', '10%', 'assets/images/product_image/5cf4a18e593e6.jpg', '[\"Silver\"]', 'Sanny', '', '1', '', '2500', NULL, '<p></p><div>12pcs Stainless Steel thomas inox cookware set inox cooking pot</div><div>Made of stainless steel 18/10, which ensures long life and superior performance.<br>Stainless steel cookware is not oxidized, and easy to clean even abrasives.<br>In cookware set includes the most needed items.<br>Completeness:16/16/18/20/22/24CM<br></div><div><br>Specifications set pans<br>Characteristics walls set dishes:<br>Composition walls set of cookware - stainless steel 201 304<br>Features bottom cookware set:<br>Set of dishes has capsulated bottom and suitable for all types of cookers, including induction.<br>The composition of the bottom set of cookware items - capsule bottom, stainless steel, aluminum<br>Features pans: uncoated<br>Features handles cookware set:<br>Composition handles cookware set - steel, gold plated<br>Method of attachment - klepochnoe<br>Features lid cookware set:</div><div>Set pans suitable for electric, glass ceramic, gas, induction hob. </div><br><p></p>', 'SYS1614'),
(20, 'High quality vintage colored luxury wooden cl', '[\"House Hold\",\"Household Cleaning Tools & Acc', '800', '', '', 'assets/images/product_image/5cf4a2e78ee88.jpg', '[\"Brown\"]', 'Yao Xiang', '', '1', '', '500', NULL, '<p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Usage:\r\n                \r\n                \r\n                                            <div>Garment</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Clothing Type:\r\n                \r\n                \r\n                                            <div>Clothes</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>Wooden</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Style:\r\n                \r\n                \r\n                                            <div>Display</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Guangxi, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>Yao Xiang</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>WVN72242</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>Dark Brown</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Name:\r\n                \r\n                \r\n                                            <div>Wooden Hanger</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Logo:\r\n                \r\n                \r\n                                            <div>Printing Logo</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Feature:\r\n                \r\n                \r\n                                            <div>Anti-slip</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Packing:\r\n                \r\n                \r\n                                            <div>100pcs/CTN</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Size:\r\n                \r\n                \r\n                                            <div>28cm,38cm,44.5cm or Customized Size</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    MOQ:\r\n                \r\n                \r\n                                            <div>500pcs</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    OEM:\r\n                \r\n                \r\n                                            <div>Acceptable</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product name:\r\n                \r\n                \r\n                                            <div>Wooden Clothes Hanger</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Parts:\r\n                \r\n                \r\n                                            <div>Metal hook</div>\r\n                                    \r\n            \r\n            </div>\r\n</div><br><p></p>', 'WVN72242'),
(23, '2019 amazon new design large size 20*13 inch ', '[\"House Hold\",\"Home Storage & Organization\"]', '1300', '1500', '10%', 'assets/images/product_image/5cf4af52a129f.jpg', '[\"GreenYellow\",\"White\"]', '     nuohui', '', '1', '', '', NULL, '<p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Type:\r\n                \r\n                \r\n                                            <div>Storage Baskets</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Use:\r\n                \r\n                \r\n                                            <div>Neatening/Storage</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>Fabric, 100% cotton rope</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Fabric Type:\r\n                \r\n                \r\n                                            <div>100% Cotton</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Feature:\r\n                \r\n                \r\n                                            <div>Eco-Friendly, Folding, Stocked</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Hebei, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>nuohui</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>NHS17</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product name:\r\n                \r\n                \r\n                                            <div>cotton rope basket</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>as picture</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Packing:\r\n                \r\n                \r\n                                            <div>carton box &amp; PP bag</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Size:\r\n                \r\n                \r\n                                            <div>40*35*34cm</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Weight:\r\n                \r\n                \r\n                                            <div>1.15 kg</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Usage:\r\n                \r\n                \r\n                                            <div>for storage</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    MOQ:\r\n                \r\n                \r\n                                            <div>500 PCS</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Logo:\r\n                \r\n                \r\n                                            <div>Custom made</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Style:\r\n                \r\n                \r\n                                            <div>Country</div>\r\n                                    \r\n            \r\n            </div>\r\n</div><p></p><p></p><div><h3>About the product.</h3></div><div><p><br>It\r\n can hold a large quantity of clothes, toys, art materials, linens and \r\nmore. Conveniently fits on a shelf or under a table for fuss-free \r\norganizing.<br><br>MULTI-PURPOSE QUALITY HAMPER STORAGE - Organizing \r\nyour home is easy with this multi-purpose rope storage basket. It is the\r\n perfect solution for your storage needs. Use it as a kids laundry \r\nbasket, toy organizer, bathroom storage baskets and more.<br><br>DURABLE\r\n WOVEN COTTON ROPE COIL – The tightly woven rope basket is soft yet firm\r\n and springs right back into form. This high quality rope basket hamper \r\nis sturdy and equipped with a pair of handles making it easy to carry \r\naround your home.<br><br>STYLISH WAY TO ORGANIZE - Designed with your \r\nconvenience and style in mind, these cotton storage bins come in various\r\n colors and sizes to fit your personal home decorating style and storage\r\n needs. These Cotton Rope Storage Baskets are both chic and functional.<br><br>100%\r\n NATURAL AND ECO-FRIENDLY Made of natural cotton rope , this coiled rope\r\n basket is crafted with environmentally friendly and chemical free \r\nmaterials. Made with natural fibers it is hypoallergenic and safe for \r\nuse as a baby toy storage or nursery hamper..</p></div><br><p></p>', 'NHS17'),
(25, 'wheat straw 2 layer leakproof plastic bento b', '[\"House Hold\",\"Home Storage & Organization\"]', '250', '', '', 'assets/images/product_image/5cf4b0ca623cb.png', '[\"BurlyWood\"]', 'Chicheng', '', '2', '', '250', NULL, '<p>                  </p><p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Type:\r\n                \r\n                \r\n                                            <div>Storage Boxes &amp; Bins</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Technics:\r\n                \r\n                \r\n                                            <div>GLOSSY</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product:\r\n                \r\n                \r\n                                            <div>bento box</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Shape:\r\n                \r\n                \r\n                                            <div>Square</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Specification:\r\n                \r\n                \r\n                                            <div>21*14*8CM</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Style:\r\n                \r\n                \r\n                                            <div>Traditional Chinese</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Use:\r\n                \r\n                \r\n                                            <div>Food</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Food Container Feature:\r\n                \r\n                \r\n                                            <div>Microwavable</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>food grade pp+ straw</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Feature:\r\n                \r\n                \r\n                                            <div>Eco-Friendly</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Zhejiang, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>Chicheng</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>CH-80409</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product name:\r\n                \r\n                \r\n                                            <div>plastic bento box</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Size:\r\n                \r\n                \r\n                                            <div>20.2*10.5*6.7cm</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    weight:\r\n                \r\n                \r\n                                            <div>355g</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Function:\r\n                \r\n                \r\n                                            <div>Take-away Food</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Packing:\r\n                \r\n                \r\n                                            <div>box</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand:\r\n                \r\n                \r\n                                            <div>Chicheng</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Logo:\r\n                \r\n                \r\n                                            <div>Customized Logo</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    keywords:\r\n                \r\n                \r\n                                            <div>plastic bento box</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>wheat</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    MOQ:\r\n                \r\n                \r\n                                            <div>10 pcs</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Load:\r\n                \r\n                \r\n                                            <div>10kg</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Capacity:\r\n                \r\n                \r\n                                            <div>950ml</div>\r\n                                    \r\n            \r\n            </div>\r\n</div><p></p><p><br></p><p></p><p>1. Manufacturing and exporting experience for over 10 years .</p><p>2. We already have done quality audit and social audit . </p><p>3. Professional design team , mold maker engineer .</p><p>4. Customer’s designs , shapes and logos are acceptable .</p><p>5. Third party inspection: Acceptable</p><p>6. Professional QC and R&amp;D teams to assure high quality .</p><br><p></p>                  <br><p></p>', 'CH-80409'),
(26, '6-Pack XL 100% Organic Merino Wool Laundry Co', '[\"House Hold\",\"Household Cleaning Tools & Accessories\"]', '600', '800', '', 'assets/images/product_image/5cf4b7d55b4e3.png', '[\"White\",\"WhiteSmoke\"]', '800', NULL, '2', NULL, '300', NULL, '<p>                  </p><p></p><p><strong>Material</strong>&nbsp;:100% New Zealand wool <br></p><p><strong>Packaing:</strong>&nbsp;Cotton bags, Opp bags, Bulk packaging in carton box</p><h1>1. Last for 1000 loads minimum</h1><h1><strong>2. </strong>Shorten drying time by up to 25%</h1><h1><strong>3.</strong>&nbsp;Handmade. All-natural organic alternative to liquid fabric softener, dryersheet &amp; as seen on tv plastic dryer balls</h1><p><strong>4.</strong>&nbsp;help to absorb lint, fluff on the clothes and it can make your clothes softer.</p><p><strong>&nbsp;</strong></p><p><strong>Energy-Saving Laundry Tips</strong></p><p>1. &nbsp;Use cold water to save on heating.</p><p>2. &nbsp;Only do full loads of laundry.</p><p>3. &nbsp;Clean the dryer lint filter after each load.</p><p>4. &nbsp;Don\'t over dry. &nbsp;Take clothes out as soon as they are done.</p><p>5. &nbsp;Last but not least, use Smart Sheep Wool dryer balls!</p><br><p></p>                  <br><p></p>', 'NHA01'),
(27, 'New style foldable baby bathtub/cheap folding baby bath tub', '[\"House Hold\",\"Bathroom Products\"]', '3200', '', '', 'assets/images/product_image/5cf4bc179528f.jpg', '[\"Blue\"]', 'OEM', '', '2', '', '100', NULL, '<p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Type:\r\n                \r\n                \r\n                                            <div>Tubs</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Cover:\r\n                \r\n                \r\n                                            <div>Without Lid</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product:\r\n                \r\n                \r\n                                            <div>General Bath Barrel</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>Plastic</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Plastic Type:\r\n                \r\n                \r\n                                            <div>PP</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Feature:\r\n                \r\n                \r\n                                            <div>Eco-Friendly</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Zhejiang, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>OEM</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>1575</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    name:\r\n                \r\n                \r\n                                            <div>baby bathtub</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    color:\r\n                \r\n                \r\n                                            <div>pink,blue.Green</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    packing:\r\n                \r\n                \r\n                                            <div>opp bag</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    material:\r\n                \r\n                \r\n                                            <div>PP.TPR</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    certificate:\r\n                \r\n                \r\n                                            <div>EN71</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Usage:\r\n                \r\n                \r\n                                            <div>Baby Bath Cleaning</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Function:\r\n                \r\n                \r\n                                            <div>Bathroom Wash Basin</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Application:\r\n                \r\n                \r\n                                            <div>Indoor Bathtub</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    OEM:\r\n                \r\n                \r\n                                            <div>Acceptable</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product size:\r\n                \r\n                \r\n                                            <div>82*49*22.5cm,82*49*6.5cm</div>\r\n                                    \r\n            \r\n            </div>\r\n</div><p></p><p></p><p>1.Eco-friendly PP+TPR Material, safe &amp; non -toxic, harmless for baby\'s tender skin. &nbsp;</p><p>2.Foldable body of the bathtub made of TPR material, adjustable depth options for using needs.</p><p>3. Foldable design, convenient to store, top handle able to carry or hang.</p><p>4. Sweet top groove design can hold towerl, soap, bath gel, etc.</p><p>5.Humanized design, non-slip rubber mat, press the side of the tub, as a baby\'s small slide, let bathing to be a lot of fun.</p><br><p></p>', '1575'),
(28, 'NEW Fluorescent light spinner plastic spinner nice and cool toy at night for', '[\"Toys\",\"Other Toys & Hobbies\"]', '150', '', '', 'assets/images/product_image/5cf4c29345f9a.jpg', '[\"Aqua\",\"Azure\",\"Beige\",\"Black\",\"Green\"]', 'OEM', '', '2', '', '2000', NULL, '<p><b>Feature:</b><br><b>1.The ABS plastic frame is sleek and unbreakable.LED lights is very beautiful.<br>2.\r\n Many kinds of pattern changes! Make sure to get a spinner for Each \r\nFamily Member as your whole family will want to play with one. <br>3.IDEAL for people trying to quite nail biting, smoking, leg shaking and all type of attention disorder issues.<br>4.SPIN ANYTIME: Extra Smooth Surface Finish and Right Size Bring to You the Ultimate Playing Experience!</b><br></p>', 'Fluorescent light sp'),
(29, 'Good quality beach playing plastic children toy', '[\"Toys\",\"Other Toys & Hobbies\"]', '800', '830', '', 'assets/images/product_image/5cf4c32f20bae.jpg', '[\"Aqua\",\"BurlyWood\",\"Coral\"]', '', '', '2', '', '300', NULL, '<p></p><div>\r\n    <div>Quick Details</div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Guangdong, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>MJ TOYS</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>MJ002397 Children toy wholesale</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Type:\r\n                \r\n                \r\n                                            <div>Other Outdoor Toys &amp; Structures</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product name:\r\n                \r\n                \r\n                                            <div>Children toy wholesale</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>Picture</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Feature:\r\n                \r\n                \r\n                                            <div>New Beach Toys good selling summy toy</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>ABS</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Packing:\r\n                \r\n                \r\n                                            <div>PVC card head bag</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Advantage:\r\n                \r\n                \r\n                                            <div>Wholesale beach items summer Children toy</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Service:\r\n                \r\n                \r\n                                            <div>OEM / ODM</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Certificate:\r\n                \r\n                \r\n                                            <div>EN71</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Description:\r\n                \r\n                \r\n                                            <div>Kid Beach Toy</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Size:\r\n                \r\n                \r\n                                            <div>38*22.5*22.5</div>\r\n                                    \r\n            \r\n            </div>\r\n</div><p></p><p></p><div><strong>Product Features</strong>:<br>1. Wholesale kids summer toys children outdoor funny plastic beach toys<br>2. Good quality children plastic material sand beach toys set<br>3. New children outdoor beach toys set</div><div><strong>Selling point:</strong><br>1. Large beach trolley carriage, with a lot of sand;<br>2. Emulation seats make the car look more realistic.<br>3. The unique design of the wheel can be convenient to walk on the market.<br>4. Not only is the toy that the child plays on the beach, but it can also stimulate the children\'s hands-on ability.</div><div><strong>Services:</strong><br>1. Sample available; accept trail order; LCL/OEM/ODM/FCL.<br>2. If you want to import some products to test the market, we can lower the MOQ .<br>3. Welcome to contact us and keep in touch.</div><br><p></p>', 'MJ002397'),
(30, 'Food Grade Baby Squirrel Silicone Teether Wholesale Baby Teething For DIY Necklace', '[\"Toys\",\"Baby Teethers\"]', '100', '', '', 'assets/images/product_image/5cf4c42185553.jpg', '[\"AntiqueWhite\",\"Cornsilk\",\"DarkGrey\"]', '', NULL, '2', NULL, '', NULL, '<p></p><div></div>\r\n\r\n    <div>\r\n                    \r\n                \r\n                    Style:\r\n                \r\n                \r\n                                            <div>Soft Toy</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Material:\r\n                \r\n                \r\n                                            <div>Food Grade Silicone</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Place of Origin:\r\n                \r\n                \r\n                                            <div>Guangdong, China (Mainland)</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Brand Name:\r\n                \r\n                \r\n                                            <div>OEM</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Model Number:\r\n                \r\n                \r\n                                            <div>NH 001</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Product Name:\r\n                \r\n                \r\n                                            <div>Baby Silicone teether</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Item Type:\r\n                \r\n                \r\n                                            <div>Silicone Pendant</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Shape:\r\n                \r\n                \r\n                                            <div>Elephant</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Age Range:\r\n                \r\n                \r\n                                            <div>3-15 months</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Color:\r\n                \r\n                \r\n                                            <div>3-6 Color Available</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Certification:\r\n                \r\n                \r\n                                            <div>SGS/FDA/CE/EN71/CPSIA/AU</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Package:\r\n                \r\n                \r\n                                            <div>Opp Bag</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Usage:\r\n                \r\n                \r\n                                            <div>Soothing Baby\'s Teething Pain</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Keyword:\r\n                \r\n                \r\n                                            <div>silicone teether pendant</div>\r\n                                    \r\n            \r\n                    \r\n                \r\n                    Custom:\r\n                \r\n                \r\n                                            <div>Welcome</div>\r\n                                    \r\n            \r\n            </div><br><p></p>', 'NH 001'),
(31, 'Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset', '[\"Electronics\",\"Mobile phone Accessories\",\"Ear buds\"]', '2300', '2500', '5%', 'assets/images/product_image/5cf4c8bc8078c.jpg', '[\"Black\",\"White\"]', '     JOYROOM', 'Joyroom New Products 2019 Original wireless Earbuds Bluetooths headset with charging box for iPhone X/7/8/ Samsung', '2', '', '240', NULL, '<p></p><p>1.Model: JR-T03 TWS Earbuds Wireless Headset <br></p><p>BT version: BT V5.0</p><p>Charging box capacity: 190mAH Headphone capacity: 45mAH (actual 32mAH)</p><p> Life time: about 3.5H (power on default volume)</p><p> Charging box USB charging: 0.5H </p><p>Charging current: 5V/1A</p><p> Headphone button control: touch control<br>Working distance: ?10M</p><p>&nbsp;</p><p>1. The latest 5.0 Bluetooth chip, compatible with a variety of protocols, stable transmission, game video zero card<br>2. With the charging compartment, the automatic switch on and off the warehouse, the intelligence is simpler.<br>3. Powerful power reserve, charging for 30 minutes, listening for 3 hours<br>&nbsp; (Power storage once charging bin, can be charged 6 times for headphones)<br>4. Intelligent touch technology, no pressure touch, simple and free<br>5. Touch long press to wake up Siri, smart and convenient life<br>6. High-grade powerful magnet cover design, integrated storage and charging<br>7.1:1 original size ultra-small body design, compact and lightweight, easy to carry, easy to carry</p><br><p></p>', 'JR-SP1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `address1`, `address2`, `country`, `district`, `city`, `gender`, `type`) VALUES
(1, 'admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin'),
(8, 'ilhamsafeek', '$2y$10$K/6bDhoITH8n7wyU8qOHKeB3LCde0FHNve7NAAhJCfoKyqU.l9Seq', 'ad@admin.com', '+94777140803', 'Kurinchakerny-03', 'Kinniya', NULL, NULL, '23', 'male', 'customer'),
(9, '', NULL, '', '', '', '', NULL, NULL, '1', NULL, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charge`
--
ALTER TABLE `delivery_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `delivery_charge`
--
ALTER TABLE `delivery_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
