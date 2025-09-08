<?php
  require_once "class_autoloader.php";

  const CATEGORY_NAMES = ["PC", "Tai Nghe & Màn Hình", "Gaming Gear"];
  const BRAND_NAMES = ["Asus", "MSI", "Razer", "Logitech", "Viewsonic", "Acer", "HyperX", "Steelseries", "Corsair"];
  const SORT_NAMES = ["Giá từ thấp đến cao", "Giá từ cao đến thấp"];
  const VIEW_NAMES = ["Danh sách"];

  function searchItems($category, $brand, $sort){
    $searchName = "";
    if (isset($_GET["query"])) $searchName = $_GET["query"];

    /** 
     * @var Item[] $items
     */
    $sql = "SELECT ItemID FROM Items WHERE (Name LIKE '%$searchName%')";

    // only limit to a number
    if ($category != -1) $sql .= " AND Category = $category";

    if ($brand != -1){
      $brandName = BRAND_NAMES[$brand];
      $sql .= " AND Brand = '$brandName'";
    }

    if ($sort == 0) $sql .= " ORDER BY SellingPrice ASC";
    else if ($sort == 1) $sql .= " ORDER BY SellingPrice DESC";

    $sql .= " LIMIT 50";
    $conn = new Dbhandler();
    $result = $conn->conn()->query($sql) or die($conn->conn()->error);

    $items = array();

    if ($result->num_rows < 1)
      echo "<h5 class='white-text bold center' style='padding-top: 150px'>
      0 kết quả được trả về. Vui lòng thử kết quả tìm kiếm khác vì sản phẩm đã chọn không có sẵn</h5>";

    while ($row = $result->fetch_assoc())
    {
      $itemID = $row["ItemID"];
      array_push($items, new Item($itemID));
    }

    generateItemList($items);
  }

  /**
  * @param Item[] $items
  */
  function generateItemList($items){
    $itemCount = count($items);

    $itemIdx = 0;
    while ($itemIdx < $itemCount) {
      echo("<div class='row'>");
      // generate 4 items in one row only (container)
      for ($i=0; $itemIdx < $itemCount && $i < 4; $itemIdx++){

        $item = $items[$itemIdx];

        if ($item->getQuantityInStock() <= 0){
          echo("Không có sẵn hàng, vui lòng thử các tùy chọn bộ lọc khác");
          continue;
        }

        $i++;

        $itemID = $item->getItemID();
        $image = $item->getImage();
        $name = $item->getName();
        $price = $item->getSellingPrice();
        $price = number_format($price, 2) . " VNĐ ";

        $hasReviews = $item->HasReviews();
        $avgRatings = $item->getAvgRatings();

        echo(
          "
          <div class='col s3'>
            <a href='product.php?item_id=$itemID'>
              <div class='selectable-card' style='height: 480px; min-width: 300px'>
                <img class='shadow-img center' src='product_images/$image' style='height: 300px; max-width: 300px; display: block; margin: 0 auto; object-fit:scale-down;'>
                <h6 class='center bold white-text'>$name</h6>
                <table class='center'>
                  <tbody class='center'>
                    <h6 class='amber-text' style='padding-top: 60px'>$price</h6>
                    <tr>");

                    if ($hasReviews)
                    {
                      $intRating = $avgRatings * 5 / 100;
                      $reviews = $item->GetReviews();
                      $reviewCount = count($reviews);

                      if ($intRating >= 10) {
                        $intRating = $intRating / $reviewCount;
                        $intRating = number_format((float)$intRating, 2, '.', '');
                        $avgRatings = $intRating * 20;
                      }
                      echo(
                        "$intRating
                        <div class='ratings' style='padding-bottom: 5px'>
                          <div class='empty-stars'></div>
                          <div class='full-stars' style='width: $avgRatings%'></div>
                        </div>"
                      );
                    } else echo("- | ");
                    if ($hasReviews) echo(" | $reviewCount Xếp hạng");
                      else echo("Chưa có xếp hạng nào");

                    if ($item->checkSoldCount()){
                      echo(" | " . $item->checkSoldCount());
                      echo(" Đã bán");
                    }
                    else echo(" | 0 Đã bán");

                  echo("</tr>
                  </tbody>
                </table>
              </div>
            </a>
          </div>");
      }
      // closing div tag
      echo("</div>");
    }
  }