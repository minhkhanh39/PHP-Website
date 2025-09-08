<footer class="page-footer" style="margin-top: 120px; box-shadow: 0px 0px 2px white; background-color: rgb(17,17,17)">
  <div class="row wide-container">
    <div class="col s3">
      <h4 class="white-text bold underline">Minh Khánh PC</h4>
    </div>
    <div class="col s2">
      <h5 class="white-text bold"  style=' text-decoration: underline'>HỖ TRỢ</h5>
      <p><a class='dropdown-trigger white-text bold' href='#' data-target='dropdown1'>CHĂM SÓC KHÁCH HÀNG 
        <i class='material-icons' style=' text-decoration: none !important; display: inline-flex; vertical-align: top;'>arrow_drop_down</i>
      </a></p>
      <ul id='dropdown1' class='dropdown-content white'>
        <li><a href='aboutUs.php' class='black-text bold'>About Us</a></li>
        <li class='divider' tabindex='-1'></li>
        <li><a href='warranty_page.php' class='black-text bold'>Bảo hành</a></li>
        <li class='divider' tabindex='-1'></li>
        <li><a href='contactUs.php' class='black-text bold'>Liên hệ</a></li>
      </ul>
    </div>
    <div class="col s2">
      <h5 class="white-text bold">Thời gian hoạt động</h5>
      <p class="bold">
        Thứ 2 đến Chủ nhật : <br> 8:00 - 21:00
      </p>
      <p class="bold">
        Showroom: 206, Đường Nguyễn Khuyến  <br>
        KP5, Phường Trảng Dài <br> P Biên Hoà, Tỉnh Đồng Nai
      </p>
    </div>
    <div class="col s2">
      <h5 class="white-text bold">Social</h5>
      <a class="waves-effect waves-light blue lighten-1 btn" style="margin: 2px;">
        <i class="fa fa-facebook fa-fw"></i> Facebook
      </a>
      <a class="waves-effect waves-light pink lighten-1 btn" style="margin: 2px;">
        <i class="fa fa-instagram fa-fw"></i> Instagram
      </a>
    </div>
    <div class="col s3">
      <h5 class="white-text bold ">HÃNG TÀI TRỢ</h5>
      <img src="static/images/Partners.png" />
    </div>
  </div>

  <script>
    $(document).ready(function() {
      $('.dropdown-trigger').dropdown({
        coverTrigger: false
      });

      $('#pagination').pageMe({
        pagerSelector:'#myPager',
        activeColor: 'blue',
        prevText:'Previous',
        nextText:'Next',
        showPrevNext:true,
        hidePageNumbers:false,
        perPage:5
      });
      
    })
  </script>

</footer>