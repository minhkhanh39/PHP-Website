<!DOCTYPE html>
<html lang="en">
<title>Minh Khánh - Đăng Ký</title>
<?php include "header.php"; ?>

<form action="includes/signup.inc.php" method="POST">
  <div class="container">
    <h3 class="underline white-text grid">Đăng Ký</h3>
    <div class="rounded-card-parent center">
      <div class="card rounded-card">
        <div class="row">
          <div class="input-field col s4 offset-s4">
            <i class="material-icons prefix white-text">account_circle</i>
            <input name="username" id="username" type="text" class="validate white-text" minlength="5" maxlength="12">
            <label for="username" class="white-text">Tên người dùng</label>
            <span class="helper-text grey-text left-align" data-error="Min 5, Max 12 characters" data-success="Min 5, Max 12 characters">Tối thiểu 5, Tối đa 12 ký tự</span>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s4 offset-s4">
            <i class="material-icons prefix white-text"> password</i>
            <input name="pwd" id="pwd" type="password" class="validate white-text" minlength="8" maxlength="20">
            <label for="pwd" class="white-text"> Mật Khẩu</label>
            <span class="helper-text grey-text left-align" data-error="Min 8, Max 20 characters" data-success="Min 8, Max 20 characters">Tối thiểu 8, Tối đa 20 ký tự</span>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s4 offset-s4">
            <i class="material-icons prefix white-text"> password</i>
            <input name="repeat_pwd" id="repeat_pwd" type="password" class="validate white-text" maxlength="20">
            <label for="repeat_pwd" class="white-text"> Nhập lại mật khẩu</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s4 offset-s4">
            <i class="material-icons prefix white-text">email</i>
            <input name="email" id="email" type="email" class="validate white-text" maxlength="25">
            <label for="email" class="white-text">Email</label>
            <span class="helper-text white-text" data-error="wrong" data-success="correct"></span>
          </div>
        </div>
        <input class="btn" type="submit" name="submit" value="Đăng Ký">
        <div class="errormsg">
          <?php
            if (isset($_GET["error"]))
            {
              if ($_GET["error"] == "empty_input")
                echo "<p>*Điền vào tất cả các trường!<p>";

              else if ($_GET["error"] == "invalid_uid")
                echo "<p>*Chọn tên người dùng thích hợp!</p>";

              else if ($_GET["error"] == "passwords_dont_match")
                echo "<p>*Mật khẩu không khớp!</p>";

              else if ($_GET["error"] == "username_taken")
                echo "<p>*Tên người dùng/Email đã được sử dụng!</p>";
                
              else if ($_GET["error"] == "none")
                echo "<p class='green-text bold'>Bạn đã đăng ký! Vui lòng vào trang Đăng nhập</p>";
                echo '<META HTTP-EQUIV="Refresh" Content="2; URL=signup.php">';
                exit();
            }
          ?>
        </div>
      </div>
    </div>
  </div>
</form>

<?php include "footer.php"; ?>
</html>