-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 30, 2019 lúc 05:35 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dlich`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `image`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'soi.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(100) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `name`, `action`) VALUES
(2, 'dulichth.png', 'du lịch muôn nơi', 1),
(3, 'halong1.jpg', 'thỏa sức khám phá', NULL),
(4, 'view12.jpg', 'đi khắp mọi miền', NULL),
(5, 'view13.jpg', 'du lịch muôn nơi', NULL),
(6, 'view14.jpg', 'thỏa sức khám phá', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_toure`
--

CREATE TABLE `dat_toure` (
  `id` int(100) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `toure_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(100) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dat_toure`
--

INSERT INTO `dat_toure` (`id`, `user_name`, `toure_name`, `amount`, `type`) VALUES
(43, 'khoa', 'DU LỊCH SAPA', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toure`
--

CREATE TABLE `toure` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `mien` tinyint(4) NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `phuongtien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `info1` text COLLATE utf8_unicode_ci NOT NULL,
  `info2` text COLLATE utf8_unicode_ci NOT NULL,
  `anh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `anh2` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `toure`
--

INSERT INTO `toure` (`id`, `name`, `new_price`, `price`, `image`, `content`, `mien`, `time`, `start`, `phuongtien`, `info`, `info1`, `info2`, `anh1`, `anh2`) VALUES
(1, 'ĐÀ LẠT THƠ MỘNG', NULL, '1.550.000', 'dalat12.jpg', 'ĐÀ LẠT – XỨ THÔNG REOVƯỜN HOA THÀNH PHỐ –LANGBIANG – DINH BẢO ĐẠI – THIỀN VIỆN TRÚC LÂM- VƯỜN THÀNH PHỐ – GA XE LỬA  LÀNG HOA VẠN THÀNH – THÁC VOI', 3, '3 ngày 1 đêm', '2019-02-10', 'ô tô chất lượng cao', '<b>Ngày 1:  \r\n ĐÀ LẠT NGÀN HOA</b><br><br>\r\n\r\n<b>Chiều</b>: Xe và HDV đón khách  sân bay Liên Khương hoặc bến xe. Sau đó xe và HDV đưa quý khách về nhận phòng khách sạn. Sau đó, nghĩ ngơi tự do.<br><br>\r\n\r\n<b>Tối</b>: Xe và HDV đưa quý khách dùng cơm tối tại nhà hàng. Sau đó quý khách tự do tham quan chợ đêm Đà Lạt hoặc thưởng thức ẩm thực đêm của Đà Lạt như sữa đậu nóng, pizza Đà Lạt, Ngô nướng, Khoai Lang nướng,… Nghỉ đêm tại khách sạn.<br><br>', '<b>Ngày 2: \r\n  ĐÀ LẠT SỨ SỞ NGÀN THÔNG</b><br><br>\r\n\r\n<b>Sáng:</b> Quý khách dùng điểm tâm sáng. Xe và HDV đưa quý khách tham quan Dinh Bảo Đại ngôi dinh thự cổ được chính vua Bảo Đại – vị vua cuối cùng của Việt Nam xây dựng để nghỉ ngơi và làm việc tại Đà Lạt, được nhà nước xếp hạng di tích quốc gia.<br><br>\r\nThiền viện Trúc Lâm – hồ Tuyền Lâm Ngôi chùa lớn xây dựng năm 1993 theo Thiền Tông, rộng 24 hecta, cảnh quan đẹp nhìn xuống khu du lịch hồ Tuyền Lâm.<br>\r\n\r\nThác Datanla Cảnh thác nước hùng vĩ giữa núi rừng Cao nguyên, hiện nay đây là con thác đẹp và sạch nhất Đà Lạt. Quý khách còn có thể thưởng thức cảm giác mạnh bằng hệ thống xe trượt ống hiện đại tại đây. (Chi phí máng trượt tự túc).<br><br>\r\n<b>Trưa:</b> xe đưa quý khách về thành phố dùng cơm trưa. Nghỉ ngơi tại nhà hàng.<br><br>\r\n\r\n<b>Chiều:</b> Quý khách đến với Vườn Hoa Thành phố cảnh quan thơ mộng, với hàng trăm loài hoa khoe sắc rập trời. Quý khách tìm hiểu các loài hoa đặc trưng của Đà Lạt.<br><br>\r\n\r\nTiếp tục đến showroom Hoa Khô với Công nghệ hoa khô đặc biệt mang lại những tác phẩm tươi mãi với thời gian.<br>\r\n\r\nThăm nhà thờ Domain De Marie với lối kiến trúc Pháp cổ kính, nơi lưu giữ phần mộ phu nhân toàn quyền Đông Dương một thời. Sau đó về khách sạn nghỉ ngơi.<br>\r\n\r\n<b>Tối:</b> Xe và HDV đưa quý khách dùng cơm tối tại nhà hàng. Quý khách tự do chọn cho mình những chương trình đặc sắc của Đà Lạt như giao lưu Công chiêng, hoặc nhâm nhi tách café ngắm cảnh hồ Xuân Hương, thưởng thức nhạc Trịnh tại Cafe Diễm Xưa.', ' <b>Ngày 3:   ĐÀ LẠT THÀNH PHỐ TÌNH YÊU </b><br><br>      \r\n\r\n<b>9h45:</b> Quý khách tham quan Thung Lũng Vàng, quý khách sẽ tản bộ dọc theo những con đường đầy hoa dưới tán thông, lang thang qua hồ suối vàng, thăm cây hóa thạch 300 triệu năm tuổi, ngắm các loại cây cảnh bonsai tuyệt đẹp.<br><br>\r\nNúi Langbiang tiếp tục hành trình tới chân núi Langbiang (cao 2.169m), quý khách thuê xe Jeep lên núi (tự túc). Từ đỉnh núi quý khách sẽ cảm nhận được không khí mát mẻ dễ chịu của núi rừng, ngắm cảnh chụp hình bao quát thành phố Đà Lạt, hồ suối vàng, suối bạc…Vào Xã Lát làng đồng bào K’ho thăm quan đời sống, văn hóa, phong tục tập quán đồng bào. Xem làm thổ cẩm, nghe già làng kể chuyện. Chùa Linh Quang tham quan ngôi chùa có con rồng dài 99m.Quý khách dùng cơm trưa tại Nhà Hàng.<br><br>\r\n<b>Chiều:</b>Quý khách tiếp tục tham quan Làng biệt thự cổ tản bộ dọc theo con đường đẹp nhất Đà Lạt với hai bên đường là những căn biệt thự cổ xây dựng từ những năm 1930, quý khách yêu thích chụp hình tha hồ sáng tác những bức ảnh đẹp mang tính hoài cổ nơi đây. Có thể bước vào từng căn phòng rất đẹp, nơi đã từng là nhà ở của các quan chức người Pháp xưa. Bàn xoay kì lạ không mang yếu tố tâm linh nhưng kì lạ ở chỗ một chiếc bàn hoàn toàn làm bằng gỗ nhưng có thể quay được theo ý muốn của người đặt tay lên bàn và tập trung nghĩ về phía mình muốn xoay. Đây là chiếc bàn đã hơn 200 năm tuổi có thể xoay theo ý nghĩ con người.<br><br>\r\n\r\n', 'lang_biang_du_lich_da_lat.jpg', '2662018135911a-binhmihcohong-1504190075187.jpg'),
(2, 'BÁI ĐÍNH - TRÀNG AN', NULL, '650.000', 'trang-an1.JPG', 'Thăm quan những danh thắng đẹp nổi tiếng ở Ninh Bình như Khu núi chùa Bái Đính nổi tiếng bởi 5 cái nhất, Khu du lịch Tràng An với phong cảnh sơn thủy hữu tình, non xanh nước biếc.', 1, '1 ngày', '2019-01-16', 'ô tô chất lượng cao', ' Thăm 8 -9 hang động, quý khách ngồi đò thăm Hang sáng , Hang tối , Hang nấu rượu… và tìm hiểu văn hóa lịch sự nơi đây<br><br>\r\n<b>08h00 – 8h30:</b> Xe và Hướng dẫn viên của The Sinh Tourist sẽ đón quý khách tại điểm hẹn khởi hành đi Tour du lịch  Bái Đính-Tràng An Ninh Bình cách Hà Nội khoảng 100km. Xe sẽ dừng nghỉ ngơi 15 phút tại phủ lý khách hàng tự túc ăn sáng trên đường.Quý khách tiếp tục hành trình tour du lịch Tràng An – Bái Đính !<br>\r\n<b>10h30: </b>Đến chùa Bái Đính, từ bãi đỗ xe quý khách lên xe điện di chuyển đến cổng chùa Bái Đính ( khoảng 3km ). Quý khách thăm chùa Bái Đính nổi tiếng với nhiều kỷ lục: Khuôn viên cả khu chùa Bái Đính có diện tích 107ha, trong đó, Điện thờ Tam Thế và Pháp Chủ rộng hàng ngàn mét vuông; tại ngôi chùa này có tượng Phật Tổ Như Lai bằng đồng lớn nhất Đông Nam Á nặng 100 tấn và ba pho tượng Tam Thế, mỗi pho nặng 50 tấn. các hang động ở đây cũng có nhiều nhũ đá đẹp không kém những hang động ở vịnh Hạ Long. Chùa Bái Đính đã trở thành điểm hành hương và du lịch miền Bắc thu hút đông đảo du khách trong và ngoài nước.<br><br>\r\n<b>12h00:</b> Quý khách về nhà hàng nghỉ ngơi ăn trưa Buffet, cùng thưởng thức các đặc sản nơi đây ( Cơm cháy, dê núi…)<br><br>\r\n\r\n<b>13h30:</b> Xe và hướng dẫn đưa du khách ra bến đò Tràng An lên thuyền đi dọc theo suối giữa cánh đồng lúa thăm khu du lịch Tràng An Mới với những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí.<br><br>\r\n\r\n\r\n', '', '', 'tour-du-lich-bai-dinh-trang-ninh-binh-1-ngay-1-2.jpg', 'du-lich-he-kham-pha-chua-bai-dinh-trang-an.jpg'),
(3, 'DU LỊCH MŨI NÉ', NULL, '2.000.000', 'muine12.jpg', 'TOUR DU LỊCH HỒ CHÍ MINH — PHAN THIẾT – MŨI NÉ ', 3, '2 ngày 1 đêm', '2019-01-24', 'ô tô chất lượng cao', '<b>NGÀY 1: HCM – MŨI NÉ </b><br><br>\r\n\r\n-<b>7h30:</b> Xe của công ty đón quý khách tại điểm hẹn,khởi hành đi Phan Thiết ( tỉnh Bình Thuận ). Đến Phan Thiết, xe đưa quý khách ra Mũi Né. Trên đường xe đi ngang qua những điểm tham quan nổi tiếng của thành phố Phan Thiết như: Lầu Ông Hoàng, tháp chăm Poshanu, Bãi đá Ông Địa, rặng dừa Hàm Tiến, trung tâm resort của Mũi Né.<br><br>\r\n\r\n-<b>14h00:</b> Xe Jeep của công ty sẽ đưa quý khách đến với những điểm tham quan nổi bật của Mũi Né như:<br>\r\n<b>Suối Tiên</b> – Là dòng suối tự nhiên chảy quanh năm, đặc biệt mỗi khi mùa mới tới,nước mưa làm tan đi những đụn núi cát làm lộ ra những đụn cát cứng trông rất đẹp.<br>\r\n-<b>Làng Chài:</b> Có 2 khu vực tùy theo mùa mưa bão dân sẽ cho tàu thuyền đậu tránh bão.<br>\r\n<b>Đồi Cát Trắng</b> – Là đồi cát tự nhiên do gió thổi cát bay và tạo thành đồi cát như hiện nay.<br>\r\n\r\n-<b>Đồi Cát Vàng</b>– Sẽ là điểm để quý khách ngắm mặt trời lặn.<br><br>\r\n<b>17h30</b> trở về khách sạn dùng cơm tối. nghỉ ngơi, khám phá Mũi Né về đêm.<br><br>', '<b>NGÀY 2: PHAN THIẾT CITY TOUR </b><br><br>\r\n-<b>7h30 </b>:Dùng điểm tâm sáng, xe đưa quý khách đến với thành phố <b>Phan Thiết</b> tham quan:<br>\r\n-<b>Núi Tà Cú </b>(hay chùa Linh Sơn Trường Thọ)– là một cụm núi cao gần 700m, trên núi thờ Đức Phật nhập Niết Bàn dài 49m.<br>\r\n-<b>Tháp Chăm Poshanu </b>–Là nhóm di tích còn sót lại của vương quốc Champa xưa,được xây dựng từ đầu thế kỷ thứ IX.<br>\r\n-<b>Lầu Ông Hoàng</b>– một di tích tham quan được người Pháp xây dựng vào đầu thế kỷ XX, nơi đây cũng gắn liền với giai thoại chuyện tình chàng thi sỹ Hàn Mạc Tử và Mộng Cầm.<br>\r\n\r\n-<b>Lăng Ông Nam Hải</b>– Là một tín ngưỡng dân gian của người dân miền trung và miền nam Việt Nam với tục thờ Cá Ông.<br>\r\n\r\nSau đó ghé <b>Chợ Phan Thiết</b> quý khách mua đặc sản địa phương, trở về khách sạn nghỉ ngơi, dùng cơm tối.<br><br>\r\n', '', 'suoi tien mui ne.jpg', 'xe_jeep_mui_ne_443_282.jpg'),
(4, 'DU LỊCH ĐÀ NẴNG', NULL, '1.650.000', 'danang12.jpg', 'Tour Đà Nẵng – Sơn Trà – Hội An – Bà Nà – Cù Lao Chàm', 2, '3 ngày 2 đêm', '2019-02-21', 'ô tô chất lượng cao', '<b>NGÀY 1: SÂN BAY TSN – ĐÀ NẴNG </b><br><br>\r\n\r\n<b> Buổi sáng:</b> HDV đón quý khách tại sân bay Tân Sơn Nhất làm thủ tục bay đi Đà Nẵng. Đến Đà Nẵng, xe đưa đi ăn trưa với đặc sản nổi tiếng “Mỳ Quảng & Bánh tráng thịt heo 2 đầu da  ”. Nhận phòng nghỉ ngơi.<br><br>\r\n\r\n<b> Buổi chiều:</b> HDV đón quý khách đi Bán Đảo Sơn Trà ngắm nhìn thành phố biển Đà Nẵng trên cao.<br><br>\r\n\r\n>Viếng chùa,b> Linh Ứng Tự</b>– nơi có tượng Phật Bà 67m cao nhất Việt Nam và ngắm biển Mỹ Khê Đà Nẵng.<br><br>\r\n\r\n\r\n– <b>Buổi tối:</b> Ăn tối nhà hàng và Trãi nghiệm cảm giác với Vòng quay Mặt trời SUN WHEEL – Top 10 vòng quay cao nhất Thế Giới, chiêm ngưỡng vẻ đẹp Đà Thành về đêm.<br><br>', '<b>NGÀY 2: CÙ LAO CHÀM – PHỐ CỔ HỘI AN</b><br><br>\r\n <b>Buổi sáng:</b> Dùng điểm tâm tại khách sạn. HDV đón quý khách khởi hành đi Hội An ngồi tàu cao tốc tại biển Cửa Đại – Hội An đi Cù Lao Chàm tham quan khu dự trữ sinh quyển của thế giới bao gồm cụm đảo ngoài khơi biển Đông chỉ cách Hội An 12 hải lý.<br><br>\r\n\r\n– Đoàn tham quan chùa Hải Tạng được xây dựng hơn 400 trăm năm. Tham quan khu vực tranh bão của ngư dân, khu làng chài và khu lăng miếu cổ.<br><br>\r\n\r\n\r\n\r\n <b>Buổi trưa:</b> Dùng cơm trưa tại nhà hàng Cù Lao Chàm.<br><br>\r\n\r\n<b> Buổi chiều:</b> Đoàn tiếp tục thăm quan :<br>\r\n\r\n– Khu bảo tồn biển – quý khách có thể tham gia các hoạt động lặn biển ( Snokeling ) khám phá san hô… tắm biển.<br>\r\n\r\n– Sau đó quý khách sẽ lên tàu trở về đất liền đi Hội An tham quan:<br>\r\n– <b>khu Phố Cổ</b> – quý khách tự do đi dạo khám phá khu phố cổ lên đèn lúc về đêm và mua quà lưu niệm<br><br>\r\n<b> Chùa Cầu Nhật Bản</b> – là chiếc cầu cổ được các thương nhân Nhật Bản góp tiền xây dựng vào thế kỷ 17 Khu Nhà Cổ hàng trăm năm tuổi.<br><br>\r\n\r\n– Hội Quán Phước Kiến & Xưởng thủ công mỹ nghệ.<br><br>\r\n\r\n\r\n\r\n– Đoàn trở về Đà Nẵng theo con đường biển mang tên Đại tướng Võ Nguyên Giáp. Nghé tham quan Làng đá Non Nước ngắm nhìn Ngũ Hành Sơn.<br><br>\r\n\r\n\r\n\r\n <b>Buổi tối:</b> Ăn tối Nhà hàng. Tự do khám Đà Thành về đêm hoặc quý khách có thể tự do khám phá cầu Sông Hàn quay lúc về khuya.<br><br>', '<b>NGÀY 3: BÀ NÀ NÚI CHÚA – TẮM BIỂN MỸ KHÊ </b><br><br>\r\n\r\n<b> Buổi sáng: </b>Đoàn dùng điểm tâm sáng. Xe đưa đoàn khởi hành đi tham quan KDL Bà Nà – Núi Chúa ( Vé cáp treo Bà Nà tự túc ), nơi có những khoảnh khoắc giao mùa bất ngờ Xuân – Hạ – Thu – Đông trong một ngày.<br><br>\r\n\r\nQuý khách sẽ tận hưởng cảm giác bồng bền khi ngồi trên Cabin lơ lững giữa chừng mây. Viếng chùa Linh Ứng với tượng Phật Thích Ca cao 27m, viếng đền thờ Bà Chúa Mẫu Thượng Ngàn.<br><br>\r\n\r\n– Tham gia vui chơi tại công viên Fantasy Park: với các trò chơi phiêu lưu mới lạ như: Vòng Quay Tình Yêu, Phi Công Skiver, Đường Đua Lửa, Ngôi Nhà Ma và Khu trưng bày hơn 40 tượng sáp những nhân vật nổi tiếng trên thế giới…<br><br>\r\n\r\n\r\n\r\n<b> Buổi trưa:</b> Dùng cơm trưa nhà hàng tại chân núi Bà Nà.<br><br>\r\n\r\n <b>Buổi chiều:</b> Đoàn khởi hành về lại trung tâm thành phố, thư giản với hồ bơi ,bồn sục Jacuzzi khoáng nóng, phục hồi sức khỏe, ngâm mình với Bùn khoáng nóng sảng khoái tại GALINA . Quý khách sẽ được trầm mình bên bờ biển xinh đẹp Mỹ Khê.<br><br>\r\n<b> Buổi tối:</b> Dùng cơm tối tại nhà hàng hải sản. Thưởng ngoạn du thuyền trên sông Hàn ngắm cảnh Đà Thành về đêm và chụp ảnh Cầu Quay Sông Hàn, cầu Rồng phun lửa và nước vào cuối tuần.<br><br>', 'du1.png', 'Anh_6.jpg'),
(5, 'MỘC CHÂU SƠN LA', NULL, '2000000', 'mocchau12.jpg', 'Đến nơi đây bạn sẽ cảm nhận được giống như đang đứng giữa nơi giao hòa của đất và trời', 1, '3 ngày 2 đêm', '2019-10-25', 'Ô tô', '<b>NGÀY 01: HÀ NỘI – MỘC CHÂU – KHÁM PHÁ CAO NGUYÊN </b><br><br>\r\n\r\n<b></b> Xe ô tô và Hướng dẫn viên sẽ đón khách tại điểm hẹn khởi hành đi Mai Châu. Trên đường đi, Đoàn dừng nghỉ ngơi tại thị trấn Xuân Mai để nghỉ ngơi và tự túc ăn sáng.<br><br>\r\n\r\n<b>10h00:</b> Dừng chân ngắm cảnh và chụp ảnh tại đèo Thung Khe. Đèo nằm ở độ cao khoảng 1.000m so với mực nước biển. Đỉnh đèo là nơi khách du lịch có thể cảm nhận không khí mát mẻ và trong lành. Từ đỉnh Đèo, bạn có thể trải mắt ngắm toàn bộ thung lũng dưới chân đèo, đưa mặt đón những đợt gió mát lồng lộng, ngắm nhìn những thảm xanh đầy sức sống.<br><br>\r\n\r\n<b>12h00</b>: Đến Mộc Châu ăn trưa sau đó về nhận phòng tại khách sạn Mường Thanh Mộc Châu Luxury 5 sao đẳng cấp và tiện nghi.<br><br>\r\n\r\n<b>14h00: </b>Tham quan thác Dải Yếm – Một thác nước tuy nhỏ nhưng mang một vẻ đẹp quyến rũ. Tương truyền, dòng thác này là dải yếm của người con gái cứu chàng trai thoát khỏi dòng nước lũ.<br><br>\r\n\r\n<b>15h30:</b> Quý khách vào thăm Rừng thông Bản Áng giống như một Đà Lạt thu nhỏ trên đất cao nguyên Mộc Châu. Tại đây Quý khách có thể thuê xe đạp hoặc ngồi xe ngựa kéo để dạo vòng vòng ngắm cảnh thư giãn xung quanh Hồ Bản Áng. Hoặc đơn giản là leo lên những đồi thông, ngồi nghỉ ngơi và lấy lại cân bằng sau những bộn bề cuộc sống nơi thành thị ồn ào. Thời gian còn lại của buổi chiều Quý khách có thể tự do khám phá một thắng cảnh nằm ngay thị trấn Mộc Châu là động Sơn Mộc Hương (Hang Dơi) với những thạch nhũ đã kỳ ảo được mệnh danh là Tây Thiên đệ nhất động.<br><br>\r\n<b>18h30:</b> Ăn tối tại nhà hàng. Buổi tối Quý khách tự do khám phá thị trấn Mộc Châu. Nghỉ đêm Mộc Châu.<br><br>\r\n\r\n', '<b>NGÀY 2: MỘC CHÂU – CHỢ PÀ CÒ – MAI CHÂU – HÀ NỘI </b><br><br>\r\n<b>06h00:</b> Quý khách tập trung ăn sáng, thu dọn hành lý và lên xe đi thăm quan đồi chè Mộc Sương và chụp hình cùng với đồi chè Trái tim, có lẽ đồi chè Mộc Sương không chỉ là đồi chè đẹp nhất của Cao nguyên Mộc Châu mà còn là đồi chè đẹp nhất của Việt Nam bởi những luống chè xanh mởn tròn trịa và uốn lượn xa ngút tầm mắt đưa đến một cảm giác lãng mạn và bình yên. Đây cúng chính là vùng nguyên liệu để sản xuất ra những loại chè ngon và nổi tiếng mà một trong những thương hiệu nổi tiếng chính là Ô Long trà.<br><br>\r\n\r\n', '<b>08h30: </b>Dừng chân bên cung đường chữ “S” nổi tiếng của Mộc Châu, Quý khách sẽ cảm thấy mảnh đất cao nguyên này thật tuyệt vời bởi có những cung đường đẹp như một bức tranh vẽ.<br><br>\r\n\r\n<b>09h30: </b>Quý khách ghé thăm chợ Pà Cò, phiên chợ chỉ diễn ra vào các sáng chủ nhật hàng tuần. Tại đây tập trung chủ yếu là những đồng bào dân tộc H’Mông và Thái đến trao đổi mua bán trong những bộ quần áo trang phục truyền thống đầy màu sắc.<br><br>\r\n\r\n<b>11h30:</b> Đến bản Lác Mai Châu ăn trưa và nghỉ ngơi tại nhà sàn.<br><br>\r\n\r\n<b>13h00:</b> Hướng dẫn viên hướng dẫn Quý khách thuê xe đạp (hoặc xe điện) hoặc cũng có thể đi bộ để thăm quan thung lũng Mai Châu xinh đẹp với các bản như bản Lác I, Lác II, bản Pom Coọng, Nà Phòn… đây là nơi sinh sống của người dân tộc Thái (chi phí xe tự túc).Tại đây Quý khách cũng có thể thuê những bộ váy áo truyền thống của người đồng bào dân tộc Thái hay H’Mông để ghi lại những bức hình kỉ niệm khó quên.<br><br>\r\n\r\n<b>14h30:</b> Lên xe về Hà Nội. Trên đường dừng chân tại sữa Ba Vì để nghỉ ngơi và mua đồ về làm quà.<br><br><br>', 'at_danh-than.jpg', 'moc-chau.jpg'),
(6, 'DU LỊCH HẠ LONG', NULL, '3.000.000', 'alisa-cruise-1.jpg', 'Du thuyền Hạ Long ALISA Cruise 5 sao<br>\r\nVới Alisa Cruise, hành trình khám phá kì quan thế giới không chỉ dừng lại ở một chuyến du lịch thông thường mà đó là niềm đam mê bất tận', 1, '2 ngày 1 đêm', '2019-06-21', 'ô tô chất lượng cao', 'NGÀY 1: <b>HANOI – HALONG BAY – LAN HA BAY ON ALISA CRUISE </b><br><br>\r\n<b>07:30 – 08:20:</b> Đón khách tại địa điểm hẹn xuất phát đi Hạ Long<br><br>\r\n\r\n<b>08:30:</b> Khởi hành đi Halong Bay trong khoảng 3.5 tiếng<br><br>\r\n\r\n<b>10:00:</b> Nghỉ chân tại thị trấn Hai Duong for 20 – 30 minutes.<br><br><b>12:00:</b> Đến cảng Tuần Châu, check-in tại Nhà chờ trước khi lên tàu .<br><br>\r\n\r\n<b>12:15 – 12:30</b>Lên tàu và ăn trưa, tàu di chuyển ra giữa vịnh<br><br>', '<b>13.30</b>: Sau khi ăn trưa, tiếp tục khám phá HaLong Bay, qua Làng chai Cửa Vạn, hang Tiên Ông, Hang Trống<br><br>\r\n\r\n<b>14:30</b>: Bơi và chèo thuyền Kayak tại khu Tùng Gấu – Nơi quay fim KingKong<br><br>\r\n\r\n<b>16:00:</b> Thăm làng Ngọc Trai và tìm hiểu quá trình sản xuất ra Ngọc Trai, các loại Ngọc trai và các sản phẩm.<br><br>\r\n\r\n<b>17:30:</b> Trở lại tàu và tham dự Sun Set party với Nước hoa quả, Cocktails, Rượu vang and Hoa quả tại Pararoma Roof Bar.<br><br>\r\n\r\n<b>18:00- 18:30</b>: Học lớp học nấu ăn được hướng dẫn trực tiếp bởi đầu bếp chính của tàu Alisa Cruise với món ăn truyền thống và hiện đại<br><br>\r\n\r\n<b>19:30</b>: Ăn tối tại nhà hàng<br><br>\r\n\r\n<b>21:00</b>: Vui chơi buổi tối: Beauty Spa Services, movies, cards game, chess, karaoke, câu mực.<br><br>', '<b>NGÀY 2: ALISA CRUISE- HANOI </b><br><br>\r\n<b>6:30</b>: Dậy sớm tham gia lớp học Tai Chi trên sundeck.<br><br>\r\n\r\n<b>07:00</b>: Ăn sang nhẹ vs bánh và trà, cà phê.<br><br>\r\n<b>08:00</b>: di chuyển bằng Tender, thăm Hang Sửng Sốt – một trong những hang động lớn nhất ở Hạ Long. Đi bộ khoảng 100 bước để vào hang. Mất khoảng 45p để thăm hang.<br><br>\r\n\r\n<b>9:40</b>: Trở về tàu<br><br>\r\n\r\n<b>10:00</b>: Check-out và giải quyết các hóa đơn ăn uống phát sinh (nếu có)<br>\r\n\r\n<b>12:30</b>: Lên xe để Trở về Hà Nội<br><br>\r\n', 'era-cruise.jpg', 'Alisa Cruise Sky Bar.jpg'),
(7, 'DU LỊCH NHA TRANG', NULL, '1.500.000', 'nhatrang12.jpg', 'NHA TRANG – ĐẢO ĐIỆP SƠN + DỐC LẾT – CHÙA LONG SƠN – NHÀ YẾN – THÁP BÀ – SUỐI KHOÁNG THÁP BÀ –  DINH BẢO ĐẠI<br>\r\n', 2, '3 ngày 2 đêm', '2019-02-28', '', '<b>NGÀY 01: TPHCM/HÀ NỘI – NHA TRANG</b><br><br> \r\n\r\n<b>Buổi sáng:</b> Xe và HDV Sinh cafe tour online đón khách sân bay Cam Ranh hoặc bến xe, ga. Sau đó xe và HDV đưa quý khách về nhận phòng khách sạn (nếu có phòng sớm).<br><br>\r\n\r\n<b>Buổi trưa:</b> Quý khách dùng cơm trưa tại nhà hàng. Sau đó về khách sạn nghĩ ngơi.<br><br>\r\n<b>Buổi chiều</b>: City tham tham quan Nha Trang và tắm biển Nha Trang. Xe và HDV đưa quý khách quý khách tham quan Nhà thờ Chánh Tòa hay còn gọi là Nhà thờ Núi tọa lạc ngay trung tâm thành phố được xây dựng trên một đỉnh đồi với diện tích 4.500m2, với kiến trúc Gỗ – tích nổi bật và tường vách được xây bằng tấp lô xi măng đã tạo cho nhà thờ một kiến trúc độc đáo nếu chân du khách phải dừng lại khi qua đây.<br><br>\r\nTham quan <b>Chùa Long Sơn </b>một trong 20 ngôi chùa lớn tại thành phố Nha Trang. Quý khách chiêm ngưỡng bức tượng Kim Thân Phật Tổ cao 24 m ngự trên đồi Thủy Trại được xây đựng năm 1963.<br><br>\r\nVề lại khách san. Tự do tắm biển Nha Trang<br><br>', ' <b>Ngày 2: KHÁM PHÁ ĐẢO ĐIỆP SƠN + DỐC LẾT</b><br><br>\r\n\r\n<bBuổi sáng:</b> Xe và HDV  đón quý khách tại điểm hẹn. Khởi hành đi Điệp Sơn. Trên đường đi quý khách sẽ được tìm hiểu những địa danh nổi tiếng của tỉnh Khánh Hòa: Vịnh Nha Phu, Ninh Vân Bay, Hòn Hèo, Đá Bàn…, cùng nhau tìm hiểu những món đặc sản truyền thống của thị xã Ninh Hòa: Nem Ninh Hòa, Dừa Xiêm Ninh Đa…<br><br>\r\n\r\nTiếp tục đến với hành trình đoàn nghe HDV thuyết minh về những ngành nghề truyền thống và nghành nuôi, trồng thủy sản.<br><br>\r\n\r\nĐến <b>Cảng Điệp Sơn</b>, quý khách lên cano bắt đầu hành trình khám phá Đảo Điệp Sơn, sau những phút lênh đênh trên tàu, đảo Điệp Sơn dần hiện lên như một bức tranh thiên nhiên hữu tình với những cụm đảo hoang sơ mang hình dáng độc đáo đan xen là những hàng cây xanh ngát, bờ cát trắng mịn, điểm lên một chút nắng gió trên những ngôi nhà làng chài đơn sơ… Tất cả như khiến mọi người quên đi những mệt mỏi, bộn bề lo toan của cuộc sống thường ngày.<br><br>\r\n<b>Buổi tối:</b> HDV đưa quý khách dùng cơm tối tại nhà hàng. Sau đó quý khách tự do khám phá <b>chợ đêm Nha Trang, công viên Phù Đổng, Cà phê Bốn Mùa, khu hải sản Tháp Bà</b>. Về khách sạn nghỉ ngơi.<br><br>', '<b> Ngày 3: NHA TRANG – ĐÀ LẠT </b><br><br>     \r\n\r\n<b>Buổi sáng </b>: Quý khách dùng điểm tâm sáng.Sau đó quý khách trả phòng khách sạn. Xe và HDV đưa quý khách đến Nhà Yến Nha Trang, đến đây quý khách tìm hiểu về đặc sản Nha Trang cũng như tìm hiểu ngành nghề khai thác chế biến tổ yến sào.<br><br>\r\n\r\nQuý khách tiếp tục hành trình với Tháp Bà Ponagar một trong những tháp cổ của người Chăm để lại, nằm cạnh bờ sông Cái Nha Trang. Đến đây quý khách còn có thể thưởng thúc những điệu múa của người Chăm, tìm hiểu về ngành nghề làm gốm, dệt vải cổ truyền của dân tộc Chăm.<br>\r\n<br>\r\n<b>13h00:</b> Quý khách khởi hành lên Đà Lạt bằng xe Openbus. Trên đường đi quý khách ngắm toàn cảnh rừng nguyên sinh trên độ cao 1.500m so với mực nước biển và chiên ngưỡng rừng thông bao phủ thành phố Đà Lạt. HDV sẽ đón khách tại Bến xe Đà Lạt. Sau đó đưa quý khách về nhận phòng nghĩ ngơi. Dùng cơm tối tại nhà hàng. Tự do khám phá thành phố Đà Lạt về đêm.<br><br>', 'nha-trang5.jpg', 'NHA-TRANG-DIEP-SON-1.jpg'),
(8, 'DU LỊCH HÀ GIANG', NULL, '1.800.000', 'hagiang12.jpg', 'Cao nguyên đá Đồng Văn - Đỉnh Lũng Cú được ví như “Vầng trán kiêu hãnh của Tổ quốc” - sông Nho Quế với Mã Pì Lèng ', 1, '2 ngày 1 đêm', '2019-03-30', 'o tô chất lượng cao', '<b>NGÀY 01: HÀ GIANG – QUẢN BẠ –  YÊN MINH – ĐỒNG VĂN</b><br><br> \r\n<b>Sáng: 5h00:</b> Xe và HDV đón đoàn tại bến xe khách Hà Giang đưa khách về Khách sạn nghỉ ngơi.br><br>\r\n<b>06h30</b>: Đoàn ăn sáng đoàn trả phòng xuất phát đi Đồng Văn, trên đường quý khách thăm dốc Bắc Xum, cổng trời Quản Bạ, núi đôi Cô Tiên,Thị Trấn Tam Sơn  ăn cơm trưa tại Yên Minh.<br><br>\r\n<b>Chiều</b>: Điểm dừng chân của đoàn tại  Sủng Là thăm quan làng dân tộc Mông trắng – Nơi quay bộ phim chuyện của Pao, chiêm ngưỡng thung lũng Sủng Là trong tiết trời vùng cao, thăm quan dinh thự vua Mèo – Vương Chí Sình, thăm quan cột cờ Lũng Cú  nơi cực bắc Tổ Quốc!<br><br>\r\n<b>Tối: </b>Đoàn tới Đồng Văn nhận phòng khách sạn. Nghỉ ngơi ăn tối, thăm quan phố cổ Đồng Văn về đêm,  nghỉ đêm tại Đồng Văn<br><br>', '<b>NGÀY 02: ĐỒNG VĂN – MÈO VẠC – YÊN MINH – HÀ GIANG</b><br><br>\r\n<b>Sáng 7h00 </b>Đoàn ăn sáng, thăm quan phố cổ Đồng Văn, chợ cổ Đồng Văn – Có niên đại hàng trăm năm tuổi, đi chợ phiên Đồng Văn tìm hiểu về văn hóa chợ vùng cao. Đoàn trả phòng hất hùng quan của Việt Nam), tiếp theo Đoàn tới Mèo Vạc thăm quan chợ phiên Mèo Vạc.<br><br>\r\n<b>Trưa</b>: Dùng cơm trưa tại Yên Minh, tiếp tục hành trình về Hà Giang, thăm làng dệt lanh Lùng Tám của người Mông Trắng tại Lùng Tám, Quản Bạ.<br><br>\r\n<b>Buổi tối</b>: Đoàn thưởng thức bữa tối tại nhà hàng cơm Dân tộc với các món đặc sản địa phương<br><br>', '\r\n', 'du-lich-ha-giang-cao-nguyen-da-dong-van-2.jpg', 'du-lich-nui-doi-ha-giang.jpg'),
(10, 'DU LICH HÀ NỘI', NULL, '450.000', 'hanoi12.jpg', 'Du lịch quanh Hà Nội, vốn nổi tiếng với 36 phố phường cùng với đó là những danh thắng nổi tiếng, Thủ đô Hà nội sẽ là một địa điểm du lịch lý thưởng dành cho quý khách trong kỳ nghỉ của mình', 1, '1 ngày', '2019-01-31', 'ô tô chất lượng cao', '<b>Lịch trình Tour du lịch Hà Nội 1 ngày</b><br><br> \r\n<b>8.00 – 8.30:</b> Xe và Hướng dẫn viên sẽ đón Quý khách tại điểm hẹn, khởi hành tham quan du lịch Hà Nội 1 ngày.<br><br>\r\n<b>08.30:</b> Quý khách đến thăm Lăng Chủ Tịch Hồ Chí Minh – đây là một công trình kiến trúc có ý nghĩa chính trị to lớn, thể hiện tình cảm sâu sắc của nhân dân ta dành cho Bác, thăm nhà sàn Bác Hồ, ao cá Bác Hồ, chùa Một Cột. sau đó tiếp tục đi thăm chùa Trấn Quốc nằm sát bên Hồ Tây.<br><br>', 'Quý khách đến thăm <b>Văn Miếu – Quốc Tử Giám</b>. Văn Miếu – Quốc Tử Giám là quần thể di tích của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng vào tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, Người thầy đức cao vọng trọng của nền giáo dục Việt Nam. Đến năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong toàn thiên hạ.<br><br>\r\n<b>12.00: </b>Quý khách trở về nhà hàng trên phố cổ để dùng bữa trưa.<br><br>\r\n\r\n<b>14.00:</b> Quý khách tiếp tục hành trình đi thăm Bảo Tàng Dân Tộc Học. Cuối cùng xe đưa quý khách đến thăm quan Hồ Hoàn Kiếm, Tháp Rùa, Đền Ngọc Sơn là cụm di tích, thắng cảnh nổi tiếng, là niềm tự hào của người Hà Nội và nhân dân cả dân tộc khi hướng về Thủ đô<br><br>', '<b>15.30:</b> Xe đưa Quý khách trở về khách sạn<br><br>\r\n<b>Lưu ý:</b> Vào sáng thứ hai, thứ tư và thứ sáu hàng tuần, Lăng Bác Hồ và các viện bảo tàng đóng cửa, vì thế chương trình sẽ được thay bằng chuyến đi thăm quan làng gốm Bát Tràng.<br><br><br>', 'Ho-Chi-Minh-Mausoleum.jpg', 'image007.jpg'),
(11, 'DU LỊCH SAPA', NULL, '1.500.000', 'sapa12.jpg', 'TOUR DU LỊCH SAPA 3 ĐÊM 2 NGÀY CÁT CÁT – HÀM RỒNG', 1, '2 ngày 2 đêm', '2019-12-27', 'ô tô/ tàu hỏa', '<b>Đêm 1: Hà Nội – Sapa</b><br><br>\r\n\r\n-<b>19h30</b> Hướng dẫn viên sẽ đón quý khách và đưa quý khách ra Ga Hà Nội (Ga Hàng Cỏ)<br><br>\r\n\r\n-Sau đó quý khách sẽ lên tàu và di chuyển lên sapa trong thời gian khoảng 8 giờ đồng hồ<br><br>\r\n\r\n-<b>5h sáng</b> tàu sẽ dừng ở Ga lào cai, quý khách xuống tàu và lên xe ôtô di chuyển lên Sapa<br><br>\r\n', '<b>Ngày 1:Thăm bản Cát Cát</b><br><br>\r\n– <b>9h00 – 9h30:</b> Sau khi ăn sáng, quý khách sẽ đến thăm quan bản Cát Cát của người dân tộc H`Mong – bản gần với thị trấn Sapa nhất – khoảng 2km cách thị trấn Sapa. Từ đầu thế kỷ 20, người Pháp đã phát hiện ra Bản xinh đẹp này và chọn đây làm nơi nghỉ dưỡng cho các quan chức người Pháp. Đến với bản Cát Cát, quý khách không những được tìm hiểu , khám phá cuộc sống của những người dân tộc H`Mong nơi đây mà còn được chiêm ngưỡng ngưỡng vẻ đẹp tự nhiên đầy cuốn hút của Suối Vàng, Suối Bạc, Thác Tiên Sa. Đồng thời , quý khách cũng được ngắm nhìn , tham quan công trình nhà máy thuỷ điện đầu tiên nơi đây do người Pháp xây dựng từ rất lâu rồi.<br><br>\r\n\r\nSau khi thăm bản Cát Cát, quý khách quay trở về thị trấn Sapa nghỉ ngơi ăn trưa.<br><br>\r\n\r\nBuổi chiều quý khách  tự do thăm quan Sapa, thăm quan nhà thờ  đá ,Quảng Trường Sapa và tự do mua sắm.<br><br>\r\n\r\nSau khi ăn tối, quý khách tự dạo quanh thị trấn Sapa, tận hưởng vẻ đẹp bình di của Sapa khi màn đêm buông xuống.<br><br>\r\n\r\n', '<b>Ngày 2: Du lịch Sapa – thăm núi Hàm Rồng </b><br><br>\r\n<b>7h00:</b> Quý khách dùng bữa sáng tại khách sạn.<br><br>\r\n\r\nSau khi ăn sáng, Hướng dẫn viên sẽ đưa quý  khách lên thăm quan núi Hàm Rồng – nơi được biết đến như một Sapa thu nhỏ, như một khu vườn thượng uyển với trăm  hoa đua sắc quanh năm. Đến với Hàm Rồng, quý khách được hoà mình vào thiên nhiên,  cảm nhận sự giao thoa của Đất Trời. Quý khách như lạc vào chốn bồng lai khi đến với Vườn Lan, Cổng Trời, Sân Mây, Vườn Đào…trên núi Hàm Rồng. Núi Hàm Rồng thực sự là nơi lý tưởng cho du khách chụp và lưu lại những bức  ảnh tuyệt đẹp.<br><br>\r\n\r\nSau khi thăm quan núi Hàm Rồng, quý khách trở về khách sạn, nghỉ ngơi ăn trưa và làm thủ tục trả phòng trước 12h trưa.<br><br>\r\n\r\nSau khi trả phòng, quý khách gửi hành lý tại khách sạn, tự do đi dạo quanh thị trấn Sapa, chụp cho mình những bức ảnh lưu niệm và mua sắm quà cho bạn bè người thân.<br><br>', 'tour-du-lich-sapa-3-dem-2-ngay2.jpg', 'tour-du-lich-sapa-3-dem-2-ngay.jpg'),
(12, 'DU LỊCH MIỀN TÂY', NULL, '2.000.000', 'hinh-cho-dem-tay-do-768x512.jpg', 'Khoảnh khắc tuyệt vời đáng nhớ khi sống giữa không gian miền sông nước khoáng đạt, con người chân chât đôn hậu<br>Nơi mà bạn sẽ không bao giờ quên được.', 3, '3 ngày 2 đêm', '2019-12-26', 'ô tô chất lượng cao', '<b>Ngày 1: SÀI GÒN – AN GIANG ( 258km )</b><br><br>\r\n\r\n <b> Buổi sáng:</b> Xe và hướng dẫn viên đón quý khách tại điểm hẹn, khởi hành đi An Giang.<br><br>\r\n <b>Buổi chiều</b>: Đến Châu Đốc, tiếp tục hành trình tham quan, Quý khách sẽ đến với rừng tràm Trà Sư, tại đây quý khách lên xuồng len lỏi vào khu rừng ngập mặn, quý Khách sẽ được ngắm nhìn một màu xanh của rừng với những cây tràm cây đước ngập trong nước, cùng với hệ thống thực, động vật đa dạng với những loài Chim nằm trong sách đỏ việt nam.<br><br>\r\n<b>Buổi Tối:</b> Nhận phòng khách sạn, Quý Khách tự do tham quan Miếu bà Chúa Xứ, Lăng Thoại Ngọc Hầu… và thưởng thức các loại mắm Châu Đốc nổi tiếng.<br><br>', '<b>Ngày 2: AN GIANG – KIÊN GIANG</b> ( 110km ) <br><br>\r\n\r\n <b>Buổi sáng:</b> Dùng điểm tâm tại nhà hàng, trả phòng, đoàn rời Châu Đốc đi Hà Tiên, trên đường dừng tham quan và mua sắm tại chợ Tịnh Biên, một khu chợ biên giới lớn nhất miền Tây Nam bộ.<br><br>\r\n<b>Buổi chiều:</b> Đoàn đi bãi biển Mũi Nai, du khách tự do tắm biển hay thưởng thức cà phê ở đồi Nai Vàng, hoặc ngồi xe máng trượt lên đỉnh Tà-Pang ngắm toàn cảnh non nước Hà Tiên trầm mặc, hiền hòa, xa xa là đảo Phú Quốc và đất nước Campuchia tươi đẹp.<br><br>\r\n <b>Buổi tối:</b> Quý khách đi dạo chợ đêm Hà Tiên.<br><br>', '<b>Ngày 3: KIÊN GIANG – CẦN THƠ </b>( 200km ) <br><br>\r\n\r\n <b>Buổi sáng:</b> Dùng điểm tâm tại nhà hàng, trả phòng, đoàn đi Hòn Chồng, quý khách viếng chùa Hang, tham quan Hòn Phụ Tử. Sau đó xe đưa đoàn khởi hành đi về thành phố Cần Thơ.<br><br>\r\n<b>Buổi chiều:</b> Quý khách tới Cần Thơ, về khách sạn nhận phòng nghỉ ngơi.<br><br>\r\n\r\n <b>Buổi tối:</b> Xe đưa đoàn đi dạo một vòng khám phá Chợ đêm Tây Đô hoặc trung tâm thương mại Cái Khế, nơi có những hoạt động vui chơi sầm uất. Xe tiếp tục đưa du khách ra bến Ninh Kiều, du thuyền trên sông Hậu, nghe đờn ca tài tử.<br><br>', 'du-lich-chau-doc2.jpg', '1.jpg'),
(14, 'HỒ CHÍ MINH CITY', NULL, '1.000.000', 'hcm12.jpg', '              TOUR HỒ CHÍ MINH –CỦ CHI 1 NGÀY        ', 3, '1 ngày', '2019-03-04', 'ô tô chất lượng cao', 'Xe và hướng dẫn viên đón Quý khách tại điểm hẹn, khởi hành đi thăm quan<br><br>\r\n\r\n-<b>Bảo tàng chứng tích chiến tranh trên đường Võ Văn Tầng:</b> Là bảo tàng chuyên đề nghiên cứu, sưu tầm, lưu trữ, bảo quản và trưng bày những tư liệu, hình ảnh, hiện vật về những chứng tích tội ác và hậu quả của các cuộc chiến tranh mà các thế lực xâm lược đã gây ra đối với Việt Nam.<br><br>\r\n-<b>Dinh Độc Lập (Dinh Thống Nhất):</b> Công trình kiến trúc nổi tiếng ở Thành phố Hồ Chí Minh. Hiện nay, nó đã được thủ tướng chính phủ Việt Nam xếp hạng là di tích quốc gia đặc biệt.<br><br>\r\n\r\n-<b>Nhà Thờ Đức Bà:</b> Một tuyệt tác kiến trúc – một công trình tiêu biểu góp phần tạo nên diện mạo đô thị Sài Gòn – Thành phố Hồ Chí Minh. Công trình cũng ghi nhận sự du nhập, giao lưu và tiếp biến của văn hóa – kiến trúc Đông – Tây.<br><br>', '-<b>Bưu Điện Thành Phố: </b>Là điểm đến tham quan không thể thiếu của du khách khi đến thành phố Hồ Chí Minh, một công trình kiến trúc cổ, có hơn 120 năm tuổi.<br><br>\r\n\r\nSau đó, Quý khách dùng bữa trưa  tại nhà hàng.<br><br>\r\n\r\n-Xe và hướng dẫn viên đưa Quý khách đi đến Hóc Môn, Quý khách có cơ hội thăm quan <b>Địa đạo Củ Chi</b>:<br><br>\r\n\r\n-Tìm hiểu cách du kích Việt Nam xưa đã xây dựng, sinh sống và chiến đấu ở địa đạo, được xem những thước phim tài liệu quý báu về chiến tranh, về cách mà quân dân VN đã chiến thắng vũ khí hiện đại tân tiến chỉ với ý chí dân tộc.<br><br>\r\n\r\n-Khám phá Địa đạo Củ Chi – hệ thống phòng thủ nằm trong lòng đất, tọa lạc tại huyện Củ Chi, thành phố Hồ Chí Minh. Công trình bắt đầu được xây dựng từ năm 1940 trong thời kỳ kháng chiến chống Pháp. Tuy nằm sâu trong lòng đất, nhưng nhiều cơ sở vật chất như trạm xá, phòng làm việc, nhà ở… vẫn được xây dựng, để phục vụ người dân trú ẩn trong chiến tranh. Hiện, địa đạo này là điểm du lịch hấp dẫn du khách tới thăm và tìm hiểu về một giai đoạn lịch sử đã qua của Việt Nam.<br><br>\r\n\r\n', 'Tận mắt chứng kiến những vũ khí thô sơ tự chế, bẫy chông bằng tre, bò trườn trong các đường địa đạo, và xem người dân địa phương làm bánh tráng và rượu gạo.<br><br>\r\n\r\nNgoài ra, quý khách còn có cơ hội bắn súng tại trường tập bắn ở địa đạo (chi phí tự túc).<br><br>\r\n\r\nSau khi ra khỏi địa đạo, quý khách thưởng thức món khoai mì luộc chấm với muối mè dân dã – đặc sản của vùng kháng chiến Củ Chi ngày xưa.<br><br>\r\n\r\nĐoàn khởi hành về lại điểm đón ban đầu.\r\n<br><br>', 'nha-tho-duc-ba.jpg', 'choi-gi-o-dia-dao-cu-chi-887.jpg'),
(16, 'VIỆT NAM THU NHỎ', NULL, '5000000', 'dulichth.png', '        Đến với Thanh Hóa bạn sẽ như được chiêm ngưỡng một Việt Nam thu nhỏ', 2, '3 ngày 1 đêm', '2019-02-10', 'Ô tô', 'Đầu tiên khi đặt chân đến Thanh Hóa bạn sẽ cảm nhận được bầu không khí ở đây vô cùng tươi mát, cảnh vật và con người đều vui tươi', 'Khi đến đây, nơi hội tụ giữa  núi và biển vì vậy địa điểm tham quan đầu tiên sẽ là bãi biển Sầm sơn , nơi đón tiếp hàng trăm nghìn lượt khách du lịch hàng năm', 'Đối với những người thích phiêu lưu mạo hiểm thì chắc chắn sẽ k thể bỏ qua những danh lam thắng cảnh nằm trên những ngọn núi cao ', 'thanhhoa16.jpg', 'thanhhoa14.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `image`) VALUES
(6, 'khoa', 'khoa', '81dc9bdb52d04dc20036dbd8313ed055', 'Thanh Hóa', 'caro.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `action` (`action`);

--
-- Chỉ mục cho bảng `dat_toure`
--
ALTER TABLE `dat_toure`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `toure`
--
ALTER TABLE `toure`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dat_toure`
--
ALTER TABLE `dat_toure`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `toure`
--
ALTER TABLE `toure`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
