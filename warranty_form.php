<!DOCTYPE html>
<html>

<head>
<title>Mẫu bảo hành - Minh Khánh</title>
<?php include "header.php";?>

<style>
	.text {
		font-size:18px;
		color:white;
	}
	
	.textbox {
		margin-left:200px;
		margin-right:200px;
	}
	
	textarea {
		resize:none;
		outline:none;
		background-color:transparent;
		width:100%;
		height:120px;
		overflow:auto;
	}
	
	textarea:focus {
		outline:solid #44a69b;
	}
	
	.button {
		font-size:18px;
		border:3px solid white;
		cursor:pointer;
		width:140px;
		height:40px;
		background-color:transparent;
		color:white;
		box-shadow:5px 5px 3px 0px;
	}
	
	.button:hover {
		box-shadow:5px 5px 3px 0px green;
	}
	
</style>
</head>

<body>

<div class="page-title background-overlay" style="text-align:center;padding-top: 140px;padding-bottom: 140px">
<h1 style="font-weight:bold">Bảo Hành</h1>
<p class="text">Minh Khánh / Bảo Hành</p>
</div>

<div class="textbox">
	<p class="text">Thật là một thảm họa! Máy tính của bạn bị lỗi và bạn quá bận để mang nó đến cửa hàng để sửa chữa. Thật may mắn cho bạn,
bạn được bao phủ bởi
Dịch vụ nhận và trả xe Minh Khánh! Chúng tôi sẽ nhận máy tính hoặc phần cứng của bạn hoặc thay thế nó và mang lại cho bạn vào lúc thuận tiện, giúp bạn tiết kiệm thời gian và tiền bạc</p>
	<br><br>
	<form method="post">
	<table class="text">
		<tr>
			<td>Email:</td>
		</tr>
		<tr>
			<td><input class="text" type="email" name="email" required="required" placeholder="Example : john123@mail.com"></input></td>
		</tr>
		<tr>
			<td>Tên đầy đủ:</td>
		</tr>
		<tr>
			<td><input class="text" name="name" required="required" placeholder="Example : Kristof John"></input></td>
		</tr>
		<tr>
			<td>Địa chỉ:</td>
		</tr>
		<tr>
			<td><textarea class="text" name="address" required="required" placeholder="Example : 13, Jalan Kuching 5, Taman Suhana Emas, 53100, Cheras, Kuala Lumpur"></textarea></td>
		</tr>
		<tr>
			<td>Số điện thoại</td>
		</tr>
		<tr>
			<td><input class="text" type="tel" name="contact" required="required" placeholder="Example : 019 876 5432"></input></td>
		</tr>
		<tr>
			<td>Tên sản phẩm:</td>
		</tr>
		<tr>
			<td><input class="text" type="text" name="product_name" required="required" placeholder="Example : Asus B85M-G"></input></td>
		</tr>
		<tr>
			<td>Những vấn đề mà bạn đang gặp phải:</td>
		</tr>
		<tr>
			<td><textarea class="text" name="problem_statement" required="required" placeholder="Ví dụ: Màn hình hiển thị bị rớt khung hình/không hoạt động"></textarea></td>
		</tr>
		<tr>
			<td><input class="button" type="submit" name="submit" value="Submit form"></input></td>
		</tr>
	</table>
	</form>
</div>

<?php include "footer.php";?>
</body>

</html>