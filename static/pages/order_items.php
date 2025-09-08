<?php
  require_once "includes/class_autoloader.php";
  if (isset($_GET["member_id"]))
  {
    /** @var int $memberID */
    $memberID = $_GET["member_id"];
    $member = Member::CreateMemberFromID($memberID);
    $orders = $member->getOrders();
    $orderCount = count($orders);
  }
?>

<div class="row" style="margin-top: 100px; margin-bottom: 50px; border-bottom: 3px solid #bbb">
  <h4 class="page-title">Lịch sử thanh toán / Đơn đặt hàng trước đó</h4>
</div>

<?php
  if ($orderCount <= 0) 
    echo("<h5 class='grey-text page-title'>Chưa có đơn đặt hàng nào. Bạn nghĩ thế nào về
    <a href='product_catalogue.php?query='>thực hiện một số đơn đặt hàng</a>? :)</h5>");

  else
  {
    echo("
    <div class='row'>
      <div class='title-card col s8' style='height: 55px; margin-bottom: 10px'>
        <p class='col s4 center' style='padding-top: 15px; margin: 0px;'>Ngày & Sản phẩm</p>
        <p class='col s2 center ' style='padding-top: 15px; margin: 0px;'>Đơn giá</p>
        <p class='col s2 center' style='padding-top: 15px; margin: 0px;'>Số lượng</p>
        <p class='col s4 center' style='padding-top: 15px; margin: 0px;'>Thao Tác</p>
      </div>
    </div>
    ");

    for ($i=0; $i < $orderCount; $i++)
    {
      $idx = $i+1;

      $sql = "SELECT P.OrderID, P.PaymentDate, OI.OrderID FROM Payment P, OrderItems OI
      WHERE P.OrderID = OI.OrderID";
      $dbh = new Dbhandler();
      $result = $dbh->conn()->query($sql);
      while ($row = $result->fetch_assoc()) {
        $paymentDate = $row["PaymentDate"];
      }

      echo("<h5 class='white-text page-title'>#$idx Paid: $paymentDate</h5>");
      // row starting point
      echo("<div class='row'>");
      // prev order list starting point
      echo("<div class='col s8'> <ul class='collapsible popout' id='cart'>");

      $order = $orders[$i];
      $orderID = $order->getOrderID();
      $orderItems = $order->getOrderItems();
      $orderItemCount = count($orderItems);

      $sumTotal = 0;
      for ($o=0; $o < $orderItemCount; $o++)
      {
        $orderItem = $orderItems[$o];
        $item = new Item($orderItem->getItemID());
        generateBoughtItem($item, $orderItem, $memberID);

        $quantity = $orderItem->getQuantity();
        $price = $orderItem->getPrice();
        $sumTotal += $price * $quantity;
      }

      if ($sumTotal >= 200){
        $displayShipping = 0;
        $displaySVoucher = " <span class='yellow-text'>(Đã áp dụng voucher khuyến mãi)</span>";
      }
      else if ($sumTotal < 200){
        $displayShipping = 25;
        $displaySVoucher = "";
      } 
      if ($displayShipping === 0) $displayShipping = "<span class='underline'>$displayShipping VNĐ</span>";
      else $displayShipping = "$displayShipping VNĐ";

      if ($sumTotal >= 2000){
        $shippingTotal = $sumTotal - 100;
        $displayPVoucher = "<span class='underline'>-100 VNĐ</span> <span class='yellow-text'>(Đã áp dụng voucher khuyến mãi)</span>";
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

      // order items list closing point
      echo("</ul></div>");

      generateOrderSum($orderItemCount, $sumTotal, $displayShipping, $displaySVoucher, $displayPVoucher);

      // row closing point
      echo("</div>");
    }
  }