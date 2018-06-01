-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2017 at 02:44 AM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loopna_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = verified, 2 = void',
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', 'Uncategorized', '2017-08-30 14:36:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(2) NOT NULL,
  `description` text COMMENT 'content & description',
  `area_code` varchar(3) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `zip_code` text NOT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL COMMENT 'Latitude',
  `lng` varchar(255) DEFAULT NULL COMMENT 'Longitude',
  `slug` varchar(255) DEFAULT NULL,
  `is_popular` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text,
  `label` varchar(64) DEFAULT NULL,
  `input_type` varchar(32) DEFAULT 'text' COMMENT 'text, textarea',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `key`, `value`, `label`, `input_type`, `description`) VALUES
(1, 'site_name', 'Loopna', 'Site Name', 'text', 'Website Name'),
(2, 'site_title', 'Hotels and Flights Online Booking | Loopna', 'Title', 'text', 'Site Title'),
(3, 'meta_title', 'Hotels and Flights Online Booking | Loopna', 'Meta Title', 'text', 'Meta Title'),
(4, 'meta_keyword', 'book a flight, book a hotel, rent a car, online hotel and flight bookinh deals', 'Meta Keywords', 'text', 'Meta Keywords'),
(5, 'meta_description', 'For online flight, hotel booking and car rental services, you\'re on the right page. Search for the best deals, buy your flight tickets, cheap hotel accommodations and best car rental deals online anytime, anywhere!', 'Meta Description', 'textarea', 'Meta Description'),
(6, 'tag_line', 'Search and get the best travel deals, buy your flight tickets and book hotel accommodations online anytime, anywhere!', 'Tagline', 'text', 'Tagline'),
(7, 'facebook_link', 'https://www.facebook.com/LoopnaOfficial', 'Facebook Link', 'text', 'Social Facebook Profile URL'),
(8, 'twitter_link', 'https://twitter.com/LoopnaOfficial', 'Twitter Link', 'text', 'Social Twitter Profile URL'),
(9, 'googleplus_link', 'https://plus.google.com/b/113050884334288624436/113050884334288624436', 'Google Plus Link', 'text', 'Social Google Plus Profile URL'),
(10, 'instagram_link', 'https://www.instagram.com/loopnaofficial/', 'Instagram Link', 'text', 'Social Instagram Profile URL'),
(11, 'youtube_link', 'https://www.youtube.com/channel/UCbcR6ud2q3Zjq-XwC2kwgUQ', 'Youtube Channel Link', 'text', 'Social Youtube Channel URL'),
(12, 'dailymotion_link', '#', 'Dailymotion Link', 'text', 'Social Dailymotion Profile URL'),
(13, 'linkedin_link', 'https://www.linkedin.com/company/13466234/', 'LinkedIn Link', 'text', 'Social LinkedIn Profile URL'),
(14, 'pinterest_link', 'https://www.pinterest.com/LoopnaOfficial/', 'Pinterest Link', 'text', 'Social Pinterest Profile URL'),
(15, 'digg_link', 'https://digg.com/u/LoopnaOfficial', 'Digg Link', 'text', 'Social Digg Profile URL'),
(16, 'reddit_link', 'https://www.reddit.com/user/LoopnaOfficial/', 'Reddit Link', 'text', 'Social Reddit Profile URL'),
(26, 'android_app', 'https://www.jetradar.com/android/?marker=152270', 'Android App', 'text', 'Google Play App Download Link'),
(27, 'ios_app', 'https://www.jetradar.com/ios/?marker=152270', 'iOS App', 'text', 'App Store App Download Link'),
(28, 'full_address', '3845 Holcomb Bridge Rd, Ste 100 Norcross, GA, 30092, USA', 'Full Address', 'text', 'Full Address'),
(29, 'phone_number', '(844) 286-2636', 'Phone Number', 'text', 'Phone Number'),
(30, 'admin_email', 'info@loopna.com', 'System Email', 'text', 'Admin Email'),
(31, 'ga_id', 'UA-109134701-1', 'Google Analytics ID', 'text', 'Google Analytics Provider ID'),
(32, 'smtp_user', 'meniagab@gmail.com', 'SMTP User', 'text', 'SMTP Mailer User'),
(33, 'smtp_password', 'aga@456321', 'SMTP Password', 'password', 'SMTP Mailer Password'),
(34, 'gmap_apikey', '', 'Google Maps API Key', 'text', 'Google Maps API Key'),
(35, 'gr_site_key', '6LcyCjcUAAAAAPIpRy-vyJfvOQW4GWO3fEH5vRB9', 'GR Site Key', 'text', 'Google Recaptcha Site key'),
(36, 'gr_secret_key', '6LcyCjcUAAAAAO6ySb8U3Cb_00tQsLiELEnhcQf9', 'GR Secret Key', 'text', 'Google Recaptcha Secret key');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `excerpt` text,
  `layout` varchar(50) DEFAULT NULL COMMENT 'post_type',
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `category` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL DEFAULT 'admin',
  `priority` int(1) NOT NULL DEFAULT '0' COMMENT 'PAGE ONLY!!! 0=default',
  `status` tinyint(4) DEFAULT '1' COMMENT '1=publish, 2=draft, 3=trash',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `excerpt`, `layout`, `meta_keyword`, `meta_description`, `category`, `tag`, `featured_image`, `author`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', '<p>We, at Loopna, commit ourselves to make sure that all of our users\' personal information will be stored and protected with total confidentiality. We do not share any details about our users to anyone without proper consent and we have a strong procedural safeguarding processes to ensure the safety of this important personal information under our care. Should you have concerns about our privacy policy, please contact our customer support.</p>\r\n<h3><span style=\"text-decoration: underline;\">Collection of Personal Information</span></h3>\r\n<p><strong>What information do we collect or track?</strong></p>\r\n<ol>\r\n<li>Website visitor&rsquo;s e-mail addresses, IP addresses, home server domain names, computer type, browser type.</li>\r\n<li>E-mail addresses of website visitors who made a communication with us via email or contact form.</li>\r\n<li>Online form information that are provided by visitors such as name, addresses, e-mail and other personal data to be used to process an order or a purchase.</li>\r\n<li>User page views and other online activities information are also aggregated.</li>\r\n<li>Other information gathered through forums and weblogs.</li>\r\n</ol>\r\n<p>Any of our website visitors can choose not to provide personal information with us but some personal information will be required to make full use of our website products or services such as completing a traveller profile, process and order, or initiate any transactions on our website that require personal information. You may refer to other website users before you provide any personal information and travel preferences.</p>\r\n<p><strong>Cookies</strong></p>\r\n<p>These cookies are text files that are being saved on the user\'s computer when they visit Loopna website. We use these session cookies but can be deleted when you close your browser provided that you properly set your settings. Our primary purpose is always to provide our website users the best and comfortable user experience. You can remove the use of these cookies by blocking the installation on your browser but it still depends on the browser being used.</p>\r\n<p><strong>Visitor Information</strong></p>\r\n<p>We may also save information from website visitors that perform a search within the website. We record these information that identifies the visitor to the search that has been performed.</p>\r\n<p>By visiting our website and using our offered products or services, you are thereby, consenting the collection of all these information that you provide for use according to this Policy, unless otherwise is stated.&nbsp;&nbsp;</p>\r\n<h3><span style=\"text-decoration: underline;\">Purpose of Data Collection</span></h3>\r\n<p><strong>How do we use these information collected?</strong></p>\r\n<p>We use the personal information we collect for the following purposes:</p>\r\n<ul>\r\n<li>To communicate with your regarding your account and information about the website.</li>\r\n<li>To provide you immediate customer service assistance.</li>\r\n<li>To build more improved level of services.</li>\r\n<li>To provide updated details about our services.</li>\r\n<li>To support website operation, troubleshooting problems, dispute resolution, etc.&nbsp;</li>\r\n</ul>\r\n<h3><span style=\"text-decoration: underline;\">Data Transfer</span></h3>\r\n<p><strong>Disclosure of Data to Third Parties</strong></p>\r\n<p>Transfer of personal information to relevant authorities or courts will take place in cases of:</p>\r\n<ul>\r\n<li>Administrative order that is required by the law where disclosure is necessary.</li>\r\n<li>Prevention of illegal activities, protection of the rights of the website or website\'s users.</li>\r\n<li>Merger consolidations or sale of assets.</li>\r\n</ul>', 'We, at Loopna, commit ourselves to make sure that all of our users\' personal information will be stored and protected with total confidentiality.', 'page', 'Loopna, Travel', 'Our privacy policy contains user\'s personal information protection, data collection purposes and authorized data transfer.', NULL, NULL, NULL, 'admin', 0, 1, '2017-07-20 00:00:00', '2017-11-03 06:33:19'),
