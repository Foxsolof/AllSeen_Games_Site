-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2025, 17:47:52
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blm2537`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `ad`, `soyad`, `email`, `aciklama`) VALUES
(1, 'Hüseyin', 'Bolt', 'speed@gmail.com', 'çok hizliyimdir'),
(2, 'ekmekci', 'beyfendi', 'levelup@hotmail.edu.tr', 'ekmeklerim sizi 1 seviye atlatabilir (pankeklerim)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `id` int(11) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `yorumlar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`id`, `ad`, `soyad`, `email`, `yorumlar`) VALUES
(1, 'Anonim', ' Birey', 'anonim@hotmail.com', 'Oyunlarınızı çok beğendim ama hala gelişmeye ihtiyaçları var gibi. Ben bir dahaki oyunlarınızı 4 gözle bekliyorum . Sektöre katkılarınızdan dolayı çok minnettarım.'),
(2, 'Deneysel', 'Karakter', 'bilimicin@gmail.com', '2. yorumu atan kişi ben oldum iyi günler umarım daha iyi konumlara gelirsiniz.'),
(8, 'Mehmet', 'Simitci', 'simitlerbenden@hotmail.com', 'Simit seviyorsanız size simitli sponsorluk verebilirim ;) .'),
(9, 'Cemal', 'Usta', 'donerlerimsahane@gmail.com', ' Döner sevdiğini biliyorum aynı yerde aynı saatte gelmeyi unutma afied olsun'),
(10, 'Dusunur', 'adam', 'felsefebiziz@icloud.com', ' emailim yanlışsa kusura bakmayın. Oyunlarınızdaki düşünceyi beğendim ama biraz daha aktarımı artırabilirseniz sevinirim iyi günler ;)'),
(12, 'BU ne', 'gizli', 'gizliyimben@xxx.com', 'Uygulama döner ayran gibi çok beğendim umarım daha da tadlanır. '),
(13, 'Cemal', 'adam', 'fiz@icloud.com', ' Fiziği yeniden yazmaya geliyor'),
(14, 'ali', 'k', 'ali.k', ' ejgejogejroger'),
(15, 'Cemil', 'kullanıcı', 'simitlerbenden@hotmail.com', ' jeogjerjgoejger'),
(16, 'Cemil', 'bey', 'donerlerimsahane@gmail.com', ' egaojgoejojger'),
(17, 'Cemil', 'beyefendi', 'felsefebiziz@icloud.com', ' iyiydi');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD UNIQUE KEY `id` (`id`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD UNIQUE KEY `id` (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `yorum`
--
ALTER TABLE `yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
