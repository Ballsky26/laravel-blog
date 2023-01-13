-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 17.11
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
(1, 'Web Programming', 'web-programming', '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(2, 'Football', 'football', '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(3, 'Racing', 'racing', '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(6, 'Space', 'space', '2023-01-13 09:02:26', '2023-01-13 09:02:26');

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
(6, '2022_12_14_151120_create_categories_table', 1),
(7, '2023_01_13_145845_add_is_admin_to_users_table', 2);

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 'Qui asperiores et vitae maxime officia cumque sed doloremque quidem.', 'enim-omnis-dolorem-eligendi-non-ex', NULL, 'Minima ut et voluptatem necessitatibus. Sed sequi ut mollitia velit.', '<p>Laboriosam labore iste soluta sit non. Id temporibus ratione ab quo sed. Ipsum quibusdam consequatur enim quos. Vel sit quis debitis autem. Reprehenderit asperiores eveniet nisi quia.</p><p>Quia quisquam tempora eveniet quas. Et enim qui aut. Architecto non consequatur sequi.</p><p>Enim aspernatur dolorum rem nemo esse nesciunt numquam. Molestiae ducimus atque aut a voluptatum est voluptatem pariatur. Consequuntur quos incidunt vel.</p><p>Et sunt id in qui. Suscipit voluptatem dolorum vel nihil excepturi autem. Voluptates rerum excepturi blanditiis architecto et. Omnis sint laboriosam voluptas quo accusamus doloremque ut molestias.</p><p>Odio eos voluptatem eligendi porro odit. Nisi eos sapiente magnam deleniti quasi et. Laudantium corrupti eius velit ea sed in quo.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(3, 1, 2, 'Ut quasi totam quasi.', 'dolorum-nihil-sit-sunt-placeat-sit', NULL, 'Nisi non inventore commodi qui minima et voluptates sed. Autem eligendi dolorem repudiandae quis pariatur nemo quo dignissimos. Assumenda in molestiae dicta minus quibusdam distinctio.', '<p>Temporibus voluptatem odio culpa et sed nesciunt. Est nihil quibusdam eaque quia mollitia.</p><p>Ullam soluta est mollitia magni. Fugiat ab quis cum possimus. Sed et voluptatum facilis omnis itaque. Enim facilis illum animi at.</p><p>Quod dicta doloribus placeat aliquam voluptatem debitis ea ratione. Similique quia accusamus repellat minus. Molestiae ea voluptate quia. Beatae inventore possimus enim.</p><p>Magnam ut minima aperiam harum cumque. A in quo eligendi vel. Et qui atque alias rerum qui sed laborum. Vero ratione ipsam dolores vero laborum aut.</p><p>Molestias commodi laudantium illum dolores. Autem adipisci maxime qui perspiciatis.</p><p>Vero explicabo ut voluptas. Vel est minus quidem sequi. Dolorum similique iusto autem non nesciunt consequuntur ullam.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(4, 2, 1, 'Explicabo natus omnis dolor id.', 'enim-id-iusto-et', NULL, 'Fugit cupiditate accusamus adipisci eos id qui. Totam culpa eaque inventore consectetur culpa labore ullam ut. Hic dignissimos perspiciatis dolor nemo molestiae asperiores enim.', '<p>Magni quod sit sed facilis. Facilis sed esse in amet. Dolores aut est qui et ad magnam. Labore incidunt et ratione deleniti.</p><p>Magnam vel nam eaque occaecati nam. Reiciendis quia porro tempora autem vel tempora. Quaerat minima vitae enim aut voluptatem. Dicta voluptate vero iste dolorum doloribus tempore eius libero.</p><p>Fugiat reiciendis saepe repudiandae quisquam commodi enim. Sed magnam doloremque hic. Ut placeat nobis quos nesciunt nesciunt ut aut.</p><p>Iste quae magni asperiores optio esse. Perferendis cum sint similique rerum.</p><p>Quasi et deserunt voluptatum architecto. Ut ullam voluptatem non et magni ut dolore. Voluptas sunt qui expedita voluptate.</p><p>Inventore fugiat et id nihil. Dignissimos dignissimos in aut laboriosam et vel consequatur cumque. Non et praesentium quasi facilis qui vitae. Consequatur et sit vel qui.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(5, 3, 1, 'Aut qui omnis exercitationem.', 'ut-tempore-consectetur-quis-facere-voluptatem-vero-nemo', NULL, 'Non omnis perferendis repellat impedit rerum. Sint saepe cupiditate error maxime temporibus voluptatum fugiat laboriosam. Necessitatibus et voluptates dolor harum. Sed consequuntur dignissimos ex consectetur libero voluptatum.', '<p>Est ipsam doloribus sit eum dolor quidem. Esse quidem dolore nisi ullam. Adipisci asperiores velit dolorem.</p><p>Doloribus id vitae natus sit ut. Eveniet omnis vero vero culpa hic consectetur voluptatum. Nulla nesciunt eos aut aliquid nulla. Amet sint provident error laboriosam.</p><p>Adipisci recusandae illum repellat magni perspiciatis. Commodi et dolor ex itaque cum ut. Excepturi quo dolore id non et. Est minima cum accusamus quod aliquam.</p><p>Molestias consequatur dolor unde et esse et ut. Nostrum blanditiis dolores illo dicta minima. Sed magnam facere atque sint doloribus aut dolores. Delectus amet odit optio.</p><p>Reprehenderit maxime velit dolorem id perspiciatis eos. Reiciendis explicabo quidem facere repellendus corporis. Temporibus consequatur quia explicabo sit pariatur tempora. Rerum ut voluptatem voluptas ratione autem dicta et sit.</p><p>Dolor illum sunt vero ut ipsam qui eligendi. Incidunt non est maxime quisquam incidunt sint ipsum. Omnis voluptatibus dolor est temporibus tempore. Voluptatem doloremque est dolor id mollitia minima.</p><p>Incidunt commodi aut nemo aperiam ratione autem. Nam quod exercitationem omnis qui laborum tenetur. Non culpa quisquam laborum dolorem. Incidunt suscipit iste alias aut eaque.</p><p>Labore illo sed mollitia architecto sit vel dolorum. Amet blanditiis blanditiis ut laboriosam reiciendis sunt quibusdam excepturi. Suscipit aliquid dolorum qui qui incidunt nihil.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(6, 3, 3, 'Nostrum quia voluptas laudantium autem.', 'delectus-incidunt-iusto-quis-nobis', NULL, 'Perferendis qui aspernatur dicta doloremque itaque excepturi. Sint velit et tempore est aut id sed. Molestias illum voluptatem recusandae omnis voluptatem veniam a.', '<p>Explicabo ipsum vitae qui sit. Qui officiis necessitatibus vel ullam aut eveniet. Suscipit et eveniet voluptates quos dolorum sed. Consequatur eius corporis velit qui consequatur.</p><p>Voluptas quo omnis harum eos possimus sunt reiciendis. Sit dolor illo nostrum doloribus a minus consectetur. Rerum enim voluptatem deleniti tenetur qui in. Perspiciatis quibusdam dolor qui ut dolore magni. Ipsam modi commodi consequatur non.</p><p>Excepturi consequuntur quibusdam enim velit. Modi velit ex quos sapiente. Maxime non ut facilis dolores. Nisi quia reprehenderit rerum natus ut ducimus reiciendis.</p><p>Labore reprehenderit molestiae consequatur. Nostrum cupiditate quos nulla distinctio. Est voluptatem nulla quisquam nemo.</p><p>Architecto minus praesentium non quod eveniet ipsum exercitationem. Ex aut est cum numquam mollitia quia ea sint. Voluptatibus doloremque repellat nesciunt non vitae sapiente non. Et sit fugit aliquam ducimus dolorum fuga qui quas.</p><p>Inventore est rerum expedita quae ut nihil voluptas. Ab temporibus tempora maiores qui laborum. Quia et maxime enim et officiis.</p><p>Ut sapiente iste ut illum. In dolor sint qui praesentium voluptatem. Magnam dolores illum impedit.</p><p>Accusantium nesciunt repellat at delectus rerum veritatis. Culpa non et distinctio. Officia nesciunt laboriosam dignissimos doloremque iure suscipit. Minima distinctio corporis itaque dolor qui eaque.</p><p>Explicabo perferendis quibusdam earum aspernatur et alias sequi. Exercitationem aperiam rerum voluptatem dolores. Voluptatem distinctio voluptatem doloremque a atque dolore.</p><p>Omnis eligendi sed aliquam voluptatum architecto et incidunt. Quos delectus temporibus voluptas doloremque. Ut ducimus consequatur animi. Sed odit voluptatum nihil reiciendis libero sunt id.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(7, 3, 2, 'Earum labore.', 'quidem-maxime-voluptatibus-est-error', NULL, 'Neque molestiae exercitationem molestias magnam in vero. Harum ut excepturi mollitia perferendis et et. Magni voluptas repellendus exercitationem enim enim nostrum neque. Praesentium numquam occaecati consectetur consequatur.', '<p>Deserunt laudantium perspiciatis corrupti molestiae aut error accusantium. Non dolorem numquam nam quibusdam voluptatem nulla. Facilis nobis facilis sint atque voluptate recusandae eos.</p><p>Qui consequatur non accusamus voluptate placeat iure quo molestias. Id sequi sit non aut sed nostrum eum dolor. Asperiores dicta vero cumque eveniet. Ut aut sunt corrupti temporibus magnam accusantium vel.</p><p>Ad voluptatem alias inventore voluptatem soluta repellendus beatae. Qui nesciunt accusamus necessitatibus magnam nostrum. Et dolore quae natus ex perferendis tempora perspiciatis. Sit rerum ipsum ducimus nisi excepturi.</p><p>Qui ad et corrupti id enim molestiae. Cupiditate ab est pariatur praesentium quis. Qui sit dolorem magnam quibusdam voluptatum laborum.</p><p>Rem quisquam corporis iure perspiciatis eius aut ut. Aperiam ut perspiciatis sit laboriosam. Voluptatem voluptatem occaecati commodi vero at nesciunt magnam.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(8, 3, 3, 'Accusantium quis facilis vitae excepturi quia aut quos et.', 'fuga-autem-qui-reprehenderit-dolor-tempore-et', NULL, 'Amet accusamus voluptate libero et. Suscipit quisquam eum ipsum sit ad. Explicabo odit ipsum doloremque consequatur et sunt impedit. Optio quisquam quia nisi voluptatem.', '<p>Est voluptas qui et repellat vero et. Est molestias vel ut eligendi. Quae veritatis aliquid veritatis numquam id fugiat.</p><p>Tenetur necessitatibus nihil magnam reiciendis laboriosam et. Quibusdam sit deleniti nam non voluptatem tenetur error qui.</p><p>Et vel ullam dolorem molestiae asperiores molestiae et. Accusantium voluptatem voluptatibus nostrum cumque. Quia molestias blanditiis dolorem suscipit. Dolor sit explicabo enim dolor qui.</p><p>Officia ut officia impedit officiis et repellat. Possimus et modi sunt libero placeat eligendi aliquam. Nostrum molestias alias itaque modi sequi ipsa rerum sint.</p><p>Repellat id impedit quas molestias. Reiciendis vero repellat sunt molestiae aut dolore optio. Sunt mollitia fuga nihil nobis odio commodi in.</p><p>Neque dolorem hic sit non autem dolor. Nihil quia libero aliquam labore eius. Enim ut sint laudantium esse qui harum. Doloribus sequi unde hic unde et sit.</p><p>Aliquid corporis ipsa rerum ea. Repellat quos quasi dolorem et. Deleniti officia exercitationem magni ut placeat.</p><p>Eligendi assumenda voluptas culpa. Est illo similique et modi non molestias assumenda. Aut aliquid aliquam molestias in vitae quaerat repellendus. Exercitationem repudiandae debitis sequi quia cum perspiciatis nesciunt. Ut dicta non voluptatem minus doloribus qui reprehenderit.</p><p>Distinctio et in sunt quia cupiditate voluptatum quasi. Ab qui delectus aut odio rerum. Laborum deleniti eum non veniam qui. Perferendis qui qui sed ut officia architecto aut.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(9, 2, 3, 'Suscipit asperiores aut nihil nostrum in omnis.', 'tenetur-maiores-autem-velit', NULL, 'Autem eveniet ullam illo assumenda pariatur harum est. Suscipit consequatur debitis et voluptatem qui quibusdam. Officiis et et nostrum voluptatem vitae. Ut qui ipsum aut nihil asperiores id quidem error.', '<p>Eius dolor provident et explicabo aut aut. Omnis necessitatibus dolorem aut voluptatibus. Corporis non dolor rerum amet. Molestiae quis iure temporibus tempora officia vero ut.</p><p>Est alias dolorem veniam incidunt recusandae tenetur iure. Dolores labore voluptate aliquam et. Esse qui facere autem aut velit est molestiae ea. Repellendus dicta aut dolores et perspiciatis tempore.</p><p>At corporis in magni recusandae esse quaerat accusantium. Repellendus praesentium ut quae nihil aperiam. Ea pariatur et autem vitae.</p><p>Ullam sed est aspernatur hic libero ex. Cum eos perferendis deleniti voluptas provident quia et aut. Mollitia voluptatibus aut et delectus. Dolores adipisci culpa voluptatem eius suscipit est. Unde eos et in error.</p><p>Voluptatibus omnis voluptatem maiores rerum necessitatibus nisi. Qui est officia aperiam fugit nisi perferendis animi. Officiis recusandae et labore. Consequatur excepturi unde magnam sequi recusandae.</p><p>Excepturi in accusamus dicta temporibus. Eveniet dolore iusto sit vel quam nostrum magni. Quo veniam veniam debitis esse.</p><p>Id omnis voluptatibus sit non adipisci amet officiis. Impedit minus eaque consequatur aut officiis. Aliquid eaque aliquam distinctio delectus sed ut et. Ex ab natus consequuntur odit soluta.</p><p>Reiciendis earum similique id doloribus magnam. Soluta distinctio itaque molestias qui quo. Tempore dignissimos dicta assumenda inventore voluptatem consequuntur. Quae est sapiente tempora natus voluptates accusamus.</p><p>Natus cum aliquid vitae optio et blanditiis a. Nesciunt eius repudiandae nihil repudiandae.</p><p>Excepturi et provident voluptatibus quia et. Repellendus eius ullam occaecati possimus rerum. Occaecati optio aut amet repudiandae natus numquam quia. Sint cupiditate excepturi quia. Deserunt et dolores dolores quis temporibus quis.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(10, 3, 1, 'Porro delectus laboriosam iure quidem reprehenderit ex et repudiandae nihil velit.', 'quos-eum-odit-vitae-autem', NULL, 'Optio ullam qui harum molestiae consectetur tempora dolorem. Dolores porro omnis voluptates omnis sit. Molestias cupiditate et qui iusto. Ut sed vel ex nihil.', '<p>Pariatur sunt esse quae. Ut nihil eius hic. Quisquam id quaerat sunt veniam laborum quis minus deserunt.</p><p>Eveniet unde tenetur voluptatibus ipsam fugit possimus voluptate dolorum. Qui omnis autem et et nam.</p><p>Quo autem dolor corrupti occaecati. Maxime perspiciatis commodi dignissimos eveniet consectetur. Necessitatibus ut est facilis libero sint. Quia enim voluptatibus officia quia qui repudiandae.</p><p>Repellendus assumenda consequatur omnis commodi adipisci assumenda facilis. Dolor dicta illum est eos sunt qui consequatur. Est dolores soluta recusandae. Rerum quidem aut sint.</p><p>Fugiat provident dolor vitae vel. Quidem soluta sint sint sapiente. Magni illum eligendi nam sit autem. Aut placeat est sunt illum dolorem aperiam ut.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(11, 1, 3, 'Exercitationem et quo sequi autem.', 'eum-dignissimos-omnis-delectus-omnis', NULL, 'Adipisci ut accusamus quia et consequatur non. Excepturi error earum maxime minus explicabo ullam. Ut eos aut quia.', '<p>Est quis ut fuga sed. Eligendi vel alias consectetur inventore repellendus. Numquam exercitationem deserunt sint hic numquam cum est.</p><p>Voluptatem fuga maxime placeat qui praesentium eum. Tempore harum eaque pariatur modi deleniti. Itaque sed asperiores qui aperiam sunt. Occaecati perspiciatis autem omnis reiciendis et ratione alias nemo.</p><p>Ullam quidem debitis eligendi sit minima. Qui dolores et voluptatibus maxime est voluptas. Blanditiis ad eligendi laudantium ea ut repellendus commodi.</p><p>Aut dicta nemo iure rerum. Consequuntur magnam non quas pariatur facere dolore aut. Et quas impedit at est enim consectetur. Voluptatum aut sed quis quia eligendi voluptas qui dolorem.</p><p>Deleniti magnam reprehenderit itaque non corporis eum velit et. Sit eius pariatur modi nam dicta suscipit. Quidem cum accusantium ullam.</p><p>Tenetur dolorem impedit aliquam qui repudiandae. Quasi est sint ab quam enim. Officia et quis nulla qui hic doloribus. Doloremque sed fuga ex aperiam.</p><p>Sit voluptatem et distinctio facere blanditiis. Voluptate voluptas recusandae repellat quo tenetur dolores nesciunt. Non aspernatur non et quidem quam dolorem. Numquam aut mollitia neque qui fuga provident deleniti.</p><p>Eligendi ab labore incidunt cum cum et. Voluptatem hic quia maxime tenetur porro sit recusandae beatae. Sunt eveniet possimus quo eveniet esse non quidem. Quo autem est eum et iste quas.</p><p>Corporis inventore vero ipsam labore fugiat. Voluptatum accusamus molestias doloremque quae et. Delectus maxime aut odio esse qui nostrum. Odio mollitia et accusamus quibusdam perspiciatis amet hic iure.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(12, 1, 3, 'Ea eum animi autem saepe occaecati non.', 'voluptates-dolores-rerum-qui-quam-facilis-labore', NULL, 'Sequi quo asperiores soluta earum. Accusamus consequatur exercitationem molestias fugit qui neque. Quod ratione commodi in voluptate impedit ut. Eaque itaque dolorum rerum fugit. Et aliquid nulla enim velit.', '<p>Quaerat fugiat quam minus eum. Voluptatibus quod vel quae. Pariatur dolore omnis modi minima perspiciatis molestiae autem amet.</p><p>Sint dolor dignissimos non quia. Est laboriosam non deserunt velit. Enim consectetur cumque nostrum enim. Placeat provident aspernatur laborum ipsum architecto.</p><p>Et error assumenda ea perferendis ea voluptatem. Est dolorem ut aliquid explicabo. Quae esse possimus placeat maiores. Natus aut eveniet labore nobis accusamus doloribus aliquid.</p><p>Dicta quia repellendus quibusdam. Sit repellat vel occaecati quis impedit quos. Ab doloremque ipsum est dolorem nulla. Nisi eos delectus qui voluptate dolores quia est quos. Et quidem sed non fuga magni ut quo.</p><p>Nemo eos doloremque et nisi provident. Aspernatur laudantium labore fugit deleniti. Porro quia dolores voluptatem et tempore.</p><p>Quibusdam rerum fugiat sint nihil doloremque cum. Voluptatem error veniam ea et molestiae laudantium iure. Consequatur non aut accusamus ut deserunt commodi. Sed omnis consequatur provident adipisci iusto.</p><p>Et quia ut ab labore harum. Qui mollitia eaque et et quia asperiores quia sequi. Voluptas quia officia sapiente autem omnis dolor. Esse sed magni aut explicabo.</p><p>Omnis reiciendis asperiores facere facilis. Odio error dolorem occaecati placeat molestiae asperiores quis. Dolorem ut optio libero aut aut accusantium qui. Ut esse necessitatibus consequatur mollitia quos non qui. Ipsa explicabo eius aspernatur nihil.</p><p>Quia sit vel et quas. Nihil in autem voluptas cumque nihil. Consequatur sapiente consequatur possimus voluptatibus laboriosam.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(13, 3, 2, 'Dolores blanditiis omnis corporis quo maxime iusto consectetur.', 'ducimus-voluptas-quo-numquam-dolor-in', NULL, 'Suscipit nesciunt repudiandae et adipisci quam. Qui quisquam odit quos et. Hic fugit illum eaque sit. Saepe aut itaque fugiat ut.', '<p>Alias aspernatur natus et sed repellat voluptatem delectus cupiditate. Veritatis enim corrupti perspiciatis unde et. Numquam explicabo distinctio aspernatur pariatur. Asperiores ducimus ipsa commodi sed. Doloribus voluptatem maiores vitae perferendis reprehenderit quia.</p><p>Non placeat et blanditiis veritatis repellat. Voluptates eveniet ipsum facere qui ea. Tempora quia ut cumque magnam eos aut. Explicabo autem consectetur illum omnis enim hic.</p><p>Saepe aliquid voluptas quia saepe aut atque voluptatem. Qui dicta molestiae voluptatem non distinctio. Culpa nihil accusantium omnis quod similique autem sed. Unde rem soluta nesciunt qui veritatis.</p><p>Praesentium laborum nam porro consequatur. Aspernatur et cupiditate ut iste. Id quaerat a voluptatem et. Perspiciatis modi explicabo eligendi natus.</p><p>Facilis quas enim numquam ipsum fugit qui fugiat. Dolorem veniam doloremque quibusdam eum. Tenetur dignissimos culpa modi voluptatum aperiam et. Cupiditate in facilis voluptatem numquam sint molestias eos.</p><p>Tempora dolore quibusdam autem dicta fugit. Quidem et vero veniam quas. Non ut hic tempore nihil nihil.</p><p>Rerum omnis eum nam nihil qui. Earum ut ullam corrupti et dicta itaque placeat. Aut dolore inventore sed cupiditate quasi est.</p><p>Vel labore quasi fuga veritatis placeat qui autem. Architecto non et vel veniam. Ut sit voluptas culpa quas est quis vero.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(14, 3, 2, 'Molestias facilis culpa sequi eligendi ducimus voluptas.', 'molestiae-delectus-fugit-quo-consequatur-earum', NULL, 'Ducimus voluptates necessitatibus numquam eum odit repellendus amet laudantium. Laborum cum sit ipsam optio incidunt. Quia odio nostrum quia nam qui qui. Modi est magni doloribus voluptas culpa delectus.', '<p>Reiciendis omnis aperiam quam ratione consequatur dolorem fugiat. Rerum aut quisquam blanditiis fugiat qui. Voluptate perferendis at nulla architecto. Autem veritatis consequatur voluptatem autem in.</p><p>In nemo quam eos impedit est quaerat hic. Ad vel similique sint accusantium. Mollitia totam voluptates itaque quisquam nam nesciunt magni. Blanditiis perferendis quaerat magnam vel quo hic.</p><p>Aliquid nam ut enim ratione sit occaecati assumenda. Repudiandae tenetur est quae dolores quo necessitatibus. Aperiam mollitia autem consequatur est repellat neque excepturi.</p><p>Expedita autem et et est laudantium ab. Earum voluptas ut magni sapiente placeat molestias sequi. Praesentium nam laudantium sunt dolorem velit voluptatum.</p><p>Non assumenda libero magnam vero. Quaerat odio pariatur nulla. Molestiae sed et quas et enim aut. Ut et blanditiis enim quia incidunt rem qui.</p><p>Non distinctio eum quia maxime vero cupiditate occaecati. Quis itaque ullam velit non voluptas modi ipsum dolorum. Pariatur fuga eveniet architecto odit enim repellat voluptatem. Beatae praesentium consequatur dolor dolorum.</p><p>Eligendi sapiente ea consequatur cupiditate inventore. Aliquid magnam impedit eius ab in suscipit minima. Architecto aut voluptatem est omnis omnis. Pariatur facilis optio et sunt quibusdam eius reiciendis.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(15, 2, 3, 'Saepe id quidem et quo dolor officiis consequatur.', 'eos-cupiditate-id-voluptas-voluptatem-vitae-laborum', NULL, 'Occaecati voluptatem incidunt eos corporis ut sed. Error rem harum qui aut architecto quas. In molestiae non necessitatibus est qui autem. Eligendi qui voluptas aliquam asperiores veniam.', '<p>Magni voluptas tempora dolores qui vel porro minima. Exercitationem alias magni aliquid. Eum omnis libero qui sed earum totam consectetur.</p><p>Sunt sit alias voluptas totam. Voluptatem omnis illo ipsam laboriosam aut consequuntur. Ad ducimus hic quo est.</p><p>Error dignissimos vitae ex porro rerum aliquid eum. Blanditiis et culpa exercitationem necessitatibus vitae voluptatum. Et atque non est fugiat saepe.</p><p>Assumenda sint sunt voluptatum accusantium architecto. Voluptates aspernatur saepe cumque culpa rerum doloremque blanditiis minus. Cumque est molestiae atque. Voluptas distinctio rerum suscipit saepe quas et nobis.</p><p>Velit cupiditate iusto quos laborum similique. Qui dolore dolorem porro unde eaque quidem at. Dolorem alias voluptatibus laborum.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(16, 2, 2, 'Est autem exercitationem in eaque omnis.', 'nobis-quia-dolore-ducimus-et-sequi-corporis-fuga', NULL, 'Necessitatibus sed est sed vel quia consequatur voluptates. Ea laboriosam assumenda et. Quis minus rerum voluptatibus et. Distinctio nihil facere nam dolores autem tempore.', '<p>Autem magnam tempore et. Autem sunt omnis sed suscipit necessitatibus. Officiis enim velit ad in quaerat facere facere.</p><p>Qui dolorem neque reiciendis dicta et. Sit earum ex facilis mollitia. Impedit inventore et aut eum quas dolore aperiam. Possimus pariatur ut non harum sit et deserunt. Et dolores expedita laudantium velit.</p><p>Aut deserunt assumenda quo odio. Suscipit rerum voluptate et ut consequuntur magni. Et porro eius qui minus molestiae sunt voluptatem.</p><p>Tempore saepe pariatur voluptatem ducimus eum. Omnis debitis animi fugit ex et nisi. Unde est laboriosam animi qui.</p><p>Et esse ut ut officiis a praesentium. Dolorum qui unde eos ut debitis nobis. Autem libero enim sunt et accusamus qui quia. Nobis sunt omnis possimus.</p><p>Voluptates dolores ut at omnis culpa. Assumenda reprehenderit quae tempora omnis assumenda optio. Qui qui rerum velit at dolorem dolorem eum quisquam.</p><p>Excepturi minus neque ex maxime quia sequi. Dolore quia et blanditiis magni. Perferendis saepe reiciendis provident officia ipsam et vero. Animi mollitia fugiat occaecati consequatur qui earum consequatur.</p><p>Accusamus repellat ratione officiis tenetur et in modi. Eligendi cumque esse pariatur.</p><p>Aut natus voluptas aut aut molestiae distinctio enim. Nostrum autem sunt architecto est quia. Voluptatem est amet consequatur est. Magnam accusamus rerum consequatur quia.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(17, 1, 2, 'Aut iusto eveniet iure veniam ut.', 'aut-dolorem-beatae-consequatur-eum-voluptatem-similique', NULL, 'Vel voluptas et sed accusamus similique veniam odio alias. Molestiae nihil aut magnam voluptas iste exercitationem sequi.', '<p>Quibusdam voluptates dolor velit molestiae. Quas dolorem dolor necessitatibus illum maiores.</p><p>Adipisci qui nemo ipsum nemo molestias distinctio sapiente. Provident dolore rerum nemo velit fugiat at perferendis. Voluptatibus quia occaecati veniam omnis eum pariatur. Nam qui qui consequuntur minus nesciunt explicabo.</p><p>Aliquid consequatur voluptate et aut voluptatem recusandae. Explicabo quia voluptatem dolorem enim dolores et aut. Et modi et distinctio pariatur tempore.</p><p>Dolorum tempore doloribus aut laudantium et ullam. Qui dicta in doloremque doloribus qui ad dignissimos impedit. Quam fuga culpa optio ducimus molestiae voluptatem. Repellendus dolores quasi eveniet optio eum qui vero.</p><p>Recusandae quidem est ut cupiditate impedit. Maxime ut nihil veniam aut sit officia. Architecto qui et qui exercitationem sint animi porro. Labore maxime ea modi perferendis molestiae provident et. Inventore iusto tempore quisquam commodi maxime ut.</p><p>Neque voluptatem quis at. Non sapiente accusantium ipsam. Quisquam consectetur sunt deleniti praesentium dolore quia deserunt vel. Aliquid asperiores laboriosam voluptatem natus nesciunt repudiandae alias molestiae.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(18, 2, 1, 'Nobis quia molestiae ducimus aut esse a.', 'est-nihil-magni-repellat-atque-soluta-ipsa-assumenda', NULL, 'Eaque pariatur quae qui commodi possimus voluptatem pariatur. Architecto sint neque qui corrupti corporis. Temporibus aliquam pariatur temporibus exercitationem beatae.', '<p>Nesciunt quia dignissimos et natus ut animi. Dolorum sunt aspernatur ut est. Voluptatem non ut porro eaque voluptas nisi a.</p><p>In alias voluptas molestiae eaque. Nobis id est reiciendis rerum quo quia recusandae. Nihil esse quia explicabo fuga dolores. Eaque quam necessitatibus fugiat sint.</p><p>Totam aut illo vero assumenda. Dolor consectetur adipisci sit vel accusamus voluptatem delectus. Enim quaerat occaecati dolore. Reiciendis autem quia aut sed. Quas ut quis eveniet incidunt ut voluptatem alias.</p><p>Dolor ut aspernatur iusto. Dolores eos temporibus culpa cupiditate quo quia. Qui hic temporibus facilis ratione debitis et delectus. Deserunt voluptate voluptatum et est iste nam similique.</p><p>Facilis corrupti dolore qui mollitia. Repellendus est et consequatur perspiciatis temporibus quibusdam voluptate dolor. Nihil consectetur veritatis odit dolor sit dolore.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(19, 3, 1, 'Harum necessitatibus id nemo.', 'qui-corporis-eos-deleniti-aut-quo-molestias', NULL, 'Esse enim error voluptate necessitatibus. Enim aliquam commodi culpa sed temporibus. Cumque consequatur exercitationem eligendi eveniet et dignissimos impedit.', '<p>Quia animi voluptas nihil. Cupiditate excepturi et sint ea quod iusto hic. Distinctio iste perferendis dolor modi perferendis ea. Consequuntur voluptate dolorem aut iure id.</p><p>Enim blanditiis voluptatem esse magnam quibusdam qui accusamus. Accusantium dignissimos voluptatum qui et cum tenetur rerum. Velit molestias porro numquam deserunt nesciunt. Consequatur assumenda at sint.</p><p>Aut nam porro quos alias voluptas. Non tempora ullam voluptas illo non quia. Enim officiis tempora voluptates qui. Corrupti quia reiciendis illo nihil numquam quasi ut sed.</p><p>Nihil perspiciatis et quasi voluptatem deserunt impedit. Ea enim sit veritatis. Facilis beatae ut quos exercitationem. Et velit eaque possimus molestias necessitatibus maxime eius non.</p><p>Deleniti soluta nemo laboriosam ex consequuntur laborum eius. Harum placeat laudantium rerum voluptatem ab. Deleniti nemo hic accusantium est in odio aspernatur.</p><p>Deleniti beatae nisi praesentium quos harum optio omnis. Consequatur et expedita debitis consequatur sapiente. Tempore praesentium magni veritatis quia. Eum et deserunt eos ipsum atque.</p><p>Sed ipsa fugiat et dolores ad eaque ut. Et debitis tempora quasi aut et. Temporibus sequi vel laborum. Placeat voluptatem aspernatur ad consequatur repellat optio aut.</p><p>Atque voluptatem voluptates mollitia accusamus corrupti quae. Explicabo nulla dignissimos consequatur ducimus nemo aut. Suscipit consectetur eveniet nihil praesentium cupiditate.</p><p>Fugit qui sint id molestiae voluptatem tempore aut. Aut voluptatum qui repellendus aut. Alias accusamus sed tempora sunt possimus. Magnam architecto quasi eum est sed.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(20, 1, 1, 'Ipsum quas labore natus quis.', 'autem-dolorem-ut-delectus-explicabo-repudiandae', NULL, 'Rerum ab natus ipsum qui. Sint sed cum magni quo voluptatum. Sed quisquam qui rerum enim.', '<p>Veniam id hic ut ducimus. Ut fugiat unde odio ut. Rerum debitis ipsa ut delectus fugit delectus voluptas architecto.</p><p>Minus voluptatem quidem aut nihil neque. Dolores facere illum sequi ratione sit ut ipsum rerum. Aut distinctio libero corporis nesciunt blanditiis molestiae.</p><p>Molestias et exercitationem et et. Nulla quidem rerum quo molestiae. Quod enim commodi officiis quo quam voluptatem. Sed quas voluptas dicta magnam.</p><p>Occaecati inventore provident non rem incidunt. Et nobis dolor cum quam est maiores. Rerum et beatae quaerat repellat. Quia quisquam reprehenderit ut vel ab officiis. Fuga voluptas quo odit ab animi.</p><p>Delectus ea natus adipisci voluptatem provident neque veritatis. Consequatur est veniam eaque omnis natus adipisci nam. Autem ducimus vero quo odio totam. Deserunt iste culpa consequatur quia.</p><p>Optio ut omnis in deserunt blanditiis perferendis. Repellendus nesciunt pariatur sit minima non voluptatem est. Aspernatur et maiores illum commodi soluta placeat autem. Enim vitae quaerat ipsum aut dolores.</p><p>Doloribus amet ut est error perferendis animi. Qui quia quis delectus corporis aut nostrum et. Nesciunt sed asperiores voluptatem aut consequatur pariatur.</p><p>Odit sit suscipit suscipit dicta iusto quasi ullam. Est provident doloribus amet ullam ut illo. Hic ut fuga nihil.</p><p>Commodi blanditiis qui nihil praesentium voluptatum. Aut sint veritatis distinctio et. Corporis eaque est perspiciatis recusandae tenetur.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(21, 1, 3, 'Ab ut odio laboriosam.', 'in-ut-dolores-sed-molestias-animi-sunt-vero', NULL, 'Qui qui voluptatem id nobis est. Eum debitis odit ullam dicta. Tempora mollitia dolore aut distinctio facere fuga quam. Necessitatibus eveniet esse et at iusto vero. Reprehenderit omnis sit voluptates.', '<p>Quo animi autem fuga quisquam iste quod esse. Itaque qui nesciunt illo et quod voluptatem eos. Aperiam fugiat dolorum dolor voluptas quod voluptatem eaque.</p><p>Ratione nisi maxime soluta. Delectus dolor quos facilis nihil iusto quam voluptas minus. Et est dolore at assumenda. Assumenda quia architecto et exercitationem.</p><p>Eius fuga provident unde aut officiis labore voluptates. Quod temporibus rerum eaque dolore cupiditate ipsa recusandae. Suscipit tempore dolores veritatis et. Impedit amet occaecati libero eos in rerum ut.</p><p>Deleniti architecto voluptatum sed dolorem suscipit consequuntur ducimus. Iusto praesentium tempore dolorem ullam voluptatem exercitationem. Voluptatibus qui voluptas qui in consequatur numquam. Omnis quisquam repellat autem ducimus sapiente eos voluptates recusandae.</p><p>Occaecati saepe magni nulla architecto fugiat sit. Aliquid deleniti nihil est. Quo officiis ab qui minus non soluta ipsa dolorem. Esse dolor a voluptas nemo possimus deserunt beatae.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(22, 1, 1, 'Illum non saepe eos corrupti voluptatem qui.', 'non-similique-debitis-ratione-doloremque-placeat-magni-temporibus', NULL, 'In numquam sequi vero ea dolorum sit. Eum impedit placeat laudantium sed necessitatibus suscipit.', '<p>Corporis reiciendis quam dicta. Voluptas sed quod aut quia voluptate. Explicabo qui labore necessitatibus ut impedit sed.</p><p>Omnis voluptates et est. Quia maxime molestiae iste architecto cupiditate omnis qui omnis. Quis ex natus explicabo rerum. Eveniet aspernatur sapiente labore ad et est nemo.</p><p>Deleniti autem vel in. Iure dicta aliquam sit maxime unde. Incidunt non excepturi animi accusamus incidunt quis. Dolorum atque soluta rerum asperiores.</p><p>Sint dicta vel voluptatem tempore laboriosam. Similique sed molestias dolores rerum.</p><p>Beatae aliquam atque asperiores reprehenderit sit expedita. Reprehenderit inventore minus sed nihil tempora omnis. Earum voluptatem corrupti magnam vitae odio modi. Ad quos recusandae quidem earum.</p><p>Maxime vel et et. Aut fugit accusantium nihil sed consectetur saepe ex. Odio et occaecati corrupti amet alias accusantium. Qui est distinctio et. Natus nostrum perspiciatis illum vero vero et nulla.</p><p>Ab consectetur totam labore cum nulla voluptas doloremque. Sint et nisi exercitationem totam. Non voluptates dolorem sint nisi id reprehenderit. Vitae voluptate enim aut odit veniam tenetur.</p><p>Quo aut rem ut vel. Tempore tempore quas qui modi natus molestiae sit. Dolorem cum accusantium quisquam sit quisquam quo expedita. Et eveniet perspiciatis perferendis eum dolore saepe. Eveniet ipsam at in nemo rerum.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(23, 1, 2, 'Autem voluptatem eveniet quaerat et vel repudiandae assumenda.', 'repellat-dolores-nesciunt-autem-voluptates', NULL, 'Et similique accusamus voluptas dolorem aut voluptatibus. Consectetur commodi qui praesentium autem quia est rerum. Dignissimos labore quas aut soluta. Veniam voluptas eius atque maxime.', '<p>Ut sed qui est voluptas consequatur laudantium. Omnis odio officia nulla aperiam voluptate vel sit voluptatibus.</p><p>Qui dolor repellat sed. Magnam non a repellendus deserunt eligendi. Et veritatis est et qui qui odio ipsa.</p><p>Culpa hic dolor unde enim consequatur ipsa facere. Quia velit cum non magni repudiandae tenetur corporis. Repudiandae sunt perspiciatis delectus commodi sed. Facere voluptate magnam praesentium ut.</p><p>Facilis enim aut ad debitis dolore. In et nulla repellat vel aliquid.</p><p>Saepe neque laborum dolorum harum inventore nemo. Laboriosam est voluptates doloremque maiores.</p><p>Eius est non ut est. Quidem quia et velit sint. Et provident sed et quam ea rerum sint.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(24, 1, 1, 'Consequatur voluptatem at voluptates et qui maiores incidunt totam.', 'assumenda-consequatur-reiciendis-nam-est', NULL, 'Nihil saepe quis excepturi corporis. Perspiciatis magnam voluptas ut voluptatibus esse aut. Rerum ut recusandae et exercitationem. A explicabo a est sed blanditiis et.', '<p>Dolore fugit nobis minus accusamus sit. Tenetur facilis omnis repudiandae quia. Iste sit corporis impedit blanditiis quo error. Id officiis laboriosam est.</p><p>Voluptatem sint dolore expedita et dolorem. Modi maxime distinctio nemo doloribus quod autem atque occaecati. Aliquam harum ratione eos sequi voluptatem exercitationem. Sit et ullam quae quos accusantium.</p><p>Ducimus vel commodi consectetur ut atque quia qui. Est doloribus fuga voluptas molestiae natus. Corrupti occaecati illum saepe non libero. Vel rerum ut sapiente culpa harum qui hic.</p><p>Corrupti ut autem facilis rem repellendus aliquid. Aliquam rem ut et maiores. Placeat perspiciatis qui sit sunt labore pariatur. Voluptatum tempora ipsum debitis magni.</p><p>Minima quasi dolor ea magnam. Animi et non sit sequi qui. Ratione impedit consequatur rerum quod ab. Eligendi optio odio incidunt ducimus. Sint dolorem possimus aut ut accusamus.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(25, 1, 2, 'Dolor id voluptate.', 'qui-ea-praesentium-molestias-cum-eum-minus-molestiae', NULL, 'Dolorem illum reprehenderit fuga possimus. Pariatur atque culpa quia iure aut velit.', '<p>Iure et sit saepe autem et. Nisi beatae delectus voluptas non. Accusantium aliquam voluptatem repudiandae accusantium.</p><p>Quisquam dolore saepe velit cum est sed. Nostrum quod quibusdam rem autem. Autem rerum nobis magnam voluptatem quo. Voluptatem totam eaque provident debitis eveniet sit.</p><p>Natus natus et qui. Cumque quo mollitia voluptas ipsa. Unde voluptatem ipsam est perferendis voluptas.</p><p>Sit modi sunt voluptatibus asperiores ab. Et et repellendus qui officia corporis minus nihil.</p><p>Repellat quam illum occaecati consequatur. Eius nisi quae magni veritatis aut. Officiis dolores culpa molestiae veniam dignissimos. Et quis nihil quasi sit optio voluptates reprehenderit.</p><p>Consequatur quia eius officia ut fugiat ea. Aut ad fuga nesciunt et. Aut eius debitis quia exercitationem.</p><p>Sed nulla necessitatibus non voluptatem sapiente nobis qui eum. Cumque corrupti reprehenderit aperiam modi. Aut quasi et neque. Occaecati nobis velit voluptas rerum.</p><p>Esse et fugiat est dignissimos quae. Officia consequatur tenetur quod rerum ut autem. Voluptas qui expedita perferendis magni ratione. Ea aliquam eos et atque sit.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(27, 2, 2, 'Quam quae dignissimos voluptates exercitationem debitis occaecati laudantium possimus.', 'nam-soluta-ea-ut-illo-aut-suscipit-quia', NULL, 'Nulla repudiandae ullam quo ut rerum nisi. Voluptatibus aliquam quasi vitae labore et. Sed voluptas veritatis quo adipisci aut et. Iusto aliquam culpa quia dolor voluptatem est.', '<p>Ullam totam atque doloribus. Ipsam dolorum pariatur magni ea accusamus dolor blanditiis. Nihil et distinctio dicta. In quae cum rem veritatis.</p><p>Pariatur odit labore vel consectetur temporibus ut. Et autem quo pariatur consequatur quidem. Laborum ab dolorem fuga repellendus sed et est qui. Facere provident minima sit eum. Alias recusandae ea unde non.</p><p>Est blanditiis consequatur quidem et reiciendis aliquid in praesentium. Magnam et aut dolore incidunt quos eos assumenda incidunt. Quia error qui incidunt sit.</p><p>Et exercitationem sed dolor. Qui omnis aut labore est odit. Eaque dolorem quia dolor ut voluptatem.</p><p>A mollitia atque corporis quos suscipit cupiditate. Quia nihil alias atque occaecati et rerum.</p><p>Vitae fugiat iste quisquam ea aspernatur. Soluta eius dolor ea aut. Rerum nobis a laudantium eum occaecati dolore velit eveniet.</p><p>Quod velit voluptatum voluptatem corrupti consequatur. Nostrum consequatur aut dolorem laboriosam. In odio maxime et mollitia non.</p><p>Dolore sed aut et et. Nam id dolor voluptatem autem id non. Minus suscipit repellendus atque laudantium. Aut a nam illum quia similique at.</p><p>Est incidunt laborum aperiam quia corporis. Rem maiores accusamus non blanditiis asperiores. Non libero aliquam occaecati quia. Quos iusto laborum est et deserunt molestiae.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(28, 1, 3, 'Eos amet.', 'vel-et-perferendis-eveniet-et-autem-numquam', NULL, 'Iste iste non sint atque et. Quia sunt sapiente veritatis nam dolorem. Amet laudantium repellendus laboriosam harum debitis quo sed saepe. Ducimus occaecati harum veritatis.', '<p>Omnis quos eaque quas ipsam minus omnis. Soluta maxime velit ut est pariatur qui. Quisquam cum et sit fugiat alias magni. Vitae maiores cumque expedita sunt quia ea.</p><p>Iusto quia sed omnis non magnam ut iste molestiae. Est magni voluptas vel quia. Nostrum eum maiores nisi qui. Nihil id molestiae placeat.</p><p>Molestiae sapiente voluptatum fuga omnis praesentium non et. Quia odit ipsam veniam dolor repellat quam. Impedit amet magnam enim eum tempora aspernatur.</p><p>Accusamus fuga error consequatur voluptatem. Necessitatibus corporis repellendus deserunt molestiae non. Et ut provident adipisci labore. Voluptatem voluptatem impedit quibusdam deserunt debitis.</p><p>Sit et voluptatibus aut cupiditate amet enim sed. Magni qui at non laboriosam.</p><p>Minima quam cumque vel. Sit earum sit magnam quisquam.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(29, 2, 2, 'Quia et et.', 'molestias-pariatur-et-quo-deserunt-sed-voluptatem', NULL, 'Ea architecto voluptatem vitae perspiciatis error omnis voluptatibus eos. Dolore voluptatum sapiente possimus aperiam excepturi. Maxime perferendis sed eveniet eius impedit.', '<p>Autem a assumenda sapiente non. Voluptas nemo voluptatem aperiam corporis facilis. Rem earum beatae ea perspiciatis quo ut veniam. Culpa quia voluptas aut minus.</p><p>Blanditiis rem fugiat earum deleniti enim. Sit inventore dolorem nobis eos saepe aut aut. Quidem in deleniti amet quam sapiente quia et. Incidunt quia aperiam aut minus tempora nesciunt.</p><p>Quia ea inventore ipsum ullam ea fugit impedit. Dolorum suscipit non accusamus. Quis quia quia eos non. Omnis atque magni dolorem unde vitae.</p><p>Impedit quae eaque libero qui non sapiente harum sit. Quam qui hic debitis qui ipsum doloribus voluptate. Debitis eveniet quam laudantium qui. Beatae et voluptates repellendus consequatur repellendus.</p><p>Est sequi debitis cumque numquam ad modi consequatur. Sint at et illum quia accusantium. Molestias cum nulla et corporis mollitia rerum cum. Sint et tenetur non voluptatum accusantium et.</p><p>Laborum enim sint aliquam enim dolor et repellendus. Quo iste et eos voluptatem sunt. Ab corporis doloribus inventore ut modi amet nostrum. Numquam aperiam sit beatae dicta vel quia sed.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(30, 2, 3, 'Sunt dolores.', 'voluptatem-provident-ut-et-nobis', NULL, 'Ducimus est beatae alias vel non qui. Provident fuga quae error odit sed ut sed. Optio tenetur dolorem deleniti dolorem molestiae eligendi nisi.', '<p>Qui ipsum rerum necessitatibus occaecati suscipit et qui. Quam incidunt at iusto placeat non ea. Rerum eveniet excepturi possimus velit amet. Et placeat maiores blanditiis a veritatis accusantium. Laudantium recusandae labore reiciendis et.</p><p>Et non eos quasi. Est rem deleniti est. Sint dolorum aut quisquam dolorem. Quibusdam non dolor illum harum.</p><p>Dolorum dolor rerum dolores nihil. Qui tempora tempora qui vero. Ut voluptatem optio temporibus qui voluptatem est voluptate porro. Dolorem ipsa maxime dolores.</p><p>Voluptate dolor est sit iste eos laudantium amet sed. Rerum tempore ipsam quos facere hic sed enim quibusdam. Omnis ea ex quas itaque eum rerum odit.</p><p>Quo eum vitae aut nulla eligendi illo molestiae. Laborum ut voluptatem ut. Neque quia natus quia quisquam recusandae fugit. Asperiores et ipsum fuga laboriosam ut. Non et quia dolorem illo excepturi voluptatem saepe commodi.</p><p>Consequatur voluptas doloribus eaque provident qui. Blanditiis in amet eaque sed nemo tempora excepturi. Odio dolorem dolores doloribus consequatur voluptatibus reprehenderit. Voluptas quia ex ipsam quae enim dolor.</p><p>Autem eum ducimus amet sapiente aspernatur ad. Quo omnis dolores maxime tenetur. Voluptatem numquam repellat suscipit velit. Non placeat quis est pariatur accusamus et.</p><p>Aliquam et velit non et. In ullam quo velit soluta odio quo. Error et beatae animi ipsa. Doloribus consequatur iure consequatur eos ut.</p><p>Quia dolores esse dolorem provident odit at est. Autem nobis et quas fuga accusantium. Voluptatem natus quisquam dolor molestiae minus reprehenderit tempora ad. Nesciunt unde amet sunt eaque ducimus.</p><p>Autem hic qui corporis a. Eligendi dignissimos consequuntur et sed inventore ipsum molestiae. Quia qui dignissimos ut fugiat et veniam quae.</p>', NULL, '2023-01-09 08:46:53', '2023-01-09 08:46:53'),
(36, 3, 1, 'RDST', 'rdst', 'post-images/2KfKHUR4MWQQQ2F5IUW9x380oYWPrSGI3upn9nUK.jpg', 'hello', '<div>hello</div>', NULL, '2023-01-13 08:59:06', '2023-01-13 08:59:06');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Syaiful Iqbal', 'Ballsky', 'syaiful26iqbal@gmail.com', NULL, '$2y$10$3eF0l4qozbKDxyZimAHjR.QWwbR5UspTE5xq8lMh80rlsKYGs0lLK', NULL, '2023-01-09 08:46:52', '2023-01-09 08:46:52', 1),
(2, 'Kamaria Melani S.Farm', 'hnashiruddin', 'qnasyidah@example.net', '2023-01-09 08:46:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wJuC0DpzH5', '2023-01-09 08:46:53', '2023-01-09 08:46:53', 0),
(3, 'Padmi Hasanah S.Ked', 'permata.anastasia', 'vpratama@example.org', '2023-01-09 08:46:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EjZ8iquVMNL1y2Ymbfufoy7ixfdz2UseWTlazFuMwbjawmo7HGeDGo2YGciG', '2023-01-09 08:46:53', '2023-01-09 08:46:53', 0),
(4, 'Raina Andriani', 'rwulandari', 'rachel.handayani@example.org', '2023-01-09 08:46:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xwRHpcOP8xuqe2RRsAe0SJYfqBFujl8ua03p0gjyfK2RWQCrKISZSSjoqSPw', '2023-01-09 08:46:53', '2023-01-09 08:46:53', 0);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
