-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2025 pada 12.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sistempakar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan_cf`
--

CREATE TABLE `aturan_cf` (
  `id_aturan` int(11) NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `id_gejala` int(11) DEFAULT NULL,
  `nilai_cf` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aturan_cf`
--

INSERT INTO `aturan_cf` (`id_aturan`, `id_penyakit`, `id_gejala`, `nilai_cf`) VALUES
(1, 1, 1, 0.6),
(2, 1, 3, 0.8),
(3, 1, 5, 0.7),
(4, 1, 13, 0.6),
(5, 1, 29, 0.4),
(6, 2, 6, 0.9),
(7, 2, 1, 0.8),
(8, 2, 2, 0.7),
(9, 2, 12, 0.6),
(10, 2, 17, 0.6),
(11, 3, 10, 0.9),
(12, 3, 9, 0.8),
(13, 3, 1, 0.7),
(14, 3, 17, 0.6),
(15, 3, 13, 0.4),
(16, 4, 7, 0.9),
(17, 4, 8, 0.8),
(18, 4, 9, 0.7),
(19, 4, 17, 0.6),
(20, 4, 16, 0.6),
(21, 5, 4, 0.9),
(22, 5, 2, 0.7),
(23, 5, 15, 0.7),
(24, 5, 18, 0.6),
(25, 5, 12, 0.5),
(26, 6, 1, 0.8),
(27, 6, 6, 0.9),
(28, 6, 2, 0.7),
(29, 6, 12, 0.6),
(30, 6, 17, 0.6),
(31, 7, 16, 0.9),
(32, 7, 17, 0.8),
(33, 7, 5, 0.7),
(34, 7, 21, 0.6),
(35, 7, 22, 0.5),
(36, 8, 23, 0.9),
(37, 8, 8, 0.8),
(38, 8, 9, 0.7),
(39, 8, 16, 0.6),
(40, 8, 22, 0.6),
(41, 9, 4, 0.9),
(42, 9, 13, 0.8),
(43, 9, 20, 0.7),
(44, 9, 5, 0.6),
(45, 9, 18, 0.5),
(46, 10, 24, 0.9),
(47, 10, 11, 0.8),
(48, 10, 18, 0.7),
(49, 10, 13, 0.6),
(50, 10, 12, 0.5),
(51, 11, 9, 0.9),
(52, 11, 10, 0.8),
(53, 11, 17, 0.7),
(54, 11, 1, 0.7),
(55, 11, 13, 0.6),
(56, 12, 2, 0.8),
(57, 12, 5, 0.8),
(58, 12, 4, 0.7),
(59, 12, 21, 0.6),
(60, 12, 15, 0.6),
(61, 13, 26, 0.9),
(62, 13, 9, 0.7),
(63, 13, 13, 0.6),
(64, 13, 5, 0.5),
(65, 13, 19, 0.5),
(66, 14, 1, 0.9),
(67, 14, 27, 0.8),
(68, 14, 12, 0.6),
(69, 14, 23, 0.7),
(70, 14, 17, 0.5),
(71, 15, 3, 0.9),
(72, 15, 25, 0.8),
(73, 15, 13, 0.7),
(74, 15, 18, 0.6),
(75, 15, 29, 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(10) DEFAULT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G01', 'Gatal hebat'),
(2, 'G02', 'Ruam merah di kulit'),
(3, 'G03', 'Muncul lepuhan berisi cairan'),
(4, 'G04', 'Luka bernanah'),
(5, 'G05', 'Kulit terasa perih atau panas'),
(6, 'G06', 'Gatal makin parah di malam hari'),
(7, 'G07', 'Bercak putih di kulit'),
(8, 'G08', 'Bercak coklat atau kehitaman'),
(9, 'G09', 'Kulit bersisik atau mengelupas'),
(10, 'G10', 'Lingkaran merah di kulit'),
(11, 'G11', 'Bintik-bintik kecil berair'),
(12, 'G12', 'Gejala menyebar ke area tubuh lain'),
(13, 'G13', 'Nyeri saat disentuh'),
(14, 'G14', 'Kulit tertarik atau terasa kaku'),
(15, 'G15', 'Luka mengeluarkan bau tidak sedap'),
(16, 'G16', 'Area kulit lembap terus menerus'),
(17, 'G17', 'Bercak muncul di lipatan tubuh'),
(18, 'G18', 'Luka muncul di wajah atau tangan'),
(19, 'G19', 'Bekas luka hitam setelah sembuh'),
(20, 'G20', 'Pembengkakan ringan di sekitar luka'),
(21, 'G21', 'Kulit tampak seperti terbakar ringan'),
(22, 'G22', 'Warna gelap di area lembap tubuh'),
(23, 'G23', 'Gatal dan ruam di selangkangan'),
(24, 'G24', 'Bintil kecil seperti mutiara di kulit'),
(25, 'G25', 'Rasa terbakar di sekitar luka'),
(26, 'G26', 'Kuku menguning atau rusak'),
(27, 'G27', 'Rambut rontok di area terinfeksi'),
(28, 'G28', 'Kesemutan atau mati rasa di kulit'),
(29, 'G29', 'Demam ringan'),
(30, 'G30', 'Pembesaran kelenjar getah bening');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(10) DEFAULT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `solusi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `gambar`, `deskripsi`, `solusi`) VALUES
(1, 'P01', 'Herpes Zoster', 'Herpes-Zoster.jpg.webp', 'Herpes Zoster, atau biasa dikenal sebagai cacar api, adalah infeksi virus yang disebabkan oleh reaktivasi virus varicella-zoster (penyebab cacar air). Infeksi ini ditandai dengan ruam lepuh menyakitkan yang muncul di satu sisi tubuh, terutama di area wajah, dada, atau punggung. Ruam biasanya disertai rasa nyeri seperti terbakar atau tertusuk, dan dapat berlangsung selama 2–4 minggu.', '<ul>\r\n  <li>Gunakan obat antivirus seperti <em>acyclovir</em>, <em>valacyclovir</em>, atau <em>famciclovir</em> secepat mungkin (dengan resep dokter) untuk mempercepat penyembuhan.</li>\r\n  <li>Minum obat pereda nyeri seperti <em>paracetamol</em> atau <em>ibuprofen</em> untuk mengurangi rasa sakit.</li>\r\n  <li>Lakukan kompres dingin di area kulit yang terkena untuk meredakan peradangan dan rasa panas.</li>\r\n  <li>Jaga kulit tetap bersih dan kering. Hindari menggaruk agar tidak menimbulkan infeksi sekunder.</li>\r\n  <li>Segera periksakan ke dokter jika ruam menyebar luas, mengenai area mata, atau disertai demam tinggi.</li>\r\n</ul>\r\n'),
(2, 'P02', 'Skabies', 'Picture1677b76e06be5a.png', '<p>Skabies adalah penyakit kulit menular yang disebabkan oleh infestasi tungau Sarcoptes scabiei. Tungau ini menggali kulit dan bertelur, menyebabkan rasa gatal hebat, terutama di malam hari. Gejalanya meliputi ruam merah, bentol kecil seperti jerawat, dan garis-garis tipis di kulit akibat terowongan tungau. Umumnya menyerang sela jari, pergelangan tangan, siku, ketiak, dan area genital.<p>\r\n\r\n<p>Skabies dapat menyebar melalui kontak kulit langsung dengan penderita, atau melalui pakaian, handuk, dan sprei yang terkontaminasi. Penyakit ini sangat menular, terutama di lingkungan padat seperti pesantren, panti, atau rumah kos.<p>', '<ul>\r\n  <li>Gunakan obat topikal seperti <em>permethrin 5%</em> sebagai pilihan utama. Oleskan ke seluruh tubuh dari leher hingga kaki, diamkan selama 8–12 jam, lalu bilas.</li>\r\n  <li>Alternatif lain: <em>benzyl benzoate</em>, <em>sulfur salep 10%</em>, atau <em>ivermectin oral</em> untuk kasus berat atau yang gagal diobati.</li>\r\n  <li>Obat antihistamin (seperti <em>cetirizine</em> atau <em>loratadine</em>) dapat diberikan untuk meredakan rasa gatal, terutama malam hari.</li>\r\n  <li>Semua anggota keluarga atau orang serumah sebaiknya ikut diobati, walaupun tidak menunjukkan gejala, untuk mencegah reinfeksi.</li>\r\n  <li>Cuci bersih semua pakaian, seprai, handuk dengan air panas dan jemur di bawah sinar matahari.</li>\r\n  <li>Jika baju tidak bisa dicuci panas, masukkan ke dalam kantong plastik rapat selama 72 jam agar tungau mati.</li>\r\n  <li>Jangan menggaruk terlalu keras karena bisa menyebabkan luka terbuka dan infeksi sekunder (biasanya oleh bakteri Staphylococcus).</li>\r\n  <li>Konsultasi ke dokter kulit jika gejala tak membaik setelah 2 minggu pengobatan.</li>\r\n</ul>\r\n'),
(3, 'P03', 'Kurap (Tinea Corporis)', 'tinea-corporis.jpg', '<p>Kurap atau Tinea Corporis adalah infeksi kulit akibat jamur dermatofita, seperti Trichophyton rubrum atau Microsporum canis. Infeksi ini menyebabkan ruam melingkar yang merah di tepi dan lebih pucat di bagian tengahnya, menyerupai cincin. Lesi biasanya terasa gatal, bersisik, dan bisa membesar jika tidak ditangani.<p>\r\n\r\n<p>Kurap sangat mudah menular melalui kontak langsung kulit, berbagi pakaian, handuk, atau barang pribadi lainnya. Area yang sering terkena adalah leher, tangan, punggung, dada, dan kaki.<p>', '<ul>\r\n  <li>Gunakan salep antijamur topikal seperti <em>clotrimazole</em>, <em>miconazole</em>, <em>terbinafine</em>, atau <em>ketoconazole</em>. Oleskan 2x sehari selama minimal 2 minggu atau hingga ruam hilang seluruhnya.</li>\r\n  <li>Untuk infeksi yang menyebar luas atau tidak membaik, dokter bisa meresepkan antijamur oral seperti <em>griseofulvin</em> atau <em>itraconazole</em>.</li>\r\n  <li>Hindari menggaruk area kurap agar tidak terjadi infeksi sekunder (misalnya oleh bakteri).</li>\r\n  <li>Cuci pakaian, handuk, dan seprai dengan air panas secara rutin agar spora jamur tidak menyebar kembali.</li>\r\n  <li>Jaga kulit tetap kering dan bersih, terutama di area lipatan tubuh.</li>\r\n  <li>Hindari berbagi barang pribadi dan kontak kulit langsung dengan penderita kurap.</li>\r\n  <li>Gunakan pakaian longgar berbahan katun agar kulit bisa bernapas dengan baik.</li>\r\n</ul>\r\n'),
(4, 'P04', 'Panu (Tinea Versicolor)', 'tinea-versicolor.jpg', '<p>Panu atau <em>Tinea Versicolor</em> adalah infeksi kulit akibat jamur jenis <em>Malassezia furfur</em> yang secara alami hidup di permukaan kulit manusia, tetapi bisa berkembang berlebihan dalam kondisi tertentu—seperti cuaca panas, keringat berlebih, kulit berminyak, atau daya tahan tubuh menurun.</p>\r\n\r\n<p>Panu ditandai dengan bercak putih, coklat, atau kemerahan di kulit yang terasa sedikit gatal, terutama saat berkeringat. Bercak ini sering muncul di leher, dada, punggung, atau lengan atas. Bercak panu bisa melebar, tetapi tidak menular antar manusia karena penyebabnya berasal dari jamur kulit sendiri.</p>\r\n', '<ul>\r\n  <li>Gunakan krim atau salep antijamur seperti <em>clotrimazole</em>, <em>ketoconazole</em>, atau <em>miconazole</em> yang dioleskan tipis-tipis pada bercak 2x sehari selama 2–4 minggu.</li>\r\n  <li>Untuk infeksi menyebar luas, gunakan shampo antijamur seperti <em>ketoconazole 2%</em> yang dioleskan ke kulit selama 5–10 menit sebelum dibilas, dilakukan 1x sehari selama 5–7 hari.</li>\r\n  <li>Dokter juga dapat meresepkan obat antijamur oral seperti <em>fluconazole</em> atau <em>itraconazole</em> bila tidak mempan dengan salep biasa.</li>\r\n  <li>Hindari penggunaan pelembap atau minyak berlebih di area kulit yang terinfeksi, karena jamur menyukai lingkungan lembap dan berminyak.</li>\r\n  <li>Jaga kulit tetap kering dan bersih, terutama setelah beraktivitas atau berkeringat.</li>\r\n  <li>Cuci pakaian, handuk, dan sprei secara rutin untuk mencegah pertumbuhan ulang jamur.</li>\r\n  <li>Penting: meskipun jamur sudah mati, bercak bisa tetap terlihat selama beberapa minggu atau bulan, karena pigmen kulit butuh waktu untuk kembali normal.</li>\r\n</ul>\r\n'),
(5, 'P05', 'Impetigo', 'Impetigo-on-face.jpg', '<p>Impetigo adalah infeksi kulit menular yang disebabkan oleh bakteri, umumnya <em>Staphylococcus aureus</em> atau <em>Streptococcus pyogenes</em>. Penyakit ini sangat mudah menyebar, terutama di lingkungan padat seperti sekolah atau rumah dengan banyak anak-anak.</p>\r\n\r\n<p>Impetigo ditandai dengan munculnya luka kecil seperti lepuhan atau bintik merah yang kemudian pecah dan membentuk kerak kuning keemasan seperti madu. Biasanya muncul di wajah, sekitar hidung dan mulut, tetapi bisa juga di tangan atau bagian tubuh lain yang teriritasi.</p>\r\n\r\n<p>Infeksi ini lebih sering menyerang anak-anak, tetapi orang dewasa juga bisa terkena, terutama jika memiliki luka terbuka, eksim, atau sistem imun yang lemah.</p>\r\n', '<ul>\r\n  <li>Bersihkan area luka dengan sabun lembut dan air hangat 2–3 kali sehari untuk mengangkat kerak dan bakteri dari permukaan kulit.</li>\r\n  <li>Gunakan salep antibiotik topikal seperti <em>mupirocin</em> atau <em>fusidic acid</em> yang diresepkan dokter, oleskan tipis-tipis setelah luka dibersihkan.</li>\r\n  <li>Pada kasus sedang hingga berat, dokter akan meresepkan antibiotik oral seperti <em>cephalexin</em> atau <em>cloxacillin</em> selama 5–7 hari.</li>\r\n  <li>Jangan menggaruk atau menyentuh luka untuk mencegah penyebaran ke area lain atau ke orang lain.</li>\r\n  <li>Cuci tangan setelah menyentuh area yang terinfeksi dan hindari berbagi handuk, pakaian, atau sprei dengan orang lain.</li>\r\n  <li>Gunakan pakaian bersih dan longgar agar kulit bisa bernapas dan tidak teriritasi.</li>\r\n  <li>Segera konsultasi ke dokter jika luka memburuk, menyebar cepat, atau disertai demam.</li>\r\n</ul>\r\n'),
(6, 'P06', 'Kudis', 'kudis.webp', '<p>Kudis adalah kondisi kulit yang disebabkan oleh infestasi parasit berupa kutu kecil bernama <em>Pediculus</em>, terutama <em>Pediculus humanus corporis</em> atau kutu tubuh. Kudis sering kali dikacaukan dengan skabies, meskipun penyebabnya berbeda. Kudis umumnya terjadi karena kurangnya kebersihan tubuh dan lingkungan, serta sering berbagi pakaian atau tempat tidur dengan penderita.</p>\r\n\r\n<p>Gejalanya termasuk rasa gatal yang hebat, terutama di area kulit yang tertutup pakaian seperti perut, punggung, dan pinggang. Terkadang muncul ruam atau kemerahan, serta garis lecet akibat garukan. Kudis bisa menyebabkan iritasi kulit yang lebih luas jika tidak ditangani dengan baik.</p>\r\n', '<ul>\r\n  <li>Gunakan shampoo atau lotion khusus antiparasit yang mengandung <em>permethrin</em>, <em>lindane</em>, atau <em>malathion</em>, sesuai resep dokter. Oleskan ke seluruh tubuh dan rambut bila perlu, lalu diamkan selama waktu yang dianjurkan sebelum dibilas.</li>\r\n  <li>Cuci seluruh pakaian, sprei, selimut, dan handuk dengan air panas (minimal 60°C) dan keringkan di bawah sinar matahari langsung.</li>\r\n  <li>Jemur kasur atau alat tidur selama beberapa jam agar kutu mati, atau semprot dengan disinfektan jika tidak bisa dicuci.</li>\r\n  <li>Gunakan pakaian bersih setiap hari, dan hindari berbagi pakaian, topi, atau selimut dengan orang lain.</li>\r\n  <li>Jika ada anggota keluarga lain yang tinggal serumah, sebaiknya mereka juga ikut diperiksa atau diobati untuk mencegah penularan kembali.</li>\r\n  <li>Konsultasikan ke dokter bila gatal tidak kunjung membaik dalam 1 minggu setelah pengobatan atau bila muncul infeksi kulit sekunder akibat garukan.</li>\r\n</ul>\r\n'),
(7, 'P07', 'Candidiasis Kulit', '800.jpeg', '<p>Candidiasis kulit adalah infeksi jamur yang disebabkan oleh <em>Candida albicans</em>, jamur yang sebenarnya secara alami hidup di kulit manusia namun bisa berkembang berlebihan dalam kondisi tertentu. Area tubuh yang hangat, lembap, dan sering tertutup seperti lipatan paha, ketiak, bawah payudara, dan sela-sela jari menjadi lokasi yang paling rentan.</p>\r\n\r\n<p>Infeksi ini ditandai dengan munculnya ruam merah, terasa gatal atau terbakar, kulit mengelupas, kadang basah, serta disertai bercak putih. Pada kasus berat, bisa muncul luka terbuka atau nanah akibat garukan. Kondisi ini lebih sering terjadi pada orang yang obesitas, sering berkeringat, menggunakan pakaian ketat, atau memiliki daya tahan tubuh lemah.</p>\r\n', '<ul>\r\n  <li>Gunakan krim antijamur topikal seperti <em>clotrimazole</em>, <em>miconazole</em>, atau <em>nystatin</em>, oleskan tipis-tipis pada area yang terinfeksi 2x sehari selama 1–2 minggu.</li>\r\n  <li>Jika infeksi meluas atau tidak membaik dengan pengobatan topikal, dokter dapat memberikan obat antijamur oral seperti <em>fluconazole</em>.</li>\r\n  <li>Pastikan area kulit yang terinfeksi tetap kering dan bersih. Keringkan area dengan lembut setelah mandi, terutama di bagian lipatan kulit.</li>\r\n  <li>Hindari menggunakan pakaian ketat atau berbahan sintetis yang tidak menyerap keringat. Pilih pakaian longgar dan berbahan katun.</li>\r\n  <li>Gunakan bedak antifungal untuk menjaga area tetap kering, terutama jika kamu sering berkeringat.</li>\r\n  <li>Jaga pola makan yang sehat dan hindari konsumsi gula berlebih, karena jamur dapat berkembang lebih cepat dengan kadar gula tinggi.</li>\r\n  <li>Konsultasi ke dokter jika infeksi berlangsung lebih dari 2 minggu atau muncul komplikasi seperti luka atau infeksi bakteri sekunder.</li>\r\n</ul>\r\n'),
(8, 'P08', 'Tinea Cruris', '1723095481426.jpeg', '<p>Tinea Cruris, atau yang lebih dikenal sebagai jamur selangkangan, adalah infeksi kulit yang disebabkan oleh jamur dermatofita seperti <em>Trichophyton rubrum</em>. Infeksi ini menyerang area lipatan tubuh seperti selangkangan, pangkal paha, bokong, dan kadang menyebar ke bagian dalam paha.</p>\r\n\r\n<p>Penyakit ini sangat umum terjadi di lingkungan tropis dan lembap, terutama pada pria yang sering berkeringat, menggunakan celana ketat, atau tidak mengganti pakaian dalam secara rutin. Gejalanya berupa ruam merah melingkar, terasa gatal, panas, dan kadang disertai kulit bersisik atau mengelupas.</p>\r\n', '<ul>\r\n  <li>Gunakan krim antijamur topikal seperti <em>clotrimazole</em>, <em>terbinafine</em>, atau <em>ketoconazole</em> 2x sehari selama 2–4 minggu atau sampai ruam hilang.</li>\r\n  <li>Pastikan area selangkangan selalu kering dan bersih, terutama setelah mandi atau berkeringat.</li>\r\n  <li>Gunakan celana dalam berbahan katun dan longgar, serta hindari celana ketat atau berbahan sintetis yang memerangkap keringat.</li>\r\n  <li>Setiap hari ganti pakaian dalam dan celana, serta jemur di bawah matahari agar jamur mati.</li>\r\n  <li>Hindari menggunakan handuk atau pakaian bersama orang lain untuk mencegah penyebaran jamur.</li>\r\n  <li>Gunakan bedak antifungal jika kamu mudah berkeringat agar area tetap kering dan tidak lembap.</li>\r\n  <li>Jika pengobatan topikal tidak efektif, konsultasikan ke dokter untuk resep obat antijamur oral seperti <em>itraconazole</em> atau <em>fluconazole</em>.</li>\r\n</ul>\r\n'),
(9, 'P09', 'Folikulitis', '630427_19-6-2023_12-12-20.webp', '<p>Folikulitis adalah peradangan atau infeksi pada folikel rambut, yaitu tempat tumbuhnya akar rambut di kulit. Kondisi ini biasanya disebabkan oleh bakteri <em>Staphylococcus aureus</em>, tetapi juga bisa disebabkan oleh jamur, virus, atau iritasi akibat mencukur dan gesekan pakaian ketat.</p>\r\n\r\n<p>Folikulitis ditandai dengan benjolan merah kecil menyerupai jerawat yang bisa bernanah, terasa gatal atau nyeri, dan sering muncul di area yang sering terpapar gesekan seperti paha, ketiak, bokong, janggut, dan leher. Jika tidak ditangani, bisa berkembang menjadi luka lebih dalam seperti bisul (furunkel).</p>\r\n', '<ul>\r\n  <li>Kompres hangat area yang terinfeksi selama 15 menit, 2–3 kali sehari untuk membantu mengurangi nyeri dan mempercepat penyembuhan.</li>\r\n  <li>Bersihkan kulit dengan sabun antibakteri yang lembut dan hindari mencukur area yang terkena hingga pulih.</li>\r\n  <li>Gunakan salep antibiotik topikal seperti <em>mupirocin</em> atau <em>fusidic acid</em> jika benjolan berisi nanah atau tampak meradang.</li>\r\n  <li>Pada kasus berat, dokter mungkin akan meresepkan antibiotik oral seperti <em>cephalexin</em> atau <em>clindamycin</em>.</li>\r\n  <li>Jangan memencet atau menggaruk benjolan untuk menghindari infeksi lebih parah dan mencegah bekas luka.</li>\r\n  <li>Ganti pakaian dalam atau pakaian olahraga secara rutin dan hindari pakaian ketat yang dapat mengiritasi kulit.</li>\r\n  <li>Jika terjadi berulang, periksa kemungkinan penyebab seperti pencukuran yang tidak steril, kulit berminyak berlebih, atau daya tahan tubuh rendah.</li>\r\n</ul>\r\n'),
(10, 'P10', 'Moluskum Kontagiosum', 'molluscum-contagiosum.jpg', '<p>Moluskum Kontagiosum adalah infeksi kulit yang disebabkan oleh virus <em>Molluscum contagiosum</em> dari keluarga poxvirus. Penyakit ini menimbulkan benjolan kecil berbentuk bulat seperti mutiara, berwarna putih, merah muda, atau seperti warna kulit, dengan lekukan di tengahnya.</p>\r\n\r\n<p>Benjolan ini biasanya tidak nyeri, tetapi bisa terasa gatal dan menyebar ke area kulit lain jika digaruk. Penyakit ini menular melalui kontak langsung kulit ke kulit, hubungan seksual, atau berbagi barang pribadi seperti handuk. Sering menyerang anak-anak, orang dewasa aktif seksual, dan individu dengan imunitas rendah.</p>\r\n', '<ul>\r\n  <li>Moluskum umumnya sembuh sendiri dalam waktu 6–12 bulan tanpa pengobatan khusus, tetapi bisa bertahan lebih lama pada orang dengan daya tahan tubuh lemah.</li>\r\n  <li>Untuk mempercepat penyembuhan atau menghindari penyebaran, dokter bisa melakukan tindakan seperti <em>kuretase</em> (mengangkat benjolan), <em>cryotherapy</em> (pembekuan dengan nitrogen cair), atau <em>laser</em>.</li>\r\n  <li>Hindari menggaruk benjolan untuk mencegah penyebaran virus ke bagian tubuh lain atau orang lain.</li>\r\n  <li>Tutup benjolan dengan kain kasa atau plester jika mudah tergesek atau akan beraktivitas fisik untuk mencegah penularan.</li>\r\n  <li>Jaga kebersihan kulit dan hindari berbagi barang pribadi seperti handuk, pakaian, atau alat cukur.</li>\r\n  <li>Pada kasus tertentu, salep dengan bahan aktif seperti <em>tretinoin</em>, <em>imiquimod</em>, atau <em>cantharidin</em> bisa diresepkan untuk mempercepat peluruhan lesi.</li>\r\n  <li>Segera konsultasikan ke dokter jika jumlah benjolan terus bertambah, ukurannya membesar, atau terjadi infeksi sekunder (merah, bengkak, bernanah).</li>\r\n</ul>\r\n'),
(11, 'P11', 'Dermatophytosis', 'dermatophytosis.jpg', '<p>Dermatophytosis adalah infeksi kulit yang disebabkan oleh jamur dermatofita, yaitu kelompok jamur yang menyerang jaringan kaya keratin seperti kulit, rambut, dan kuku. Jenis jamur yang sering menjadi penyebabnya antara lain <em>Trichophyton</em>, <em>Microsporum</em>, dan <em>Epidermophyton</em>.</p>\r\n\r\n<p>Infeksi ini bisa terjadi di berbagai bagian tubuh, termasuk badan (<em>tinea corporis</em>), kepala (<em>tinea capitis</em>), selangkangan (<em>tinea cruris</em>), kaki (<em>tinea pedis</em>), atau kuku (<em>tinea unguium</em>). Gejala khasnya berupa bercak bulat kemerahan bersisik di pinggir dan sering terasa gatal, bisa menyebar jika tidak ditangani.</p>\r\n', '<ul>\r\n  <li>Gunakan krim atau salep antijamur topikal seperti <em>clotrimazole</em>, <em>terbinafine</em>, atau <em>miconazole</em>, dioleskan 2x sehari selama minimal 2 minggu.</li>\r\n  <li>Untuk infeksi luas atau membandel, dokter akan meresepkan obat antijamur oral seperti <em>itraconazole</em> atau <em>griseofulvin</em>.</li>\r\n  <li>Jaga area kulit tetap kering dan bersih. Jamur berkembang di lingkungan lembap dan hangat.</li>\r\n  <li>Gunakan pakaian longgar dan menyerap keringat, hindari pakaian ketat dan sintetis.</li>\r\n  <li>Ganti pakaian dalam dan kaus kaki setiap hari, dan cuci dengan air panas jika memungkinkan.</li>\r\n  <li>Jangan menggaruk area yang terinfeksi agar tidak menyebarkan jamur ke bagian tubuh lain.</li>\r\n  <li>Bersihkan alat pribadi seperti handuk dan sisir secara teratur, dan hindari berbagi dengan orang lain.</li>\r\n</ul>\r\n'),
(12, 'P12', 'Eczema Infektif', 'macam-macam-dermatitis-yang-perlu-anda-ketahui.jpg', '<p>Eczema infektif adalah kondisi peradangan kulit (eksim) yang mengalami infeksi sekunder akibat masuknya mikroorganisme seperti bakteri, virus, atau jamur. Infeksi ini paling sering disebabkan oleh <em>Staphylococcus aureus</em> yang masuk melalui luka atau kulit yang terbuka karena garukan.</p>\r\n\r\n<p>Gejala khas eczema infektif meliputi kulit merah, bengkak, terasa panas, disertai munculnya luka bernanah, kerak kuning, dan gatal yang hebat. Area yang terkena juga bisa berbau tidak sedap dan terasa nyeri saat disentuh. Kondisi ini umum terjadi pada penderita dermatitis atopik yang menggaruk kulit secara berlebihan.</p>\r\n', '<ul>\r\n  <li>Gunakan salep antibiotik topikal seperti <em>mupirocin</em> atau <em>fusidic acid</em> jika infeksi bersifat ringan dan lokal.</li>\r\n  <li>Pada infeksi sedang hingga berat, dokter akan meresepkan antibiotik oral seperti <em>cephalexin</em>, <em>amoxicillin-clavulanate</em>, atau <em>clindamycin</em>.</li>\r\n  <li>Hindari menggaruk area kulit agar luka tidak bertambah dan memperparah infeksi.</li>\r\n  <li>Gunakan salep kortikosteroid (seperti <em>hydrocortisone</em>) sesuai resep untuk mengurangi peradangan dan rasa gatal, hanya setelah infeksi terkendali.</li>\r\n  <li>Kompres hangat area yang bernanah atau berkerak untuk melunakkan kerak sebelum membersihkan.</li>\r\n  <li>Jaga kebersihan kulit dan kuku, serta gunakan pelembap kulit bebas pewangi untuk mencegah kulit kering dan pecah-pecah.</li>\r\n  <li>Hindari penggunaan sabun keras atau deterjen yang dapat memicu iritasi tambahan.</li>\r\n</ul>\r\n'),
(13, 'P13', 'Onikomikosis', 'jamur-kuku-doktersehat-1.jpg', '<p>Onikomikosis adalah infeksi jamur pada kuku tangan atau kaki yang disebabkan oleh jamur dermatofita, ragi, atau jamur non-dermatofita. Kondisi ini membuat kuku tampak menguning, menebal, rapuh, retak, atau bahkan terlepas dari dasar kuku. Jamur paling sering menyerang kuku kaki karena lingkungan yang lembap dan tertutup oleh sepatu.</p>\r\n\r\n<p>Infeksi ini bisa menyebar ke kuku lainnya dan biasanya sulit diobati bila sudah parah. Orang dengan daya tahan tubuh rendah, diabetes, atau sering berkeringat lebih rentan mengalami onikomikosis. Penanganan sedini mungkin penting untuk mencegah kerusakan permanen pada kuku.</p>\r\n', '<ul>\r\n  <li>Gunakan obat antijamur topikal seperti <em>ciclopirox</em> atau <em>efinaconazole</em> jika infeksi masih ringan dan tidak menembus ke dasar kuku.</li>\r\n  <li>Untuk kasus menengah hingga berat, dokter biasanya meresepkan obat antijamur oral seperti <em>terbinafine</em> atau <em>itraconazole</em> selama 6–12 minggu.</li>\r\n  <li>Potong kuku secara rutin, bersihkan bagian bawah kuku, dan hindari mencabut bagian kuku yang rusak.</li>\r\n  <li>Rendam kaki dengan larutan antiseptik ringan seperti air hangat + cuka apel untuk membantu mengurangi pertumbuhan jamur (tidak menggantikan obat medis).</li>\r\n  <li>Gunakan sepatu yang bersih dan memiliki sirkulasi udara baik. Hindari sepatu yang lembap dan terlalu sempit.</li>\r\n  <li>Ganti kaus kaki setiap hari, terutama setelah beraktivitas atau berkeringat.</li>\r\n  <li>Jika pengobatan tidak berhasil, prosedur medis seperti pengangkatan kuku atau terapi laser bisa dipertimbangkan oleh dokter kulit.</li>\r\n</ul>\r\n'),
(14, 'P14', 'Pediculosis', 'pediculosisCapitisHeadLice_6342_lg.webp', '<p>Pediculosis adalah infeksi parasit yang disebabkan oleh kutu (lice) pada tubuh manusia, yang bisa menyerang rambut kepala (<em>Pediculus humanus capitis</em>), tubuh (<em>Pediculus humanus corporis</em>), atau area kelamin (<em>Pthirus pubis</em>). Kutu hidup dengan menghisap darah dari inangnya dan menimbulkan rasa gatal yang sangat mengganggu.</p>\r\n\r\n<p>Gejalanya meliputi rasa gatal hebat, iritasi, kemerahan, dan munculnya telur kutu (nits) yang menempel pada batang rambut. Kutu bisa menular melalui kontak langsung atau penggunaan barang pribadi bersama seperti sisir, topi, bantal, handuk, atau pakaian.</p>\r\n', '<ul>\r\n  <li>Gunakan sampo khusus pembasmi kutu (pedikulisida) seperti <em>permethrin 1%</em>, <em>malathion</em>, atau <em>pyrethrin</em>. Ulangi pemakaian sesuai petunjuk, biasanya setelah 7–10 hari.</li>\r\n  <li>Sisir rambut dengan sisir serit (sisir kutu) setiap hari untuk mengangkat kutu dan telur dari batang rambut.</li>\r\n  <li>Rendam sisir, handuk, dan aksesori rambut dalam air panas (> 60°C) selama 10 menit setelah digunakan.</li>\r\n  <li>Cuci pakaian, seprai, bantal, dan selimut dengan air panas dan keringkan dengan suhu tinggi.</li>\r\n  <li>Hindari berbagi barang pribadi seperti topi, helm, jilbab, atau headset selama masa pengobatan.</li>\r\n  <li>Untuk kutu kelamin, selain pengobatan topikal, hindari kontak seksual selama pengobatan dan periksa pasangan seksual juga.</li>\r\n  <li>Jika infeksi luas atau sulit hilang, konsultasikan ke dokter untuk pengobatan tambahan atau terapi oral seperti <em>ivermectin</em>.</li>\r\n</ul>\r\n'),
(15, 'P15', 'Herpes Simplex', 'herpes.jpg', '<p>Herpes Simplex adalah infeksi virus yang disebabkan oleh Herpes Simplex Virus (HSV), terbagi menjadi dua tipe utama: HSV-1 (umumnya menyebabkan luka di mulut atau wajah) dan HSV-2 (lebih sering menyerang area genital). Virus ini dapat menetap di tubuh dalam kondisi laten dan kambuh sewaktu-waktu terutama saat daya tahan tubuh menurun.</p>\r\n\r\n<p>Gejala umumnya berupa luka lepuh berisi cairan yang terasa perih, terbakar, dan bisa pecah menjadi luka terbuka. Luka dapat muncul di sekitar mulut, hidung, atau area genital, disertai rasa tidak nyaman, gatal, dan kadang demam ringan. Penularan terjadi melalui kontak langsung, termasuk ciuman, hubungan seksual, atau penggunaan barang pribadi yang terkontaminasi.</p>\r\n', '<ul>\r\n  <li>Gunakan obat antivirus oral seperti <em>acyclovir</em>, <em>valacyclovir</em>, atau <em>famciclovir</em> untuk mempercepat penyembuhan dan mengurangi frekuensi kekambuhan.</li>\r\n  <li>Oleskan salep antivirus (jika diresepkan dokter) secara lokal untuk membantu meredakan gejala di area luka.</li>\r\n  <li>Kompres dingin pada luka untuk mengurangi rasa nyeri dan peradangan.</li>\r\n  <li>Minum obat pereda nyeri seperti <em>paracetamol</em> atau <em>ibuprofen</em> jika gejala sangat mengganggu.</li>\r\n  <li>Jaga area luka tetap bersih dan kering, hindari menggaruk atau menyentuh luka agar tidak menyebarkan virus ke area lain.</li>\r\n  <li>Hindari kontak langsung dengan luka, dan jangan berbagi barang pribadi seperti handuk, lipstik, atau alat makan selama masa aktif infeksi.</li>\r\n  <li>Jika sering kambuh, pertimbangkan terapi antivirus jangka panjang (terapi supresi) sesuai arahan dokter.</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user'),
(3, 'kaka', '12345', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan_cf`
--
ALTER TABLE `aturan_cf`
  ADD PRIMARY KEY (`id_aturan`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan_cf`
--
ALTER TABLE `aturan_cf`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan_cf`
--
ALTER TABLE `aturan_cf`
  ADD CONSTRAINT `aturan_cf_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`),
  ADD CONSTRAINT `aturan_cf_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
