<?php 
// $type_page = htmlentities($type_page);
$type_page = 'profile';
?>
<section class="coverpages ill-about" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['career_hero_image']; ?>');">
    <div class="inners_npage_ill">
      <h1><?php echo 'Annual Report'; ?></h1>
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
              <li class="breadcrumb-item active" aria-current="page"><?php echo 'Annual Report'; ?></li>
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
        <!-- <div class="mw1091 mx-auto">                   
          <div class="clearfix"></div>
        </div> -->
        <div class="lists_pdf_brochures">
          <div class="row">
            <?php 
            $criteria = new CDbCriteria;
            // $criteria->with = array('description');
            // $criteria->addCondition('t.active = "1"');
            $criteria->addCondition('t.category_id = "0"');
            $criteria->order = 't.sort DESC';

            $datas_pdf = Pdf::model()->findAll($criteria);
            ?>
            <?php foreach ($datas_pdf as $key => $value): ?>
            <div class="col-md-12">
              <div class="box_items">
                <div class="cover_pdf">
                  <img class="img img-fluid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(300,400, '/images/pdf/'.$value->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
                </div>
                <div class="info text-center py-3 pt-4">
                  <?php if (Yii::app()->language == 'en'): ?>
                  <h5><?php echo $value->nama_en ?></h5>  
                  <?php else: ?>
                  <h5><?php echo $value->nama_id ?></h5>
                  <?php endif ?>
                  <div class="py-2"></div>
                  <a href="<?php echo Yii::app()->baseUrl.'/images/pdf/'. $value->file ?>" target="_blank" class="btn btn-primary">Download</a>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
            <?php endforeach ?>

          </div>
        </div>

        <div class="clear"></div>
      </div>

      <div class="clear"></div>
    </div>
    <div class="py-2 d-none d-sm-block"></div>
    <div class="py-4 d-none d-sm-block"></div>
  </div>

</section>

