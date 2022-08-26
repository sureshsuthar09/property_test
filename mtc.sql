-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 07:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtc`
--

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `county` varchar(150) NOT NULL,
  `country` varchar(70) NOT NULL,
  `town` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumbnail` varchar(150) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `number_of_bedrooms` varchar(10) NOT NULL,
  `number_of_bathrooms` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `type` enum('sale','rent') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `property_type_id`, `county`, `country`, `town`, `description`, `address`, `image`, `thumbnail`, `latitude`, `longitude`, `number_of_bedrooms`, `number_of_bathrooms`, `price`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'Pennsylvania', 'Cocos (Keeling) Islands', 'Johnsonbury', 'Debitis doloribus eos optio debitis. Et accusamus exercitationem blanditiis enim fuga optio vitae. Eligendi temporibus cum blanditiis. Voluptate culpa quos reiciendis doloremque officiis.', '6446 Smitham Ferry Apt. 571', 'https://p-hold.com/1000/400?57108', 'https://p-hold.com/100/100?54016', '-64.3049290', '-154.2199280', '1', '12', 85352, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(2, 1, 'Delaware', 'Guernsey', 'South Katelyn', 'In cupiditate fuga et in totam. Enim aut vel atque consequatur et et. Et aperiam eum aliquid rerum facilis ex. Vel maxime reprehenderit ea illum et eos.', '23663 Oberbrunner Bridge Suite 239', 'https://p-hold.com/1000/400?49440', 'https://p-hold.com/100/100?62816', '-8.8929900', '-50.3735560', '6', '1', 1565190, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(3, 3, 'Oregon', 'Russian Federation', 'Lake Athenaville', 'Quod ipsam doloribus repellat omnis similique dolore esse enim. In ut et dolorem mollitia est reprehenderit qui aut. Ex amet suscipit earum. Est aspernatur accusamus est qui sapiente error.', '920 Nellie Ranch', 'https://p-hold.com/1000/400?82763', 'https://p-hold.com/100/100?53150', '-10.3512150', '36.4368700', '8', '1', 129598, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(4, 3, 'Rhode Island', 'Kyrgyz Republic', 'North Stewart', 'Minima qui autem quis non. Consequuntur voluptate exercitationem et delectus eum voluptas. Enim nostrum omnis aperiam ab. Voluptas qui est est odit ut eveniet optio.', '3382 Lincoln Expressway Apt. 647', 'https://p-hold.com/1000/400?17603', 'https://p-hold.com/100/100?25319', '52.3242880', '-152.4294270', '10', '1', 1837110, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(5, 6, 'Colorado', 'Rwanda', 'Cronaborough', 'Quia dolor eos praesentium repellat. Delectus aut voluptatum reiciendis sit excepturi sint. Eveniet qui error dolorem praesentium vero. Modi architecto voluptatum dolor dolorum eos.', '67355 Bosco Knolls Suite 188', 'https://p-hold.com/1000/400?32896', 'https://p-hold.com/100/100?19556', '72.6266150', '73.0234140', '1', '1', 1866400, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(6, 6, 'Rhode Island', 'Liechtenstein', 'Colemouth', 'Corporis sapiente harum voluptas ea dignissimos. Et minima et vel reprehenderit qui. Autem expedita voluptatum quam mollitia. Vel ea blanditiis id hic quae.', '8605 Cormier Shoal', 'https://p-hold.com/1000/400?49650', 'https://p-hold.com/100/100?52307', '-77.5114890', '-23.0975950', '6', '4', 2288940, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(7, 7, 'Virginia', 'Ethiopia', 'West Marcos', 'Eos quaerat sit occaecati voluptatibus commodi sunt. Sunt nemo dolorem illo ducimus corrupti. Consequatur accusantium ullam culpa. Error doloribus ducimus pariatur aperiam et at quidem a.', '8095 Erich Wells Suite 997', 'https://p-hold.com/1000/400?76239', 'https://p-hold.com/100/100?87598', '-85.7801480', '30.2216580', '12', '4', 2790580, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(8, 5, 'Georgia', 'Mauritius', 'Stiedemannborough', 'Pariatur dignissimos eligendi sunt dolorem occaecati voluptatibus quia. Amet non enim voluptates repudiandae et dolor. Voluptas molestias quos sed quos.', '8978 Swift Extension', 'https://p-hold.com/1000/400?99804', 'https://p-hold.com/100/100?69897', '-49.1496640', '0.0277660', '11', '7', 809370, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(9, 7, 'Michigan', 'Nicaragua', 'Gradymouth', 'Quas ratione beatae omnis rerum. Debitis earum enim adipisci nihil. Expedita officiis aliquid aut est rem voluptas.', '492 Krystel Estates Apt. 972', 'https://p-hold.com/1000/400?23245', 'https://p-hold.com/100/100?89252', '60.2918940', '95.9194130', '6', '1', 1265490, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(10, 5, 'New York', 'Timor-Leste', 'North Elmoreburgh', 'Cumque voluptas cumque est. Tempore consectetur nulla sed praesentium odio. Aut corrupti saepe sit. Possimus ad et officia odio ex qui ex. Hic non minus dolorem eum aut natus.', '438 Carroll Mills', 'https://p-hold.com/1000/400?42502', 'https://p-hold.com/100/100?38251', '69.1524930', '143.8099710', '2', '10', 2963210, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(11, 6, 'Florida', 'Guadeloupe', 'North Elbert', 'Sit aliquam et et consectetur hic omnis iure. Consequatur veritatis earum dolorem quod. Voluptates totam dolorem velit laboriosam. Qui voluptatibus nam ut modi neque.', '4459 Volkman Camp', 'https://p-hold.com/1000/400?35986', 'https://p-hold.com/100/100?65582', '-87.2389150', '-70.1337010', '5', '3', 2117010, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(12, 2, 'Missouri', 'Belarus', 'East Elseview', 'Molestias eaque dolor nisi illum distinctio sint quia sit. Pariatur enim impedit hic rerum aliquam. Et non impedit dolore velit animi in.', '6943 Price Inlet', 'https://p-hold.com/1000/400?20148', 'https://p-hold.com/100/100?73169', '-40.9844200', '145.0891870', '12', '2', 2653770, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(13, 7, 'New Jersey', 'Tanzania', 'North Shanna', 'Culpa voluptas saepe sed molestiae. Nihil blanditiis aut itaque cupiditate velit ratione perferendis. Expedita velit natus inventore. Tenetur ut ipsa animi.', '9956 Weber Roads', 'https://p-hold.com/1000/400?75527', 'https://p-hold.com/100/100?41811', '88.5495200', '150.9990470', '11', '7', 1075400, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(14, 4, 'Hawaii', 'Nauru', 'Ottilieborough', 'Sit molestiae corporis nisi. Iste rerum aspernatur optio quibusdam eum minima quia aliquid. Voluptate maiores nulla doloribus.', '393 Heathcote Causeway Apt. 332', 'https://p-hold.com/1000/400?25652', 'https://p-hold.com/100/100?18079', '14.9013170', '28.5562610', '4', '2', 716253, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(15, 2, 'South Dakota', 'Paraguay', 'Port Ari', 'Repellendus autem est modi labore. At qui ex minus est magnam non. Laudantium est libero animi commodi officiis dolores est voluptate.', '4313 Jacobs Mountain Suite 777', 'https://p-hold.com/1000/400?62629', 'https://p-hold.com/100/100?17422', '10.9628260', '-10.2443770', '5', '3', 801688, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(16, 7, 'Tennessee', 'France', 'Fayeshire', 'Culpa magnam ut occaecati praesentium quia. A neque accusantium dolores nemo laudantium dolores. Rerum praesentium omnis eos et sed. Totam atque est incidunt ex animi laborum.', '1972 Terry Creek Suite 354', 'https://p-hold.com/1000/400?55300', 'https://p-hold.com/100/100?27987', '-33.7622740', '4.8294300', '9', '2', 1007330, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(17, 5, 'Wyoming', 'Marshall Islands', 'Jaskolskiview', 'Corporis eos facere accusamus odit accusantium molestiae consectetur. Vero culpa sunt molestias doloribus reprehenderit. Quasi maxime fugiat enim laudantium ut quam.', '293 Kreiger Cliffs Suite 201', 'https://p-hold.com/1000/400?19878', 'https://p-hold.com/100/100?45654', '22.7034960', '159.5743020', '9', '5', 1825890, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(18, 4, 'New Mexico', 'El Salvador', 'Dickensville', 'Assumenda rem iusto alias perspiciatis. Qui porro possimus numquam atque. Laborum et adipisci saepe recusandae quasi.', '9867 Heidenreich Station Suite 312', 'https://p-hold.com/1000/400?49979', 'https://p-hold.com/100/100?82647', '-57.2407180', '-70.9522550', '4', '1', 1753890, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(19, 1, 'Alabama', 'Dominica', 'Tiatown', 'Deserunt voluptates quo repudiandae quidem. Voluptates itaque optio eos quo sunt. Dolorem voluptas at commodi quibusdam. Suscipit sit ullam enim atque dolor repellat quis.', '17126 Schuppe Junctions', 'https://p-hold.com/1000/400?42036', 'https://p-hold.com/100/100?62711', '-71.1533240', '112.7421960', '6', '3', 2973360, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(20, 1, 'New Hampshire', 'Iceland', 'Burdettestad', 'Ipsum ullam commodi aliquid est. Iste corrupti rerum mollitia veniam quibusdam eum repellendus. Eum possimus nihil dignissimos temporibus.', '14629 Runte Passage Suite 011', 'https://p-hold.com/1000/400?82134', 'https://p-hold.com/100/100?43486', '-12.6268550', '-56.7367400', '3', '1', 942573, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(21, 7, 'Arkansas', 'Heard Island and McDonald Islands', 'Port Willis', 'Rerum sit placeat incidunt sequi. Quod voluptas dolorum ducimus. Rerum et odit magni dignissimos doloribus quo.', '98757 Cummings Centers', 'https://p-hold.com/1000/400?62529', 'https://p-hold.com/100/100?66504', '-67.7874650', '38.4859930', '6', '2', 1493060, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(22, 3, 'Nevada', 'Canada', 'Stammview', 'Dolores qui perspiciatis sit et aut. Consequatur et aut voluptates dicta quis. Et est sapiente repudiandae ipsa. Fugiat repellat ad aut.', '4068 Fidel Tunnel Suite 222', 'https://p-hold.com/1000/400?81370', 'https://p-hold.com/100/100?40162', '-2.9226570', '94.3450930', '8', '4', 2337550, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(23, 3, 'Oregon', 'Norfolk Island', 'Adelaborough', 'Error aliquam cum vel magni nihil sed tempore. Tempora quia labore a voluptatem. Et exercitationem est nesciunt quaerat.', '8863 Antonina View Suite 420', 'https://p-hold.com/1000/400?85047', 'https://p-hold.com/100/100?28005', '77.0392150', '40.9708420', '4', '8', 885462, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(24, 5, 'New York', 'Austria', 'Lake Nedland', 'Perferendis est adipisci ut illum. Ipsam et sequi optio aut. Necessitatibus deserunt facilis fugit.', '71662 Pinkie Groves', 'https://p-hold.com/1000/400?83726', 'https://p-hold.com/100/100?49325', '27.3210660', '-92.1764420', '9', '1', 76513, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(25, 4, 'Nebraska', 'Wallis and Futuna', 'Myaland', 'Qui et assumenda similique quia ut et nihil. Omnis et iusto voluptates ipsa rerum magni nihil. Minima iste vero minima ea quis totam sint.', '19353 Lindgren Spur', 'https://p-hold.com/1000/400?14180', 'https://p-hold.com/100/100?96606', '-80.8273180', '71.8222660', '5', '2', 153399, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(26, 7, 'New Hampshire', 'Argentina', 'Gloverchester', 'Veritatis natus asperiores consequuntur qui. Voluptas repudiandae non ea aperiam iste qui earum. Esse repellendus quisquam ut aut placeat qui. Quas sed quia perspiciatis est aliquid laboriosam inventore.', '1209 Amely Cliffs Apt. 910', 'https://p-hold.com/1000/400?25223', 'https://p-hold.com/100/100?24374', '68.8329370', '113.5649730', '7', '2', 2432220, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(27, 2, 'Washington', 'Burkina Faso', 'Westonmouth', 'Dolorem enim voluptate aperiam necessitatibus. Atque rerum aut consequatur a. Veniam rerum illo aperiam. Et itaque quo dolor nobis beatae possimus a.', '223 Moshe Points', 'https://p-hold.com/1000/400?83645', 'https://p-hold.com/100/100?85233', '37.5099470', '58.8648290', '8', '5', 571258, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(28, 5, 'South Dakota', 'Guinea', 'South Cicero', 'Modi magni assumenda tempora quibusdam voluptas maiores esse. Dignissimos et fuga est sequi a labore rem. Ea illum debitis voluptatibus delectus quo modi.', '79187 Roberts Port', 'https://p-hold.com/1000/400?93018', 'https://p-hold.com/100/100?34151', '30.6668000', '-35.7039430', '6', '7', 2152460, 'sale', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(29, 1, 'Idaho', 'Swaziland', 'Willmshaven', 'Rerum natus eos blanditiis adipisci fuga expedita voluptas. Voluptas debitis nisi dicta occaecati voluptatem et voluptatem. Recusandae voluptas optio dolore aut fugit et ea.', '2861 Doyle Greens Apt. 483', 'https://p-hold.com/1000/400?51432', 'https://p-hold.com/100/100?56736', '-58.6318040', '46.7235630', '6', '2', 763262, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11'),
(30, 7, 'Wisconsin', 'Austria', 'Everettehaven', 'Magni dolor nostrum blanditiis officia incidunt. Deleniti pariatur voluptatem neque in.', '3498 Lavina Tunnel Apt. 415', 'https://p-hold.com/1000/400?82253', 'https://p-hold.com/100/100?93768', '14.7135590', '-48.6349920', '11', '6', 759832, 'rent', '2022-08-26 05:13:11', '2022-08-26 05:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL,
  `property_title` text NOT NULL,
  `property_description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `property_title`, `property_description`, `created_at`, `updated_at`) VALUES
(1, 'Flat', 'rom studio flats, to maisonettes and 2-storey flats, a flat is a living area that is self-contained and in one part of a building. A building is usually split into individual flats and the communal areas are those that are shared e.g. lifts, stairwells, receptions etc.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(2, 'Detatched', 'Detached houses are more likely to be the property types we all dream of owning. They tend to be more private as they are single standing properties, and do not share walls with other houses. Due to its privacy, detached houses are a lot more expensive and high in demand.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(3, 'Semi-detached', 'Semi-detached properties are a lot more common for homeowners to purchase/rent. There are a lot more semi-detached properties in the UK as they save a lot of space as they are houses paired together by a common wall. Semi-detached properties are fantastic options for homeowners to extend at the back and side and have an element of privacy too.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(4, 'Terraced', 'Terraced houses are common in old industrial towns and cities such as Manchester, Bath and areas of central London. Terraced houses became extremely popular to provide high-density accommodation for the working class in the 19th century. Terraced houses are structurally built the same and both sides of each house shares walls with neighbours.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(5, 'End of Terrace', 'It says it in the name. It is the end of a terraced house and only one side shares a common wall, while the other is detached.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(6, 'Cottage', 'It says it in the name. It is the end of a terraced house and only one side shares a common wall, while the other is detached.', '2022-08-26 10:43:11', '2022-08-26 10:43:11'),
(7, 'Bungalow', 'The word ‘bungalow’, originates from the Indian word ‘Bangla’, which in the 19th century referred to houses that were built in a Bengali style. Houses that were made in Bengali style were traditionally very small and only one storey high and detached.', '2022-08-26 10:43:11', '2022-08-26 10:43:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_type_id` (`property_type_id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
