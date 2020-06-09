<!DOCTYPE html>
<html lang="en">
<?php
include 'public/head.php';
?>
<?php require_once('config.php') ?>
<?php require_once(ROOT_PATH . '/includes/public_functions.php') ?>
<?php require_once(ROOT_PATH . '/includes/registration_login.php') ?>

<!-- Retrieve all posts from database  -->
<?php $posts = getPublishedPosts(); ?>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  
    <?php
    include 'public/headtop.php';
    ?>
  </div>
  
  <?php
  include 'public/slideview.php';
  ?>
  </div>


 

  <div class="site-section">
    <div class="container">
    
      <div class="row">
        <div class="col-lg-12">
          <div class="section-title text-success">
          <h2>LOẠI SẢN PHẨM</h2>
          </div>
                   <?php foreach ($posts as $post) : ?>
            <?php if (isset($post['topic']['name'])) : ?>
                <a href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>" class="btn category">
                  <?php echo $post['topic']['name'] ?>
                </a>
              <?php endif ?>
          <?php endforeach ?>
          
          <div class="section-title text-danger">
          <br>
          <br>
            <h2>SẢN PHẨM</h2>
           
           
          </div>
          <?php foreach ($posts as $post) : ?>
            <div class="post" style="margin-left: 0px;">
            <img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="" width="200px" height="200px">
            
            <div class="post-entry-2 d-flex">

             


              <a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
                <div class="post_info">
                  <h3><?php echo $post['title'] ?></h3>
                  <div class="info">
                    <span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
                    <span class="read_more">Read more...</span>
                  </div>
                </div>
              </a>
            </div>
            </div>
          <?php endforeach ?>
        </div>
      </div>
    </div>
  </div>
  </div>





  <div class="footer">
    <div class="container">


      <div class="row">
        <div class="col-12">
          <div class="copyright">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;<script>
                document.write(new Date().getFullYear());
              </script> DESIGN COPY BỞI HUY-QUÂN-KHANG<i class="icon-heart text-danger" aria-hidden="true"></i> 
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>


  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15" /></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>