-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Ara 2021, 13:04:14
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `diyetisyen`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 0, 'KİLO YÖNETİMİ', 'KİLO YÖNETİMİ', 'KİLO YÖNETİMİ', NULL, 'kilo-yonetimi', 'true', NULL, NULL),
(9, 0, 'BEBEK/ÇOCUK BESLENMESİ', 'BEBEK/ÇOCUK BESLENMESİ', 'BEBEK/ÇOCUK BESLENMESİ', NULL, 'bebek-cocuk-beslenmesi', 'true', NULL, NULL),
(10, 0, 'SPORCU BESLENMESİ', 'SPORCU BESLENMESİ', 'SPORCU BESLENMESİ', NULL, 'sporcu-beslenmesi', 'true', NULL, NULL),
(11, 0, 'HAMİLELİKTE BESLENME', 'HAMİLELİKTE BESLENME', 'HAMİLELİKTE BESLENME', NULL, 'hamilelikte-beslenme', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Siteye Nasıl Kaydolurum?', '<p>Register kısmından kayıt olabilirsiniz!</p>', 1, 'true', '2021-02-08 14:11:27', '2021-02-08 14:11:27'),
(2, 'Nasıl diyet satın alabilirim?', '<p>Detay kısmından satın alabilirsiniz.</p>', 2, 'true', '2021-02-08 14:11:56', '2021-12-08 13:16:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `product_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'images/pbqjNullhmJExTvqTTk5bVnfyat3zuI6zfC6D5tB.jpg', '2021-02-08 12:07:03', '2021-02-08 12:07:03'),
(2, 1, '2', 'images/vIOx36NlGb21F8tAZ2PwiOleb8aHmqewzxkj6EZK.jpg', '2021-02-08 12:07:27', '2021-02-08 12:07:27'),
(3, 2, '1', 'images/0CgUmQSo3U7nO6DImevyjt2TN7bG4IjYAdVZbmog.jpg', '2021-02-08 12:26:30', '2021-02-08 12:26:30'),
(4, 2, '2', 'images/1CU6Dvqb8AM3BGyUxrjOsgqSA9d7KyrDEb0hftRK.jpg', '2021-02-08 12:26:37', '2021-02-08 12:26:37'),
(5, 2, '3', 'images/jTDjdXUfrDsXVnBM4UZPNDv6J01cg9y3L0jJL8OD.png', '2021-02-08 12:26:48', '2021-02-08 12:26:48'),
(6, 7, '1', 'images/70sKSW1Gneb52bbt5EaQr3rSGx0i33wWbtb5uMwS.jpg', '2021-12-07 14:45:02', '2021-12-07 14:45:02'),
(7, 7, '2', 'images/AVXcZSvPPdpFmpcfEIc6Ifr2yQSLGJZLQpPHab7U.jpg', '2021-12-07 14:45:08', '2021-12-07 14:45:08'),
(8, 8, '1', 'images/D3htDc9Eu8962F5Lbp1evbWUHUen5ncvam977hAg.jpg', '2021-12-07 14:50:51', '2021-12-07 14:50:51'),
(9, 8, '2', 'images/GRBhMUiVqdroZUc2iHmZoBgvfgqYhJ2UE849tf32.jpg', '2021-12-07 14:50:55', '2021-12-07 14:50:55'),
(10, 9, '1', 'images/AHrq9Cj52go6n83vvgHvoF9GqH4daPcvovM17AQA.jpg', '2021-12-08 13:00:50', '2021-12-08 13:00:50'),
(11, 9, '2', 'images/73lv2youcctVTxS9O366e8ggHm1A21DW6YMLI0hm.jpg', '2021-12-08 13:00:57', '2021-12-08 13:00:57'),
(12, 10, '1', 'images/PdSPuqCEN6uUNcv9DFdB3sCIldwyXRuJOhCGUzmz.jpg', '2021-12-08 13:01:07', '2021-12-08 13:01:07'),
(13, 10, '2', 'images/VTPlKVWuFFC5VkAPxIBY67Aw1AYQUBC5fmsYi4Qg.jpg', '2021-12-08 13:01:14', '2021-12-08 13:01:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Rıza Yörük', 'riza@gmail.com', '055555555', 'konu', NULL, NULL, 'New', '2021-12-08 13:20:32', '2021-12-08 13:20:32'),
(4, 'Rıza Yörük', 'riza@gmail.com', '05555555', 'konu', NULL, NULL, 'Read', '2021-12-08 13:20:51', '2021-12-08 13:20:55'),
(5, 'Rıza Yörük', 'riza@gmail.com', '011111111', 'konu', NULL, NULL, 'New', '2021-12-08 13:21:30', '2021-12-08 13:21:30'),
(6, 'Rıza Yörük', 'riza@gmail.com', '055555555', 'adhash', 'adskhaskjasdhkja', NULL, 'New', '2021-12-10 07:48:48', '2021-12-10 07:48:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_02_100001_create_filemanager_table', 1),
(7, '2021_12_06_164046_create_sessions_table', 1),
(8, '2021_12_08_164535_create_randevus_table', 2),
(9, '2021_12_08_164552_randevu', 2),
(10, '2021_12_10_093614_add_product_id_to_randevus', 3),
(11, '2021_12_10_103438_add_phone_to_users', 4),
(12, '2021_12_10_103450_add_address_to_users', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `title`, `keywords`, `description`, `image`, `category_id`, `user_id`, `price`, `detail`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(7, 'SİZE ÖZEL DİYET İLE AÇ KALMADAN KİLO VERİN!', 'SİZE ÖZEL DİYET İLE AÇ KALMADAN KİLO VERİN!', 'SİZE ÖZEL DİYET İLE AÇ KALMADAN KİLO VERİN!', 'images/9JYTnsPADq84ZaiaPhpAn5dy5kEaY0Dkeq1tN69V.jpg', 8, 1, 99.00, '<section id=\"testimonials\" style=\"background-position: 50% -74px;\">\r\n			<div class=\"container\">\r\n				\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-12\">\r\n						<div class=\"title\">\r\n							<br>\r\n							<h3>Başarı <span>Hikayeleri</span></h3>\r\n								<div class=\"myWarningWhite\">\r\n								<strong>*Yasal Uyarı: </strong>Bu sayfada paylaşılan başarı hikayeleri danışanlarımıza özeldir.  Genel bir anlam veya sonuç ifade etmez. Diyetler kişiye özeldir ve kilo verme hızı kişiden kişiye değişkenlik gösterir.\r\n								</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				\r\n				<div id=\"fawesome-carousel-two\" class=\"carousel slide\" data-ride=\"carousel\">\r\n					<ol class=\"carousel-indicators\">\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"0\" class=\"active\"></li>\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"1\" class=\"\"></li>\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"2\" class=\"\"></li>\r\n					</ol>\r\n				 \r\n					<div class=\"carousel-inner\" role=\"listbox\">\r\n						<div class=\"item active\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Melek hanıma internet üzerinden araştırma yaparken başarı hikayelerinden etkilenerek nisan ayında başladım iyiki de başlamışım. Melek hanım sayesinde tam 13 kilo verdim ve aynalarla barıştım .. </p>\r\n											<a href=\"javascript:showModal(0)\">Devamı &gt;&gt;</a> \r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>İlknur D.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Melek Hanım, benim hayatımda güleryüzü, azmi ve pozitifliği ile önemli bir yere sahip. Bir diyetisyen, beslenme danışmanı nasıl olur gerçekten tarifi Melek Hanım. Sayesinde doğum sonrası bir türlü ..</p>\r\n											<a href=\"javascript:showModal(1)\">Devamı &gt;&gt;</a>\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>Özgün E.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						\r\n						<!-- Next Slide -->\r\n						<div class=\"item\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Merhaba iyi akşamlar ismim mehmet 25 yaşındayım.Melek hanımla bundan 7 ay önce tanıştık o aylarda harıl harıl diyetisyen ararken birgün internette bu sayfaya denk geldim.Apar topar aniden hazırlanıp ..</p>\r\n											<a href=\"javascript:showModal(2)\">Devamı &gt;&gt;</a>\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/male.png\" alt=\"Author Image\">\r\n											<h4>Mehmet Y.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>merhaba...ben salim. bundan tam dört ay once tam tamına 118 kıloydum. dengeli ve saglıklı beslenme nedir bilmezdim. işim gereği günün hangi saati olursa olsun yemek yiyordum.her zaman kendi kendime ..</p>\r\n											<a href=\"javascript:showModal(3)\">Devamı &gt;&gt;</a>\r\n											\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/male.png\" alt=\"Author Image\">\r\n											<h4>Salim Ç.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<!-- Next Slide -->\r\n\r\n\r\n						<!-- Next Slide -->\r\n						<div class=\"item\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Merhabalar.Adım Dilek.22 yaşındayım.Melek Hanımla diyete 27 martta başladım.Diyete başlamadan önce 74 kiloydum.Melek hanımın sayesinde düzenli beslenme alışkanlığı kazandım ..</p>\r\n											<a href=\"javascript:showModal(4)\">Devamı &gt;&gt;</a>\r\n											<p></p>\r\n										</div>\r\n\r\n									\r\n  \r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>DİLEK Ö.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>28 yaşında, ev hanımıyım. Diyete başlamadan önce pek çok şey denedim kilo verebilmek için. Akupunktur yaptırdım, çeşitli bitkisel ilaçlar kullandım, yoğun spor programlarına kayıt yaptırdım ve ..</p>\r\n											<a href=\"javascript:showModal(5)\">Devamı &gt;&gt;</a>\r\n											\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>Özlem Ö.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<!-- Next Slide -->\r\n\r\n					</div>\r\n				 \r\n				</div>\r\n				\r\n			</div>\r\n		</section>', 'kilo-ver-prog', 'True', '2021-12-07 14:44:13', '2021-12-07 14:44:13'),
(8, 'Hamilelik İçin Özel Program', 'Hamilelik İçin Özel Program', 'Hamilelik İçin Özel Program', 'images/Rzt26c6FkGm6LqQwQaL1u9nCsVvrmT2EZAQKo5jf.jpg', 11, 1, 129.00, '<div class=\"row\">\r\n								<div class=\"col-xs-3\">\r\n									<div class=\"feature-icon\">\r\n										<img src=\"img/pregnancy.png\" class=\"img-responsive\">\r\n									</div>\r\n								</div>\r\n								<div class=\"col-xs-9\">\r\n									<div class=\"feature-text\">\r\n										<h4>HAMİLELİKTE BESLENME</h4>\r\n										<ul class=\"dash\">\r\n										  <li>Hamilelikte Beslenme Takibi</li>\r\n										  <li>Hamilelikte Kilo Takibi</li>\r\n										  <li>Gestasyonel Diayebet Diyet Tedavisi</li>\r\n										  <li>Emzirme Dönemi Kilo Takibi</li>\r\n										</ul>\r\n									</div>\r\n								</div>\r\n							</div>', 'hamilelik', 'True', '2021-12-07 14:50:43', '2021-12-07 14:50:43'),
(9, 'Bebek Beslenmesi', 'Bebek Beslenmesi', 'Bebek Beslenmesi', 'images/ytvagVlKCkGQYMI9hAb2GYcAxW4ZqwCPEqH9BIEy.jpg', 9, 1, 159.00, '<div class=\"item-page\">\r\n	<meta itemprop=\"mainEntityOfPage\" content=\"https://sagligim.gov.tr/saglikli-beslenme/bebek-beslenmesi.html\">\r\n	\r\n	\r\n		\r\n			<div class=\"page-header\">\r\n					<h2>\r\n				Bebek Beslenmesi			</h2>\r\n									</div>\r\n\r\n					\r\n	\r\n	\r\n				\r\n				\r\n\r\n	        \r\n\r\n			<div class=\"articleBody\">\r\n		<p style=\"text-align: justify;\"><img style=\"margin-left: 15px; float: right;\" src=\"/depo/sagligimyeni/sagliklihayat/saglikli_beslenme/kucuk_resimler/hsgm_resim_1.jpg\" alt=\"hsgm resim 1\" width=\"400\" height=\"267\">Beslenme yaşamın her döneminde önemlidir. Büyümenin en hızlı olduğu evrelerden bebeklik döneminde beslenme ayrı bir önem taşımaktadır. Doğumdan iki yaşın sonuna kadar devam eden dönem, çocuklarda büyüme-gelişmenin en hızlı olduğu yaşama sağlıklı başlangıç için en kritik dönemdir. Çocukluk çağı hastalıklarının en önemli ölüm nedenlerinden biri olan büyüme geriliği, bazı vitamin ve mineral eksiklikleri ile ishaller en sık 0-2 yaş grubu çocuklarda görülmektedir. Büyümenin en hızlı olduğu bu dönemde oluşan büyüme geriliğinin iki yaş sonrasında düzeltilmesi oldukça güçtür. Bu nedenle, süt çocuğu ve küçük çocukların beslenmesiyle ilgili alışkanlıkların bu dönem­de kazandırılması ve annelerin bu konuda bilinçlendirilmesi gerekmektedir.</p>\r\n<p><span style=\"color: #99cc00;\"><strong>Anne Sütü</strong></span></p>\r\n<p style=\"text-align: justify;\">Bir toplumun geleceği sağlıklı bireylerin varlığı ile süreklidir. Çocuk­ların sağlıklı olarak dünyaya gelmesi ve yetişmesi için annelerin gebe ve emziklilik döneminde, fetal gelişme, süt yapımı, besinlere olan gereksin­melerinin artması ve buna bağlı olarak yeterli ve dengeli beslenmeleri ve sağlıklarını korumaları konusunda bilinçlendirilmeleri gereklidir.</p>\r\n<p style=\"text-align: justify;\">Yenidoğan bir bebek için en uygun besin ANNE SÜTÜ’dür. Anne sütü bebeğin sağlıklı olması, tüm besin öğeleri gereksinmelerini karşılaması, kolaylıkla sindirilebilmesi ve enfeksiyonlara karşı koruması açısından yeri doldurulamaz bir besindir.</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #c54f5f;\"><em><strong>Yenidoğan bir bebeğe İLK 6 AYLIK dönemde SADECE ANNE SÜTÜ verilmelidir.</strong></em></span></h3>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Anne Sütünün Yararları&nbsp;</strong></p>\r\n<ul style=\"text-align: justify;\">\r\n<li>Her zaman sterildir, ısı derecesi idealdir.</li>\r\n<li>Besin ögesi bileşimi bebeğin gereksinmelerine uygundur.</li>\r\n<li>Koruyucu etmenleri içerir.</li>\r\n<li>Sindirime yardımcı aktif enzimler içerir (yağ sindirimi için lipaz)</li>\r\n<li>Enfeksiyonu önleyen ögeler içerir</li>\r\n<li>Hormonlar ve büyümeyi sağlayan ögeleri içerir</li>\r\n<li>Anne sütü alan bebeklerde solunum yolu ve mide-barsak enfeksiyonları daha az görülür.</li>\r\n<li>Anne sütü verilmesi orta kulak iltihabı riskini azaltır.</li>\r\n<li>Anne sütü çene ve diş gelişimini sağlar.</li>\r\n<li>Bazı kronik hastalıkların oluşma riskini azaltır (tip I diyabet, çölyak hastalığı, obezite, koroner kalp hastalığı gibi).</li>\r\n<li>Alerjiye karşı koruyucudur ve bebeği pişikten korur.</li>\r\n<li>Bebeğin ruhsal, bedensel ve zihinsel gelişimine yardımcı olur.</li>\r\n<li>Ucuzdur, hazırlama sorunu gerektirmez.</li>\r\n<li>Anne ve bebeği arasındaki duygusal bağı güçlendirerek sevgi dolu bir ilişkiyi kolaylaştırır.</li>\r\n<li>Annenin sağlığını korur. Emziren annelerde göğüs kanseri, yumurtalık kanseri, kemik erimesi ve kansızlık (anemi) oluşumu azalır. Anne sütü uterusun eski haline dönmesine yardımcı olur, anneyi aşırı kan kaybından korur.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"color: #99cc00;\"><strong>Tamamlayıcı Beslenme</strong></span></p>\r\n<p style=\"text-align: justify;\">Bebeğin sağlıklı büyüme ve gelişmesinin sağlanması uygun besinlerin verilmesi ile olanaklıdır. Anne sütü ilk 6 ay tek başına yeterli olmaktadır, ancak bu dönemden sonra bebeklerin gereksinmelerini tek başına karşılayamadığı için bebeklerin beslenme programlarına bazı eklemeler yapmak gerekmektedir. Anne sütünün tek başına süt çocuğunun enerji ve besin öğeleri gereksinmesini tam olarak karşılamadığı dönemde başlayan ve diğer yiyecek ve içeceklerin anne sütü ile birlikte verildiği sürece “tamamlayıcı beslenme” adı verilmektedir. Tamamlayıcı beslenme anne sütünden erişkin birey beslenmesine geçiş dönemi olarak da adlandırılmaktadır. Bu dönemde bebek değişik tat, lezzet ve yapıda besinlerle tanışır. Tamamlayıcı besinler, geçiş besinleri (süt çocuğu için özel hazırlanmış besinler) ve aile yemekleri (ailenin diğer fertlerinin sofrada tükettiği besinler) olmak üzere iki grupta incelenmektedir. Tamamlayıcı beslenme ile birlikte emzirmenin sürmesi çocuk sağlığı açısından önem taşımaktadır. Uygun zamanda başlatılan ve kurallara uygun şekilde sürdürülen tamamlayıcı beslenme, bebeğin bir yaş civarında aile sofrasındaki yiyecekleri tüketebilecek olgunluğa ulaşmasını sağlar. Tamamlayıcı besinlere zamanında başlanmalı, besinler yeterli, güvenilir ve uygun olmalıdır. Tamamen veya kısmen anne sütü ile beslenirken enerji ve besin öğelerine gereksinmelerinin arttığı dönemde başlanmalıdır (altıncı ay). Büyüyen çocuğun gereksinimi olan enerji, protein ve diğer besin öğelerini karşılayacak oranda olmalıdır. Hijyenik olarak hazırlanıp uygun koşullarda saklanmalı, temiz kaplarda ve temizlik kurallarına uygun olarak servis edilmelidir Çocuğun açlık ve tokluk durumu, iştahı, beslenme şekli (kendi kendine, kaşıkla ezme veya püre olarak) ve öğün aralıkları (günlük beslenme sayısı) düşünülerek planlanmalıdır.</p>\r\n<p style=\"text-align: justify;\"><em><strong>0-1 Yaş Döneminde Sakıncalı Besinler Çay, bitki çayları, bal, bakla gibi besinlerin süt çocukluğu döneminde verilmesi uygun değildir.</strong></em></p>\r\n<p style=\"text-align: justify;\"><strong>Çay:</strong>&nbsp;Çay, süt çocukları ve küçük çocuklara önerilmez. İçeriğinde tanin olması, demir ve diğer mineralleri bağlayıcı özelliğinden dolayı demir eksikliğine, içine eklenen şeker ise iştahsızlığa ve diş çürümelerine neden olur.</p>\r\n<p style=\"text-align: justify;\"><strong>Bitki Çayları:</strong>&nbsp;Papatya çayı, yeşil çay v.s bitki çaylarının da demir emilimini azaltıcı etkisi vardır. Aynı zamanda bazı farmakolojik ajanlar içeren bitki çaylarının, süt çocukları ve küçük çocuklar için güvenilirliği konusunda yeterli bilimsel araştırma yoktur.</p>\r\n<p style=\"text-align: justify;\"><strong>Bal:</strong>&nbsp;Bal fruktoz (%41), glukoz (%41) ve suyun (%18) bileşiminden oluş- maktadır. Clostridium botulinum sporlarını içerebilmesi nedeni ile botulizm riski taşır. Süt çocuklarının mide asidi düzeyi düşük olduğundan bu sporları öldüremez, bu nedenle bir yaşından küçük çocuklara bal önerilmez.<img style=\"margin-left: 15px; float: right;\" src=\"/depo/saglikli-hayat/bebek/thumbnails/thumb_shutterstock_573819535.jpg\" alt=\"thumb shutterstock 573819535\" width=\"400\" height=\"267\"></p>\r\n<p style=\"text-align: justify;\"><strong>Şeker:</strong>&nbsp;Şeker pancarından elde edilen bir besindir. Şeker pancarı % 16-20 arasında sukroz (glukoz ve fruktoz) içermektedir. Şeker vücuda enerji sağlar, başka bir besin değeri bulunmamaktadır. Boş enerji kaynağı olduğu için bebek beslenmesinde şeker yerine pekmez veya süt şekeri laktozun kullanılması daha doğru bir yaklaşımdır. Ayrıca çocuklarda fazla tüketilmesi iştahsızlığa ve diş çürüklerine, ileriye dönük hatalı beslenme davranışlarının gelişmesine ve dolayısıyla şişmanlığa neden olmaktadır.</p>\r\n<p style=\"text-align: justify;\"><strong>Bakla:</strong>&nbsp;Toksinli baklanın neden olduğu zehirlenme anemi, hemoglobinüri ve yüksek ateşle karakterizedir. Toksinli bakla yenildikten 24-48 saat sonra etkisi görülür. Zehirlenme taze çiğ baklanın yenmesi ile olur. Bakla pişirildiği zaman toksinin etkisi kalmaz. Favizme neden olabileceği düşü- nüldüğünden süt çocukluğu döneminde bakla önerilmez.</p>\r\n<p style=\"text-align: justify;\">Tamamlayıcı Besinlerin Yeterliliği ve Uygunluğu Yaşamın ilk iki yılında hızlı büyüme ve gelişmeden dolayı, süt çocuğunun kilogramı başına düşen enerji gereksinmesi çok yüksektir. Günde 500 mL anne sütü alan süt çocuklarda, anne sütü 6 aydan sonra günlük enerjinin %31’ini, proteininin %38’ini, A vitamininin %45’ini ve C vitamininin %95’ini karşılamaktadır.</p>\r\n<p style=\"text-align: justify;\"><strong>Öğün Sıklığı</strong></p>\r\n<p style=\"text-align: justify;\">Tamamlayıcı besinlerin verilme döneminde öğün sayısı besinlerin enerji yoğunluğuna ve her öğünde tüketilen miktarlarına bağlıdır. Sağlıklı beslenen anne tarafından emzirilen süt çocuğunun tamamlayıcı besinlerden alması gereken günlük öğün sayısı 6-8. aylar arasında 2-3 kez, 9-11. aylar arasında 3-4 kez, 12-24. aylar arasında 3-4 kez olmalıdır. Eğer her öğünde alınan besinin enerji yoğunluğu düşükse veya bebek emzirilmiyorsa öğün sıklığı arttırılmalıdır. Öğün sıklığının gerekenden daha fazla olması, anne sütünün daha az alınmasına yol açar. Ayrıca fazla miktarda besin hazırlığına, besinin uzun süre saklanmasına, bulaşma riskinin artmasına, güç ve zaman kaybına neden olmaktadır. Bir yaş sonrası çocuğun besin tüketimine göre 5 veya 6 farklı besin verilmesi önemlidir.</p>\r\n<p style=\"text-align: justify;\"><strong>Tamamlayıcı Besinlerin Güvenilirliği</strong></p>\r\n<p style=\"text-align: justify;\">Zararlı mikroorganizmalarla bulaşmış tamamlayıcı besinler (özellikle besin hazırlanmasında kullanılan su), ishal oluşmasına neden olabilmektedir. Bu nedenle 6 ay süresince sadece anne sütü alan bebeklerde, tamamlayıcı besinlerin başlanması ile ishal oluşum sıklığı artmaktadır. Dünyada her yıl 1.8 milyon çocuğun ishalli hastalıklar nedeniyle öldüğü bilinmektedir. Besin kaynaklı enfeksiyonlar iştahsızlığa neden olmaktadır. Besin alımının azalması, ishal, kusma malabsorpsiyon ve ateş nedeniyle artan besin öğesi kayıpları bebek ve çocukların immün sistemlerini etkilemekte, büyüme ve gelişmeleri etkilenmektedir. Yapılan çalışmalarda ishalli hastalıkların ve diğer besin kaynaklı enfeksiyonların önemli bir bölümünün ev ortamında besinlerin hijyenik olmayan koşullarda hazırlanması ile oluştuğu gösterilmiştir. Besinlerin kontaminasyon kaynakları çeşitlidir (Şekil 1). Çiğ besinlerin kendileri kontaminasyonun kaynağıdır. Ayrıca besin hazırlama ve depolama koşulları çapraz bulaşma riskini arttırmaktadır. Besin kaynaklı enfeksiyon hastalıklarını önlemek için besinlerin tüketilmeden en az birkaç saat önce hazırlanması, patojenlerin üremesine veya toksinlerin oluşumuna uygun olmayan sıcaklık ve nem ortamlarında saklanması, besindeki patojenleri azaltmak için yeterli miktarda ısıtılması gerekmektedir. Besinlerin hazırlanmasından önce annenin ellerinin, yemekten önce annenin ve bebeğin ellerinin yıkanması uyulması gereken en önemli temizlik kuralıdır. Besinlerin hazırlanması ve sunulmasında temiz kase, bardak, kaşık v.s kullanılmalıdır.</p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #ff9900;\"><strong>Aylara Göre Verilmesi Önerilen Tamamlayıcı Besinler</strong></span></p>\r\n<p style=\"text-align: justify;\"><strong>0. ay</strong></p>\r\n<ul style=\"text-align: justify;\">\r\n<li>SADECE ANNE SÜTÜ (Bebeğin aylara göre büyümesi izlenmelidir)</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><strong>6. ay</strong></p>\r\n<ul style=\"text-align: justify;\">\r\n<li>Anne sütüne devam</li>\r\n<li>Yoğurt</li>\r\n<li>Meyve suyu, sebze suyu ve püresi</li>\r\n<li>Pekmez</li>\r\n<li>Şekersiz muhallebi (süt + pirinç unu)</li>\r\n<li>Yumurta sarısı (1/4 oranında)</li>\r\n<li>Besinlerin hazırlanmasında inek sütü küçük miktarlarda kullanılabilir.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><strong>7. ay</strong></p>\r\n<ul style=\"text-align: justify;\">\r\n<li>Anne sütüne devam</li>\r\n<li>Yoğurt</li>\r\n<li>Meyve suyu, sebze suyu</li>\r\n<li>Pekmez</li>\r\n<li>Pirinç unu, pirinç</li>\r\n<li>Yumurta sarısı (tam)</li>\r\n<li>Et (balık, tavuk etleri ve kırmızı et)</li>\r\n<li>Bitkisel yağlar</li>\r\n<li>Sebze püre veya sebze çorba</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><strong>8. ay</strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Anne sütüne devam</li>\r\n<li style=\"text-align: justify;\">Yoğurt</li>\r\n<li style=\"text-align: justify;\">Meyve suyu, sebze suyu</li>\r\n<li style=\"text-align: justify;\">Pekmez</li>\r\n<li style=\"text-align: justify;\">Et (balık, tavuk etleri ve kırmızı et), kuzu veya tavuk karaciğeri</li>\r\n<li style=\"text-align: justify;\">Bitkisel yağlar</li>\r\n<li style=\"text-align: justify;\">İyi ezilmiş ev yemekleri (kıymalı ve sebzeli)</li>\r\n<li style=\"text-align: justify;\">Tam yumurta veya pastörize peynir</li>\r\n<li style=\"text-align: justify;\">Tahıl – kırmızı mercimek, kurufasulye, nohut ezmeleri</li>\r\n</ul>\r\n<p>Broşür için <span style=\"color: #000080;\"><a class=\"wf_file\" style=\"color: #000080;\" href=\"/depo/sagligimyeni/sagliklihayat/bebek_sagligi/pdf/Bebek-Beslenmesi.pdf\" target=\"_blank\"><img class=\"wf_file_icon\" style=\"border: 0px; vertical-align: middle; max-width: inherit;\" src=\"/media/jce/icons/pdf.png\" alt=\"pdf\"><span class=\"wf_file_text\">tıklayınız.</span></a></span></p> 	</div>\r\n								<div id=\"sunfw-social-share\" class=\"text-left\"> Sosyal Paylaşım: <a href=\"javascript:void(0)\" onclick=\"window.open(\'https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fsagligim.gov.tr%2Fsaglikli-beslenme%2Fbebek-beslenmesi.html\', \'share\', \'width=\' + parseInt(window.innerWidth * 0.5) + \',height=\' + parseInt(window.innerHeight * 0.5) + \',menubar=no,toolbar=no\');\"> <i class=\"fa fa-facebook-square\"></i> </a> <a href=\"javascript:void(0)\" onclick=\"window.open(\'https://twitter.com/home?status=https%3A%2F%2Fsagligim.gov.tr%2Fsaglikli-beslenme%2Fbebek-beslenmesi.html\', \'share\', \'width=\' + parseInt(window.innerWidth * 0.5) + \',height=\' + parseInt(window.innerHeight * 0.5) + \',menubar=no,toolbar=no\');\"> <i class=\"fa fa-twitter-square\"></i> </a> <a href=\"javascript:void(0)\" onclick=\"window.open(\'https://plus.google.com/share?url=https%3A%2F%2Fsagligim.gov.tr%2Fsaglikli-beslenme%2Fbebek-beslenmesi.html\', \'share\', \'width=\' + parseInt(window.innerWidth * 0.5) + \',height=\' + parseInt(window.innerHeight * 0.5) + \',menubar=no,toolbar=no\');\"> <i class=\"fa fa-google-plus-square\"></i> </a> <a href=\"javascript:void(0)\" onclick=\"window.open(\'https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fsagligim.gov.tr%2Fsaglikli-beslenme%2Fbebek-beslenmesi.html\', \'share\', \'width=\' + parseInt(window.innerWidth * 0.5) + \',height=\' + parseInt(window.innerHeight * 0.5) + \',menubar=no,toolbar=no\');\"> <i class=\"fa fa-pinterest-square\"></i> </a> <a href=\"javascript:void(0)\" onclick=\"window.open(\'https://www.linkedin.com/shareArticle?mini=true&amp;url=https%3A%2F%2Fsagligim.gov.tr%2Fsaglikli-beslenme%2Fbebek-beslenmesi.html\', \'share\', \'width=\' + parseInt(window.innerWidth * 0.5) + \',height=\' + parseInt(window.innerHeight * 0.5) + \',menubar=no,toolbar=no\');\"> <i class=\"fa fa-linkedin-square\"></i> </a> </div> <script type=\"text/javascript\"> var pageNav = document.querySelector(\".pagenav\"); if (pageNav) { var socialShare = document.getElementById(\"sunfw-social-share\"); if (socialShare) { pageNav.parentNode.insertBefore(socialShare, pageNav); } } </script></div>', 'bebek-cocuk-beslenmesi-diyet', 'True', '2021-12-08 12:58:14', '2021-12-08 12:58:14'),
(10, 'Spor Yaparken Nasıl Beslenilmeli – Sporcu Beslenmesi', 'Spor Yaparken Nasıl Beslenilmeli – Sporcu Beslenmesi', 'Spor Yaparken Nasıl Beslenilmeli – Sporcu Beslenmesi', 'images/POsAIx1QRVHteDea7sqrBrOXe2V0y97y1wI8UfMu.jpg', 10, 1, 159.00, '<div class=\"wpb_text_column wpb_content_element \"><div class=\"wpb_wrapper\"><h2><span style=\"color: #3366ff;\"><strong>Spor Yaparken Nasıl Beslenmeli</strong></span></h2><p>İster maraton koşun, ister fitnes yapın, ister pilates yapın, istersiniz sadece yürüyüş… Hangi sporu yaparsanız yapın, spordan maksimum faydayı sağlamak için sağlıklı beslenmelisiniz. Spor yaparken sağlıklı beslenme konusunda diyetisyen danışmanlığı hizmeti alabileceğiniz gibi aşağıdaki bilgileri de uygulayabilirsiniz.</p><p>Spor yaparken sağlıklı yeterli ve dengeli beslenmek, performansınızı yüksek tutarken aynı zamanda sağlığınıza artı değer katar. Besinlerle yeterli enerji alırsanız daha aktif olabilir, yeterli protein alırsanız kas kütlenizi rahat koruyabilirsiniz.</p></div></div>', 'spor-yaparken-nasil-beslenmeli', 'True', '2021-12-08 13:00:41', '2021-12-08 13:00:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevus`
--

CREATE TABLE `randevus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `kilo` int(11) NOT NULL,
  `nabiz` int(11) NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `randevus`
--

INSERT INTO `randevus` (`id`, `user_id`, `date`, `time`, `kilo`, `nabiz`, `note`, `IP`, `status`, `created_at`, `updated_at`, `product_id`) VALUES
(1, 1, '2021-12-16', '12:00:00', 75, 65, NULL, '127.0.0.1', 'New', '2021-12-08 14:07:58', '2021-12-08 14:07:58', 7),
(2, 1, '2021-12-16', '12:00:00', 75, 65, '<p>deneme</p>', '127.0.0.1', 'Onaylandı', '2021-12-08 14:08:12', '2021-12-10 07:42:05', 8),
(3, 1, '2021-12-23', '15:00:00', 10, 125, NULL, '127.0.0.1', 'New', '2021-12-10 05:40:16', '2021-12-10 05:40:16', 9),
(4, 1, '2021-12-23', '15:00:00', 10, 125, '<p>deneme</p>', '127.0.0.1', 'Onaylandı', '2021-12-10 05:41:00', '2021-12-10 07:33:37', 10),
(5, 1, '2021-12-21', '15:00:00', 75, 98, NULL, '127.0.0.1', 'New', '2021-12-10 09:03:22', '2021-12-10 09:03:22', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `subject`, `review`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 9, 'konu', 'yorum', '127.0.0.1', 'New', '2021-12-10 05:39:46', '2021-12-10 05:39:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hGVKbR4xHr2p3dJKTLdIwQQQwDYGoigneN2J1JoR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNkw5c0liemV0MjdDazZnS2FZN1BjemYxYTF6UEI3TEV0ejh2NmJqMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNjM5MTI0OTY5O31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHYzRWRsalJ2dWJtcS5SVERldDE0NHVZRERYM1A2WjlEY29obENHSnRxVTlBeHN3dTh2bXUyIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2M0VkbGpSdnVibXEuUlREZXQxNDR1WUREWDNQNlo5RGNvaGxDR0p0cVU5QXhzd3U4dm11MiI7fQ==', 1639137837);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `youtube`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Diyetisyen Sitesi', 'Diyetisyen Sitesi', 'Diyetisyen Sitesi', 'Diyetisyen Sitesi', 'İstanbul', '0000000000', NULL, 'sitemiz@info.com', 'smtp.sitemiz.com', 'smtp@email.com', '12345', 578, 'facebook.com', 'instagram.com', 'twitter.com', 'youtube.com', '<div class=\"row\">\r\n					<div class=\"col-sm-6\">\r\n						<div class=\"about-image wow fadeInLeft\" style=\"visibility: visible; animation-name: fadeInLeft;\">\r\n							<img src=\"img/about-image.jpg\" alt=\"About Image\">\r\n						</div>\r\n					</div>\r\n					<div class=\"col-sm-6\">\r\n						<div class=\"about-text wow fadeInRight\" style=\"visibility: visible; animation-name: fadeInRight;\">\r\n							<h3>Melek Gül Haliloğlu</h3>\r\n							<p>Ankara Hacettepe Üniversitesi Beslenme ve Diyetetik Bölümünden 2004 senesinde mezun oldu.\r\n							   6 sene Hospitalium Çamlıca Hastanesinde Diyetisyen olarak görev yaptı.\r\n							Halen kendi özel beslenme &amp; danışmanlık merkezinde faaliyet yürütmektedir.\r\n							<!-- a href=\"#\" class=\"btn btn-read-more\">Read More</a -->\r\n						</p></div>\r\n					</div>\r\n				</div>', '<footer id=\"contactinfo\">\r\n			<div class=\"container\">\r\n\r\n				<div class=\"row\">\r\n				\r\n					<!-- Single Footer -->\r\n					<div class=\"col-sm-4\">\r\n						<div class=\"single-footer\">\r\n							<h4><strong>ADRES BİLGİLERİ</strong></h4>\r\n							<p>\r\n								Bulgurlu Mh. Alemdağ Cad. No:102  <br>\r\n								Adaklı İşhanı Daire 6 (Kat 2)<br>\r\n								Üsküdar/İSTANBUL<br>\r\n								(Ümraniye Metro Durağına 200 metre)<br><br>\r\n							</p>\r\n						</div>\r\n					</div>\r\n					\r\n					\r\n					<!-- Single Footer -->\r\n					<div class=\"col-sm-4\">\r\n						<div class=\"single-footer\">\r\n							<h4><strong>TELEFON BİLGİLERİ</strong></h4>\r\n							<p>	\r\n								Cep : 0-505-5403708<br><br>\r\n							</p>\r\n						</div>\r\n					</div>\r\n\r\n\r\n\r\n					<div class=\"col-sm-4\">\r\n						<div class=\"single-footer\">\r\n						\r\n							<h4><strong>SOSYAL MEDYA</strong></h4>\r\n							<p>\r\n								Gmail: dyt.melekg@gmail.com <br>\r\n								Twitter: diyetisyenmelek <br> \r\n								Instagram: dyt_melek<br><br>\r\n							</p>\r\n						</div>\r\n					</div>\r\n\r\n\r\n		\r\n					\r\n				</div>\r\n			</div>\r\n\r\n	\r\n\r\n			\r\n		</footer>', '<section id=\"feature-work\" class=\"protfolio-padding\">\r\n			<div class=\"container\">\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-12\">\r\n						<div class=\"title\">\r\n							<br>\r\n							<h3>Öncesi <span>Sonrası</span></h3>\r\n							<div class=\"myWarningBlack\">\r\n								<strong>*Yasal Uyarı: </strong>Bu sayfada paylaşılan öncesi&amp;sonrası resimleri danışanlarımıza özeldir. Genel bir anlam veya sonuç ifade etmez. Diyetler kişiye özeldir ve kilo verme hızı kişiden kişiye değişkenlik gösterir.\r\n								</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			\r\n					\r\n			<div id=\"portfolio\">\r\n			  <div class=\"container\">\r\n\r\n    <div class=\"row\">\r\n      <div class=\"portfolio-items\">\r\n\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/01-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/02-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/03-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/04-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/05-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/06-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/07-small.jpg\"> \r\n        </div>\r\n        <div class=\"col-sm-6 col-md-3 col-lg-3 \">\r\n            <img src=\"img/portfolio/08-small.jpg\"> \r\n        </div>\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n			\r\n		</section>\r\n\r\n<section id=\"testimonials\" style=\"background-position: 50% -13px;\">\r\n			<div class=\"container\">\r\n				\r\n				<div class=\"row\">\r\n					<div class=\"col-sm-12\">\r\n						<div class=\"title\">\r\n							<br>\r\n							<h3>Başarı <span>Hikayeleri</span></h3>\r\n								<div class=\"myWarningWhite\">\r\n								<strong>*Yasal Uyarı: </strong>Bu sayfada paylaşılan başarı hikayeleri danışanlarımıza özeldir.  Genel bir anlam veya sonuç ifade etmez. Diyetler kişiye özeldir ve kilo verme hızı kişiden kişiye değişkenlik gösterir.\r\n								</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				\r\n				<div id=\"fawesome-carousel-two\" class=\"carousel slide\" data-ride=\"carousel\">\r\n					<ol class=\"carousel-indicators\">\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"0\" class=\"\"></li>\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"1\" class=\"active\"></li>\r\n						<li data-target=\"#fawesome-carousel-two\" data-slide-to=\"2\" class=\"\"></li>\r\n					</ol>\r\n				 \r\n					<div class=\"carousel-inner\" role=\"listbox\">\r\n						<div class=\"item\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Melek hanıma internet üzerinden araştırma yaparken başarı hikayelerinden etkilenerek nisan ayında başladım iyiki de başlamışım. Melek hanım sayesinde tam 13 kilo verdim ve aynalarla barıştım .. </p>\r\n											<a href=\"javascript:showModal(0)\">Devamı &gt;&gt;</a> \r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>İlknur D.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Melek Hanım, benim hayatımda güleryüzü, azmi ve pozitifliği ile önemli bir yere sahip. Bir diyetisyen, beslenme danışmanı nasıl olur gerçekten tarifi Melek Hanım. Sayesinde doğum sonrası bir türlü ..</p>\r\n											<a href=\"javascript:showModal(1)\">Devamı &gt;&gt;</a>\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>Özgün E.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						\r\n						<!-- Next Slide -->\r\n						<div class=\"item active\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Merhaba iyi akşamlar ismim mehmet 25 yaşındayım.Melek hanımla bundan 7 ay önce tanıştık o aylarda harıl harıl diyetisyen ararken birgün internette bu sayfaya denk geldim.Apar topar aniden hazırlanıp ..</p>\r\n											<a href=\"javascript:showModal(2)\">Devamı &gt;&gt;</a>\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/male.png\" alt=\"Author Image\">\r\n											<h4>Mehmet Y.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>merhaba...ben salim. bundan tam dört ay once tam tamına 118 kıloydum. dengeli ve saglıklı beslenme nedir bilmezdim. işim gereği günün hangi saati olursa olsun yemek yiyordum.her zaman kendi kendime ..</p>\r\n											<a href=\"javascript:showModal(3)\">Devamı &gt;&gt;</a>\r\n											\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/male.png\" alt=\"Author Image\">\r\n											<h4>Salim Ç.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<!-- Next Slide -->\r\n\r\n\r\n						<!-- Next Slide -->\r\n						<div class=\"item\">\r\n							<div class=\"row\">\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>Merhabalar.Adım Dilek.22 yaşındayım.Melek Hanımla diyete 27 martta başladım.Diyete başlamadan önce 74 kiloydum.Melek hanımın sayesinde düzenli beslenme alışkanlığı kazandım ..</p>\r\n											<a href=\"javascript:showModal(4)\">Devamı &gt;&gt;</a>\r\n											<p></p>\r\n										</div>\r\n\r\n									\r\n  \r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>DİLEK Ö.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n								\r\n								<div class=\"col-sm-6\">\r\n									<div class=\"single-testimonials\">\r\n										<div class=\"text\">\r\n											<p>28 yaşında, ev hanımıyım. Diyete başlamadan önce pek çok şey denedim kilo verebilmek için. Akupunktur yaptırdım, çeşitli bitkisel ilaçlar kullandım, yoğun spor programlarına kayıt yaptırdım ve ..</p>\r\n											<a href=\"javascript:showModal(5)\">Devamı &gt;&gt;</a>\r\n											\r\n										</div>\r\n										\r\n										<div class=\"profile-image\">\r\n											<img src=\"img/female.jpg\" alt=\"Author Image\">\r\n											<h4>Özlem Ö.</h4>\r\n											<!--p>Marketing Manager</p-->\r\n										</div>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<!-- Next Slide -->\r\n\r\n					</div>\r\n				 \r\n				</div>\r\n				\r\n			</div>\r\n		</section>', 'True', '2021-01-22 08:45:50', '2021-12-08 13:05:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Rıza Yörük', 'riza@gmail.com', NULL, '$2y$10$v3EdljRvubmq.RTDet144uYDDX3P6Z9DcohlCGJtqU9Axswu8vmu2', NULL, NULL, NULL, NULL, 'profile-photos/NxwkLYCuGMViBeWHgMJtX2ETcI5vV4oIIbafmckc.jpg', '2021-12-07 14:39:01', '2021-12-10 07:39:00', '0551111111', 'İstanbul');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `randevus`
--
ALTER TABLE `randevus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `randevus`
--
ALTER TABLE `randevus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
