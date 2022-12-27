-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2022 pada 16.01
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(2, 'Football', 'football', '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(3, 'Racing', 'racing', '2022-12-24 20:31:42', '2022-12-24 20:31:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_14_140210_create_posts_table', 1),
(6, '2022_12_14_151120_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Ut qui et illum autem quibusdam.', 'voluptas-repudiandae-architecto-eos-mollitia-voluptatibus-in', 'Natus nostrum neque assumenda dicta et eius rerum. Accusantium quis totam nihil ut adipisci facere similique. Aperiam nihil vel doloribus repellendus.', '<p>Culpa consequatur molestias dolorem non aut esse vitae illo. Doloremque a commodi ut id repudiandae accusamus reiciendis. Omnis deserunt eaque sequi enim earum harum.</p><p>Repudiandae ullam blanditiis repudiandae soluta qui. Quo impedit quos sed quam qui porro. Quod dolorem possimus fugit aut sed sint.</p><p>Nam quibusdam fugit sequi rerum eligendi ut. Ducimus nemo ut iusto voluptatem accusamus inventore. Sit id occaecati maxime veritatis. Facere aut qui optio nesciunt quibusdam possimus maiores quidem.</p><p>Labore vitae voluptatem veritatis ab. Illo eum culpa qui sint expedita magni. Labore autem vero officia incidunt soluta corporis aut. Ipsam atque doloribus sint error.</p><p>Cumque numquam nihil vero dolorum. Eligendi aspernatur accusantium sed fugiat maiores quia dolores. Sed ducimus maxime nobis reiciendis. Nihil et modi at ut officiis enim blanditiis.</p><p>Modi autem laborum nisi asperiores. Est ducimus fugiat iusto omnis dolorem quaerat laborum. Tempore atque dolores expedita ratione occaecati expedita.</p><p>Ab rerum quos doloremque exercitationem est. Ut voluptatem enim eligendi non. Ex illo aut vero aut. Autem commodi porro qui.</p><p>Et at ducimus voluptatum nihil cumque. Dolores voluptatum ut id ea quaerat eum optio. Ea corporis nulla sed natus laboriosam dolore laboriosam.</p><p>Quasi magni quos asperiores ea ab. Quas quia dolore et quasi. Totam impedit ipsum et.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(2, 3, 3, 'Dolorum dicta odit deserunt.', 'incidunt-id-sunt-ut-blanditiis-nostrum-in-nemo-odio', 'Eius et voluptatibus quisquam illum est eos veniam. Et sint velit vel voluptatem vero earum.', '<p>Consequatur consequatur modi error quia. Rerum aut dolorem modi laboriosam voluptas id. Neque fuga qui rerum vero aut libero unde.</p><p>Accusamus perferendis eum qui molestias error. Nemo necessitatibus nostrum eaque est laudantium vitae non ut. Id recusandae optio exercitationem et quae exercitationem. Ut voluptas et sit reiciendis quasi nihil aperiam aut.</p><p>Id corrupti corporis eos. Voluptatem cumque quod minima provident reiciendis. Delectus hic nihil qui qui ipsam molestias. Dolores id laboriosam nemo dolorum.</p><p>Et et cupiditate hic qui. Est voluptatem enim et voluptatem expedita. Qui eum beatae totam maiores natus porro quam.</p><p>Perferendis et beatae amet dolorem est facilis eveniet. Mollitia repudiandae debitis et ipsa. In vel cumque repudiandae illo ex. Ut aspernatur magni sapiente veniam.</p><p>Unde doloremque et nesciunt error et asperiores aliquam. Cupiditate at enim tempore enim. Vel error placeat sunt ipsa.</p><p>Ut eum labore enim in. Possimus distinctio laudantium dolor tempore vitae est. Inventore necessitatibus tempore cum veritatis ea beatae. Omnis tenetur ullam accusantium odio est.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(3, 3, 1, 'Incidunt voluptate ratione dignissimos et harum.', 'mollitia-enim-et-possimus-est-aut-in', 'Nihil quod itaque nulla in nihil sed. Quo reiciendis inventore sunt quisquam beatae porro totam. Sint non dolorem quis minima consequatur quis doloribus. Excepturi doloremque praesentium cumque.', '<p>Eligendi quos sed consequatur sit similique quis. Necessitatibus expedita et at amet blanditiis esse. Perferendis sit voluptate at expedita corrupti corporis. Nobis beatae harum harum voluptatem delectus distinctio rem.</p><p>Quos quo quibusdam quia fugiat. Reiciendis odio quibusdam voluptatem vitae veritatis voluptatibus nemo. Asperiores quia exercitationem voluptas accusantium beatae. Labore minus error eaque velit in aut quibusdam. Vel occaecati dolore soluta veniam.</p><p>Ut aut ea iste. Ut quaerat architecto aliquid. Quibusdam delectus eligendi sit ut consequatur qui voluptas quae.</p><p>Repellat sit dolor necessitatibus. Quos amet perferendis eligendi itaque est debitis. Fuga earum quam debitis nobis voluptates ut. Sed ut deleniti voluptas quos eum facilis et aut. Esse sed non ab eum quisquam qui illum.</p><p>Reiciendis facilis debitis sed voluptate ipsum quas. Rerum quis esse similique excepturi vitae nihil a molestiae. Quibusdam ea mollitia et soluta in non dolore quia.</p><p>Molestiae harum facere repellendus et molestias. Et culpa voluptatem accusantium ut aut. Consequatur sed voluptas eveniet magni voluptas voluptate nihil. Autem magni et aperiam ab quia autem enim eligendi.</p><p>Adipisci earum rerum magni qui adipisci voluptatem. Ut mollitia quidem delectus totam qui ab nihil. Voluptas fugit enim repellat voluptatem praesentium debitis. Unde exercitationem enim dolorum iste molestias.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(4, 3, 1, 'Quia eius consectetur fugiat consequatur iste.', 'laudantium-repellendus-ea-voluptas-sunt-qui', 'Odit et omnis aut. Est placeat perferendis nihil suscipit dolor. Qui itaque nostrum ipsam repudiandae earum iste dolores non. Et eveniet fugiat pariatur in repellendus tempora. Ea omnis quibusdam quaerat totam quo.', '<p>Beatae aut ut illo eius. Dolorem sed non molestiae aut corrupti. Modi dolorem quaerat velit inventore laboriosam. Perferendis in quam minima asperiores.</p><p>Saepe voluptates qui sunt nobis placeat omnis iusto assumenda. Dolorem dolorum voluptas quia id sed dolorem porro. Aut minus consequuntur doloremque architecto.</p><p>Officiis officia et facilis. Recusandae vitae dolores voluptatem tenetur et facilis architecto quia. Et assumenda temporibus aut consequatur necessitatibus vel quasi.</p><p>Cupiditate rerum quia tempore aspernatur qui. Tempora sunt sint accusamus voluptatem. Sit est nam esse asperiores quod voluptatem. Praesentium nobis nihil sed voluptate est eos et.</p><p>Libero omnis rem enim amet fugit reprehenderit labore eligendi. Quos eligendi dolorum voluptas explicabo.</p><p>Non cumque ea quisquam quam dolores et. Officia nam recusandae quasi earum. Quis qui sint qui doloribus commodi illum.</p><p>Velit quibusdam voluptates tempora occaecati nobis quis. Et distinctio excepturi a dolore et. Nesciunt cupiditate similique et natus voluptatem expedita. Nihil earum quo recusandae. Vel placeat voluptas iste voluptate corrupti.</p><p>Perferendis nihil atque eos et quisquam. Repudiandae aut et voluptas ut voluptatem.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(5, 3, 2, 'Dolorum est omnis temporibus id nemo.', 'quaerat-ipsa-dolorum-et-quas-laboriosam', 'Sint cupiditate qui atque repudiandae aliquam. Explicabo officia at officiis voluptas vitae vero voluptatum. Esse magnam eius ad nostrum.', '<p>Sit error molestiae magni quia. Nulla nihil voluptatibus qui cupiditate et et quod. Facilis reiciendis quidem consequuntur doloremque. Architecto occaecati mollitia ad earum asperiores provident rem.</p><p>Natus ut eos facere ut. Officiis vitae temporibus molestiae nihil alias et. Illum consequatur sint nisi.</p><p>Vel quae qui et tenetur. Veritatis temporibus hic dolor est placeat provident. Ratione fugit repellendus expedita. Sequi magnam maxime aut quos debitis labore.</p><p>Voluptates quae autem vero quae fugiat eius velit. Enim ut fugit debitis aut similique repellat. Sed fugit atque voluptas natus quis laboriosam rerum quis.</p><p>Ut temporibus veniam qui. Ut id cumque dolor ab aliquam omnis facilis voluptas. Rerum voluptatem dicta omnis facilis.</p><p>Officiis sunt nam natus sunt quis. Eos quaerat maxime modi mollitia nisi quisquam ea. Illo rerum sed vero quos facere debitis ipsum. Illum vel molestiae aspernatur voluptatem et. Et ut fugiat tenetur.</p><p>Molestias nesciunt dignissimos fugit suscipit. Laboriosam alias velit amet et voluptate odio aperiam facilis. Minus laudantium nostrum eveniet animi exercitationem dolorem aliquam. Debitis sed laudantium saepe debitis consequatur culpa veritatis tenetur.</p><p>Sed placeat incidunt harum id ut ut odit. Vero ad et sequi ex sed reprehenderit quisquam. Nemo cupiditate consequatur veniam qui id autem. Et eaque accusantium vel aut rerum.</p><p>Sit repellat explicabo aliquid corporis voluptatem et. Tenetur fuga voluptatem vitae qui et dolorem cumque suscipit. Non recusandae sed repudiandae. Dolore repudiandae eius placeat vel.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(6, 3, 1, 'Eum ea deleniti.', 'reiciendis-corporis-magni-et-commodi-qui-voluptatibus', 'Qui repudiandae maiores blanditiis occaecati saepe. Voluptatem unde in numquam aliquid ut eum et. Quia minus voluptatem iusto et.', '<p>Tenetur porro saepe qui consequuntur. Nihil et qui qui molestiae ea quibusdam omnis. A rerum nihil et reiciendis.</p><p>Qui libero illo aliquid sit. Qui iusto dolore reprehenderit vitae praesentium vero.</p><p>Molestiae architecto quia similique facilis ipsam. Vitae est et natus voluptatum voluptas maxime. Sint culpa natus consequuntur. Minima voluptas perspiciatis officia magnam dolorem beatae.</p><p>Voluptatem voluptatem fugiat nobis qui. Ut quos voluptatibus minus officia eius rerum. Labore quia nulla eveniet quo et esse eveniet.</p><p>Et magnam eveniet quod voluptates nulla nam vitae. Quia voluptates facere et minima. Voluptatem itaque nihil aut.</p><p>Sunt eius quaerat est enim. Ea veritatis doloribus fugit. Est molestiae voluptatum dolor cum explicabo. Suscipit officiis qui voluptatum sit. Dolor ipsa consequatur aut architecto adipisci placeat.</p><p>Iusto omnis culpa iure officia ut aperiam qui blanditiis. Odio illo doloribus neque ullam est. Et odio rerum aut voluptas ut vel. Suscipit aperiam voluptatem nobis facilis illum voluptate consequatur tempore.</p><p>Odit in ut molestiae ullam accusamus repellat. Quis doloribus dignissimos quidem labore et et. Incidunt voluptatem reiciendis omnis nam.</p><p>Eum commodi odit pariatur occaecati. Quaerat ratione vel unde ratione praesentium autem distinctio. Minus occaecati natus rerum repellendus quo.</p><p>Voluptatem aspernatur eum porro dolores ut. Rerum est non dolor. Occaecati explicabo distinctio ea quia harum cum corrupti.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(7, 1, 1, 'Voluptatem et dolor qui quis optio nam et.', 'commodi-dolorum-et-sequi-eligendi-dolores', 'Nulla mollitia id a adipisci nihil. Consequatur nihil est nobis eos ut omnis. Explicabo et voluptas cum non vitae.', '<p>Voluptatem maiores sed voluptates quo facilis earum soluta iste. Optio placeat mollitia ex quae eos. Corporis voluptatem quidem et suscipit amet. Fuga quis similique quos in.</p><p>Libero et rerum non cumque explicabo perferendis eos. Dignissimos ab repellat placeat rem. Unde architecto dignissimos sequi dolore.</p><p>Tempore sed esse nesciunt accusamus ab. Eos commodi sed reiciendis laudantium. Quia expedita quasi blanditiis doloremque delectus eveniet vel.</p><p>Assumenda id hic veniam veniam. Nostrum quos quis quo amet nihil suscipit. Nihil ea aliquid ipsa.</p><p>Molestias repellat omnis quo. Accusamus doloribus consequuntur voluptates enim aliquid ut explicabo. Inventore vitae dolores dolores distinctio est aperiam est optio.</p><p>Inventore rerum voluptatem sit quia qui sint. Vero animi inventore autem esse voluptatibus eius quo porro. Enim sapiente corrupti et voluptatibus perspiciatis quo.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(8, 3, 2, 'Quis sit ea officia non dolor.', 'commodi-neque-et-quas-tempora-aut-perferendis', 'Eum eligendi non mollitia nihil aliquam sit cum voluptas. Quo voluptatem itaque numquam et. Cumque impedit suscipit inventore dolorum impedit natus consequatur numquam.', '<p>Consequatur soluta asperiores quaerat enim neque doloribus consequatur. Molestiae fuga praesentium suscipit et.</p><p>Voluptate omnis incidunt ratione ut. Rerum cumque numquam occaecati sed tempora exercitationem eaque. Possimus quae beatae dolorum rem.</p><p>Minima culpa quidem ex doloribus quis et. Voluptatum cum qui sapiente similique consequuntur nam. Dolor eveniet qui voluptatibus blanditiis et.</p><p>Libero amet sunt nisi asperiores. Accusantium qui soluta porro reiciendis officia placeat optio. Laudantium quam inventore voluptatum aspernatur.</p><p>Commodi sit et voluptatem iste incidunt. Placeat cupiditate similique quasi. Magnam atque eos eum hic. Ut error et in architecto.</p><p>Reiciendis ut repellat natus praesentium eaque excepturi dolores. Dolores modi animi consequatur non. Tenetur quia eum tempora et. Voluptates fugit quibusdam odio aperiam ea neque.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(9, 3, 2, 'Cupiditate eaque nihil perferendis sunt quam qui non est.', 'ut-ducimus-sit-laborum-sit-sit-sed-non', 'Earum voluptate ut nisi eum asperiores. Sunt quo repellat quaerat voluptate est et facilis consequatur. Qui similique nobis commodi perferendis ipsam. Eligendi adipisci nesciunt consequatur autem iusto.', '<p>Eum praesentium omnis sed rerum maiores. Ab eos nemo eaque occaecati.</p><p>Eos dolor ut placeat quia nulla. Consequatur recusandae vitae voluptatem dolores ullam odit provident. Neque quod ut dolores.</p><p>Ab eum dolorum et et molestias placeat. Aut et voluptatum nihil. Optio aut placeat qui maxime non porro.</p><p>Ut voluptates qui ut explicabo optio. Rerum sunt reprehenderit ipsum vitae dignissimos ad ut. Sed eligendi minima sint ut itaque non.</p><p>Itaque omnis ipsum mollitia omnis. Accusantium laborum consequuntur rerum. Inventore sequi dicta ducimus.</p><p>Voluptates placeat mollitia necessitatibus et error excepturi qui. Ut voluptas qui sint deserunt quis aut labore. Ut distinctio sequi molestiae molestias est velit.</p><p>Impedit dolores vel consequatur repudiandae et maiores. In illo ullam velit incidunt non ut aut. Qui id nihil quisquam.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(10, 1, 2, 'Odit facere id.', 'velit-blanditiis-ea-veritatis-delectus-corporis-doloribus', 'Ut laudantium laborum molestias consequatur tempora facere eveniet unde. Qui molestias enim sunt aut. Amet nostrum fugit nisi aut error magnam amet.', '<p>Saepe optio ipsa commodi expedita asperiores ducimus voluptate. Esse soluta porro accusantium officiis non assumenda. Quis et ipsam debitis nostrum.</p><p>Quaerat et cupiditate deleniti provident aut. Quos aliquid consequuntur voluptate ipsa delectus ab ut.</p><p>Sit eveniet recusandae qui blanditiis quibusdam ut enim. Beatae voluptatem deleniti ut dolor nemo. Voluptate atque harum repellendus.</p><p>Ipsa atque et atque laborum est. Ut temporibus possimus magnam ut enim. Voluptatem odio id vero cum.</p><p>Consequatur quia aut facere aut non quos. Totam provident similique laudantium sunt a unde culpa. Et nemo amet eos omnis quia quam. Animi atque sed architecto aperiam quidem cupiditate.</p><p>Possimus nihil dolorem quae nobis. Et qui quia unde dolorum. Praesentium reiciendis sit alias necessitatibus qui rerum. Tenetur optio quos excepturi magni.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(11, 2, 1, 'Possimus nihil voluptas ea quod soluta nesciunt.', 'ullam-est-blanditiis-fugit-et-ducimus-necessitatibus', 'Eos laborum possimus facilis aut qui laboriosam assumenda. Consequatur maxime dolor aliquam consequuntur voluptatem.', '<p>Sit explicabo enim et porro alias. Quisquam ea voluptas sunt qui. Deserunt perferendis voluptatum itaque earum laboriosam. Temporibus maxime dicta fugit repellendus explicabo molestiae mollitia.</p><p>Autem et quis maiores sit. Est ad veritatis ducimus et explicabo libero eos est. Consequatur officia eum animi iusto.</p><p>Dignissimos pariatur nobis ea doloribus animi. Praesentium reprehenderit quis provident. Impedit ipsam ut officiis in doloribus cum voluptatum. Et eveniet qui omnis vel sequi nobis architecto.</p><p>Cumque quasi neque molestiae mollitia perferendis officiis ducimus. Incidunt delectus tenetur ea adipisci eius nulla. Repudiandae alias ut nihil sint aut hic iure. Temporibus architecto cumque ducimus dolorum quia.</p><p>Distinctio non vel nihil expedita quas qui eius. Vel repudiandae sunt et cumque commodi repudiandae. Velit eos fuga qui perferendis doloremque. Dolorem hic minima repellat dolorum. Commodi dolores aliquid necessitatibus sed consequatur et et.</p><p>Dolores et ut et voluptatem veritatis quia enim. Nisi cum omnis accusamus odio praesentium occaecati. Ut reprehenderit id facilis laboriosam laborum. Voluptas vel ratione quae ex unde quo vitae corporis.</p><p>Corporis quis iusto soluta illo tempora et. Modi excepturi nihil sit doloribus expedita non.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(12, 3, 1, 'Dignissimos quae nostrum dolore ullam.', 'eveniet-nulla-fuga-qui-ut-fugit-quia', 'Nesciunt nihil dicta eligendi ipsum. Reiciendis dolorum omnis nesciunt pariatur accusantium voluptate sequi voluptas. Dolor iusto sit assumenda reprehenderit error.', '<p>Officia nostrum dolorum perferendis id cupiditate velit dolores. Qui voluptas in et ex fugiat et omnis. Vero quo fugit earum consequatur. Et magnam accusantium rerum tenetur non quia. Non sit suscipit eum voluptatibus sed commodi.</p><p>Eum est aspernatur repudiandae aut. Sequi repellendus eos qui velit. Adipisci in at dolorem earum blanditiis. Tempora odio et magni et ea.</p><p>Quis tempora aut vero consequatur sapiente. Dolorem voluptas placeat ipsa accusantium. Recusandae magni occaecati deserunt temporibus veniam iusto. Sunt sed amet autem.</p><p>Autem sequi itaque dolore laboriosam. Et praesentium neque est nobis maxime. Similique ipsa minus doloremque eum excepturi nisi placeat.</p><p>Fugiat debitis sit consequatur qui. Esse laborum et eum dolores beatae. Delectus maiores qui ut distinctio quia possimus.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(13, 2, 1, 'Pariatur est aut ut id a dolor aut officia veritatis.', 'commodi-nam-sapiente-omnis-tempore-laborum-totam', 'Ratione numquam quae recusandae eveniet. Quaerat reiciendis tempora ad accusamus. Dolorem eveniet omnis est ad. Odit commodi hic consequatur ipsum quis necessitatibus autem.', '<p>Accusamus officia fuga necessitatibus nesciunt. Ut minima necessitatibus possimus sunt et impedit sunt. Reprehenderit aut error enim nobis nostrum cupiditate assumenda.</p><p>Dolorum nam et et deleniti. Corrupti nisi quod dolorem earum consequuntur. Consequatur aut alias voluptatem totam minus vitae quae. Voluptatem ut est nisi ea maiores nesciunt nobis.</p><p>Atque rerum omnis eos totam suscipit labore ipsam. Iusto laboriosam ut sapiente rem voluptates id. Quaerat doloribus occaecati nisi quidem autem.</p><p>Veniam omnis quibusdam qui praesentium accusamus omnis. Nobis totam illum molestias itaque architecto explicabo. Aspernatur exercitationem aut tempore delectus aspernatur quam architecto. Ut commodi qui et impedit modi nulla in dolor.</p><p>Tempore quae ea id quia. Inventore autem quas sapiente consequuntur. Et ut et ut nemo.</p><p>Ea non quos dolor distinctio fugit vitae et. Voluptatum unde quia eum aperiam qui. Nisi aut atque autem minus. Pariatur incidunt quaerat dolor qui voluptatibus nihil dignissimos.</p><p>Sapiente dolore ut earum est et. Autem sint maiores aut sit culpa et deleniti veritatis.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(14, 2, 2, 'Quae ipsam praesentium quam.', 'nihil-dolor-qui-cum-ab', 'Nulla voluptas optio aut cum consectetur et explicabo accusamus. Neque officiis debitis nam veniam laudantium sed possimus velit. Cum unde totam et blanditiis quidem qui eligendi.', '<p>Aut architecto incidunt voluptas ea omnis soluta. Ut totam et esse et quia.</p><p>Aperiam aut minima a consequuntur porro. Est eveniet est nesciunt beatae qui ab dolores. Quam voluptatem ducimus ea excepturi inventore deserunt.</p><p>Qui quo sit non. Recusandae occaecati dolores dolorem itaque. Amet illum pariatur aut rerum nihil ea nesciunt. Voluptatum illum sapiente laudantium voluptatem harum vel dignissimos.</p><p>Et voluptate qui ratione nobis non consequuntur. Beatae omnis hic laborum in. Ut omnis veniam assumenda quae vitae.</p><p>Aspernatur illum consequatur tempore et voluptates dolorem cum. Eveniet est voluptas sit. Veritatis tenetur ullam illum amet quam cupiditate.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(15, 3, 3, 'Repudiandae officia occaecati reiciendis velit consequatur.', 'laudantium-suscipit-quo-nulla-itaque-deserunt', 'Est quam voluptatem fugit sunt sed veniam doloribus. Alias facilis dolor vitae. Itaque sunt beatae dolore architecto sed. Vel voluptatum incidunt enim illum magnam occaecati.', '<p>Amet non et id tenetur corrupti assumenda ipsam. Eius eum velit maxime ad debitis. Voluptatem suscipit consequatur sapiente autem earum. Cupiditate quis velit voluptas laudantium ipsam quae.</p><p>Aut voluptatem qui fugit earum aut. Quia non voluptatum molestias dolores. Sapiente voluptatem commodi dignissimos nulla esse reiciendis.</p><p>Cupiditate illum enim atque eum doloribus. Qui necessitatibus culpa nam fugiat provident. Ea quam ut asperiores vel dolores nemo.</p><p>Id adipisci est suscipit id accusamus sunt. Error tempore voluptas pariatur dolore adipisci quod. Quam animi dolores et quidem quibusdam itaque eum. Voluptates accusantium et vel eos.</p><p>Aut sed harum ipsum. Quia accusamus minima voluptatem eos qui. Aut voluptatem placeat laboriosam officiis molestias ea corrupti.</p><p>Beatae nobis est et eius vitae. Laborum a voluptatem voluptas ullam. Culpa ut quidem aperiam aut dolores. Adipisci impedit quaerat reprehenderit accusamus id expedita voluptatem.</p><p>Quidem in pariatur temporibus est. Quam exercitationem quod eos debitis aut. Ea voluptatem incidunt placeat suscipit voluptas dolore placeat.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(16, 2, 1, 'Fuga cupiditate aperiam.', 'qui-corporis-recusandae-blanditiis', 'Deleniti rerum est qui et. Provident est et est ratione voluptas aperiam quod. Consequatur quis neque porro aspernatur nulla quod.', '<p>Rem quidem corrupti ad aliquid. Fugit nihil aspernatur a porro quod quidem possimus. Repellendus rerum impedit consequuntur tenetur velit aut eius. Et dignissimos quo tenetur explicabo fugiat.</p><p>Quidem laborum omnis pariatur laudantium reprehenderit assumenda. Aut voluptatem animi est est asperiores laudantium est praesentium. Reprehenderit beatae eum qui aut quasi exercitationem. Quia qui quas et id recusandae vero omnis sed.</p><p>Ea velit molestiae nam earum vitae. Corporis velit nostrum vero cupiditate. Odit aut et neque error deleniti illo eum. Repudiandae dolorum necessitatibus et cumque veritatis. Natus dolorum ut enim incidunt libero.</p><p>Ut mollitia id omnis expedita totam mollitia nobis. Velit consequuntur quisquam esse nesciunt molestiae nemo qui provident. Autem voluptatum perspiciatis aut quia reprehenderit iste.</p><p>Sint excepturi doloribus et eum ut. Rerum laboriosam rerum quo atque architecto aut distinctio iusto. Error quia est at quisquam est tenetur nostrum.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(17, 3, 2, 'Consequuntur doloribus quod quae dicta voluptas.', 'et-libero-nobis-neque-fugit', 'Hic quia architecto occaecati qui eum architecto quasi. Et sint cumque dolores et. Error nulla ut reiciendis labore molestias. Aut voluptate ipsa consequatur qui eligendi ut.', '<p>Asperiores sequi laboriosam illum eum quis est. Ut doloribus consequatur velit. Consequatur quaerat quasi repellat doloremque. Ut soluta voluptatem autem at unde odio.</p><p>Eum placeat voluptate voluptatibus vero. Quaerat et vel quaerat dolorem nam ut. Ut aut eaque totam reiciendis. Velit enim consequatur ea.</p><p>Est veritatis accusantium assumenda dolorem et dolor. Fugiat autem expedita sit. Et eos voluptatem illum perferendis voluptate sunt nihil. Nostrum omnis quos sint alias a quibusdam voluptatibus.</p><p>Nihil quo quia eos quia et. Debitis occaecati tempora non.</p><p>Nemo tenetur molestias sequi consectetur nihil et quasi laudantium. Eum pariatur ea quasi sit amet vitae. Et ratione provident nesciunt nemo. Nisi consequatur ipsum consectetur est quia aut.</p><p>Sit omnis totam velit qui quia in. Necessitatibus accusantium veniam harum qui non. Delectus autem atque et hic illum et. Illo hic eum error totam.</p><p>Corporis velit eligendi velit omnis rem voluptas impedit. Eius perspiciatis placeat nobis velit sit neque autem eos.</p><p>Blanditiis sunt debitis rem quod quis sed veritatis. Debitis perspiciatis eaque ipsum dicta asperiores aspernatur quia ipsa. Et vel est dignissimos cum.</p><p>Dicta quis id in delectus. Et est rem neque deserunt accusantium. Incidunt recusandae eveniet eligendi cum. Eius ratione ipsa accusamus ex.</p><p>Ut a dolor quisquam totam quos. Excepturi iusto quas laudantium est harum similique voluptas non.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(18, 3, 3, 'Minus nesciunt deleniti corporis sit atque saepe nemo.', 'alias-dignissimos-sed-quia-aliquam', 'Optio odit veritatis et eius aliquid eaque tenetur. Eveniet sit sit aspernatur quia cumque omnis. Qui omnis libero et quo aperiam.', '<p>Eveniet corporis dolorem corrupti labore est voluptatem velit. Eius eveniet enim voluptate voluptate delectus exercitationem. Ut ad iusto perferendis neque tempore.</p><p>Repudiandae rerum commodi velit eos est. Impedit id animi fugit. Eum temporibus enim laboriosam ea voluptatum ducimus molestias magnam. Excepturi corrupti sit saepe sed velit vero. Accusantium laboriosam minima alias ut.</p><p>Unde quos tempora ea aut libero eos in. Voluptatem magnam non ratione autem consectetur maxime dolor explicabo. Quisquam illo quia aspernatur sint.</p><p>Provident aut id ut numquam autem. Saepe facere cumque totam aperiam et saepe. Voluptas nostrum quos necessitatibus sint architecto.</p><p>Neque saepe molestiae labore aut est voluptas quod. Quia ratione sequi quidem accusantium. Voluptates veritatis vel dolorem laboriosam assumenda ut est assumenda.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(19, 3, 3, 'Animi eius est maiores rem qui dolores.', 'a-facilis-perferendis-laboriosam', 'Quia quisquam inventore maiores quo. Molestias dolorem voluptatem impedit impedit corrupti hic porro ut. Praesentium placeat cupiditate nam delectus eum consequuntur occaecati eveniet. Aut excepturi iure unde sunt ea ullam.', '<p>Modi ipsam nihil nisi rerum dignissimos laboriosam cum. Tempora nulla aliquam et. Vero enim accusamus dignissimos et aut.</p><p>Est laudantium praesentium consequatur impedit voluptatem. Voluptatum voluptas a maiores ut. Cumque qui repellat tempora ab laudantium. Fugit mollitia quaerat ad qui nulla maxime at.</p><p>Beatae odio aliquid dolores quia et. Asperiores non qui quia rem inventore. Maxime voluptate dolor possimus numquam repellendus.</p><p>Nobis voluptate totam in perferendis vel iste qui. Amet nihil doloremque sapiente alias. Et recusandae est atque quisquam molestiae. Iusto sint vero expedita voluptatem ut nulla et.</p><p>Debitis maiores saepe et asperiores quia laboriosam. Quia optio hic placeat quos qui fuga omnis neque. Blanditiis qui consectetur omnis excepturi consequatur.</p><p>Odio odio hic enim aperiam. Vitae nam laborum ut rerum impedit quo minus est. Ea quo accusamus in voluptatem et et. Provident quibusdam explicabo explicabo omnis alias odio consequatur.</p><p>Quia voluptatem maxime et et non itaque. Omnis eum nobis quibusdam dolorem adipisci numquam harum. Omnis et aut qui alias et omnis tempora. Nobis non eos minima blanditiis.</p><p>Distinctio non unde eius. Voluptatum molestias impedit facere quam sint rem sit. Libero suscipit provident doloremque aut. Reiciendis aut est sed et ut soluta corporis. Voluptatem voluptatibus cupiditate hic optio incidunt quis.</p><p>Sit dicta nobis facere beatae. Quas aut dolorem illo maiores. Quos saepe non est voluptatum sed.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(20, 2, 1, 'Deleniti omnis sint placeat reiciendis.', 'harum-et-modi-ipsam-cumque-magnam', 'Dignissimos magni consequatur quisquam. Cumque et qui sit sit sint. Veniam ab vel impedit rerum quis. Minima laboriosam id nostrum expedita fuga ullam.', '<p>Veritatis libero incidunt necessitatibus eius aperiam temporibus eaque. Rem adipisci et a quod. Aut qui maxime officia. Earum voluptatum laborum doloribus id.</p><p>Non saepe dolore sed fugiat dolorem in. Consequatur ex rerum dolorem rerum rerum. Aut officia rerum aut veritatis sit sit omnis. Et quam veritatis nobis minus.</p><p>Natus quis autem laborum ut et molestias. Aut atque nobis quia et consectetur est officia. Et perferendis voluptas molestiae quae et unde temporibus optio.</p><p>Optio aliquam laboriosam animi et et laborum eum. Illo eos voluptatem id sed reiciendis est accusamus. Quo non dignissimos ad voluptas unde hic. Aperiam repellendus repudiandae ut nam amet et.</p><p>Officia mollitia qui quia. Consequatur ut a nihil laborum aperiam eum saepe in. Neque unde vero ab ducimus. Quis illo natus commodi sit ducimus cum cupiditate voluptatem.</p><p>Ut earum et enim saepe laboriosam totam. Optio eum dolorem neque delectus iste laudantium aut. Id aliquid veniam et aut aut.</p><p>Vel quas sed non qui rem sunt. Nihil delectus error aliquid repellat rerum sint. Cumque quo esse vel inventore veniam rerum iure officiis. Consequuntur eum doloribus beatae similique. Sed tempora et similique repellendus et molestiae.</p><p>Ipsam accusantium animi ipsum debitis ea molestiae. In nisi est dolore aut harum ab. Velit similique occaecati ut sit. Accusantium minima ratione dolorem et ipsa.</p><p>Quae qui aut id ut est. Quas fugiat nihil nulla quia minus vitae molestiae. Accusamus dolores aliquid ducimus tenetur molestiae nihil.</p><p>Suscipit voluptatem et vitae qui cumque sunt nam. Quisquam facilis exercitationem quae est molestias. Odio expedita adipisci consequuntur.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(21, 3, 3, 'Nobis voluptatem aliquam ea et.', 'nihil-ut-et-et-soluta-nulla-et-officia', 'Mollitia sint ut itaque qui aut. Ex blanditiis doloremque consequatur blanditiis iusto. Praesentium nostrum placeat dicta a aliquam dolor.', '<p>Possimus odit cupiditate in aut voluptatem. Reprehenderit expedita ut dolor aliquam. In eum dolores est optio hic. Unde alias autem quia repudiandae numquam optio error.</p><p>Eaque excepturi earum est consequatur eaque est corporis. Incidunt est eum non est molestiae molestiae. Quasi eaque sit atque quos vel laboriosam. Voluptas est veniam fugiat. Nihil dolorem eum illo ut.</p><p>Odit adipisci accusamus ratione animi quae veritatis optio. Blanditiis voluptatem velit molestiae numquam delectus autem. Consequatur inventore voluptatibus omnis.</p><p>Quia vitae necessitatibus ea sit a quae. Modi cum velit aut cumque itaque aut est. Tenetur voluptatem ipsam omnis voluptas voluptatibus incidunt ut.</p><p>Consectetur ut maxime voluptatem deleniti qui labore molestias. Quod necessitatibus consequatur aliquid culpa quia dicta sequi.</p><p>Voluptatem officia delectus qui optio. Distinctio adipisci molestiae quis nemo ab. Necessitatibus maiores assumenda distinctio iusto laborum.</p><p>Voluptatibus omnis repellat eum rerum. Sunt hic asperiores deserunt sint. Ratione error quia ratione maiores.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(22, 2, 1, 'Adipisci voluptatibus unde ut quam dolorem repellat est.', 'est-eos-nobis-veritatis-laudantium-nemo-magni-tempore', 'Aspernatur cum molestiae vitae est adipisci. Nihil qui optio tempora molestiae. Harum et perspiciatis facilis neque. Eos deleniti suscipit reiciendis sed a.', '<p>Similique quo eaque autem tenetur impedit. Dignissimos voluptatibus veritatis tempora eos. Non sint ea esse ut amet. Vel consequatur sint fugiat eveniet distinctio sunt.</p><p>Voluptate provident unde facilis aut. Id molestias officia ipsum ratione maiores. Quia veniam quaerat saepe fugiat. Eius quas est sequi. Assumenda consectetur ipsum non.</p><p>Voluptas consectetur sint sit ut quaerat totam et. Laudantium voluptas et aut praesentium consequuntur soluta et. Dolor reiciendis quibusdam molestias sed quaerat deleniti molestiae tenetur. Aspernatur dignissimos culpa ad. Id quia et rerum ut adipisci.</p><p>Sit eaque qui sed. Aliquam voluptatum quia quis quos aspernatur atque. Quia autem unde dolor.</p><p>Qui magni accusantium ut dignissimos voluptates. Ut est fuga aut reprehenderit ut quod. Placeat consequatur fugit culpa molestiae nulla necessitatibus.</p><p>Ducimus enim voluptate soluta corporis rem iusto mollitia iure. Non quaerat id et. Doloremque molestiae tenetur minima adipisci. Voluptas vitae voluptatibus omnis est doloremque quaerat.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(23, 3, 2, 'Consequatur ut id aut ullam.', 'distinctio-sit-fugit-voluptas', 'Impedit quia placeat a quibusdam aliquid et ea sint. Et enim quia est. Dicta ratione ut sit error. Voluptas ut ab sunt dolor ut aut adipisci iste.', '<p>Placeat quaerat maiores sunt omnis. Voluptas consequatur omnis et ut non reprehenderit. Molestiae delectus corrupti amet voluptas est voluptates veniam.</p><p>Temporibus accusantium nobis nam ullam. Rerum eveniet voluptatum architecto et. Eligendi enim sed dignissimos laudantium. Minus beatae commodi dolorum enim velit nam quod.</p><p>Voluptatem voluptas deserunt in expedita non rerum nulla omnis. Asperiores velit recusandae numquam et aut iusto. Dolores et qui dolor in est sit. Aliquam voluptatem consequatur sit corrupti rerum et rem commodi.</p><p>Placeat facilis eos et. Sint enim est non non autem eveniet. Aut molestiae sed voluptate et tenetur cumque.</p><p>Eum quod reiciendis quae repellat quis totam ea. Sed laborum enim et suscipit praesentium maiores. Laboriosam illo molestias veritatis qui sit saepe ipsa. Iste qui corporis veritatis aspernatur autem consequatur.</p><p>Quia dicta qui suscipit tempora optio deleniti. Enim minus placeat eos est reiciendis ut placeat. Aliquam molestiae ipsa esse doloribus.</p><p>Fuga adipisci expedita fuga non consequatur odit qui deserunt. Id consequatur voluptatem quis nihil laudantium rerum. Ipsam aliquam minima eaque sit. Est ab non voluptatibus consectetur.</p><p>Voluptatem ratione voluptates explicabo sapiente voluptatum. Et veniam hic sit dignissimos. Maiores suscipit quia voluptatum consectetur sapiente.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(24, 1, 1, 'Nam earum.', 'non-culpa-non-ullam-qui-cumque', 'Voluptatum sapiente natus voluptas quaerat accusamus similique. Dicta aliquid et nobis eius distinctio eos aliquam. Et impedit illum voluptatem quis a. Aut sed quia ratione sint culpa omnis eos.', '<p>Eos dolores numquam ut neque et non. Deleniti minus assumenda at quia possimus rem. Et officiis cupiditate eaque ea velit. Provident minus nam nisi in quam neque voluptas atque.</p><p>Unde recusandae iusto autem aut nostrum. Sit quaerat accusamus vitae ad sit. Atque quo aut blanditiis dolores quia perferendis.</p><p>Fuga alias voluptas aut ut tempora culpa repellat. Ut impedit est harum qui at aut suscipit. Est commodi non laboriosam fugiat dicta sed quasi. Quibusdam iusto ad in et.</p><p>Vitae nihil et quia est sed dolores. Nulla ratione cum sint consequatur.</p><p>Et impedit eos et inventore est. Sit nulla corrupti et. Dolorum voluptatem at qui est quidem quis est. Ut aspernatur doloremque officia blanditiis est praesentium aperiam.</p><p>Fuga magnam voluptatem in autem. Numquam voluptatibus iure et repellendus voluptatem vero. Autem iure quia odit voluptas ea. Voluptatibus ex itaque pariatur.</p><p>Delectus necessitatibus est suscipit aut soluta voluptate cum. Vel sed enim laboriosam itaque. Dicta qui et occaecati sed sit cumque.</p><p>Voluptas optio impedit et qui modi officia perferendis. Accusamus quam tenetur perspiciatis impedit tenetur architecto. Reprehenderit reiciendis excepturi totam qui aperiam non. Enim sed doloremque maiores ut suscipit suscipit.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(25, 2, 1, 'Aspernatur at error ipsa pariatur.', 'dolorum-reprehenderit-cupiditate-numquam-sed', 'Unde quia sapiente sit laboriosam. Qui et eveniet modi amet ipsa velit hic.', '<p>Laborum autem velit sed. Accusantium natus temporibus quis voluptate reiciendis. Ut ea aut sit et sed placeat occaecati. Nihil expedita voluptates sed libero molestiae. Consequatur natus distinctio non repellendus qui.</p><p>Veritatis qui eius fugiat et itaque. Autem provident deleniti similique et at. Et animi pariatur rem deleniti ut voluptatem cum aut.</p><p>Dolore dolore necessitatibus facilis sapiente est. Minus repudiandae voluptas vitae nam reprehenderit. Velit occaecati soluta sint nam recusandae accusantium aspernatur.</p><p>Optio sit ipsum aut id officia atque ullam. Magni non molestiae dolorem quia maxime reiciendis minus et. Ut voluptatem velit atque est expedita magni. Ipsam voluptatum cum soluta.</p><p>Amet hic adipisci eum in. Libero quisquam est dolor dignissimos. Possimus earum quam molestiae veniam. Laborum commodi alias beatae architecto quod consectetur quaerat.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(26, 1, 1, 'Quam qui occaecati alias sint quisquam consequatur quis est.', 'sint-soluta-est-unde-dolor-deleniti-delectus-dolorem', 'Enim nisi animi vel et. Odio autem ut inventore dicta sunt eaque earum. Quia sint voluptatem iure corporis consequuntur placeat amet.', '<p>Molestias sint molestiae facilis ut qui molestiae qui. Consectetur omnis aperiam omnis. Et vero aliquid enim ut accusantium aut non. Enim libero consequatur laborum totam nobis.</p><p>Nihil ut ipsa rem officiis distinctio repudiandae. Facilis ad voluptatum aliquam velit. Aliquam laborum delectus quia odio doloremque qui quo. Explicabo autem quod ut velit voluptas et dolor quisquam.</p><p>Vitae accusamus facere ipsam et dolorum. Voluptatem quo quas et officia. Corporis porro possimus repellat. Eos nam blanditiis eveniet.</p><p>Ut officia sed veniam molestiae. Ea rem officia dolores ex labore. Ut odit natus voluptas. Reprehenderit repellendus tenetur impedit at.</p><p>Inventore eaque exercitationem id eaque quae veritatis rerum voluptatum. Commodi nemo veniam at nihil consequatur magnam id. Iusto perspiciatis enim perspiciatis.</p><p>Sit nihil fuga possimus sunt pariatur. Distinctio facilis cum ducimus suscipit non sint. Nulla incidunt aut accusamus doloremque magni dolor repellat. Et magnam corporis architecto tempora culpa nihil dolores.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(27, 1, 1, 'Deleniti facilis non non et.', 'ad-laboriosam-rerum-nesciunt', 'Sit dolore sed et ad nemo aliquam non qui. Quam vel nostrum quae. Sint et magnam rem molestias quia recusandae.', '<p>Consectetur nostrum autem expedita iure sed unde quisquam. Enim voluptatem rerum a voluptatibus. Aut asperiores corporis fugit quibusdam quo veniam alias. Itaque quo voluptatem pariatur fugit. Veniam aut in dignissimos et.</p><p>Quidem labore aperiam accusantium. Sequi eos nihil totam molestias tenetur. Nostrum modi quis accusamus in minus pariatur harum aspernatur. Atque consequatur voluptas placeat dolores possimus praesentium aut.</p><p>Qui a sit eos eligendi sequi. Consectetur sit accusamus corporis expedita. Temporibus aliquam optio aut dolores pariatur dicta velit.</p><p>Dignissimos exercitationem ab est aspernatur et impedit soluta animi. Unde exercitationem numquam impedit porro. Dolor ut occaecati ut dignissimos autem quaerat.</p><p>Dolores asperiores accusamus vel dolorum inventore. Odio voluptate similique eligendi repellendus et voluptas voluptate. Quo beatae iusto cum nihil corporis beatae incidunt architecto. Et atque est commodi.</p><p>Commodi dolores nihil omnis eaque possimus aspernatur. Similique est nisi vero laboriosam nobis nobis. Quia incidunt vel voluptate qui consequatur distinctio minima.</p><p>Modi facere ad distinctio voluptas. Quibusdam dolore sit sapiente sed corrupti. Voluptatem ea quo qui molestiae.</p><p>Ut quidem soluta molestias enim magnam fuga. Consequatur et quis aut aut aut dignissimos necessitatibus.</p><p>Quia eos nam et quia ab neque. Molestiae voluptas dicta dolorem ea et fugit quia. Modi occaecati iusto qui quae beatae aut. Dolores soluta vero cumque porro.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(28, 3, 1, 'Voluptatibus at ut magni saepe dolorum error nisi.', 'optio-non-illum-dolor-sed-itaque-autem-cumque', 'Recusandae excepturi enim autem deleniti et et. Est tempora debitis eligendi voluptates vel natus dolorem. Cum aliquam impedit quia sapiente. Similique sint nostrum hic et quos ut.', '<p>Vel dolores exercitationem aliquid quae sit aut. Et corporis quas doloremque quasi dolorem. Beatae id non tempore voluptatem voluptatibus quasi dignissimos. Est ut nisi corrupti iusto voluptates animi omnis. Hic voluptas voluptas quis.</p><p>Voluptatem deleniti natus quas similique aut qui beatae. Et et consequatur aut. Hic consequuntur incidunt id et.</p><p>Sed quaerat quod illo praesentium deserunt in commodi. Fugiat non reprehenderit id inventore dolor. Incidunt nobis porro voluptates neque labore.</p><p>Id minima hic hic et. Veritatis quo suscipit est voluptates consequuntur sapiente. Tenetur aspernatur et eligendi et rerum. Molestiae et totam laudantium quia.</p><p>Facere facilis quis impedit iure soluta suscipit sapiente iure. Natus esse et voluptatem vitae voluptatum autem nulla. Dolor neque consequatur quasi facilis ratione. Qui voluptates totam ab.</p><p>Cum cumque quia suscipit qui voluptas voluptas. Molestiae libero voluptatum qui. Perferendis aliquid fuga ullam recusandae odio.</p><p>Aut consequatur voluptatem officiis tenetur ipsa iusto sequi sint. Aspernatur libero quis alias minus consequatur mollitia numquam. Ut vero quia est rerum. Ea ad non veritatis quo a occaecati laborum.</p><p>Iste in sit quas quaerat tempore. Quaerat eveniet neque dolor. Ea itaque sequi ut dolores aliquam eos magni. Quam aperiam dolores est.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(29, 2, 1, 'Aut aut ducimus placeat.', 'sunt-odio-est-distinctio-eos-alias-quibusdam', 'Sapiente architecto accusamus id quidem iure nesciunt. Et pariatur nesciunt reiciendis nihil ipsum et voluptas. Ut a deserunt voluptatem magnam quam. Soluta adipisci sit occaecati sint quas molestias ipsa.', '<p>Nihil aliquam ut velit et id. Ut non qui sunt repellat ut dolorem porro est. Magnam amet magnam temporibus rerum illum. Recusandae est ratione iusto molestias dolores ducimus. Omnis enim cupiditate voluptatem quam sint similique sed.</p><p>Doloribus ut voluptatem quis et sapiente odit aut. Esse et corrupti vel est autem. Laudantium ut voluptatem consequatur sint veritatis.</p><p>Quam voluptatem et modi corrupti velit hic minus. Reiciendis nemo aut consectetur repellendus amet porro nihil. Magni optio ea harum dolorem consectetur sed. In laudantium beatae dolorem officia et sed dolorem qui.</p><p>Veritatis mollitia pariatur sed officiis est ratione illo. Maiores ex nam id autem deserunt corrupti quos. Consequatur aut aut at tempora fuga. In occaecati non voluptatum quas perferendis.</p><p>Ducimus ipsa voluptatem similique voluptatem. Officia et et qui et sit veritatis aperiam. Voluptas eos aperiam quam accusamus cum qui est. Aut voluptate aliquid veniam quia sint.</p><p>Necessitatibus rem dolor distinctio eos voluptatum possimus unde. Iusto aut rem qui dolorum sed sit. Explicabo ea eligendi excepturi in ad sit ipsam. Illum amet id nam libero quo iure. Sapiente corporis sapiente explicabo aspernatur ipsa.</p><p>Omnis repudiandae atque id maiores. Voluptates assumenda ipsa sequi sapiente ipsa magnam excepturi vitae.</p><p>Quibusdam tempore occaecati qui reprehenderit iure consequuntur. Sed voluptate eaque beatae saepe. Assumenda voluptatem sint neque qui ipsa sunt. Consequatur ut voluptates dolorem nihil quis.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(30, 1, 1, 'Laudantium unde est vel et quibusdam maiores.', 'est-quidem-et-et-quia-molestiae-qui', 'Ad voluptatem amet esse repudiandae omnis excepturi. Nemo unde dolore sit ad maiores. Voluptatem consequatur quos sapiente temporibus temporibus veniam.', '<p>Magnam in explicabo ea commodi aut eaque corporis. Eos non autem pariatur et consequatur sint qui nobis. Vel sunt labore similique eum.</p><p>Distinctio veniam expedita et sed minus quis qui perferendis. Consequatur et quisquam nostrum qui fugiat culpa rem. Omnis nostrum enim omnis voluptates voluptatum. Soluta atque temporibus consequatur praesentium et.</p><p>Eveniet quod vero quam nostrum quis nulla. In suscipit distinctio ad dolorem. Ea aut rerum repellat asperiores natus sit repellat repudiandae.</p><p>Sed laborum et recusandae rerum aut est. Omnis aut est aliquid id omnis asperiores aliquam.</p><p>Reiciendis illo officiis animi sint adipisci totam. Illo neque nostrum quasi quia ipsum repellat. Quis maiores voluptas nemo qui dolorum.</p>', NULL, '2022-12-24 20:31:42', '2022-12-24 20:31:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Puput Zelaya Kusmawati S.E.I', 'snugroho', 'ina87@example.org', '2022-12-24 20:31:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0mGspqFfzE', '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(2, 'Artanto Santoso', 'taswir10', 'tamba.alika@example.org', '2022-12-24 20:31:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WHT4mT8ZwU', '2022-12-24 20:31:42', '2022-12-24 20:31:42'),
(3, 'Tina Purnawati', 'ihsan02', 'wakiman07@example.org', '2022-12-24 20:31:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0xw6OxSFyp', '2022-12-24 20:31:42', '2022-12-24 20:31:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
