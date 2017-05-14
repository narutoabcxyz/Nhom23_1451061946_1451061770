-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 06:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `idcmt` int(11) NOT NULL,
  `ten_cm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idtin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE `loaitin` (
  `idlt` int(11) NOT NULL,
  `idtl` int(11) NOT NULL,
  `tenlt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`idlt`, `idtl`, `tenlt`) VALUES
(1, 1, 'Xã Hội'),
(2, 1, 'Pháp Luật'),
(3, 1, 'Giáo Dục'),
(4, 1, 'Y Tế'),
(5, 1, 'Kinh Doanh'),
(6, 5, 'Chính Sách Mới'),
(7, 5, 'Hỏi Pháp Luật'),
(8, 6, 'Mẹ vs Bé'),
(9, 6, 'Khéo Tay'),
(10, 6, 'Gia Đình'),
(11, 6, 'LGBT'),
(12, 7, 'Nhân Vật'),
(13, 7, 'Bình Luận'),
(14, 7, 'Phim'),
(15, 7, 'Sự Kiện'),
(16, 8, 'Cẩm Nang'),
(17, 8, 'Tôi Đã Đến'),
(18, 8, 'Điểm Đến');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `idtl` int(10) NOT NULL,
  `tentl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tentl_khongdau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`idtl`, `tentl`, `tentl_khongdau`) VALUES
(1, 'Thời Sự', 'Thoi-Su'),
(2, 'Góc Nhìn', 'Goc-Nhin'),
(3, 'Video', 'Video'),
(4, 'Thế Giới', 'The-Gioi'),
(5, 'Tiện Ích', 'Tien-Ich'),
(6, 'Lối Sống', 'Loi-Song'),
(7, 'Văn Hóa', 'Van-Hoa'),
(8, 'Du Lịch', 'Du-Lich'),
(9, 'Công Nghệ', 'Cong-Nghe'),
(10, 'Sống Online', 'Song-Online');

-- --------------------------------------------------------

--
-- Table structure for table `tin`
--

CREATE TABLE `tin` (
  `idtin` int(11) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlhinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idlt` int(11) NOT NULL,
  `idtl` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `luotxem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tin`
--

