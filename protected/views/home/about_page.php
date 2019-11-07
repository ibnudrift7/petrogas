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
      <div class="content-text t-about text-center">
        <div class="py-4 d-none d-sm-block"></div>
        <div class="mw1091 mx-auto">
          <?php echo $this->setting[$type_page.'1_content'] ?>
          
          
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