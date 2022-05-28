-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 12:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipagung2`
--

-- --------------------------------------------------------

--
-- Table structure for table `basishamas`
--

CREATE TABLE `basishamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hama_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejalahama_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basispenyakits`
--

CREATE TABLE `basispenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejalapenyakit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `gejalahamas`
--

CREATE TABLE `gejalahamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalahamas`
--

INSERT INTO `gejalahamas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bentuk daun berlubang-lubang atau rusak', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(2, 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(3, 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(4, 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(5, 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(6, 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis bagian atas, bahkan hanya menyisakan tulang daunnya saja', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(7, 'Biasanya larva berada di permukaan bawah daun', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(8, 'Umumnya hama muncul pada saat musim kemarau', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(9, 'Membuat lubang kecil pada daun', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(10, 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel mudah\n      patah', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(11, 'Terdapat kerusakan pada bagian tongkol', '2022-05-28 02:33:35', '2022-05-28 02:33:35'),
(12, 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke tongkol.', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(13, 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga\n      tongkol rusak.', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(14, 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak\n      terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(15, 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(16, 'Menyerang mulai dari tepi daun', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(17, 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber makanan terbatas', '2022-05-28 02:33:36', '2022-05-28 02:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `gejalapenyakits`
--

CREATE TABLE `gejalapenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalapenyakits`
--

INSERT INTO `gejalapenyakits` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Terdapat bercak-bercak pada daun', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(2, 'Gejala awalnya muncul bercak-bercak kecil, jorong, hijau tua/hijau kelabu kebasahan yang kemudian menjadi coklat kehijauan.', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(3, 'Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(4, 'Spora banyak terbentuk pada kedua sisi bercak pada kondisi banyak embun atau setelah turun hujan, yang menyebabkan bercak berwarna hijau tua beledu, yang makin ke tepi warnanya makin muda.', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(5, 'Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan\n        daun', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(6, 'Warna daun menjadi memudar', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(7, 'Gejala daun yang terinfeksi berwarna khlorotik, biasanya memanjang sejajar tulang daun, dengan batas yang jelas, dan bagian daun yang masih sehat berwarna hijau normal', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(8, 'Warna putih seperti tepung pada permukaan bawah maupun atas bagian daun yang berwarna khlorotik, tampak dengan jelas pada pagi hari.', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(9, 'Daun yang khlorotik sistemik menjadi sempit dan kaku.', '2022-05-28 02:33:37', '2022-05-28 02:33:37'),
(10, 'Tanaman menjadi terhambat pertumbuhannya dan pembentukan tongkol terganggu sampai tidak bertongkol sama sekali.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(11, 'Tanaman yang terinfeksi sistemik sejak muda di bawah umur 1 bulan biasanya mati.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(12, 'Daun menjadi kering', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(13, 'Tanaman jagung tampak layu atau seluruh daun mengering. Gejala ini umumnya terjadi pada stadia generatif, yaitu setelah fase pembungaan', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(14, 'Pangkal batang yang terinfeksi berubah warna dari hijau menjadi kecoklatan, bagian dalam busuk, sehingga mudah rebah, dan bagian kulit luarnya tipis.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(15, 'Pada pangkal batang yang terinfeksi tersebut terlihat warna merah jambu, merah kecoklatan atau coklat', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(16, 'Terbentuk bisul pada kedua permukaan daun bagian atas dan bawah', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(17, 'Bisul berwarna coklat kemerahan tersebar pada permukaan daun dan berubah warna menjadi hitam kecoklatan setelah teliospora berkembang', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(18, 'Pada saat terjadi penularan berat, daun menjadi kering.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(19, 'Gejala jelas tampak pada daun muda, terutama pada daun yang baru membuka sebagian, berupa mosaik atau adanya warna-warna hijau muda dan tua.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(20, 'Terdapat warna hijau muda atau kekuning-kuningan biasanya memanjang sejajar dengan tulang daun', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(21, 'Tanaman terinfeksi sedikit mengalami hambatan pertumbuhan (stunting) dan ukuran tongkol serta jumlah biji berkurang.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(22, 'Gejala yang semula jelas pada daun muda, dapat menjadi tidak jelas setelah daun menjadi lebih tua terutama pada suhu tinggi.', '2022-05-28 02:33:38', '2022-05-28 02:33:38'),
(23, 'Gejala dapat mulai tampak pada umur tanaman 15 hari setelah berkecambah.', '2022-05-28 02:33:38', '2022-05-28 02:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `hamas`
--

CREATE TABLE `hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamas`
--

INSERT INTO `hamas` (`id`, `name`, `detail`, `solution`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hama Lalat Bibit', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(2, 'Hama Ulat Grayak', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(3, 'Hama Larva Penggerek Batang', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(4, 'Hama Penggerek Tongkol', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:34', '2022-05-28 02:33:34'),
(5, 'Hama Belalang Kembara ', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan\n        satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:34', '2022-05-28 02:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `hasilhamas`
--

CREATE TABLE `hasilhamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kondisihamas`
--

CREATE TABLE `kondisihamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_09_120004_create_permission_tables', 1),
(6, '2022_04_29_183716_create_hamas_table', 1),
(7, '2022_04_29_183906_create_gejalahamas_table', 1),
(8, '2022_04_29_183943_create_basishamas_table', 1),
(9, '2022_04_30_052153_create_penyakits_table', 1),
(10, '2022_04_30_141641_create_basispenyakits_table', 1),
(11, '2022_04_30_141835_create_gejalapenyakits_table', 1),
(12, '2022_04_30_185954_create_hasilhamas_table', 1),
(13, '2022_05_27_115128_create_kondisihamas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`id`, `name`, `detail`, `solution`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Penyakit Hawar Daun', 'Hawar daun Exserohilum turcicum (Pass.) Leonard et Suggs merupakan penyakit pada tanaman jagung\n        yang disebabkan oleh jamur E. turcicum (Pass.) Leonard et Suggs', 'Solution Belum Tersedia', '', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(2, 'Penyakit Bulai', 'Penyakit bulai merupakan penyakit utama pada tanaman jagung yang disebabkan oleh jamur\n        Peronosclerospora Maydis. Perkembangan penyakit ini dimulai dengan infeksi konidia (spora jamur) yang jatuh di permukaan daun jagung. Konidia tersebut kemudian berkembang dan masuk ke dalam jaringan tanaman muda melalui stomata dan selanjutnya berkembang hingga ke titik tumbuh tanaman.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(3, 'Penyakit Busuk Tongkol Fusarium', 'Penyakit busuk tongkol Fusarium disebabkan oleh infeksi cendawan Fusarium moniliforme dan penyakit\n        busuk batang jagung ini tersebar luas di Eropa, Amerika, Afrika, Australia, dan Asia.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(4, 'Penyakit Karat Daun', 'Penyakit karat adalah segolongan penyakit tumbuhan yang disebabkan oleh golongan cendawan (fungi)\n        yang termasuk dalam bangsa (ordo) Pucciniales. Penyakit ini paling jelas gejalanya terlihat pada daun, sehingga\n        disebut karat daun.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:36', '2022-05-28 02:33:36'),
(5, 'Penyakit Virus Mosaik Kerdil Jagung', 'Penyakit ini merupakan penyakit virus jagung yang pertama dilaporkan di Indonesia. Penyebarannya sangat luas, meliputi hampir di semua negara penghasil jagung di dunia.', 'Solution Belum Tersedia', '', '2022-05-28 02:33:37', '2022-05-28 02:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-05-28 02:33:30', '2022-05-28 02:33:30'),
(2, 'user', 'web', '2022-05-28 02:33:30', '2022-05-28 02:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'anywhere', 'admin@gmail.com', NULL, '$2y$10$0YEcyZsj9yANQrBzSn3EGOu8hf.uFvczR/mgQeFs4wQXi0xhc/d5K', NULL, '2022-05-28 02:33:32', '2022-05-28 02:33:32'),
(2, 'Fadli Nur Zaman', 'fadhlynz', 'anywhere', 'fadhlynzn@gmail.com', NULL, '$2y$10$GBATn/u5SZt2/J8FtUAHC.7HWIjY3WeFMHcH2qrANSUp.NCYmrYR6', NULL, '2022-05-28 02:33:33', '2022-05-28 02:33:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basishamas`
--
ALTER TABLE `basishamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basispenyakits`
--
ALTER TABLE `basispenyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejalahamas`
--
ALTER TABLE `gejalahamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hamas`
--
ALTER TABLE `hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisihamas`
--
ALTER TABLE `kondisihamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basishamas`
--
ALTER TABLE `basishamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basispenyakits`
--
ALTER TABLE `basispenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejalahamas`
--
ALTER TABLE `gejalahamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kondisihamas`
--
ALTER TABLE `kondisihamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
