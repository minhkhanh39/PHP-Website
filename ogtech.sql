-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2024 lúc 06:55 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ogtech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `ItemID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Brand` varchar(64) NOT NULL,
  `Description` varchar(512) NOT NULL,
  `Category` int(11) NOT NULL,
  `SellingPrice` float NOT NULL,
  `QuantityInStock` int(11) NOT NULL,
  `Image` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`ItemID`, `Name`, `Brand`, `Description`, `Category`, `SellingPrice`, `QuantityInStock`, `Image`) VALUES
(3, 'RTX 3070 PC - Giá tốt nhất cho hiệu suất PC (16GB Ram 1TB SSD)', 'Mixed', 'CPU: INTEL CORE i5-10400F,\r\nCooler: CRYORIG H7 QUAD LUMI,\r\nMOBO: ASUS TUF Gaming B460-PRO WIFI, \r\nRAM: G.SKILL TRIDENT Z ROYAL 2X8GB CL18 DDR4 3600MHZ,\r\nGPU: EVGA GeForce RTX 3070 XC3 ULTRAGAMING 2x8GB GDDR6,\r\nPSU: GIGABYTE P650B 80+ BRONZE NON-MODULAR,\r\nCase: ANTEC NX410 BLACK, \r\nSSD: CORSAIR Force Series MP510 1TB M.2 NVMe, \r\nHDD: Western Digital WD BLUE 1TB SATA,\r\nFREE Lamptron Flexlight Multi Programmable ARGB LED Strip                                               ', 0, 12900000, 29, '3070 pc.jpg'),
(4, 'OGTECH EPIC All-Rounder RTX 3060TI PC (16GB Ram 1TB SSD)', 'Mixed', 'CPU: INTEL i5-10400F MOBO: GIGABYE B450M DS3H V2, \r\nRAM: G.SKILL AEGIS Series 8GB DDR4 3200MHz x2,\r\nGPU: GIGABYTE GeForce RTX 3060TI EAGLE OC 8G DDR6,\r\nPSU: ANTEC NE550C V2 80+ BRONZE,\r\nCASE: ANTEC NX410 BLACK\r\nSSD: GIGABYTE 1TB SATA,\r\nWIFI: ASUS PCE-AX3000 WIFI6 PCIE,\r\nFREE Lamptron Flexlight Multi Programmable ARGB LED Strip                                                ', 0, 5000000, 15, '3060 ti pc.jpg'),
(5, 'Nvidia Geforce RTX 3080 PC King Value (16 GB Ram)', 'Mixed', 'CPU: AMD RYZEN 7 3700X, \r\nCooler: CRYORIG H7 MOBO: GIGABYTE B450 AORUS PRO WIFI,\r\nRAM: G.SKILL TRIDENT Z NEO 2X8GB CL16 DDR4 3200MHZ, \r\nGPU: GIGABYTE GeForce RTX 3080 GAMING OC 10GB GDDR6X,\r\nPSU: ANTEC HCG Gold Series 850W 80+ GOLD FULLY MODULAR,\r\nCase: ANTEC DF700 FLUX, \r\nSSD: CORSAIR Force Series MP510 480GB M.2 NVMe,\r\nFREE Cablemod Premium Sleeved Cables,\r\nFREE Lamptron Flexlight Multi Programmable ARGB LED Strip                                ', 0, 8668, 20, '3080 pc.jpg'),
(6, 'Minh KhánhPC Giá tốt AMD RTX™ 3060 PC (16GB Ram)', 'Mixed', 'Graphic Card : GIGABYTE GeForce RTX™ 3060 12GB EAGLE OC,\r\nProcessor : AMD Ryzen 5 3600,\r\nMotherboard : MSI B450M-A Pro Max,\r\nRAM : GSKILL AEGIS DDR4 3200Mhz (2x8gb),\r\nSSD: GIGABYTE NVMe SSD 256GB,\r\nPower Supply :ANTEC CSK550 Bronze,\r\nCasing : ANTEC NX410 Black or White                ', 0, 4599, 35, 'pc-rtx3060.jpg'),
(7, 'STREAMER PC NVIDIA GTX1660 SUPER w 32GB RAM', 'Mixed', 'CPU: INTEL i5 10400F MOBO: GIGABYTE B460M DS3H AC RAM: G.SKILL TridentZ RGB 2x16GB DDR4 3200MHz GPU: GIGABYTE GeForce GTX1660 SUPER WF OC PSU: ANTEC CSK550 GB 80+ BRONZE CASE: ZALMAN K1 ATX RGB CASE SSD: XPG SX8200 PRO M.2 1TB SSD HDD: WESTERN DIGITAL 2TB CAVIAR BLUE', 0, 3899, 5, 'RM4761_SE580E-scaled.jpg'),
(8, 'Asus VG258QR (24.5\')', 'Asus', '                                    Panel size 24.5″. IPS Panel. Bề mặt hiển thị không chói. 16:9 aspect ratio. 1920 x 1080 resolution. Refresh rate 165hz, 0.5ms reponse time. Anti-Flicker.                                ', 1, 888, 25, 'asus_monitor.jpg'),
(9, 'GEFORCE ESPORTS PC GTX1050Ti', 'Mixed', 'Processor : INTEL  Core I3-10105F Graphic Card : AFOX GEFORCE GTX1050TI 4GB Motherboard :GIGABYTE B460M DS3H V2 RAM : GSKILL AEGIS DDR4 3200Mhz (1 x8gb) SSD: GIGABYTE NVMe SSD 256GB Power Supply: ANTEC CSK550 Bronze Casing : ANTEC DP301M (x2 fans included)', 0, 2399, 5, 'pc-1050ti.png'),
(10, 'Entry RTX™ PC NVIDIA® GeForce RTX™ 3050', 'Mixed', 'Graphic Card :Nvidia Geforce RTX™ 3050 8GB Processor : INTEL Core I3-10105F Motherboard : GIGABYTE B460M DS3H V2 RAM : GSKILL AEGIS 8GB DDR4 3200Mhz SSD: GIGABYTE NVMe SSD 256GB Power Supply :ANTEC CSK550 Bronze Casing : ANTEC NX270 RGB', 0, 3299, 50, 'pc-rtx3050.jpg'),
(11, 'Viewsonic XG2401 (24\')', 'Viewsonic', '1ms response time. AMD FreeSync™ technology. SmartSync technology. Black stabilisation. 144Hz Refresh Rate', 1, 7993400, 10, 'view monitor.png'),
(12, 'ACER Predator Aethon 500 keyboard', 'Acer', 'Blue switch mechanical keys.  70 triệu lần nhấn. Phần mềm RGB có thể tinh chỉnh. ', 2, 399, 2, 'acer keyboard.png'),
(13, 'ACER basic speakers', 'Acer', '                 Đủ để sử dụng hàng ngày. Thời trang hiện đại.', 1, 9000000, 15, 'acer speaker.jpg'),
(14, 'ASUS ROG Strix Magnus Mic @ Studio grade mic', 'Asus', 'Micrô chơi game điện dung USB ROG Strix Magnus với hệ thống chiếu sáng AURA RGB và chức năng khử tiếng ồn môi trường (ENC) để chơi game/phát trực tuyến Ba viên nang tụ điện cấp studio để tăng cường độ rõ nét và độ nhạy Được thiết kế cho người phát trực tiếp với kiểu dáng nhỏ gọn và tính năng khử tiếng ồn môi trường (ENC) Phong cách và sang trọng Hiệu ứng ánh sáng Aura RGB có thể tùy chỉnh Cổng phụ để ghi âm thanh từ nhạc cụ và thiết bị di động Đi kèm với bộ chia USB bên ngoài để kết nối các thiết bị bổ sung', 2, 699, 2, 'asus mic.jpg'),
(15, 'CORSAIR VIRTUOSO RGB WIRELESS headset', 'Corsair', '                 Một cặp trình điều khiển neodymium mật độ cao 50mm được điều chỉnh chính xác có dải tần từ 20Hz-40.000Hz – gấp đôi tần số bạn nhận được từ hầu hết các tai nghe chơi game. Bọt nhớ cao cấp. Được làm từ nhôm cho trọng lượng nhẹ. Tùy chọn có dây có sẵn.          ', 1, 737, 15, 'corsair headset.png'),
(16, 'CORSAIR rgb mouse', 'Corsair', '                                                      Chuột thoải mái cao cấp. Logo corsair rgb nổi bật trên đèn. Tay cầm bằng cao su để thoải mái hơn.                                             ', 2, 50, 15, 'corsair mouse.jpg'),
(17, 'HYPERX cloud stinger headset', 'HyperX', '                  Chất lượng âm thanh và mic vượt trội. Được làm từ nhựa cứng cao cấp cho trọng lượng nhẹ. Sự thoải mái là phải.            ', 1, 299, 15, 'hyper headset.jpg'),
(18, 'HyperX Quadcast RGB mic', 'HyperX', '                  Giắc cắm tai nghe tích hợp. Bộ lọc pop nội bộ. Điều chỉnh điều khiển khuếch đại thuận tiện. Bốn mẫu cực có thể lựa chọn. Cảm biến chạm để tắt tiếng có đèn LED. Hiệu ứng ánh sáng RGB động có thể tùy chỉnh bằng Phần mềm HyperX NGENUITY. Đế chống rung chống rung.             ', 2, 599, 18, 'hyper mic.jpg'),
(19, 'LOGITECH G550 RGB Headset', 'Logitech', '                Nhiều phòng tai hơn cho sự thoải mái tối đa. Được làm từ nhựa có trọng lượng nhẹ tạo cảm giác thoải mái. Chất lượng âm thanh và mic cao cấp. RGB thật là tệ.\r\n', 1, 399, 15, 'logi headset.jfif'),
(20, 'Logitech G850 Wireless RGB Tournament Keyboard', 'Logitech', '                                    Keycaps màu xanh cao cấp được sản xuất từ ​​nước ngoài. Tùy chỉnh RGB bằng phần mềm. 87 phím cho nhiều chỗ chuột hơn. Được làm từ nhôm cao cấp.                            ', 2, 899, 15, 'logi keyboard.png'),
(21, 'LOGITECH entry desktop mic', 'Logitech', '                 Chất lượng âm thanh tốt. Tấm đệm chống rung. Mic có thể điều chỉnh.', 2, 7654990, 10, 'logi mic.jpg'),
(22, 'LOGITECH Z250 RGB Speakers', 'Logitech', '                 Loa đơn giản nhưng phong cách. RGB giúp việc nghe nhạc trở nên thú vị hơn. RGB có thể đồng bộ theo nhạc bằng phần mềm logitech.        ', 1, 30000000, 15, 'logi speaker.png'),
(23, 'MSI DS502 gaming headset', 'MSI', 'Âm thanh vòm ảo 7.1 nâng cao. Hệ thống rung thông minh. Bộ điều khiển âm thanh thông minh. Trình điều khiển chất lượng cao 40mm được cải tiến. Đèn LED mát mẻ. Trọng lượng nhẹ & Thiết kế headband tự điều chỉnh.', 1, 2493400, 20, 'msi headset.png'),
(24, 'MSI Optix MPG341CQR Smart RGB Curved Gaming Monitor (34\')', 'MSI', '                  Thiết kế không khung 34 inch 3440x1440 – Trải nghiệm chơi game đỉnh cao. Góc nhìn rộng 178°. HDR 400 - Hình ảnh tuyệt đẹp với định dạng tiêu chí nhất. Thời gian phản hồi 1ms - loại bỏ hiện tượng xé hình và tốc độ khung hình bị giật. Tốc độ làm mới 144Hz – Chơi game mượt mà thực sự. Màn hình chơi game cong (1800R) – Trải nghiệm chơi game tuyệt vời nhất. Độ phân giải cao UWQHD - Các tựa game thậm chí sẽ trông đẹp hơn, hiển thị nhiều chi tiết hơn nhờ độ phân giải UWQHD.', 1, 2888, 15, 'msi monitor 2.jpg'),
(25, 'RAZER Kraken V2 Pro Headset', 'Razer', 'Trình điều khiển 50 mm được điều chỉnh tùy chỉnh. Đệm thấm gel làm mát. Micro đơn hướng có thể thu vào. Âm thanh rõ ràng và mạnh mẽ Đệm headband dày hơn Chơi thoải mái trong nhiều giờ', 1, 3999930, 20, 'razer headset 2.jpg'),
(26, 'RAZER Blackwidow Keyboard Green Switch 2019', 'Razer', '                                    Công tắc cơ học Razer Green được thiết kế để chơi game Tuổi thọ 80 triệu lần nhấn phím Đèn nền có thể tùy chỉnh Razer Chroma với 16,8 triệu tùy chọn màu Bộ nhớ tích hợp trên bo mạch và Bộ lưu trữ đám mây – tối đa 5 cấu hình Hỗ trợ Razer Synapse 3 Tùy chọn định tuyến cáp Cuộn phím N với chức năng chống rung tích hợp -ghosting Các phím có thể lập trình đầy đủ với tính năng ghi macro nhanh chóng Tùy chọn chế độ chơi game Công nghệ kích hoạt tức thì Ultrapolling 1000 Hz      ', 2, 2693330, 15, 'razer keyboard.jfif'),
(27, 'RAZER Seirēn X - Black', 'Razer', 'Kiểu dáng nhỏ gọn chống sốc kiểu bán tải siêu chính xác', 2, 3196700, 10, 'razer mic.jfif'),
(28, 'RAZER RAPTOR 27 1440P 165 HZ', 'Razer', 'TƯƠNG THÍCH VESA và quản lý cáp. MÀN HÌNH CHƠI GAME ĐƯỢC CHỨNG NHẬN THX® ĐẦU TIÊN TRÊN THẾ GIỚI. TỐC ĐỘ CAO 165HZ. QHD ĐỘ PHÂN GIẢI CAO. Tương thích với Gsync và Freesync.', 1, 3199800, 2, 'razer monitor.jpg'),
(29, 'RAZER BASILISK V3', 'Razer', '                  CUỘN HOÀN HẢO. KHẢ NĂNG TÙY CHỈNH HOÀN TOÀN PHỔ. NÚT LẬP TRÌNH 10+1. Chuyển đổi hồ sơ.     ', 2, 259, 15, 'razer mouse.jfif'),
(30, 'RAZER Nommo Pro', 'Razer', 'BASS RẮN, KHÔNG GIỚI HẠN. ÂM THANH CAO CẤP ĐƯỢC CHỨNG NHẬN THX. Âm thanh chất lượng cao cấp Studio. Âm thanh dolby Đắm chìm trong điện ảnh MẠNH MẼ đã được chứng nhận.', 1, 3098, 2, 'razer speaker.jfif'),
(32, 'Viewsonic Elite XG350R-C 35” Curved ', 'Viewsonic', '                  Tốc độ làm mới 100Hz. Công nghệ nhấp nháy đèn nền ClearMotion. Độ phân giải QHD siêu rộng 3440 X 1440. Liên minh ELITE RGB. Công nghệ Adaptive Sync & AMD FreeSync™.              ', 1, 2077, 15, 'viewsonic monitor.png'),
(33, 'Logitech G102 RGB mouse', 'Logitech', '                 8.000DPI. LIGHTSYNC RGB có các hiệu ứng sóng màu có thể tùy chỉnh trên ~16,8 triệu màu.               ', 2, 699999, 30, 'logi mouse.jpg'),
(34, 'LOGITECH G502 Gaming Mouse', 'Logitech', 'Con chuột bán chạy nhất thế giới với trọng lượng có thể tùy chỉnh. 5 nút lập trình có logo rgb. Chất liệu bền và tay cầm được thiết kế thoải mái. Tuổi thọ 70 triệu lần nhấp chuột.', 2, 159, 50, 'g502.jpg'),
(35, 'ACER Nitro VG270 27\" 75hz', 'Acer', '1920x1080p IPS Freesync 1ms với khả năng tăng tốc phản hồi ảo lên tới 0,5ms', 1, 7200000, 28, 'acer monitor.jfif'),
(36, 'Acer Aopen 24CV1Y Monitor (23.8\")', 'Acer', 'Full HD, Tấm nền VA, Thời gian phản hồi 5ms(GTG), Tốc độ làm mới 75Hz', 1, 499, 30, 'acer budget monitor.jfif'),
(37, 'Steelseries QCK EDGE L - 450mm x 400mm x 2mm ', 'Steelseries', '                  Một trong những miếng lót chuột chơi game bằng vải bán chạy nhất trên thế giới. Cực mịn mà lại bền.               ', 2, 60, 30, 'steelseries l.png'),
(38, 'Steelseries QCK EDGE - XL 900mm x 300mm x 2mm', 'Steelseries', 'Lót chuột bán chạy nhất thế giới', 2, 119, 50, 'steelseries xl.jfif'),
(39, 'OGTECH OFFICE PC COMPACT', 'Mixed', 'Processor : AMD Ryzen 5 PRO 4650G Motherboard : ASROCK B550M ITX/AC (Wifi) RAM : GSKILL AEGIS DDR4 3200Mhz (1 x8gb) SSD: GIGABYTE NVMe SSD 256GB Casing : ANTEC ISK310-150 Mini-ITX CASE with psu', 0, 2099, 10, 'compact pc.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `Password` varchar(512) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `PrivilegeLevel` int(11) NOT NULL DEFAULT 0,
  `Attempt` int(1) DEFAULT NULL,
  `RegisteredDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`MemberID`, `Username`, `Password`, `Email`, `PrivilegeLevel`, `Attempt`, `RegisteredDate`) VALUES
(2, 'admin', '$2y$10$wq746a0dn0wmcPzHXfEMhe80xZQc9/1PBJID9Ri4AHbfmwT9xn9Xi', 'admin@gmail.com', 1, 3, '2022-03-27'),
(5, 'test1', '$2y$10$GlhvBkMPi19b3tGoGUzEzOu3GDazDogOzd.eoAvNc0ID8PB9n7E7K', 'test@gmail.com', 0, 3, '2022-03-27'),
(6, 'test2', '$2y$10$Q.624Ef8zdpsWryToDFJZONz7XopgMQZwQeLXwzFUBa07/DNdFfUO', 'test123@gmail.com', 0, 3, '2022-03-27'),
(7, 'test3', '$2y$10$YZJ3hA4zgVjaKdMJHR5EWuUk8ujPDlqXP7IzEd.kD9.lLcUAbH5Su', 'test3@gmail.com', 0, 3, '2022-03-27'),
(8, 'test4', '$2y$10$07FJA8uhFxA0aAnMBoP59uAs4CNhyQ/yHqIT69UgrH6l2nsZGa5Y.', 'test4@gmail.com', 0, 3, '2022-03-27'),
(9, 'test5', '$2y$10$CYsI.DmaPc5EXpjRRfQTIeYkbC0ngtucxVHRHgV5SJ0z1/2cwB4mu', 'test5@gmail.com', 0, 3, '2022-03-25'),
(10, 'test6', '$2y$10$ieSbXKrOc4tmF.kSUtTCyO69Xp13lNCs.Fl.agTLYm3N0FAKdRWkC', 'test6@gmail.com', 0, 3, '2022-03-24'),
(15, 'test7', '$2y$10$wYZtt0RY/443JBq5UO0iGuDbUia/lIEWI0/iSGrDJ4Yrv3WpD5J1.', 'test7@gmail.com', 0, 3, '2022-03-25'),
(16, 'test8', '$2y$10$qYaWx7z6VHxgBtQxLm7leuo2sKv76Cg28UhmJaKZiF0eHXiMMcKCa', 'test8@gmail.com', 0, 3, '2022-03-27'),
(19, 'test9', '$2y$10$VDEN6GE/49oMJ6GIwCL/2Op6K6iTeuZbbf7QFn8Oj7WTPzTG3E2Nq', 'test9@gmail.com', 0, 3, '2022-03-26'),
(22, 'admin2', '$2y$10$4DtSUM142G/dEiZOfO2xS.1VptEJ0rzRh1AFM6EH/Wf.1MediuCUm', 'admin@mail.com', 1, 3, '2022-03-27'),
(23, 'hehe123', '$2y$10$78yxJcbtQYf8HbrU3PDzAejUhqJta/VfGRak29RB7Ko2kH1hXLkWS', 'hehe@gmail.com', 0, 3, '2024-05-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `AddedDatetime` datetime NOT NULL,
  `Feedback` varchar(512) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `RatingDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`OrderItemID`, `OrderID`, `ItemID`, `Price`, `Quantity`, `AddedDatetime`, `Feedback`, `Rating`, `RatingDateTime`) VALUES
