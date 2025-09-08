<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Minh Khánh - Thank you</title>
  <?php include "header.php"; ?>
</head>
<body>
  <div class="container center-align" style="margin-top: 100px;">
    <div class="rounded-card-parent" style="margin-right: 200px; margin-left: 200px;">
      <div class="rounded-card card-content">
        <h4 class="page-title green-text">Chúng tôi đã nhận được thanh toán của bạn.</h4>
        <p>Cám ơn vì đã mua hàng. Các mặt hàng bạn đặt hàng sẽ được giao theo đúng yêu cầu. Xin hãy đến lần nữa.</p>
        <div class="card-action" style='margin-top: 50px'>
          <a class="white-text btn" href="index.php">Trở về trang chủ</a>
          <a style='margin-left: 20px' class="white-text btn" href='cart.php?member_id=<?php echo($memberID); ?>'>Quay lại giỏ hàng</a>
        </div>
      </div>
    </div>
  </div>

</body>
<?php include "footer.php"; ?>
</html>