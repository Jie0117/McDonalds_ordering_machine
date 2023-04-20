-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-01-15 12:52:22
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `mc1218`
--

-- --------------------------------------------------------

--
-- 資料表結構 `additional`
--

CREATE TABLE `additional` (
  `additional_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `additional_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `additional_Price` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `customize` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `additional`
--

INSERT INTO `additional` (`additional_NO`, `additional_Name`, `additional_Price`, `image`, `customize`) VALUES
('addi01', '麥脆雞腿(原味)', 35, 'https://img.ltn.com.tw/Upload/news/600/2017/11/24/phpvT3fwL.jpg', 0),
('addi02', '麥脆雞腿(辣味)', 35, 'https://img.ltn.com.tw/Upload/news/600/2017/11/24/phpvT3fwL.jpg', 0),
('addi03', '麥脆雞翅(原味)', 25, 'https://pic.pimg.tw/drm88/1562650929-2203527139_wn.jpg', 0),
('addi04', '麥脆雞翅(辣味)', 25, 'https://pic.pimg.tw/drm88/1562650929-2203527139_wn.jpg', 0),
('addi05', '酥嫩雞翅(2塊)', 25, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/tender-chicken-wings-6pcs.jpg', 0),
('addi06', '勁辣香雞翅(2塊)', 25, 'https://img4.momoshop.com.tw/expertimg/0008/957/427/mobile/MDNYMMDD97.jpg', 0),
('addi07', '麥克雞塊(6塊)+薯條(小)', 52, 'https://jfsblog.com/wp-content/uploads/2021/06/1624434004-03c5b4d4d4590239940592564e5a2258.jpg', 0),
('addi08', 'OREO冰炫風+薯條(小)', 52, 'https://img4.momoshop.com.tw/expertimg/0008/957/419/mobile/MDNYMMDD38.jpg', 0),
('addi09', '薯條(中)', 22, 'https://cdn2.ettoday.net/images/857/d857962.jpg', 1),
('addi10', '薯條(大)', 35, 'https://cdn2.ettoday.net/images/857/d857962.jpg', 1),
('addi11', '清爽沙拉', 22, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/signature-spicy-fried-chicken-salad.jpg', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `add_pay`
--

CREATE TABLE `add_pay` (
  `pay_id` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `pay_name` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_520_ci NOT NULL,
  `customize` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 傾印資料表的資料 `add_pay`
--

INSERT INTO `add_pay` (`pay_id`, `pay_name`, `price`, `image`, `customize`) VALUES
('pay01', '麥克雞塊(6塊)', 55, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-06-NGT6.jpg', 0),
('pay02', '麥克雞塊(4塊)', 45, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-06-NGT6.jpg', 0),
('pay03', '勁辣香雞翅', 40, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/spicy-chicken-wings-6pcs.jpg', 0),
('pay04', '酥嫩雞翅', 40, 'https://foodtracer.gov.taipei/Backend/upload/product/12411160/12411160_226.png', 0),
('pay05', '蘋果派', 32, 'https://images.chinatimes.com/newsphoto/2019-10-08/656/20191008003395.jpg', 0),
('pay06', '無須加價購', 0, 'https://img.ixintu.com/upload/jpg/20210522/57d44843742d7b24835f97f022279595_108439_800_800.jpg!ys', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `dessert`
--

CREATE TABLE `dessert` (
  `dessert_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `dessert_Series` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `dessert_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `dessert_Price` int(15) NOT NULL,
  `dessert_Image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `dessert`
--

INSERT INTO `dessert` (`dessert_NO`, `dessert_Series`, `dessert_Name`, `dessert_Price`, `dessert_Image`) VALUES
('dessert01', 'ser09', '蘋果派', 35, 'https://images.chinatimes.com/newsphoto/2019-10-08/656/20191008003395.jpg'),
('dessert02', 'ser09', 'oreo冰炫風', 55, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/mcflurry-oreo.jpg'),
('dessert03', 'ser09', '大蛋捲冰淇淋', 30, 'https://img1.momoshop.com.tw/expertimg/0007/539/075/mobile/7412442_R.jpg?t=1616479120725'),
('dessert04', 'ser09', '蛋捲冰淇淋', 18, 'https://img1.momoshop.com.tw/expertimg/0007/539/075/mobile/7412442_R.jpg?t=1616479120725'),
('dessert05', 'ser09', '水果袋-蘋果切片', 39, 'https://i.imgur.com/JFm1eXi.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `drink`
--

CREATE TABLE `drink` (
  `drink_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `drink_Series` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `drink_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `drink_Price` int(3) DEFAULT NULL,
  `drink_Image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `customize` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `drink`
--

INSERT INTO `drink` (`drink_NO`, `drink_Series`, `drink_Name`, `drink_Price`, `drink_Image`, `customize`) VALUES
('drink01', 'ser10', '可口可樂(小)', 33, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink02', 'ser10', '可口可樂(中)', 38, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink03', 'ser10', '可口可樂(大)', 45, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink04', 'ser10', '零卡可樂(小)', 33, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink05', 'ser10', '零卡可樂(中)', 38, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink06', 'ser10', '零卡可樂(大)', 45, 'https://ae01.alicdn.com/kf/H1b10c27e6f1344ab8d08bb8e7a81a37fN.jpg', 1),
('drink07', 'ser10', '雪碧(小)', 33, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/sprite.jpg', 1),
('drink08', 'ser10', '雪碧(中)', 38, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/sprite.jpg', 1),
('drink09', 'ser10', '雪碧(大)', 45, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/sprite.jpg', 1),
('drink10', 'ser11', '冰紅茶(無糖)(小)', 33, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink11', 'ser11', '冰紅茶(無糖)(中)', 38, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink12', 'ser11', '冰紅茶(無糖)(大)', 45, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink13', 'ser11', '冰綠茶(無糖)(小)', 33, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-green-tea-sugarfree.jpg', 1),
('drink14', 'ser11', '冰綠茶(無糖)(中)', 38, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-green-tea-sugarfree.jpg', 1),
('drink15', 'ser11', '冰綠茶(無糖)(大)', 45, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-green-tea-sugarfree.jpg', 1),
('drink16', 'ser11', '冰蜂蜜紅茶', 55, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/honey-milk-tea-iced.jpg', 1),
('drink17', 'ser11', '熱紅茶(小)', 38, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 0),
('drink18', 'ser11', '冰阿薩姆鮮奶茶', 75, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/assam-milk-tea-iced.jpg', 1),
('drink19', 'ser11', '檸檬紅茶(小)', 33, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink20', 'ser11', '檸檬紅茶(中)', 38, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink21', 'ser11', '檸檬紅茶(大)', 45, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/iced-black-tea-sugarfree.jpg', 1),
('drink22', 'ser11', '熱奶茶(小)', 38, 'https://foodtracer.taipei.gov.tw/Backend/upload/product/12411160/12411160_181.png', 0),
('drink23', 'ser11', '冰奶茶(小)', 38, 'https://foodtracer.taipei.gov.tw/Backend/upload/product/12411160/12411160_181.png', 1),
('drink24', 'ser11', '冰奶茶(大)', 48, 'https://foodtracer.taipei.gov.tw/Backend/upload/product/12411160/12411160_181.png', 0),
('drink25', 'ser11', '熱阿薩姆鮮奶茶', 75, 'https://c.ecimg.tw/items/DBCRK0A900AYAB1/000002_1617097211.jpg', 0),
('drink26', 'ser12', '特選熱那堤(無糖)', 75, 'https://c.ecimg.tw/items/DBCRK0A900AYA8F/000002_1617099735.jpg', 0),
('drink27', 'ser12', '特選熱黑咖啡(無糖)', 65, 'https://picdn.gomaji.com/products/o/971/274971/274971_1_10.jpg', 0),
('drink28', 'ser13', '特選冰那堤(無糖)', 75, 'https://foodtracer.taipei.gov.tw/Backend/upload/product/12411160/12411160_218.png', 0),
('drink29', 'ser13', '特選冰黑咖啡(無糖)', 65, 'https://img.jollybuy.com/S190127214648415/goods/f6052fb1162a43d796572a1d5ea6b50b_Q50.png', 0),
('drink30', 'ser14', '玉米湯(小)', 40, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/corn-soup-small.jpg', 0),
('drink31', 'ser14', '玉米湯(大)', 55, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/corn-soup-small.jpg', 0),
('drink32', 'ser14', '鮮乳', 33, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/assam-milk-tea-iced.jpg', 0),
('drink33', 'ser14', '柳橙汁(小)', 40, 'https://www.mcdelivery.com.tw/tw/static/1639708447536/assets/886/products/33432.png?', 0),
('drink34', 'ser14', '柳橙汁(大)', 45, 'https://www.mcdelivery.com.tw/tw/static/1639708447536/assets/886/products/33432.png?', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `drink_customize`
--

CREATE TABLE `drink_customize` (
  `drink_CNO` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `options` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 傾印資料表的資料 `drink_customize`
--

INSERT INTO `drink_customize` (`drink_CNO`, `name`, `options`) VALUES
('dcno01', '冰奶茶(大)', '少冰'),
('dcno02', '冰奶茶(大)', '去冰'),
('dcno03', '冰奶茶(小)', '少冰'),
('dcno04', '冰奶茶(小)', '去冰'),
('dcno05', '冰紅茶(無糖)(大)', '少冰'),
('dcno06', '冰紅茶(無糖)(大)', '去冰'),
('dcno07', '冰紅茶(無糖)(中)', '少冰'),
('dcno08', '冰紅茶(無糖)(中)', '去冰'),
('dcno09', '冰紅茶(無糖)(小)', '少冰'),
('dcno10', '冰紅茶(無糖)(小)', '去冰'),
('dcno11', '冰綠茶(無糖)(大)', '少冰'),
('dcno12', '冰綠茶(無糖)(大)', '去冰'),
('dcno13', '冰綠茶(無糖)(中)', '少冰'),
('dcno14', '冰綠茶(無糖)(中)', '去冰'),
('dcno15', '冰綠茶(無糖)(小)', '少冰'),
('dcno16', '冰綠茶(無糖)(小)', '去冰'),
('dcno17', '冰蜂蜜紅茶', '少冰'),
('dcno18', '冰蜂蜜紅茶', '去冰'),
('dcno19', '冰阿薩姆鮮奶茶', '少冰'),
('dcno20', '冰阿薩姆鮮奶茶', '去冰'),
('dcno21', '可口可樂(大)', '少冰'),
('dcno22', '可口可樂(大)', '去冰'),
('dcno23', '可口可樂(中)', '少冰'),
('dcno24', '可口可樂(中)', '去冰'),
('dcno25', '可口可樂(小)', '少冰'),
('dcno26', '可口可樂(小)', '去冰'),
('dcno27', '檸檬紅茶(大)', '少冰'),
('dcno28', '檸檬紅茶(大)', '去冰'),
('dcno29', '檸檬紅茶(中)', '少冰'),
('dcno30', '檸檬紅茶(中)', '去冰'),
('dcno31', '檸檬紅茶(小)', '少冰'),
('dcno32', '檸檬紅茶(小)', '去冰'),
('dcno33', '雪碧(大)', '少冰'),
('dcno34', '雪碧(大)', '去冰'),
('dcno35', '雪碧(中)', '少冰'),
('dcno36', '雪碧(中)', '去冰'),
('dcno37', '雪碧(小)', '少冰'),
('dcno38', '雪碧(小)', '去冰'),
('dcno39', '零卡可樂(大)', '少冰'),
('dcno40', '零卡可樂(大)', '去冰'),
('dcno41', '零卡可樂(中)', '少冰'),
('dcno42', '零卡可樂(中)', '去冰'),
('dcno43', '零卡可樂(小)', '少冰'),
('dcno44', '零卡可樂(小)', '去冰');

-- --------------------------------------------------------

--
-- 資料表結構 `meal`
--

CREATE TABLE `meal` (
  `meal_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `meal_Series` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `meal_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `meal_Price` int(10) NOT NULL,
  `meal_Customized` tinyint(1) NOT NULL,
  `meal_Image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `meal`
--

INSERT INTO `meal` (`meal_NO`, `meal_Series`, `meal_Name`, `meal_Price`, `meal_Customized`, `meal_Image`) VALUES
('meal01', 'ser01', 'BLT安格斯黑牛堡', 109, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-blt-beef.jpg?$Product_Desktop$'),
('meal02', 'ser01', 'BLT辣脆雞腿堡', 109, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-blt-fried-chicken.jpg?$Product_Desktop$'),
('meal03', 'ser01', 'BLT嫩煎雞腿堡', 109, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-blt-grilled-chicken.jpg?$Product_Desktop$'),
('meal04', 'ser01', '蕈菇安格斯黑牛堡', 119, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-mushroom-beef.jpg?$Product_Desktop$'),
('meal05', 'ser01', '凱薩辣脆雞沙拉', 99, 0, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-spicy-fried-chicken-salad.jpg?$Product_Desktop$'),
('meal06', 'ser01', '義式烤雞沙拉', 99, 0, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/signature-grilled-chicken-salad.jpg?$Product_Desktop$'),
('meal07', 'ser02', 'BLT安格斯黑牛堡', 109, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/signature-mushroom-beef.jpg'),
('meal08', 'ser02', '蕈菇安格斯黑牛堡', 119, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/signature-mushroom-beef.jpg'),
('meal09', 'ser02', '大麥克', 72, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-01-Big-Mac.jpg'),
('meal10', 'ser02', '雙層牛肉吉士堡', 62, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-02-D-Cheeseburger.jpg'),
('meal11', 'ser03', '煙燻雞肉長堡', 74, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/Smoked-chicken-long-burger.jpg'),
('meal12', 'ser03', 'BLT辣脆雞腿堡', 109, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/signature-blt-fried-chicken.jpg'),
('meal13', 'ser03', 'BLT嫩煎雞腿堡', 109, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/signature-blt-grilled-chicken.jpg'),
('meal14', 'ser03', '嫩煎雞腿堡', 82, 0, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-04-GBC.jpg'),
('meal15', 'ser03', '勁辣雞腿堡', 72, 0, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-08-SCF.jpg'),
('meal16', 'ser03', '麥香雞', 44, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-08-SCF.jpg'),
('meal17', 'ser04', '麥克雞塊(6塊)', 60, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-06-NGT6.jpg'),
('meal18', 'ser04', '麥克雞塊(10塊)', 60, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-06-NGT10.jpg'),
('meal19', 'ser05', '麥脆雞腿(2塊)', 110, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-09-MFC.jpg'),
('meal20', 'ser05', '麥脆雞翅(2塊)', 90, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-10-MFC.jpg'),
('meal21', 'ser06', '薑燒豬肉長堡', 74, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/Smoked-chicken-long-burger.jpg'),
('meal22', 'ser06', '黃金起司豬排堡', 52, 0, 'https://cdn2.ettoday.net/images/1626/1626566.jpg'),
('meal23', 'ser06', '麥香魚', 44, 1, 'https://www.mcdonalds.com/content/dam/tw/nutrition/nfl-product/product/regular/EVM-12-FOF.jpg'),
('meal24', 'ser16', '麥克雞塊分享盒', 199, 0, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/regular/chicken-mcnuggets-sharing-box-6-pieces.jpg?$Category_Desktop$'),
('meal25', 'ser16', '勁辣香雞翅分享盒', 249, 0, 'https://www.mcdonalds.com/is/image/content/dam/tw/publication/desktop/whats-hot/HSBNewContent0710/201230/hsb-product-spicywings-pc-574x280.jpg?$Publication_Two_Column_Desktop$'),
('meal26', 'ser16', '酥嫩雞翅分享盒', 249, 0, 'https://www.mcdonalds.com/is/image/content/dam/tw/publication/desktop/whats-hot/HSBNewContent0710/201230/hsb-product-tenderwings-pc-574x280.jpg?$Publication_Two_Column_Desktop$'),
('meal27', 'ser16', '麥脆雞腿分享盒(6塊)', 399, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/products/hsb-party.jpg?$Product_Desktop$'),
('meal28', 'ser16', '麥脆雞腿分享盒(12塊)', 659, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7q2cyEHbRPLw_eMzstnFAZRKtAokFcIxRgw&usqp=CAU'),
('meal29', 'ser16', '黃金派對分享盒', 529, 1, 'https://www.mcdonalds.com/is/image/content/dam/tw/nutrition/nfl-product/product/regular/hsb-mccrispy-6pcs.jpg?$Category_Desktop$');

-- --------------------------------------------------------

--
-- 資料表結構 `meal_customize`
--

CREATE TABLE `meal_customize` (
  `meal_CNO` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `options` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 傾印資料表的資料 `meal_customize`
--

INSERT INTO `meal_customize` (`meal_CNO`, `name`, `options`) VALUES
('mcno01', 'BLT辣脆雞腿堡', '番茄醬'),
('mcno02', 'BLT辣脆雞腿堡', 'BLT燒烤醬'),
('mcno03', 'BLT辣脆雞腿堡', '原葉生菜'),
('mcno04', 'BLT辣脆雞腿堡', '番茄(兩片)'),
('mcno05', 'BLT辣脆雞腿堡', '厚切培根'),
('mcno06', 'BLT辣脆雞腿堡', '勁辣雞腿排'),
('mcno07', 'BLT嫩煎雞腿堡', '番茄醬'),
('mcno08', 'BLT嫩煎雞腿堡', 'BLT燒烤醬'),
('mcno09', 'BLT嫩煎雞腿堡', '原葉生菜'),
('mcno10', 'BLT嫩煎雞腿堡', '番茄(兩片)'),
('mcno11', 'BLT嫩煎雞腿堡', '厚切培根'),
('mcno12', 'BLT嫩煎雞腿堡', '嫩煎雞腿排'),
('mcno13', 'BLT安格斯黑牛堡', '番茄醬'),
('mcno14', 'BLT安格斯黑牛堡', 'BLT燒烤醬'),
('mcno15', 'BLT安格斯黑牛堡', '原葉生菜'),
('mcno16', 'BLT安格斯黑牛堡', '安格斯牛肉片'),
('mcno17', 'BLT安格斯黑牛堡', '厚切培根'),
('mcno18', 'BLT安格斯黑牛堡', '番茄(兩片)'),
('mcno19', '蕈菇安格斯黑牛堡', '原葉生菜'),
('mcno20', '蕈菇安格斯黑牛堡', '法式香草醬'),
('mcno21', '蕈菇安格斯黑牛堡', '安格斯牛肉片'),
('mcno22', '蕈菇安格斯黑牛堡', '吉事片'),
('mcno23', '蕈菇安格斯黑牛堡', '蕈菇醬'),
('mcno24', '大麥克', '大麥克醬'),
('mcno25', '大麥克', '脫水洋蔥'),
('mcno26', '大麥克', '生菜'),
('mcno27', '大麥克', '酸黃瓜'),
('mcno28', '大麥克', '吉事片'),
('mcno29', '大麥克', '牛肉片'),
('mcno30', '勁辣雞腿堡', '麥香雞醬'),
('mcno31', '勁辣雞腿堡', '生菜'),
('mcno32', '勁辣雞腿堡', '勁辣雞腿排'),
('mcno33', '麥香魚', '麥香魚醬'),
('mcno34', '麥香魚', '吉事片'),
('mcno35', '麥香魚', '麥香魚片'),
('mcno36', '煙燻雞肉長堡', '蜂蜜芥末醬'),
('mcno37', '煙燻雞肉長堡', '切片生菜'),
('mcno38', '煙燻雞肉長堡', '煙燻雞肉'),
('mcno39', '薑燒豬肉長堡', '切片生菜'),
('mcno40', '薑燒豬肉長堡', '薑燒豬肉'),
('mcno41', '勁辣香雞翅分享盒', '醬包'),
('mcno42', '酥嫩雞翅分享盒', '醬包'),
('mcno43', '雙層牛肉吉士堡', '番茄醬'),
('mcno44', '雙層牛肉吉士堡', '牛肉片'),
('mcno45', '雙層牛肉吉士堡', '芥末醬'),
('mcno46', '雙層牛肉吉士堡', '酸黃瓜'),
('mcno47', '雙層牛肉吉士堡', '吉事片'),
('mcno48', '酥嫩雞翅分享盒', '脫水洋蔥'),
('mcno49', '麥克雞塊(10塊)', '醬包'),
('mcno50', '麥克雞塊(6塊)', '醬包'),
('mcno51', '麥脆雞翅(2塊)', '原味'),
('mcno52', '麥脆雞翅(2塊)', '辣味'),
('mcno53', '麥脆雞腿(2塊)', '原味'),
('mcno54', '麥脆雞腿(2塊)', '辣味'),
('mcno55', '麥脆雞腿分享盒(12塊)', '原味'),
('mcno56', '麥脆雞腿分享盒(12塊)', '辣味'),
('mcno58', '麥脆雞腿分享盒(12塊)', '醬包'),
('mcno59', '麥脆雞腿分享盒(6塊)', '原味'),
('mcno60', '麥脆雞腿分享盒(6塊)', '辣味'),
('mcno62', '麥脆雞腿分享盒(6塊)', '醬包'),
('mcno63', '麥香雞', '麥香雞醬'),
('mcno64', '麥香雞', '麥香雞排'),
('mcno65', '麥香雞', '生菜'),
('mcno66', '黃金派對分享盒', '原味'),
('mcno67', '黃金派對分享盒', '辣味'),
('mcno69', '黃金派對分享盒', '醬包'),
('mcno70', '薯條(大)', '番茄醬包'),
('mcno71', '薯條(大)', '鹽'),
('mcno72', '薯條(中)', '番茄醬包'),
('mcno73', '薯條(中)', '鹽'),
('mcno74', '薯條(小)', '番茄醬包'),
('mcno75', '薯條(小)', '鹽');

-- --------------------------------------------------------

--
-- 資料表結構 `order_form`
--

CREATE TABLE `order_form` (
  `order_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `order_Language` tinyint(1) DEFAULT NULL COMMENT 'when the value is null, the system will be Chinese, other than the system will be English',
  `order_Price` int(10) NOT NULL,
  `order_Place` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `order_time` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `order_record`
--

CREATE TABLE `order_record` (
  `order_id` int(20) NOT NULL,
  `amount` int(10) NOT NULL,
  `meal` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `drink` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `dessert` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `series`
--

CREATE TABLE `series` (
  `series_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `series_Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `series`
--

INSERT INTO `series` (`series_NO`, `series_Name`) VALUES
('ser01', '極選系列'),
('ser02', '牛肉系列'),
('ser03', '雞肉系列'),
('ser04', '麥克雞塊系列'),
('ser05', '麥脆雞系列'),
('ser06', '海鮮&豬系列'),
('ser07', '漢堡系列'),
('ser08', '雞翅系列'),
('ser09', '甜品系列'),
('ser10', '碳酸飲料系列'),
('ser11', '茶&奶茶系列'),
('ser12', '熱咖啡系列'),
('ser13', '冰咖啡系列'),
('ser14', '湯品果汁&其他系列'),
('ser15', '其他'),
('ser16', '分享盒系列');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `additional`
--
ALTER TABLE `additional`
  ADD PRIMARY KEY (`additional_NO`);

--
-- 資料表索引 `add_pay`
--
ALTER TABLE `add_pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- 資料表索引 `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`dessert_NO`),
  ADD KEY `dessert_Series` (`dessert_Series`);

--
-- 資料表索引 `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`drink_NO`),
  ADD KEY `drink_Series` (`drink_Series`);

--
-- 資料表索引 `drink_customize`
--
ALTER TABLE `drink_customize`
  ADD PRIMARY KEY (`drink_CNO`);

--
-- 資料表索引 `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`meal_NO`),
  ADD KEY `meal_Series` (`meal_Series`);

--
-- 資料表索引 `meal_customize`
--
ALTER TABLE `meal_customize`
  ADD PRIMARY KEY (`meal_CNO`);

--
-- 資料表索引 `order_form`
--
ALTER TABLE `order_form`
  ADD PRIMARY KEY (`order_NO`);

--
-- 資料表索引 `order_record`
--
ALTER TABLE `order_record`
  ADD PRIMARY KEY (`order_id`);

--
-- 資料表索引 `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_NO`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `dessert`
--
ALTER TABLE `dessert`
  ADD CONSTRAINT `dessert_ibfk_1` FOREIGN KEY (`dessert_Series`) REFERENCES `series` (`series_NO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `drink`
--
ALTER TABLE `drink`
  ADD CONSTRAINT `drink_ibfk_1` FOREIGN KEY (`drink_Series`) REFERENCES `series` (`series_NO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `meal`
--
ALTER TABLE `meal`
  ADD CONSTRAINT `meal_ibfk_1` FOREIGN KEY (`meal_Series`) REFERENCES `series` (`series_NO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