(37, 24, 3, 6950, 1, '2022-03-13 00:43:58', 'PC siêu đỉnh, siêu cấp vippro đẳng cấp no 1 ', 5, '2022-03-13 19:36:36'),
(56, 28, 3, 6950, 1, '2022-03-13 23:49:08', 'Giá rẻ nhất Biên Hoà, Số 1 Đồng Nai', 5, '2022-03-14 00:35:25'),
(57, 28, 5, 8668, 1, '2022-03-13 23:49:39', 'Bảo hành trọn đời đỉnh cao ', 5, '2022-03-14 00:35:51'),
(58, 28, 6, 4599, 1, '2022-03-13 23:49:45', 'Máy sài 20 năm chưa lỗi vặt ', 5, '2022-03-14 00:36:24'),
(59, 28, 10, 3299, 1, '2022-03-13 23:52:19', 'Máy tính đầu tiên, 3050 quá đỉnh vip pro', 5, '2022-03-14 00:37:06'),
(60, 28, 35, 719.99, 2, '2022-03-13 23:53:25', 'Màn hình đỉnh cao không bị lỗi màu, 240hz giật căng đét nuôn', 5, '2022-03-14 00:37:51'),
(61, 29, 3, 6950, 1, '2022-03-14 11:07:27', 'Ship hàng hơi trễ tí mà ko sao, uy tín 10 điểm', 4, '2022-03-14 11:08:40'),
(62, 27, 6, 4599, 1, '2024-05-06 20:50:08', NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `CartFlag` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderID`, `MemberID`, `CartFlag`) VALUES
(6, 6, b'1'),
(7, 7, b'1'),
(8, 8, b'1'),
(9, 9, b'1'),
(10, 10, b'1'),
(15, 15, b'1'),
(16, 16, b'1'),
(20, 19, b'1'),
(24, 5, b'0'),
(27, 2, b'1'),
(28, 5, b'0'),
(29, 5, b'0'),
(30, 5, b'1'),
(31, 22, b'1'),
(32, 23, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `PaymentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`PaymentID`, `OrderID`, `PaymentDate`) VALUES
(6, 24, '2022-03-13'),
(7, 28, '2022-03-14'),
(8, 29, '2022-03-14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberID`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
