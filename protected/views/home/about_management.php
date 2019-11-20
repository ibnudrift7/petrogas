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
      <div class="t-about">
        <div class="py-4 d-none d-sm-block"></div>

        <!-- start inner -->
        <div class="blocks_managements">
          <div class="tops">
            <h3><?php echo Tt::t('front', 'Board of Commissary') ?></h3>
          </div>
          <div class="py-3"></div>
          <?php 
          $criteria = new CDbCriteria;
          $criteria->addCondition('t.actives = "1"');
          $criteria->addCondition('t.type_board = "1"');
          $criteria->order = 't.sorts ASC';
          $data_commis = Managements::model()->findAll($criteria);
          ?>
          <div class="inners_nlist">
            <div class="row">

              <?php foreach ($data_commis as $key => $value): ?>
              <div class="col-md-30">
                <div class="items">
                  <div class="picture"><img src="<?php echo Yii::app()->baseUrl.'/images/management/'.$value->image ?>" alt="" class="img img-fluid"></div>
                  <div class="info">
                    <h4 class="names"><?php echo $value->name ?></h4>

                    <?php if (Yii::app()->language == 'en'): ?>
                    <p class="positions"><?php echo $value->position_en ?></p>
                    <p class="ages">Age. <?php echo $value->age ?></p>
                    <?php echo $value->content_en ?>
                    <?php else: ?>
                    <p class="positions"><?php echo $value->position_id ?></p>
                    <p class="ages">Umur. <?php echo $value->age ?></p>
                    <?php echo $value->content_id ?>
                    <?php endif ?>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
              <?php endforeach; ?>

            </div>
          </div>

          <div class="py-4"></div>
          <div class="py-2"></div>

          <div class="tops">
            <h3><?php echo Tt::t('front', 'Board of Director') ?></h3>
          </div>
          <div class="py-3"></div>
          <?php 
          $criteria = new CDbCriteria;
          $criteria->addCondition('t.actives = "1"');
          $criteria->addCondition('t.type_board = "2"');
          $criteria->order = 't.sorts ASC';
          $data_commis2 = Managements::model()->findAll($criteria);
          ?>
          <div class="inners_nlist">
            <div class="row">

              <?php foreach ($data_commis2 as $key => $value): ?>
              <div class="col-md-30">
                <div class="items">
                  <div class="picture"><img src="<?php echo Yii::app()->baseUrl.'/images/management/'.$value->image ?>" alt="" class="img img-fluid"></div>
                  <div class="info">
                    <h4 class="names"><?php echo $value->name ?></h4>

                    <?php if (Yii::app()->language == 'en'): ?>
                    <p class="positions"><?php echo $value->position_en ?></p>
                    <p class="ages">Age. <?php echo $value->age ?></p>
                    <?php echo $value->content_en ?>
                    <?php else: ?>
                    <p class="positions"><?php echo $value->position_id ?></p>
                    <p class="ages">Umur. <?php echo $value->age ?></p>
                    <?php echo $value->content_id ?>
                    <?php endif ?>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
              <?php endforeach; ?>

            </div>
          </div>


          <div class="clear"></div>
        </div>
        <!-- end inner -->

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