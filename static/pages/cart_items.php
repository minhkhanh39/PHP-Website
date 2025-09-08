<?php

  require_once "includes/order.inc.php";
  require_once "includes/class_autoloader.php";

  if (isset($_GET["member_id"]))
  {
    $memberID = $_GET["member_id"];
    $member = Member::CreateMemberFromID($memberID);
    $cart = $member->getCart();
    $cartID = $cart->getOrderID();
    $cartItems = $cart->getOrderItems();
    $cartItemCount = count($cartItems);
  }

  if (isset($_GET["remove_item"])){
    $orderItemID = $_GET["remove_item"];
    $sql = "DELETE FROM OrderItems WHERE OrderItemID = $orderItemID";
    $conn = new Dbhandler();
    $conn->conn()->query($sql) or die($conn->conn()->error);
    header("location: cart.php?member_id=$memberID");
  }
?>

<h4 class="page-title">GIỎ HÀNG</h4>
<div class="row">
  <div class="col s8">
    <ul class="collapsible popout" id="cart">
      <!-- generate all rows of items -->
      <?php
        if (isset($cartItems))
        {
          if ($cartItemCount <= 0) 
            echo("<h5 class='grey-text page-title'>Giỏ hàng của bạn đang trống.</h5><h6 class='grey-text page-title'>
              <a href='product_catalogue.php?query='>Mua sắm ngay!</a></h6>");
          
          else if ($cartItemCount >= 0){
            echo("
            <div class='title-card' style='height: 55px; margin-bottom: 10px'>
              <p class='col s4 center' style='padding: 0px; margin: 0px;'>Sản Phẩm</p>
              <p class='col s2 center' style='padding: 0px; margin: 0px;'>Đơn Giá</p>
              <p class='col s2 center' style='padding: 0px; margin: 0px;'>Số Lượng</p>
              <p class='col s4 center' style='padding: 0px; margin: 0px;'>Thao Tác</p>
            </div>");
          }
          $sumTotal = 0;
          for ($c=0; $c < $cartItemCount; $c++)
          {
            $orderItem = $cartItems[$c];
            $item = new Item($orderItem->getItemID());
            generateItem($item, $orderItem, $memberID);

            $quantity = $orderItem->getQuantity();
            $price = $orderItem->getPrice();
            $sumTotal = $sumTotal + $price * $quantity;
          }
        }
      ?>
    </ul>
  </div>

  <div class="col s4">
    <div class="rounded-card-parent">
      <div class="card rounded-card">
        <h5 class="bold center">Chi tiết giỏ hàng</h5>
        <form action="payment.php" method="GET">
          <table class="responsive-table">
            <tbody>
              <?php
                
                if ($sumTotal >= 200){
                  $displayShipping = 0;
                  $displaySVoucher = " <span class='yellow-text'>(Đã áp dụng phí vận chuyển)</span>";
                }
                else if ($sumTotal < 200){
                  $displayShipping = 25;
                  $displaySVoucher = "";
                } 
                if ($displayShipping === 0) $displayShipping = "<span class='underline'>$displayShipping VNĐ</span>";
                else $displayShipping = "$displayShipping VNĐ";

                if ($sumTotal >= 2000){
                  $shippingTotal = $sumTotal - 100;
                  $displayPVoucher = "<span class='underline'>0 VNĐ</span> <span class='yellow-text'>(Đã áp dụng voucher khuyến mãi)</span>";
                }
                else if ($sumTotal >= 200 && $sumTotal < 2000){ 
                  $shippingTotal = $sumTotal;
                  $displayPVoucher = "Không có (chưa đạt mức chi tiêu tối thiểu)";
                }
                else if ($sumTotal < 200){ 
                  $shippingTotal = $sumTotal + 25;
                  $displayPVoucher = "Không có (chưa đạt mức chi tiêu tối thiểu)";
                }
                $sumTotal = number_format($shippingTotal, 2);

                echo("<tr><th >Tổng số mặt hàng:otal Items:</th><td >$cartItemCount</td></tr>");
                echo("<tr><th >Phí vận chuyển:</th><td >");echo("$displayShipping $displaySVoucher</td></tr>");
                echo("<tr><th >Phiếu khuyến mãi:</th><td >$displayPVoucher</td></tr>");
                echo("<tr><th>Tổng cộng:</th><td>$sumTotal VNĐ</td></tr>");
                
              ?>
            </tbody>
          </table>
          <?php if (!isset($_GET["view_order"]) && $cartItemCount > 0) { ?>
          <button class="btn amber darken-3" style="margin-top: 20px; margin-left: 200px">
            Thanh toán
          </button>
          <input type="hidden" name="order_id" value=<?php echo($cartID); ?>>
          <input type="hidden" name="view_order" value=1>
          <input type="hidden" name="member_id" value=<?php echo($memberID) ?>>
          <?php } ?>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function(){ $('.collapsible').collapsible(); });
</script>

