<?php 
$type_page = htmlentities($type_page);
// echo $type_page; exit;
?>
<section class="coverpages ill-about" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting[$type_page.'_hero_image']; ?>');">
    <div class="inners_npage_ill">
      <h1><?php echo $this->setting[$type_page.'_hero_title'] ?></h1>
    </div>
    <div class="clear"></div>
</section>

<section class="outers_inside back-white pg-about">

  <div class="prelatife container">
    <div class="outers_breadcrumbgrey">
      <div class="row">
        <div class="col-md-40 col-40">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'About Us') ?></a></li>
              <li class="breadcrumb-item active" aria-current="page"><?php echo $this->setting[$type_page.'_hero_title'] ?></li>
            </ol>
          </nav>
          <div class="clear"></div>
        </div>
        <div class="col-md-20 col-20 text-right">
          <div class="blocc_back">
            <a href="#" onclick="window.history.back();" class="btn btn-link">BACK</a>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>

    <div class="insides">
      <div class="t-about text-center">
        <div class="py-4 d-none d-sm-block"></div>
        <div class="mw1091 mx-auto">
          <div class="blocks_featured_top">
            <div class="row">
              <div class="col-md-25">
                <div class="covers">
                  <img src="https://placehold.it/300x200" alt="" class="img img-fluid">
                </div>
              </div>
              <div class="col-md-35">
                <div class="content-text">

                  <div class="clear"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="py-3"></div>
          <div class="blocks_lists_btmfeature">
            <ul class="list-inline m-0 mr-0">
              <?php for ($i=1; $i < 5; $i++) { ?>
              <li class="list-inline-item">
                <div class="boxs_img">
                  <div class="cover">
                    <img src="https://placehold.it/300x200" alt="" class="img img-fluid">
                  </div>
                  <div class="info">
                    <h3 class="name">YASMIN</h3>
                    <p>Business Editor</p>
                  </div>
                  <div class="clearfix"></div>
                </div>
              </li>
              <?php } ?>
            </ul>
          </div>


          </div>

          <?php // echo $this->setting[$type_page.'1_content'] ?>
          <div class="clearfix"></div>
        </div>
        <div class="py-4"></div>

        <div class="clear"></div>
      </div>

      <div class="clear"></div>
    </div>
    <div class="py-2 d-none d-sm-block"></div>
    <div class="py-4 d-none d-sm-block"></div>
  </div>

</section>

<script type="text/javascript">
  // hide menu default
  var n_width = $(window).width();
  if (n_width > 980){
    $('.view_default_menu').addClass('d-none');

    $('.view_about_menu').removeClass('d-none')
  }
</script>
<style type="text/css">
  section.header .header-bottom .navbar-expand-lg ul.navbar-nav li.nav-item a.nav-link{
    font-size: 13px;
    font-weight: 300;
    margin-right: 0px;
    padding: 0.5rem 0.4rem;
  }
</style>