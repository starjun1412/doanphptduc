<div class="header-top">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-12 col-lg-7 d-flex">
        <a href="index.php" class="site-logo text-danger">
          FIGURE BÉO BỰ
        </a>

        <a href="#" class="ml-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-danger"><span
            class="icon-menu h3"></span></a>

            <div class="col-12 col-lg-6 ml-auto d-flex">
        <div class="login_div">
          <form action="<?php echo BASE_URL . 'index.php'; ?>" method="post">
            <h2>Đăng Nhâp</h2>
            <div style="width: 60%; margin: 0px auto;">
              <?php include(ROOT_PATH . '/includes/errors.php') ?>
            </div>
            <input type="text" name="username" value="<?php echo $username; ?>" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <button class="btn" type="submit" name="login_btn">Đăng Nhập</button>
            <a class="btn" role="button" href="register.php">Đăng kí</a>

          </form>
        </div>
      </div>
   
      </div>


      <div class="col-12 col-lg-5 ml-auto d-flex">
        <div class="ml-md-auto top-social d-none d-lg-inline-block">
          <a href="#" class="d-inline-block p-3"><span class="icon-facebook"></span></a>
          <a href="#" class="d-inline-block p-3"><span class="icon-twitter"></span></a>
          <a href="#" class="d-inline-block p-3"><span class="icon-instagram"></span></a>
        </div>
        <form action="#" class="search-form d-inline-block">

          <div class="d-flex">
            <input type="email" class="form-control" placeholder="Search...">
            <button type="submit" class="btn btn-secondary"><span class="icon-search"></span></button>
          </div>
        </form>
      </div>
    
      

      </div>
    </div>
  </div>




  <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

    <div class="container">
      <div class="d-flex align-items-center">

        <div class="mr-auto">
          <nav class="site-navigation position-relative text-right" role="navigation">
            <ul class="site-menu main-menu js-clone-nav mr-auto d-none pl-0 d-lg-block">
              <li class="active">
                <a href="index.php" class="nav-link text-left">Trang Chủ</a>
              </li>
              <li>
                <a href="categories.html" class="nav-link text-left">Categories</a>
              </li>
              <li>
                <a href="categories.html" class="nav-link text-left">Politics</a>
              </li>
              <li>
                <a href="categories.html" class="nav-link text-left">Business</a>
              </li>
              <li>
                <a href="categories.html" class="nav-link text-left">Health</a>
              </li>
              <li><a href="categories.html" class="nav-link text-left">Design</a></li>
              <li>
                <a href="categories.html" class="nav-link text-left">Sport</a>
              </li>
              <li><a href="contact.html" class="nav-link text-left">Contact</a></li>
            </ul>
          </nav>

        </div>

      </div>
    </div>

  </div>