<!DOCTYPE html>
<html lang="en">
<title>Quản trị viên Xem đơn hàng PC - Đăng Nhập</title>
<?php include "header.php"; ?>

<form method="POST" action="includes/login.inc.php">
  <div class="container">
    <h3 class="grid underline">Đăng Nhập</h3>
    <div class="rounded-card-parent center">
      <div class="card rounded-card">
        <div class="row">
          <div class="input-field col s4 offset-s4">
          <i class="material-icons prefix white-text">account_circle</i>
            <label class="white-text" for="username">Tên người dùng hoặc Email</label>
            <input type="text" name="username" id="username" class="white-text">
          </div>
        </div>
        <div class="row">
          <div class="input-field col s4 offset-s4">
          <i class="material-icons prefix white-text">password</i>
            <label class="white-text" for="pwd">Mật Khẩu</label>
            <input type="password" name="pwd" id="pwd" class="white-text">
          </div>
        </div>
        <div class="row">
          <button type="submit" name="submit" class="btn" style="margin-left: 10px">Đăng Nhập</button>
        </div>
        <div class="row">
          <span class="white-text">Bạn chưa có tài khoản?</span>
          <a href="signup.php">Đăng Ký!</a>
          <div class="errormsg">
            <?php
              if (isset($_GET["error"]))
              {
                if ($_GET["error"] == "empty_input")
                  echo "<p>** Điền vào tất cả các trường!</p>";
                else if ($_GET["error"] == "WrongLogin")
                  echo "<p>*Thông tin xác thực không chính xác!</p>";
                else if ($_GET["error"] == "usernotfound")
                  echo "<p>*Người dùng không tồn tại!</p>";
                else if ($_GET["error"] == "stmtfailed")
                  echo "<p>*LỖI SQL! Thử lại sau.</p>";
                else if ($_GET["error"] == "attemptReached")
                  echo "<p>*Quá nhiều lần đăng nhập không thành công! Hãy thử lại sau 15 giây.</p>";
              }
            ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>

<?php include "footer.php"; ?>
</html>