(3, 'Contact Us', 'contact-us', '<p>Contact us for any of your concerns; we accept your comments, recommendations, and suggestions regarding the services we provide here at Loopna.</p>', 'Contact us for any of your concerns; we accept your comments, recommendations, and suggestions regarding the services we provide here at Loopna.', 'page', 'Loopna, Travel, Tips', 'Contact us now to learn more about the products and services we offer.', NULL, NULL, NULL, 'admin', 0, 1, '2017-08-04 05:14:32', '2017-11-03 06:35:14'),
(54, 'About Us', 'about-us', '<p>Loopna aims to provide one-stop-shop for travelers who would like to quickly search for the best deals on flight, hotels and car rental services. We know how it is hard to find deals using multiple sites and portals that is why we are here to provide you great vacation starting from booking your flight, finding the best hotel deals and getting a car that you can rent to drive around.</p>\r\n<p>Easy planning starts from picking the best flight schedule that will fit your planned activities and itineraries. We list all possible flights from your location to your destination along with the best hotels deals for your comfortable stay. Furthermore, we also partnered with car rental providers to give you the best car that will suit your needs and budget.</p>\r\n<p>We do our best to make sure that we pick the best partners in the industry and they are carefully vetted to be the most reliable in the travel booking industries. We also do our best to make our booking system superior to provide you the best travel experience, where ever you are and where ever you will go.</p>', 'Loopna aims to provide one-stop-shop for travelers who would like to quickly search for the best deals on flight, hotels and car rental services.', 'page', 'about loopna flight and hotel booking services', 'Loopna aims to provide the cheapest flights, hotel bookings and car rental services online, anytime and anywhere.', NULL, NULL, NULL, 'admin', 0, 1, '2017-10-27 07:05:41', '2017-11-03 06:29:37'),
(55, 'Terms and Conditions', 'terms-and-conditions', '<p><strong>Acceptance</strong></p>\r\n<p>These Terms and Conditions (&ldquo;Terms&rdquo;) govern the access or use of user (an individual or group of individuals) to online flight, hotel, car rental, and other booking services (the &ldquo;Services&rdquo;) of Loopna.com, with an office at 3845 Holcomb Bridge Rd, Ste 100 Norcross GA USA 30092 (&ldquo;Loopna&rdquo;) and a website at www.loopna.com.</p>\r\n<p>The Loopna\'s Terms &amp; Conditions described below incorporate the Privacy Policy and apply to all users of the services.</p>\r\n<p>By using LOOPNA&rsquo;s Services, User agrees to the below-mentioned terms and conditions.</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>User will be &ldquo;Eligible&rdquo; to use the Services only when user fulfills all of the following conditions:</p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>User has attained at least 18 (eighteen) years of age.</li>\r\n<li>User is competent to enter into a contract under the Applicable Laws.</li>\r\n<li>If user resides in a jurisdiction that restricts the use of the Service because of age, or restricts the ability to enter into contracts such as this User Terms due to age, user must abide by such age limits.</li>\r\n</ol>\r\n<p>User also represents, acknowledges and agrees that:</p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>&nbsp;All information that user submits is true and accurate;</li>\r\n<li>&nbsp;User will maintain the accuracy of such information, and</li>\r\n<li>User&rsquo;s use of the website and Services offered through this website do not violate any applicable law or regulation.</li>\r\n</ol>\r\n<p><strong>Use of Service</strong></p>\r\n<p>Loopna is not a travel agent/agency and is not responsible for providing any travel options displayed via the website. Lookna is a search engine that helps the user to find travel services and to make the necessary booking and reservations, and acts as an interface in the transactions involved.</p>\r\n<p>You may only use the Services in compliance with applicable laws and for legitimate purposes. Any use of the Services that is fraudulent or is in conflict with these General Terms and Conditions shall be reason for refusing the access to the Service or to the other functionalities of the Services and Loopna.com.</p>\r\n<p><strong>Restrictions</strong></p>\r\n<p>Unless otherwise stated, Loopna.com and/or its licensors, partners, and affiliates own the intellectual property rights in the website and materials on the website. You may not use these materials in any ways or cost without the Loopna\'s written consent.</p>\r\n<p>You must not use this website in any way:</p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>To copy, store, host, transmit, send, use, publish or distribute any material which consists or is linked to any computer virus that is not limited to Trojan horse, worm, keylogger, rootkit or other malicious software;</li>\r\n<li>To conduct any systematic or automated data collection activities on or in relation to this website;</li>\r\n<li>That it can cause, or may cause, damage to the website or impairment of the availability or accessibility of the website;</li>\r\n<li>Which is unlawful, illegal, fraudulent or harmful to the website;</li>\r\n<li>To transmit or send unsolicited communications (commercially or not);</li>\r\n<li>For any purposes related to marketing of various and the same services which are offered by Loopna.</li>\r\n</ol>\r\n<p>Access to certain areas of this website is restricted to users. You may not try to hack to gain access to those areas that are restricted to users. Loopna reserves the right, in its sole discretion, to terminate User&rsquo;s access to Loopna&rsquo;s services and the related services or any portion thereof at any time, without notice.</p>\r\n<p><strong>Limitations of Liability</strong></p>\r\n<p>Loopna.com will not be liable to you:</p>\r\n<ol style=\"list-style-type: lower-roman;\">\r\n<li>For any direct loss;</li>\r\n<li>For any indirect, special or consequential loss;</li>\r\n<li>For any business losses including but not limited to loss of income, revenue, profits or anticipated savings, contracts or other business relationships, reputation or goodwill, personal or business information or data;</li>\r\n<li>For any loss arising from death or personal injury;</li>\r\n<li>For damages or losses that may occur from travel to such destinations.</li>\r\n</ol>\r\n<p><strong>About These terms</strong></p>\r\n<p>User agrees that this Terms and Conditions constitute the entire, complete and exclusive agreement between User and Loopna. Loopna reserves the right to alter, amend, modify or terminate these terms or any additional terms that apply to a Service with or without cause. If User does not agree to the Terms and Conditions of Loopna, User should discontinue the use of that Service.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Last Updated&nbsp;</strong>: November 3, 2017</p>', 'These Terms and Conditions (“Terms”) govern the access or use of user (an individual or group of individuals) to online flight, hotel, car rental, and other booking services (the “Services”) of Loopna.com, with an office at 3845 Holcomb Bridge Rd, Ste 100 Norcross GA USA 30092 (“Loopna”) and a websi', 'page', 'Loopna, Terms, Conditions, Scope', 'This page contains our terms and conditions for the website users.', NULL, NULL, NULL, 'admin', 0, 1, '2017-10-27 07:06:13', '2017-11-03 06:34:45'),
(60, 'How to Get the Best Online Flight Booking Deals', 'how-to-get-the-best-online-flight-booking-deals', '<p>While it&rsquo;s easy to look for airlines and book flights with the power of the internet, it can still quite a hassle to look for cheap flights that can leave us frustrated when seeing the huge prices that airlines offer for just a one way ticket. And as far as saving money when traveling, we want to make sure that we book the cheapest flight available.</p>\r\n<p>Fortunately, there are some ways on how to get cheap tickets online without the hassle of countless search engines and the endless clicks. With these, you&rsquo;ll learn ways on getting flights that can save you time and money.</p>\r\n<p><strong>Book In Advance</strong></p>\r\n<p>Booking a few months before your trip costs cheaper. Prices tend to drop below average but can increase until the day of the flight. Some airlines offer promos and discounts from months to a year before the actual day of the flight.</p>\r\n<p><strong>Book Early in the Morning</strong></p>\r\n<p>It&rsquo;s the best time to book because you&rsquo;ll find great deals early in the morning. You&rsquo;ll find even greater deals as people who are also trying to look for cheap flights are still asleep.</p>\r\n<p><strong>Clear Your Browser or Go Private Mode</strong></p>\r\n<p>You probably never heard of this, but cookies and cache from your web browser which track your activities when searching for a flight. Prices keep on increasing if you repeatedly search for a specific flight. So before you pay for that flight, clear your web browser&rsquo;s cookies and cache or change your browser into incognito mode or private mode.</p>\r\n<p><strong>Book Flights that are Scheduled Early Morning or Late Evenings</strong></p>\r\n<p>Flights at these times are cheaper than those that are scheduled day times. Even though it takes a lot of effort to wake up early or no sleep at all, it&rsquo;s still better to save money.</p>\r\n<p><strong>Social Media</strong></p>\r\n<p>Follow airlines on Twitter, Facebook, Instagram, or subscribe for their newsletter. Be the first to know about promos and sales. You could anticipates these sales or if there&rsquo;s an ongoing, go ahead and grab it. Just be aware that you&rsquo;re not the only one looking for cheap flights. Seats with promos can run out quickly.</p>\r\n<p><strong>Book with 2 Different Airlines</strong></p>\r\n<p>It&rsquo;s ok to mix and match flights because airlines today offer one-way flights at affordable and reasonable prices. You can save a lot more money if you book two different airlines for your going and returning flights.</p>\r\n<p><strong>Use Flight Search Engines</strong></p>\r\n<p>There are a lot of search engines that are useful in looking for flight deals such as Loopna.com. Though they are the not same in offering flight deals, it&rsquo;s still a good idea compare each of them about the flights you&rsquo;re looking for to find the best possible deal.</p>\r\n<p><strong>Fly During Weekdays</strong></p>\r\n<p>Think about the days people are most flying. Weekends can get expensive but flying during the weekdays, most especially tuesdays and wednesdays, are cheaper. Planes are not filled and a lot of vacant seats which means discounts. And if you considered taking a trip early morning or late evening, then more discount for you because less people.</p>', 'While it’s easy to look for airlines and book flights with the power of the internet, it can still quite a hassle to look for cheap flights that can leave us frustrated when seeing the huge prices that airlines offer for just a one way ticket.', 'post', 'Loopna, Travel, Tips', 'While it’s easy to look for airlines and book flights with the power of the internet, it can still quite a hassle to look for cheap flights that can leave us frustrated when seeing the huge prices that airlines offer for just a one way ticket.', 'a:1:{i:0;s:13:\"Uncategorized\";}', 'Loopn,Travel,Tips', NULL, 'admin', 0, 1, '2017-11-02 07:25:04', NULL),
(61, 'Tips to Remember When Booking for a Hotel', 'tips-to-remember-when-booking-for-a-hotel', '<p>We all know how much overwhelming it can be when trying to book for a hotel. And let&rsquo;s face it, hotels are not cheap and sometimes they can be overpriced. Sometimes, it&rsquo;s the hotel that took almost all of our funds when traveling. Even though we need a place to stay, we have no choice but to stay and pay for these hotels.</p>\r\n<p>It&rsquo;s easy to find hotels in the internet and they are limitless. But their prices also are sky high that will leave you dumbstruck. But this shouldn&rsquo;t discourage you for your next trip because there are tips that can help you in booking hotels the cheap way.</p>\r\n<p><strong>Booking Websites and Apps</strong></p>\r\n<p>There are several third party websites and apps that lets you compare prices from different hotels. Each hotel they present has all the complete information you need including cut prices courtesy from 3rd party websites and apps. And if you sign up for an account, you&rsquo;ll receive the benefits of greater discounted rates and great deals from their loyalty programs.</p>\r\n<p><strong>Book When the Day is Almost Over</strong></p>\r\n<p>After all the guests were accommodated, management can look for better rooms with better prices than the rooms you saw on the internet. You&rsquo;ll also have a better chance of getting a free upgrade.</p>\r\n<p><strong>Hotel Loyalty Programs</strong></p>\r\n<p>For being a loyal customer, you&rsquo;ll be provided with perks, deals, and offers if you stay loyal with your hotel. You could earn points and enjoy the benefits you can get that hotels are willing to offer such as getting discounts or even free stays.</p>\r\n<p><strong>Making the Best of Your Credit Card</strong></p>\r\n<p>It&rsquo;s such an amazing thing that you can get a discount or even a free night from just a little card. Some credit card companies have exclusive deals, perks, and rewards that you could use for a stay in a hotel with great deals.</p>\r\n<p><strong>Membership Programs</strong></p>\r\n<p>If you are a member of AAA, ADP, ABA, AARP, military, you could get special discounts and vouchers not just only for hotels, but also activities and packages. Not to mention if you&rsquo;re handicapped or a senior citizen.</p>\r\n<p><strong>Having a Bad Experience?</strong></p>\r\n<p>Hotels want to ensure that your stay is utmost satisfaction. If you&rsquo;re having a problem with your room like noisy neighbors, vermin in your room, rude staff, or any issues that ruin the experience, report it immediately at the front desk. You&rsquo;ll have a chance of upgrading your room for free, free dinner, or a credit to your account.</p>\r\n<p><strong>Call the Hotel</strong></p>\r\n<p>Don&rsquo;t book directly from a hotel&rsquo;s website but instead, search for the hotel&rsquo;s prices on third party or booking websites as the prices are surely on a discount. But don&rsquo;t book yet. Call the hotel directly and mention the prices you saw from these websites and ask them if they can provide you a better deal. Sometimes, holidays and events such as concerts or conferences can affect the prices which can get expensive. That is why calling the hotel will let you know if there are certain reasons why the rates are high.</p>', 'We all know how much overwhelming it can be when trying to book for a hotel. And let’s face it, hotels are not cheap and sometimes they can be overpriced.', 'post', 'Loopna, Travel, Tips', 'We all know how much overwhelming it can be when trying to book for a hotel. And let’s face it, hotels are not cheap and sometimes they can be overpriced.', 'a:1:{i:0;s:13:\"Uncategorized\";}', 'Loopna,Travel,Tips', NULL, 'admin', 0, 1, '2017-11-02 07:28:51', NULL),
(62, 'How to Get the Best and Cheapest Vacation', 'how-to-get-the-best-and-cheapest-vacation', '<p>Have you been working so hard and so long for a paycheck that you haven&rsquo;t been able to give yourself a vacation? Not enough money for a few days off? Just like anybody else working their asses off for a greener pasture, you definitely deserve a break once in awhile! But if you&rsquo;re short of money for travel, you can always cut some portion of your daily expenses to save for a travel fund.</p>\r\n<p>Following some money-saving tips below might just help you in saving for your well-deserved travel/vacation.</p>\r\n<h3>How to Get Online Flight Booking Deals</h3>\r\n<p>Flights play a big role in your travel adventures, so while you already have the best ideas on how to save for your next travel, it is important as well to do the best ways in order to get the best flight booking deals.</p>\r\n<p>It is undeniable that flights in general, are expensive and it is due to the fact that a lot of airlines just can not reduce the fares as much as they would want to. Most of these airline companies are under the pressure of making a profit and there are far more reasons why their flight tickets won\'t get any cheaper! But you can always find a way on your own.&nbsp;</p>\r\n<ol>\r\n<li><strong><strong>Start searching flight tickets as early as possible</strong></strong>\r\n<p>Know your destination and start searching for deals on a weekly basis as Airlines release tickets a few months in advance. Last minute flights might not always mean you can get the best deals as they are not guaranteed. Your must know your price and be ready to book a flight that you are comfortable spending on. Flight prices are real-time and constantly fluctuates so it is best to determine your destination and spending budget right before searching for a flight.</p>\r\n</li>\r\n<li><strong><strong>Determine the best time to book a flight</strong></strong>\r\n<p>It is really hard to tell when is the best time to buy tickets or book flights but there are some tips that you can try to follow. Be aware that peak season and weekends means higher rates as these times have the most demand. Try to book between 3-7 weeks in advance for domestic flights and 11-12 weeks for international flights. &nbsp;If you have flexible travel dates, you have a bigger chance of getting a good deal while it is harder to get one when you have exact dates for your travel.</p>\r\n</li>\r\n<li><strong><strong>Consider adjusting the time of your flight</strong></strong>\r\n<p>You have a good chance of getting the best deal if you try adjusting the time of day of your travel such as early in the morning and late night hours.</p>\r\n</li>\r\n<li><strong><strong>Compare one way and round trip tickets</strong></strong>\r\n<p>Sometimes, round trip tickets are cheaper than a one way flight. So be sure to check the prices of both options and save some greenbacks.</p>\r\n</li>\r\n<li><strong>Determining the best payment method where you can save some good money</strong><br />\r\n<p>Some domestic flights charge fees on tickets when the payment method used is a credit card so you need to be watchful of those fees before availing.</p>\r\n</li>\r\n<li><strong>Subscribe to a mailing list.</strong><br />\r\n<p>If you want to get updated with the latest special deals, you need to join a mailing list from airlines and search engines. Cheap flights do not last too long, so you\'ll be saving a good amount of time when you receive instant email about a special deal.</p>\r\n</li>\r\n</ol>\r\n<h3>How to Find the Best Place to Travel</h3>\r\n<p>Whether or not you are a first-time traveller, here are some tips on how to find the best travel destination for you.</p>\r\n<ol>\r\n<li><strong>Determine your preferred type of vacation</strong><br />\r\n<p>Whether it is the beaches, nature or the culture you want to experience, it is important to consider your best preference. &nbsp;There are different counties with different attractions to &nbsp;boast about. Finalize your liking and start searching for the best out of town or out of the country destination.</p>\r\n</li>\r\n<li><strong>Look into travel websites or agencies</strong><br />\r\n<p>Use the best travel websites that feature fresh travel guides in different destinations. Identify how much would it cost to visit your chosen town or country to properly allot a budget.</p>\r\n</li>\r\n<li><strong>Find the Best Hotel on Your Chosen Destination</strong><br />\r\n<p>Booking a hotel accommodation is one of the most important factors to consider when planning a vacation. The place you\'re going to stay into for a few days should get the best value for your money without having to spend too much. Consider your budget, destination, comfort levels, interest and number of companions when choosing a hotel.</p>\r\n</li>\r\n</ol>\r\n<p>With all of these tips in mind, you can surely find the best vacation you&rsquo;ve been longing to have. With the use of a flight agency, everything can be made easier from booking a flight and a hotel to finally taking the vacation itself.</p>', 'Have you been working so hard and so long for a paycheck that you haven’t been able to give yourself a vacation? Not enough money for a few days off? Just like anybody else working their asses off for a greener pasture, you definitely deserve a break once in awhile!', 'post', 'Loopna, Travel, Tips', 'Have you been working so hard and so long for a paycheck that you haven’t been able to give yourself a vacation? Not enough money for a few days off?', 'a:1:{i:0;s:13:\"Uncategorized\";}', 'Loopna,Travel,Tips', NULL, 'admin', 0, 1, '2017-11-02 07:53:24', '2017-11-02 07:54:31'),
(63, 'Watch Movies While On Travel', 'watch-movies-while-on-travel', '<div class=\"embed-responsive embed-responsive-16by9\"><iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/vV_F2JTG4HI\" width=\"100%\" height=\"150\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>Watch movies while on travel. Our recommendation.</p>', 'Watch movies while on travel.', 'page', 'Watch movies while on travel.', 'Watch movies while on travel.', NULL, NULL, NULL, 'admin', 0, 1, '2017-12-11 05:27:55', '2017-12-12 00:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `abbrev` varchar(50) NOT NULL,
  `description` text,
  `slug` varchar(50) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'info@loopna.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'super_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8415;
--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
