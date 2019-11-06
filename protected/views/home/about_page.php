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
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
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

