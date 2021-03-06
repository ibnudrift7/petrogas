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


        <div class="mw1091 mx-auto nblocks_ourteam">
          <div class="blocks_featured_top">
            <div class="row no-gutters">
              <div class="col-md-25">
                <div class="covers">
                  <img src="https://placehold.it/1024x768" alt="" class="img img-fluid w-100">
                </div>
              </div>
              <div class="col-md-35 my-auto">
                <div class="content-text text-left p-5 pt-0 pb-0">
                  <h3>ISSAC MURRAY</h3>
                  <span>Managing Editor</span>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam tempora quos, id hic similique impedit dolorem at sint quod tenetur ad beatae amet, commodi recusandae eum et soluta reiciendis illum.</p>
                  <div class="small_email">
                    <p>+ <a href="mailto:issac@testmail.com">issac@testmail.com</a></p>
                  </div>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="py-3"></div>
          <div class="lines-gep"></div>
          <div class="py-3"></div>
          <div class="blocks_lists_btmfeature">
            
            <div class="row no-gutters">
              <?php for ($i=1; $i < 5; $i++) { ?>
              <div class="col">
                <div class="boxs_img">
                  <div class="cover">
                    <img src="https://placehold.it/1024x768" alt="" class="img img-fluid">
                  </div>
                  <div class="info">
                    <h3 class="name">YASMIN</h3>
                    <p>Business Editor</p>
                    <p class="d-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum accusantium, et suscipit modi rerum porro tempora earum veritatis est deleniti nam perferendis saepe, ipsa reiciendis alias, optio nesciunt doloribus sint?</p>
                  </div>
                  <div class="clearfix"></div>
                </div>
              </div>
              <?php } ?>
            </div>

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