# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.24)
# Database: constellation
# Generation Time: 2019-08-18 10:26:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table horoscopes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `horoscopes`;

CREATE TABLE `horoscopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名稱',
  `entirety` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '整體運勢',
  `love` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '愛情運勢',
  `career` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事業運勢',
  `wealth` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '財富運勢',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '狀態',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `horoscopes` WRITE;
/*!40000 ALTER TABLE `horoscopes` DISABLE KEYS */;

INSERT INTO `horoscopes` (`id`, `name`, `entirety`, `love`, `career`, `wealth`, `status`, `deleted_at`, `created_at`, `updated_at`)
VALUES
	(1,'牡羊座','整體運勢★★★★☆：今天重點不是能掙多少錢，而是能留下多少，只有當掙的錢能留住才能成為你的資產；兩人關係一旦確定下來，就別怕人知道，能得到大家認可會讓他安心不少；今天要特別注意心臟，別做刺激性運動，情緒也不宜有太大波動。','愛情運勢★★★☆☆：單身者有機會在工作中結識情投意合的異性朋友；戀愛中的人別一心多用，專情一些才好。','事業運勢★★★★☆：別讓自己太閒，多利用時間進修或是接觸一些新鮮事物，會很有收穫！','財運運勢★★★★☆：如果你積蓄豐厚，可以擴大投資，錢滾錢能讓你更快獲利。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(2,'金牛座','整體運勢★★★★☆：單身者有機會接觸異性，能得異性幫助，但多為工作往來，戀愛機會不多；戀愛中的人有機會進行甜蜜約會，若能多聽聽對方的意見，更能討對方歡心。財運旺盛，與異性客戶較投緣，易達成交易。','愛情運勢★★★☆☆：覺得越來越不瞭解情人的想法，感情有所停滯。別著急，多與對方聊聊心事會有所改善。','事業運勢★★★★☆：與人交流互動的慾望強烈，在溝通中讓你體會到團體的力量是多麼巨大，收穫頗多！','財運運勢★★★★☆：借出的款項可望回收，還有機會收到禮物。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(3,'雙子座','整體運勢★★★☆☆：看到琳琅滿目的商品，心中的購物慾蠢蠢欲動，如果大包小包地拎回家，錢包也會很快乾癟。最好慢一點做決定，免得買到好看不好用的擺設。約會的時候不順頻頻，最好提前赴約，免得為意外事件耽擱遲到，引起對方不快。','愛情運勢★★★☆☆：有機會與另一半到郊外散心，讓你心情開朗；單身者少圍著異性轉，容易心煩意亂。','事業運勢★★★☆☆：臨時改變計劃的機率很大，會因為對自由的渴望而突然改變自己前進的方向。','財運運勢★★☆☆☆：錢一出手，花得光光，顯得沒有計劃。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(4,'巨蟹座','整體運勢★★★☆☆：他人的行為就算有不妥之處，也不應過於直接地進行批評，換個委婉的表達方式才能讓他領悟，不至影響到大家的關係。有暗地嫉妒你的人出現，在與人交往時多留心，若不幸惹來紛爭，別逞一時之氣。','愛情運勢★★★☆☆：你無心戀愛，單身者面對親友的熱情牽線，也顯得興趣缺缺，更想享受獨處的快樂。','事業運勢★★☆☆☆：生活總會有風有雨，得失心不宜太重，想開了，也就沒有陰影了，天也放晴了！','財運運勢★★★☆☆：財運普通，可將財產交由你絕對可以信任的愛人或者親人。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(5,'獅子座','整體運勢★★★★☆：今天你的嘴巴像抹了蜜糖，甜蜜的情話能把戀人哄得很開心；對他人真誠的讚揚與鼓勵，讓人覺得你很可愛，還有機會得到對方的小禮物哦；總是喜歡說個不停，動手能力略顯欠缺。','愛情運勢★★★☆☆：與情人約會時專心一點，別分心處理自己的公事，以免對方不高興哦！','事業運勢★★★☆☆：有許多表現的機會，也顯得驕傲，小心驕兵必敗，自負的後果會讓你後悔莫及喔！','財運運勢★★★★☆：正財運不錯，而在偏財方面失多得少，需減少投機和賭博。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(6,'處女座','整體運勢★★★★★：很適合與戀人約會，不論是攜手漫步，還是到遊樂場玩刺激的遊戲，都能感受到彼此濃烈的愛。胃口特別好，在吃喝玩樂中結識新朋友。今天對求職者特別有利，有機會在休閒中遇到伯樂。','愛情運勢★★★★☆：已婚者與另一半的交流順暢，易感受到對方的愛意；戀愛中的人可規劃未來的兩人生活。','事業運勢★★★★★：可推行預期計劃，易有不錯的效果。多利用人際關係，可大大減輕你的壓力！','財運運勢★★★★☆：財氣順順，得財不費力。有閒錢的人不妨在今日投資，容易有意外的收穫喔！',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(7,'天枰座','整體運勢★★★★☆：單身者的戀愛運有種原地打轉的感覺，想要出擊卻又不願邁出第一步，找朋友聊聊可得到解決辦法；眼睛顯得很靈活，對股票市場的數據變化有種很強的感應，今天宜入股市；即便是與同事或朋友的閒聊也能得到不錯的建議。','愛情運勢★★★☆☆：單身者有機會與意中人約會，不妨好好打扮一番，給對方留下好印象，輕鬆度過甜蜜時光！','事業運勢★★★★☆：幽默風趣的一面突顯，在人群中特別受人關注，有利拓展人脈，尋找合作夥伴。','財運運勢★★★★☆：小財不斷，讓你感到錢財的寬裕。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(8,'天蠍座','整體運勢★★★☆☆：單身者對愛猶猶豫豫，容易有所顧慮，不想錯過就去爭取，免得讓自己後悔。花點心思去瞭解市場信息，加上不錯的財運，會有機遇送上門。對成功的渴望僅限於自己的能力之內，顯得有點保守，不如大膽設想，積極行動。','愛情運勢★★☆☆☆：戀愛中的人應認真培養感情，不輕易放棄才能盼來開花結果的時候。','事業運勢★★★☆☆：心情平和，懂得為他人著想，同時也會享受到幫助他人的快樂。','財運運勢★★★★☆：在努力積極的行動中能使財運亨通。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(9,'射手座','整體運勢★★★★★：想要好好玩樂，但中途生變的機率高，如碰到空降任務、急需加班等，不過，你多能隨機應變，出色完成。今天對求職者特別有利，有機會被伯樂相中，獲得意料之外的好職位。愛情較平順，感覺安穩。','愛情運勢★★★★☆：單身者易遇到令你心動的對象，會不顧一切地投入愛河；已婚者多抽時間陪陪另一半。','事業運勢★★★★★：頭腦非常的清晰，多能做出正確的推理，瞬間掌握重點來做事，所以效率特別高。','財運運勢★★★★☆：競爭中得財，得財略為費心吃力，可是有付出必有所得。動口生財者較容易感受到今日的好運。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(10,'摩羯座','整體運勢★★★★★：今天桃花運不錯，單身者有機會與心儀的對象單獨相處，直截了當的表露心聲會有意想不到的好效果。今天狀態良好，能自如的應對各種事務，拿出令人滿意的成績。','愛情運勢★★★★☆：臉上多些自然的微笑，就會特別吸引人，異性也會主動與你親近，戀愛指數也將不斷提升！','事業運勢★★★★☆：有機會在眾人面前表現自己的才華，例如：演講、跳舞、朗誦等，應抓住機會。','財運運勢★★★★★：今日你是超級幸運兒，有從天而降的財運，例如：收到零用金、獎金、紅包、禮物等等！真是令人眼紅喔！',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(11,'水瓶座','整體運勢★★★★☆：愛神高調降臨，無需花費心思引人注意，親切的問候或貼心的舉動，已經獲得他的好評。健身房、茶藝館、咖啡廳等休閒娛樂場所是你的幸運地，放鬆的同時，還有機會結識新朋友。手氣平淡，不宜走偏財門路。','愛情運勢★★★★☆：在聚會中有機會結識成熟穩重的異性朋友，若能保持聯繫，可迅速拉近彼此的距離！','事業運勢★★★★☆：運勢佳，別一昧追求和諧，該爭取的時候就要堅持，表現你的競爭力。','財運運勢★★★☆☆：對親戚朋友的打點是一項不可避免的開銷。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10'),
	(12,'雙魚座','整體運勢★★★★★：愛情比較平穩，兩人感情是在平淡中流露愛意的涓涓細流之情。今天關於理財的想法很多。有了想法就趕快行動，諮詢專業人士，合理投資。今天親和力十足，閒暇時和親友聯絡感情，享受美好時光吧。','愛情運勢★★★☆☆：覺得自己沒有桃花嗎？單身者多注意公司往來的朋友客戶，會讓你有新發現喔！','事業運勢★★★★★：行動力很強，人際關係和諧，你在努力向前的同時，會有朋友默默支持。','財運運勢★★★★☆：財運旺旺日，想要感受到今日的好運必須從節儉保守做起，自然可以避免不必要的耗損。',1,NULL,'2019-08-18 18:26:10','2019-08-18 18:26:10');

/*!40000 ALTER TABLE `horoscopes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(4,'2019_08_17_171022_add_google_id_to_users_table',2),
	(8,'2019_08_18_160237_create_horoscopes_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'google_id',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `google_id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'施尚恩',NULL,'tsubasarcs@gmail.com','$2y$10$iokR6J24RAosa1bBDAhMxeF3A73C5fVTI0n4tie2AgCXm6Ae2QrU2',NULL,'2019-08-18 18:25:59','2019-08-18 18:25:59');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
