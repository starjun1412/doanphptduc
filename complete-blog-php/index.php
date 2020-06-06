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

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
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
          <div class="section-title text-danger">
            <h2>SẢN PHẨM</h2>
          </div>
          <?php foreach ($posts as $post) : ?>
            <div class="post-entry-2 d-flex">

              <img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="" width="200px" height="200px">
              <?php if (isset($post['topic']['name'])) : ?>
                <a href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $post['topic']['id'] ?>" class="btn category">
                  <?php echo $post['topic']['name'] ?>
                </a>
              <?php endif ?>

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
          <?php endforeach ?>
        </div>
      </div>
    </div>
  </div>
  </div>




  <div class="site-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-9">
          <div class="section-title">
            <h2>Recent News</h2>
          </div>
          <div class="post-entry-2 d-flex">
            <div class="thumbnail order-md-2" style="background-image: url('images/img_h_4.jpg')"></div>
            <div class="contents order-md-1 pl-0">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi temporibus praesentium neque, voluptatum quam quibusdam.</p>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <div class="post-entry-2 d-flex">
            <div class="thumbnail order-md-2" style="background-image: url('images/img_h_3.jpg')"></div>
            <div class="contents order-md-1 pl-0">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi temporibus praesentium neque, voluptatum quam quibusdam.</p>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <div class="post-entry-2 d-flex">
            <div class="thumbnail order-md-2" style="background-image: url('images/img_h_3.jpg')"></div>
            <div class="contents order-md-1 pl-0">
              <span class="caption mb-4 d-block">Editor's Pick</span>
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi temporibus praesentium neque, voluptatum quam quibusdam.</p>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="section-title">
            <h2>Popular Posts</h2>
          </div>

          <div class="trend-entry d-flex">
            <div class="number align-self-start">01</div>
            <div class="trend-contents">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <div class="trend-entry d-flex">
            <div class="number align-self-start">02</div>
            <div class="trend-contents">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <div class="trend-entry d-flex">
            <div class="number align-self-start">03</div>
            <div class="trend-contents">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <div class="trend-entry d-flex pl-0">
            <div class="number align-self-start">04</div>
            <div class="trend-contents">
              <h2><a href="blog-single.html">News Needs to Meet Its Audiences Where They Are</a></h2>
              <div class="post-meta">
                <span class="d-block"><a href="#">Dave Rogers</a> in <a href="#">News</a></span>
                <span class="date-read">Jun 14 <span class="mx-1">&bullet;</span> 3 min read <span class="icon-star2"></span></span>
              </div>
            </div>
          </div>

          <p>
            <a href="#" class="more">See All Popular <span class="icon-keyboard_arrow_right"></span></a>
          </p>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-6">
          <ul class="custom-pagination list-unstyled">
            <li><a href="#">1</a></li>
            <li class="active">2</li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="site-section subscribe bg-light">
    <div class="container">
      <form action="#" class="row align-items-center">
        <div class="col-md-5 mr-auto">
          <h2>Newsletter Subcribe</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis aspernatur ut at quae omnis pariatur obcaecati possimus nisi ea iste!</p>
        </div>
        <div class="col-md-6 ml-auto">
          <div class="d-flex">
            <input type="email" class="form-control" placeholder="Enter your email">
            <button type="submit" class="btn btn-secondary"><span class="icon-paper-plane"></span></button>
          </div>
        </div>
      </form>
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
              </script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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