INSERT INTO `tin` (`idtin`, `tieude`, `tomtat`, `urlhinh`, `idlt`, `idtl`, `content`, `luotxem`) VALUES
(1, 'Hà Nội hạn chế phương tiện trên 10 tuyến phố', 'Để phục vụ Hội nghị Quan chức cao cấp APEC (SOM II), Phòng CSGT Hà Nội vừa thông báo phương án tổ chức, phân luồng giao thông trên 10 tuyến phố trung tâm Hà Nội.', 'images.jpg', 1, 1, 'Cụ thể, trong thời gian từ ngày 8/5 đến ngày 22/5/2017, Công an thành phố Hà Nội thực hiện phân luồng, tổ chức giao thông trên 10 tuyến đường.\r\n\r\nCụ thể, trong thời gian trên, từ 6h đến 9h; từ 11h đến 14h30 phút và từ 16h đến 19h30 phút các ngày từ 8/5/2017 đến 22/5/2017, hạn chế đi lại đối với các xe ô tô chở hàng có khối lượng hàng chuyên chở cho phép tham gia giao thông từ 500 kg trở lên; xe ô tô chở khách từ 25 chỗ trở lên (trừ các xe ô tô phục vụ Hội nghị, xe có phù hiệu bảo vệ, xe buýt, xe vệ sinh và xe giải quyết, khắc phục sự cố; xe cấp cứu; xe chở khách tuyến cố định) trên 10 tuyến đường.\r\n\r\nBao gồm: Phạm Hùng (đoạn từ Mễ Trì đến Trần Duy Hưng); Đại lộ Thăng Long; đường Đỗ Đức Dục; Miếu Đầm; Trần Duy Hưng; Nguyễn Chí Thanh; Liễu Giai (đoạn từ Liễu Giai – Phan Kế Bính đến Liễu Giai – Kim Mã); Kim Mã (đoạn từ Kim Mã – Nguyễn Chí Thanh đến Kim Mã – Nguyễn Thái Học); Đào Tấn, Láng (đoạn từ Láng – Cầu Giấy đến Láng – Nguyễn Chí Thanh).\r\n\r\nTrong thời gian diễn ra hội nghị, Công an thành phố Hà Nội tổ chức hướng đi cho các phương tiện trong diện hạn chế tham gia giao thông trên các tuyến đường được công như sau:\r\n\r\nXe từ các tỉnh phía Đông đi các tỉnh phía Tây và ngược lại đi theo tuyến Quốc lộ (QL) 5 – Nguyễn Văn Linh – Lý Sơn – cầu Đông Trù – Trường Sa – Hoàng Sa – Võ Văn Kiệt – QL2 – đi các tỉnh Vĩnh Phúc, Phú Thọ.\r\n\r\nXe từ các tỉnh phía Nam đi các tỉnh phía Bắc (qua Cầu Thăng Long) và ngược lại có nhu cầu vào trung tâm Thành phố đi theo đường Vành đai 3 trên cao, xuống nút giao Khuất Duy Tiến – Nguyễn Trãi, Xuân Thủy – Hồ Tùng Mậu; Phạm Văn Đồng – Trần Quốc Hoàn; Phạm Văn Đồng – Hoàng Quốc Việt để vào Trung tâm Thành phố hoặc rẽ Hồ Tùng Mậu tại nút giao Xuân Thủy – Hồ Tùng Mậu để đi Quốc lộ 32 về các tỉnh phía Tây.\r\n\r\nXe từ các tỉnh phía Nam đi phía Bắc theo tuyến QL1A (hoặc QL1B) – Pháp Vân –– cầu Thanh Trì – Nguyễn Văn Linh - Lý Sơn – cầu Đông Trù – Trường Sa – Hoàng Sa – Võ Văn Kiệt – QL2 – đi các tỉnh Vĩnh Phúc, Phú Thọ và ngược lại.\r\n\r\nVới các xe từ các tỉnh phía Tây đi các tỉnh phía Nam đi theo tuyến QL21A – Đại lộ Thăng Long – Tỉnh lộ 70 – Lê Trọng Tấn – Văn Phú – Phúc La – Cầu Bươu – Phan Trọng Tuệ - QL1A – đi các tỉnh phía Nam (hoặc QL1A – Pháp Vân – QL1B).\r\n\r\nRiêng xe ô tô tải, có tải trọng toàn bộ xe cho phép tham gia giao thông từ 10 tấn trở lên từ phía Nam đi phía Bắc theo tuyến Pháp Vân– Ngọc Hồi – (hoặc QL1A) rẽ Phan Trọng Tuệ - Cầu Bươu – Phúc La – Văn Phú – Lê Trọng Tấn (Hà Đông) – Đại lộ Thăng Long (hoặc đến Lê Trọng Tấn – Quang Trung (Hà Đông) – rẽ đi QL6 - Xuân Mai – QL21A - Đại lộ Thăng Long) - Tỉnh lộ 70 - Nhổn - Quốc lộ 32 - Hồ Tùng Mậu - Phạm Văn Đồng - Cầu Thăng Long.', 1000),
(2, 'Ông Đinh La Thăng bị cảnh cáo, thôi chức Ủy viên Bộ Chính trị', 'Ban Chấp hành Trung ương Đảng đã quyết định thi hành kỷ luật ông Đinh La Thăng bằng hình thức cảnh cáo và cho thôi giữ chức Uỷ viên Bộ Chính trị.', '2.jpg', 1, 1, 'Ngày 7/5, Hội nghị lần thứ 5 Ban Chấp hành Trung ương Đảng khóa XII làm việc tại Hội trường để xem xét và thi hành kỷ luật cán bộ. Tổng Bí thư Nguyễn Phú Trọng chủ trì, điều hành phiên họp.\r\n\r\nTheo thông cáo báo chí của Văn phòng Trung ương Đảng, sau khi nghe ông Trần Quốc Vượng, Uỷ viên Bộ Chính trị, Bí thư Trung ương Đảng, Chủ nhiệm Uỷ ban Kiểm tra Trung ương, thay mặt Bộ Chính trị đọc Tờ trình của Bộ Chính trị về thi hành kỷ luật ông Đinh La Thăng, Uỷ viên Bộ Chính trị, Bí thư Thành uỷ Thành phố Hồ Chí Minh, nguyên Bí thư Đảng uỷ, nguyên Chủ tịch Hội đồng thành viên Tập đoàn Dầu khí quốc gia Việt Nam; và nghe ông Đinh La Thăng phát biểu ý kiến, Ban Chấp hành Trung ương Đảng đã thảo luận kỹ, thống nhất cao với Tờ trình của Bộ Chính trị.\r\n\r\nBan Chấp hành Trung ương Đảng nhận thấy: Ông Đinh La Thăng, mặc dù có quá trình công tác gần 35 năm, có những đóng góp nhất định cho Tập đoàn Dầu khí quốc gia Việt Nam và những cơ quan, đơn vị ông giữ cương vị lãnh đạo nhưng trên cương vị Uỷ viên Ban Chấp hành Trung ương Đảng khoá X, Bí thư Đảng uỷ, Chủ tịch Hội đồng thành viên Tập đoàn Dầu khí quốc gia Việt Nam giai đoạn 2009 - 2011, ông đã mắc những khuyết điểm, vi phạm rất nghiêm trọng trong công tác lãnh đạo, chỉ đạo và công tác cán bộ, ảnh hưởng xấu đến uy tín của cấp uỷ, tổ chức đảng và cá nhân ông, gây bức xúc trong cán bộ, đảng viên và nhân dân đến mức phải thi hành kỷ luật theo quy định của Đảng.\r\n\r\nSau khi xem xét toàn diện, khách quan, cân nhắc nhiều mặt, Ban Chấp hành Trung ương Đảng đã quyết định thi hành kỷ luật ông Đinh La Thăng bằng hình thức cảnh cáo và cho thôi giữ chức Uỷ viên Bộ Chính trị khoá XII với tỉ lệ phiếu biểu quyết rất cao (trên 90%).', 2000),
(3, 'Trung ương xem xét, đánh giá ưu khuyết điểm Bộ Chính trị, Ban Bí thư', 'Tổng Bí thư Nguyễn Phú Trọng đề nghị Trung ương với tinh thần nhìn thẳng vào sự thật, xem xét, đánh giá kỹ lưỡng những ưu điểm, những hạn chế, khuyết điểm trong lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư gắn với thực hiện Nghị quyết Trung ương 4 (khoá XII) trên các lĩnh vực.', '3.jpg', 1, 1, 'Phát biểu tại Hội nghị Trung ương 5 (khóa XII) sáng 5/5, Tổng Bí thư Nguyễn Phú Trọng đã nhấn mạnh như vậy khi đề cập đến nội dung về kiểm điểm sự lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư năm 2016 gắn với thực hiện Nghị quyết Trung ương 4 (khoá XII) về xây dựng, chỉnh đốn Đảng.\r\n\r\nTheo Tổng Bí thư Nguyễn Phú Trọng, thực hiện Điều lệ Đảng, Quy chế làm việc và Nghị quyết Trung ương 4 (khoá XII) về xây dựng, chỉnh đốn Đảng, trong tháng 3/2017, Bộ Chính trị, Ban Bí thư đã dành 7 ngày để tiến hành kiểm điểm tự phê bình và phê bình về sự lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư năm 2016 gắn với thực hiện Nghị quyết Trung ương 4 (khoá XII) về xây dựng, chỉnh đốn Đảng.\r\n\r\nViệc kiểm điểm tự phê bình và phê bình đã được thực hiện bài bản, theo từng bước hợp lý. Các báo cáo kiểm điểm đều chuẩn bị đúng hướng dẫn. Không khí kiểm điểm dân chủ, đoàn kết, thẳng thắn, chân tình. Các đồng chí được góp ý đã tiếp thu nghiêm túc, cầu thị, coi đây là cơ hội quý để học tập, chia sẻ lẫn nhau.\r\n\r\nTrong quá trình kiểm điểm, từng đồng chí Ủy viên Bộ Chính trị, Ban Bí thư đã liên hệ đến trách nhiệm cá nhân đối với lĩnh vực được phân công, thấy rõ những ưu điểm để phát huy, nhận ra những khuyết điểm, hạn chế để khắc phục.\r\n\r\nQua kiểm điểm tập thể và cá nhân, Bộ Chính trị, Ban Bí thư nhận thấy, năm 2016, tình hình thế giới và khu vực tiếp tục có những diễn biến nhanh chóng, phức tạp; tình hình trong nước còn nhiều khó khăn, thách thức, có một số vấn đề phức tạp mới nảy sinh (như sự cố ô nhiễm môi trường biển ở miền Trung, tình trạng khô hạn gay gắt ở Nam Trung Bộ và Tây Nguyên, xâm nhập mặn ở đồng bằng sông Cửu Long...).\r\n\r\nTrong bối cảnh đó, Bộ Chính trị, Ban Bí thư luôn vững vàng, đoàn kết, kiên định và sáng tạo, có các quyết sách đúng đắn, kịp thời và phù hợp để lãnh đạo, chỉ đạo toàn Đảng, toàn dân và toàn quân đạt được những kết quả quan trọng trên các lĩnh vực đối nội và đối ngoại, được cán bộ, đảng viên và nhân dân ghi nhận, hoan nghênh, bạn bè thế giới đánh giá cao.\r\n\r\nCụ thể, ngay sau thành công tốt đẹp của Đại hội đại biểu toàn quốc lần thứ XII của Đảng, đã lãnh đạo tổ chức thắng lợi cuộc bầu cử Quốc hội khoá XIV, đại biểu HĐND các cấp nhiệm kỳ 2016-2021. Nhanh chóng kiện toàn tổ chức, nhân sự các cơ quan đảng và bộ máy nhà nước, bảo đảm sự kế thừa, đổi mới và phát triển ổn định. Khẩn trương triển khai thực hiện các mục tiêu, nhiệm vụ chính trị mà Đại hội lần thứ XII của Đảng đề ra. Kinh tế đạt mức tăng trưởng khá (6,21%), lạm phát được kiểm soát, các cân đối lớn của nền kinh tế cơ bản được bảo đảm, dự trữ ngoại hối đạt mức tăng cao nhất từ trước đến nay. Văn hoá, xã hội có tiến bộ; tỉ lệ hộ nghèo tiếp tục giảm; đời sống vật chất và tinh thần của nhân dân được cải thiện; niềm tin của nhân dân được củng cố.\r\n\r\nCông tác xây dựng pháp luật, hoàn thiện thể chế, cải cách hành chính và cải cách tư pháp được chú trọng. Quốc phòng, an ninh được tăng cường; chủ quyền quốc gia được giữ vững; an ninh, trật tự được ổn định.\r\n\r\nCông tác đối ngoại và hội nhập quốc tế được triển khai mạnh mẽ, toàn diện; quan hệ đối ngoại với các nước láng giềng, các nước lớn và các đối tác quan trọng khác tiếp tục đi vào chiều sâu, ngày càng thực chất, mang lại hiệu quả thiết thực, nâng cao vai trò, vị thế Việt Nam trong khu vực và trên trường quốc tế, góp phần duy trì môi trường hoà bình, ổn định, thuận lợi cho công cuộc xây dựng và bảo vệ Tổ quốc.\r\n\r\nCông tác xây dựng, chỉnh đốn Đảng cùng với cuộc đấu tranh phòng, chống tham nhũng được đẩy mạnh và có những chuyển biến tích cực, rõ rệt.\r\n\r\nNhiều vụ án tham nhũng, kinh tế đặc biệt nghiêm trọng đã được đưa ra xét xử; nhiều sai phạm trong công tác cán bộ, nhiều cán bộ cấp cao vi phạm đã được kết luận và xử lý, kỷ luật nghiêm minh, công khai, được đông đảo cán bộ, đảng viên và nhân dân đồng tình, ủng hộ. Dù vẫn còn không ít khó khăn, thách thức, nhưng những kết quả đạt được trong năm qua là đáng khích lệ, tạo đà thuận lợi cho đất nước bước vào một giai đoạn phát triển mới.\r\n\r\nMặc dù vậy, công tác lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư trong năm qua cũng còn một số hạn chế, khuyết điểm như đã nêu trong Báo cáo của Bộ Chính trị gửi các đồng chí Ủy viên Trung ương.\r\n\r\nTổng Bí thư Nguyễn Phú Trọng đề nghị Trung ương với tinh thần nhìn thẳng vào sự thật, đánh giá đúng sự thật, xem xét, đánh giá kỹ lưỡng những ưu điểm, những hạn chế, khuyết điểm trong lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư gắn với thực hiện Nghị quyết Trung ương 4 (khoá XII) trên các lĩnh vực. Đặc biệt, cần chỉ rõ những nguyên nhân, bài học và đề ra các giải pháp khắc phục trong thời gian tới.', 1222),
(4, 'Tai nạn thảm khốc ở Gia Lai: Tiếng khóc \'xé lòng\', tang thương bao phủ làng quê', 'Sau vụ tai nạn khiến hàng chục người thương vong ở Gia Lai, chúng tôi không khỏi xót xa khi chứng kiến cảnh tang thương bao phủ cả một vùng quê.', '4.jpg', 1, 1, 'Sau khi hoàn tất công tác khám nghiệm tử thi, chiều 7/5, thi thể của các nạn nhân tử vong trong vụ tai nạn xảy ra trên địa phận tỉnh Gia Lai đã được gia đình đưa về mai táng.\r\n\r\nTìm về xã Nam Dong (huyện Cư Jut, tỉnh Đắk Nông) chúng tôi không khỏi xót xa khi chứng kiến cảnh tang thương bao phủ cả một vùng quê.\r\n\r\nNgười dân nơi đây ai nấy đều thương xót cho những mảnh đời bất hạnh. Chỉ trong tích tắc, những người thân đã mất đi người con, người chồng, người cha, người anh...\r\n<p style=\"font-weight: bold\">Lên chuyến xe \"tử thần\" vì không đủ tiền đi máy bay về thăm mẹ đang hấp hối</p>\r\n\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<img src=\"C:\\xampp\\htdocs\\phpdemo1\\uploadsql\\tin\\5.jpg\" width=\"480\" height=\"355\" />\r\n</table>\r\n', 250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idcmt`),
  ADD KEY `idtin` (`idtin`);

--
-- Indexes for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idlt`),
  ADD KEY `idtl` (`idtl`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idtl`);

--
-- Indexes for table `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idtin`),
  ADD KEY `idlt` (`idlt`),
  ADD KEY `idtl` (`idtl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `idcmt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `idlt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tin`
--
ALTER TABLE `tin`
  MODIFY `idtin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`idtin`) REFERENCES `tin` (`idtin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_ibfk_1` FOREIGN KEY (`idtl`) REFERENCES `theloai` (`idtl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tin`
--
ALTER TABLE `tin`
  ADD CONSTRAINT `tin_ibfk_1` FOREIGN KEY (`idlt`) REFERENCES `loaitin` (`idlt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tin_ibfk_2` FOREIGN KEY (`idtl`) REFERENCES `theloai` (`idtl`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
