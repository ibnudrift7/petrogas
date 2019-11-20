<!-- illustration cover -->
<section class="coverpages ill-about" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['business2_hero_image']; ?>');">
  <!-- <div class="prelatife container"> -->
    <div class="inners_npage_ill">
      <h1><?php echo $this->setting['business2_hero_title'] ?></h1>
    </div>
    <div class="clear"></div>
  <!-- </div> -->
</section>

<section class="outers_inside back-white pg-about">

  <div class="prelatife container">
    <div class="outers_breadcrumbgrey">
      <div class="row">
        <div class="col-md-40 col-40">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
              <li class="breadcrumb-item"><a href="#"><?php echo $this->setting['business2_hero_title'] ?></a></li>
              <li class="breadcrumb-item active" aria-current="page">Block Cepu</li>
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
          
          <?php echo $this->setting['business2_cepu_content'] ?>

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
    $('.view_default_menu, .view_about_menu').addClass('d-none');

    $('.view_business_menu').removeClass('d-none')
  }
</script>
