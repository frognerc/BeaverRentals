-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2015 at 08:50 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apttestdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `aptdata`
--

CREATE TABLE IF NOT EXISTS `aptdata` (
  `Name` char(100) NOT NULL DEFAULT '',
  `Address` varchar(100) DEFAULT NULL,
  `Website` char(200) NOT NULL,
  `Deposit` float NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Pets` varchar(5) DEFAULT NULL,
  `Furniture` varchar(5) DEFAULT NULL,
  `Smoking` varchar(5) DEFAULT NULL,
  `Electricity` varchar(5) DEFAULT NULL,
  `Garbage` varchar(5) DEFAULT NULL,
  `Washer` varchar(5) DEFAULT NULL,
  `Parking` varchar(5) DEFAULT NULL,
  `Pool` varchar(5) DEFAULT NULL,
  `Water` varchar(5) DEFAULT NULL,
  `Bike` varchar(5) NOT NULL,
  `AptID` int(100) DEFAULT NULL,
  `Landlord` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aptdata`
--

INSERT INTO `aptdata` (`Name`, `Address`, `Website`, `Deposit`, `Phone`, `Pets`, `Furniture`, `Smoking`, `Electricity`, `Garbage`, `Washer`, `Parking`, `Pool`, `Water`, `Bike`, `AptID`, `Landlord`) VALUES
('7th Street Station', '701 SW 7th Street', 'http://7thststation.com/', 200, '541-286-4945', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 0, 'Mike Todd'),
('Conifer Place Apartments', '201 NE Conifer Blvd', '', 230, '844-715-2432', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 19, 'Mike Todd'),
('Corvallis Plaza', '145 NW 16th Street', '', 550, '541-758-3392', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 1, 'Mike Todd'),
('Court of Kings Apartments', '1230 NW Kings Blvd', '', 350, '544-763-6289', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 17, 'Mike Todd'),
('Creekside Apartments', '1613 SW 49th Street', 'http://www.creeksideor.com/', 300, '866-608-1479', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 6, ''),
('Fillmore Inn Studio Apartments', '760 NW 21st Street', 'http://www.fillmoreinn.com/', 300, '547-754-0040', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 12, ''),
('Grand Oaks Apartment Homes', '6300 SW Grand Oaks Dr', 'http://www.grandoakscommunity.com/', 250, '541-460-5522', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 11, ''),
('Greekside Apartments', '2510 NW Van Buren Avenue', '', 350, '431-451-3209', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 2, ''),
('Mountain View Apartments', '900 SE Centerpointe Dr', '', 200, '541-368-7532', 'yes', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 13, ''),
('North Pointe Apartments', '2675 NE Lancaster St.', 'http://northpointevideo.com/', 250, '877-279-3551', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 10, ''),
('Oak Vale Apartments', '3930 NW Witham Hill Drive', 'http://www.oak-vale.com/', 450, '566-610-5784', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 8, ''),
('Parkwest Apartments', '975 SW 15th Street', 'http://www.parkwest-apts.com/', 300, '541-758-5323', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 3, ''),
('Six Pack Apartments', '801 NW 27th Street', '', 500, '503-777-9060', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 4, ''),
('Spring Creek Apartments', '1613 SW 49th Street', 'http://www.springcreekor.com/', 300, '866-577-8513', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 7, ''),
('The "707"', '707 SW 10th St', '', 200, '503-308-4498', 'yes', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 15, ''),
('The Riviera', '825 NW 23rd Ave', '', 240, '544-245-6351', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 16, ''),
('Timberhill Meadows Apartments', '2600 NW Century Dr', 'http://www.timberhillmeadowsapts.com/', 150, '866-972-0893', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 14, ''),
('Tyler Townhomes', '2860 NW Polk Avenue', 'http://www.tyler-townhomes.com/', 500, '541-223-2488', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 5, ''),
('Villa Chateau', '935 NW Hobart Ave', '', 275, '844-838-9037', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 18, ''),
('Witham Hill Oaks Apartments', '3930 NW Witham Hill Drive', 'http://www.withamhilloaks.com/', 300, '866-934-9865', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `aptimages`
--

CREATE TABLE IF NOT EXISTS `aptimages` (
  `Name` char(100) NOT NULL,
  `ImagePath` char(100) NOT NULL,
  UNIQUE KEY `tableKey` (`Name`,`ImagePath`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aptimages`
--

INSERT INTO `aptimages` (`Name`, `ImagePath`) VALUES
('7th Street Station', '15.jpg'),
('7th Street Station', '6.jpg'),
('7th Street Station', '7.jpg'),
('7th Street Station', '7thStreet0.jpg'),
('7th Street Station', '7thStreet1.jpg'),
('7th Street Station', '8.jpg'),
('Conifer Place Apartments', '11.jpg'),
('Conifer Place Apartments', '14.jpg'),
('Conifer Place Apartments', '2.jpg'),
('Conifer Place Apartments', '5.jpg'),
('Conifer Place Apartments', '8.jpg'),
('Corvallis Plaza', '1.jpg'),
('Corvallis Plaza', '10.jpg'),
('Corvallis Plaza', '15.jpg'),
('Corvallis Plaza', '18.jpg'),
('Corvallis Plaza', '2.jpg'),
('Court of Kings Apartments', '12.jpg'),
('Court of Kings Apartments', '3.jpg'),
('Court of Kings Apartments', '5.jpg'),
('Court of Kings Apartments', '7.jpg'),
('Court of Kings Apartments', '8.jpg'),
('Creekside Apartments', '15.jpg'),
('Creekside Apartments', '16.jpg'),
('Creekside Apartments', '17.jpg'),
('Creekside Apartments', '19.jpg'),
('Creekside Apartments', '4.jpg'),
('Fillmore Inn Studio Apartments', '10.jpg'),
('Fillmore Inn Studio Apartments', '13.jpg'),
('Fillmore Inn Studio Apartments', '15.jpg'),
('Fillmore Inn Studio Apartments', '18.jpg'),
('Fillmore Inn Studio Apartments', '7.jpg'),
('Grand Oaks Apartment Homes', '11.jpg'),
('Grand Oaks Apartment Homes', '12.jpg'),
('Grand Oaks Apartment Homes', '16.jpg'),
('Grand Oaks Apartment Homes', '3.jpg'),
('Grand Oaks Apartment Homes', '8.jpg'),
('Greekside Apartments', '1.jpg'),
('Greekside Apartments', '10.jpg'),
('Greekside Apartments', '14.jpg'),
('Greekside Apartments', '15.jpg'),
('Greekside Apartments', '7.jpg'),
('Mountain View Apartments', '0.jpg'),
('Mountain View Apartments', '12.jpg'),
('Mountain View Apartments', '19.jpg'),
('Mountain View Apartments', '2.jpg'),
('Mountain View Apartments', '3.jpg'),
('North Pointe Apartments', '12.jpg'),
('North Pointe Apartments', '19.jpg'),
('North Pointe Apartments', '3.jpg'),
('North Pointe Apartments', '5.jpg'),
('Oak Vale Apartments', '1.jpg'),
('Oak Vale Apartments', '13.jpg'),
('Oak Vale Apartments', '19.jpg'),
('Oak Vale Apartments', '4.jpg'),
('Oak Vale Apartments', '5.jpg'),
('Parkwest Apartments', '1.jpg'),
('Parkwest Apartments', '13.jpg'),
('Parkwest Apartments', '16.jpg'),
('Parkwest Apartments', '4.jpg'),
('Parkwest Apartments', '8.jpg'),
('Six Pack Apartments', '13.jpg'),
('Six Pack Apartments', '18.jpg'),
('Six Pack Apartments', '2.jpg'),
('Six Pack Apartments', '6.jpg'),
('Six Pack Apartments', '7.jpg'),
('Spring Creek Apartments', '11.jpg'),
('Spring Creek Apartments', '17.jpg'),
('Spring Creek Apartments', '3.jpg'),
('Spring Creek Apartments', '7.jpg'),
('The "707"', '10.jpg'),
('The "707"', '13.jpg'),
('The "707"', '14.jpg'),
('The "707"', '17.jpg'),
('The "707"', '7.jpg'),
('The Riviera', '0.jpg'),
('The Riviera', '11.jpg'),
('The Riviera', '13.jpg'),
('The Riviera', '14.jpg'),
('The Riviera', '6.jpg'),
('Timberhill Meadows Apartments', '0.jpg'),
('Timberhill Meadows Apartments', '17.jpg'),
('Timberhill Meadows Apartments', '8.jpg'),
('Timberhill Meadows Apartments', '9.jpg'),
('Tyler Townhomes', '1.jpg'),
('Tyler Townhomes', '12.jpg'),
('Tyler Townhomes', '13.jpg'),
('Tyler Townhomes', '3.jpg'),
('Tyler Townhomes', '4.jpg'),
('Villa Chateau', '11.jpg'),
('Villa Chateau', '5.jpg'),
('Villa Chateau', '7.jpg'),
('Villa Chateau', '8.jpg'),
('Witham Hill Oaks Apartments', '12.jpg'),
('Witham Hill Oaks Apartments', '19.jpg'),
('Witham Hill Oaks Apartments', '2.jpg'),
('Witham Hill Oaks Apartments', '3.jpg'),
('Witham Hill Oaks Apartments', '9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rent_data`
--

CREATE TABLE IF NOT EXISTS `rent_data` (
  `Name` varchar(100) DEFAULT NULL,
  `Bedrooms` int(11) DEFAULT NULL,
  `Bathrooms` int(11) DEFAULT NULL,
  `Rent` float NOT NULL,
  UNIQUE KEY `ucCodes` (`Name`,`Bedrooms`,`Bathrooms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_data`
--

INSERT INTO `rent_data` (`Name`, `Bedrooms`, `Bathrooms`, `Rent`) VALUES
('Conifer Place Apartments', 2, 5, 688),
('Conifer Place Apartments', 3, 1, 687),
('Conifer Place Apartments', 4, 5, 613),
('Corvallis Plaza', 4, 1, 506),
('Corvallis Plaza', 3, 1, 547),
('Corvallis Plaza', 1, 2, 940),
('Corvallis Plaza', 3, 4, 811),
('Corvallis Plaza', 5, 4, 845),
('Court of Kings Apartments', 5, 2, 750),
('Court of Kings Apartments', 4, 5, 766),
('Court of Kings Apartments', 5, 5, 739),
('Court of Kings Apartments', 1, 2, 781),
('Creekside Apartments', 2, 3, 873),
('Creekside Apartments', 2, 4, 915),
('Creekside Apartments', 5, 2, 844),
('Creekside Apartments', 1, 5, 586),
('Creekside Apartments', 5, 5, 736),
('Fillmore Inn Studio Apartments', 3, 4, 668),
('Fillmore Inn Studio Apartments', 5, 2, 501),
('Fillmore Inn Studio Apartments', 1, 2, 781),
('Grand Oaks Apartment Homes', 3, 5, 939),
('Grand Oaks Apartment Homes', 1, 2, 577),
('Grand Oaks Apartment Homes', 3, 1, 697),
('Grand Oaks Apartment Homes', 2, 2, 509),
('Grand Oaks Apartment Homes', 1, 4, 577),
('Greekside Apartments', 3, 5, 544),
('Greekside Apartments', 2, 1, 873),
('Greekside Apartments', 2, 5, 961),
('Greekside Apartments', 1, 2, 940),
('Mountain View Apartments', 5, 3, 950),
('Mountain View Apartments', 1, 5, 759),
('Mountain View Apartments', 2, 1, 966),
('North Pointe Apartments', 1, 5, 918),
('North Pointe Apartments', 3, 3, 642),
('North Pointe Apartments', 4, 3, 751),
('Oak Vale Apartments', 4, 4, 892),
('Oak Vale Apartments', 4, 2, 850),
('Oak Vale Apartments', 1, 1, 652),
('Parkwest Apartments', 2, 3, 769),
('Parkwest Apartments', 1, 1, 987),
('Parkwest Apartments', 3, 1, 821),
('Parkwest Apartments', 3, 2, 829),
('Parkwest Apartments', 4, 3, 646),
('Six Pack Apartments', 4, 4, 728),
('Six Pack Apartments', 2, 1, 769),
('Spring Creek Apartments', 5, 2, 921),
('Spring Creek Apartments', 4, 3, 973),
('Spring Creek Apartments', 5, 4, 758),
('Spring Creek Apartments', 2, 3, 929),
('The "707"', 5, 1, 743),
('The "707"', 5, 2, 849),
('The "707"', 1, 5, 598),
('The "707"', 4, 4, 766),
('The "707"', 2, 5, 548),
('The Riviera', 4, 1, 593),
('The Riviera', 3, 4, 510),
('The Riviera', 4, 4, 646),
('Timberhill Meadows Apartments', 3, 2, 732),
('Timberhill Meadows Apartments', 4, 3, 945),
('Timberhill Meadows Apartments', 3, 5, 740),
('Tyler Townhomes', 2, 5, 628),
('Tyler Townhomes', 4, 2, 925),
('Tyler Townhomes', 5, 4, 525),
('Tyler Townhomes', 1, 5, 855),
('Tyler Townhomes', 1, 4, 684),
('Villa Chateau', 2, 1, 991),
('Villa Chateau', 5, 1, 708),
('Villa Chateau', 4, 5, 991),
('Villa Chateau', 4, 2, 874),
('Villa Chateau', 3, 3, 926),
('Witham Hill Oaks Apartments', 4, 5, 900),
('Witham Hill Oaks Apartments', 2, 4, 976),
('Witham Hill Oaks Apartments', 5, 5, 502),
('Spring Creek Apartments', 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `Name` char(100) NOT NULL,
  `Review` text NOT NULL,
  `User` char(50) NOT NULL,
  `Date` date NOT NULL,
  `DatePrint` char(30) NOT NULL,
  `Rating` char(1) NOT NULL,
  UNIQUE KEY `review_key` (`Name`,`User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Name`, `Review`, `User`, `Date`, `DatePrint`, `Rating`) VALUES
('7th Street Station', 'This place was pretty cool, but management could use some work. ', 'CoolGuy29', '2015-04-28', 'April 28, 2015', 'p'),
('7th Street Station', 'I liked it. ', 'evelenc', '2015-05-09', 'May 9, 2015', 'p'),
('7th Street Station', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-04-02', 'April 2, 2015', 'p'),
('7th Street Station', 'This place is alright, but be prepared to change management several times within a short period of time. Have fun!', 'NotFrognerc', '2015-04-11', 'April 11, 2015', 'p'),
('7th Street Station', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'yanz', '2015-04-13', 'April 13, 2015', 'n'),
('Conifer Place Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'evelenc', '2015-03-15', 'March 15, 2015', 'n'),
('Conifer Place Apartments', 'I liked this place.', 'frognerc', '2015-06-08', 'June 8, 2015', 'p'),
('Conifer Place Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'naiky', '2015-04-04', 'April 4, 2015', 'n'),
('Conifer Place Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-04-01', 'April 1, 2015', 'n'),
('Corvallis Plaza', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'evelenc', '2015-03-13', 'March 13, 2015', 'p'),
('Corvallis Plaza', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'frognerc', '2015-03-21', 'March 21, 2015', 'p'),
('Corvallis Plaza', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'naiky', '2015-04-12', 'April 12, 2015', 'n'),
('Corvallis Plaza', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-04-08', 'April 8, 2015', 'n'),
('Court of Kings Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'evelenc', '2015-04-24', 'April 24, 2015', 'n'),
('Court of Kings Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-05-08', 'May 8, 2015', 'n'),
('Court of Kings Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-04-06', 'April 6, 2015', 'p'),
('Court of Kings Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-04-21', 'April 21, 2015', 'p'),
('Creekside Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'evelenc', '2015-05-04', 'May 4, 2015', 'n'),
('Creekside Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-03-25', 'March 25, 2015', 'n'),
('Creekside Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'naiky', '2015-05-10', 'May 10, 2015', 'n'),
('Creekside Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-03-01', 'March 1, 2015', 'p'),
('Fillmore Inn Studio Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'evelenc', '2015-03-05', 'March 5, 2015', 'p'),
('Fillmore Inn Studio Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'frognerc', '2015-04-06', 'April 6, 2015', 'n'),
('Fillmore Inn Studio Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-03-27', 'March 27, 2015', 'p'),
('Fillmore Inn Studio Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'yanz', '2015-04-26', 'April 26, 2015', 'n'),
('Grand Oaks Apartment Homes', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'evelenc', '2015-03-29', 'March 29, 2015', 'n'),
('Grand Oaks Apartment Homes', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'frognerc', '2015-04-08', 'April 8, 2015', 'p'),
('Grand Oaks Apartment Homes', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'naiky', '2015-04-04', 'April 4, 2015', 'n'),
('Grand Oaks Apartment Homes', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-04-14', 'April 14, 2015', 'p'),
('Greekside Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'evelenc', '2015-04-18', 'April 18, 2015', 'n'),
('Greekside Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'frognerc', '2015-03-14', 'March 14, 2015', 'p'),
('Greekside Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-03-08', 'March 8, 2015', 'p'),
('Greekside Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-03-19', 'March 19, 2015', 'p'),
('Mountain View Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'evelenc', '2015-04-30', 'April 30, 2015', 'p'),
('Mountain View Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'frognerc', '2015-04-20', 'April 20, 2015', 'p'),
('Mountain View Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-04-01', 'April 1, 2015', 'p'),
('Mountain View Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-04-15', 'April 15, 2015', 'n'),
('North Pointe Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'evelenc', '2015-04-14', 'April 14, 2015', 'p'),
('North Pointe Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'frognerc', '2015-03-15', 'March 15, 2015', 'p'),
('North Pointe Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-05-08', 'May 8, 2015', 'p'),
('North Pointe Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-04-02', 'April 2, 2015', 'p'),
('Oak Vale Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'evelenc', '2015-05-11', 'May 11, 2015', 'p'),
('Oak Vale Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-03-25', 'March 25, 2015', 'n'),
('Oak Vale Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-04-28', 'April 28, 2015', 'p'),
('Oak Vale Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-05-08', 'May 8, 2015', 'n'),
('Parkwest Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'evelenc', '2015-04-09', 'April 9, 2015', 'n'),
('Parkwest Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-03-25', 'March 25, 2015', 'n'),
('Parkwest Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-03-29', 'March 29, 2015', 'p'),
('Parkwest Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-04-06', 'April 6, 2015', 'p'),
('Six Pack Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'evelenc', '2015-03-04', 'March 4, 2015', 'n'),
('Six Pack Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'frognerc', '2015-05-08', 'May 8, 2015', 'n'),
('Six Pack Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-04-04', 'April 4, 2015', 'p'),
('Six Pack Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-05-02', 'May 2, 2015', 'n'),
('Spring Creek Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'evelenc', '2015-03-16', 'March 16, 2015', 'p'),
('Spring Creek Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'frognerc', '2015-05-07', 'May 7, 2015', 'p'),
('Spring Creek Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-04-28', 'April 28, 2015', 'p'),
('Spring Creek Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'yanz', '2015-04-26', 'April 26, 2015', 'n'),
('The "707"', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'evelenc', '2015-03-05', 'March 5, 2015', 'p'),
('The "707"', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'frognerc', '2015-05-10', 'May 10, 2015', 'n'),
('The "707"', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'naiky', '2015-05-05', 'May 5, 2015', 'n'),
('The "707"', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-03-18', 'March 18, 2015', 'n'),
('The Riviera', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'evelenc', '2015-03-11', 'March 11, 2015', 'n'),
('The Riviera', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'frognerc', '2015-05-06', 'May 6, 2015', 'n'),
('The Riviera', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-05-02', 'May 2, 2015', 'p'),
('The Riviera', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'yanz', '2015-05-01', 'May 1, 2015', 'p'),
('Timberhill Meadows Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'evelenc', '2015-05-11', 'May 11, 2015', 'n'),
('Timberhill Meadows Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'frognerc', '2015-03-07', 'March 7, 2015', 'p');
INSERT INTO `reviews` (`Name`, `Review`, `User`, `Date`, `DatePrint`, `Rating`) VALUES
('Timberhill Meadows Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'naiky', '2015-03-31', 'March 31, 2015', 'n'),
('Timberhill Meadows Apartments', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'yanz', '2015-04-15', 'April 15, 2015', 'n'),
('Tyler Townhomes', 'The apartment was nice, but donâ€™t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I canâ€™t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter.', 'evelenc', '2015-04-28', 'April 28, 2015', 'n'),
('Tyler Townhomes', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-03-04', 'March 4, 2015', 'n'),
('Tyler Townhomes', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-03-10', 'March 10, 2015', 'p'),
('Tyler Townhomes', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'yanz', '2015-03-01', 'March 1, 2015', 'n'),
('Villa Chateau', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'evelenc', '2015-03-01', 'March 1, 2015', 'p'),
('Villa Chateau', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'frognerc', '2015-03-03', 'March 3, 2015', 'p'),
('Villa Chateau', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'naiky', '2015-03-20', 'March 20, 2015', 'p'),
('Villa Chateau', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'yanz', '2015-04-13', 'April 13, 2015', 'p'),
('Witham Hill Oaks Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'evelenc', '2015-04-12', 'April 12, 2015', 'p'),
('Witham Hill Oaks Apartments', 'This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but donâ€™t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, donâ€™t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the â€œfreeâ€ cable is actually just added into your rent. Iâ€™m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.', 'frognerc', '2015-03-02', 'March 2, 2015', 'n'),
('Witham Hill Oaks Apartments', 'The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.', 'naiky', '2015-03-14', 'March 14, 2015', 'p'),
('Witham Hill Oaks Apartments', 'This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.', 'yanz', '2015-03-20', 'March 20, 2015', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `FirstName` varchar(16) NOT NULL,
  `LastName` varchar(16) NOT NULL,
  `Bedrooms` int(11) DEFAULT NULL,
  `Bathrooms` int(11) DEFAULT NULL,
  `Rent` float NOT NULL,
  `type` varchar(30) NOT NULL,
  UNIQUE KEY `user_password` (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `FirstName`, `LastName`, `Bedrooms`, `Bathrooms`, `Rent`, `type`) VALUES
('evelenc', 'test', 'evelenc@onid.oregonstate.edu', 'Carol', 'Evelen', 2, 2, 800, 'student'),
('frognerc', 'frogs321', 'frognerc@onid.oregonstate.edu', 'Colin', 'Frogner', 1, 1, 800, 'student'),
('Mike Todd', 'Mike123', 'MikeTodd@apartmentsLandlord.com', 'Mike', 'Todd', NULL, NULL, 0, 'landlord'),
('naiky', 'password', 'naiky@onid.oregonstate.edu', 'Yash', 'Naik', 5, 3, 1000, 'student'),
('yanz', 'yanzman', 'yanz@onid.oregonstate.edu', 'Zhi', 'Yan', 3, 2, 700, 'student');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
