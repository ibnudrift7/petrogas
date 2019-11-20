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
              <li class="breadcrumb-item active" aria-current="page"><?php echo $this->setting['business2_hero_title'] ?></li>
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


<?php
/*
<div class="cover career" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['career_hero_image']; ?>');">
  <div class="text"><h2><?php echo $this->setting['career_hero_title'] ?></h2></div>
</div>

<section class="breadcrumb-insides">
  <div class="prelative container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">Home</a></li>
        <li class="breadcrumb-item"><a href="#"><?php echo $this->setting['career_hero_title'] ?></a></li>
        <!-- <li class="breadcrumb-item"><a href="#">FINANCIAL HIGHLIGHTS</a></li> -->
      </ol>
      <div class="back float-right">
        <a href=""><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
      </div>
    </nav>
  </div>
</section>

<section class="career-sec-1">
  <div class="prelative container">
    <div class="row w-100">
      <div class="col-md-35">
        <div class="content">
          <?php echo $this->setting['career_content'] ?>
        </div>
      </div>
      <div class="col-md-25">
        
      </div>
    </div>
  </div>
</section>

<section class="career-sec-2">
  <div class="prelative container">
    <?php 
    $criteria = new CDbCriteria;
    $criteria->condition = 'actives = 1';
    $m_karir = Career::model()->findAll($criteria);
    ?>
    <?php if ( count($m_karir) > 0 ): ?>
    <div class="title-head">
      <div class="avail">
        <p><?php echo Tt::t('front', 'AVAILABLE POSITIONS'); ?></p>
      </div>
    </div>
    <?php foreach ($m_karir as $key => $value): ?>
    <div class="hr-career"></div>
    <div class="title-pos">
      <p><?php echo $value->title ?></p>
    </div>
    <div class="row w-100 pb-5">
      <div class="col-md-20">
        <div class="desc pr-3">
          <?php echo $value->intro_desc ?>
        </div>
        <div class="work">
          <p>Work Locations:</p>
          <b><?php echo $value->lokasi_kerja ?></b>
        </div>
        <div class="work">
          <p>Email to apply for this job:</p>
          <b><?php echo $this->setting['career_email'] ?></b>
        </div>
      </div>
      <div class="col-md-20">
        <div class="heading-col">
          <p>job description</p>
        </div>
        <div class="req">
          <?php echo $value->deskripsi ?>
        </div>
      </div>
      <div class="col-md-20">
        <div class="heading-col">
          <p>qualifications</p>
        </div>
        <div class="req">
          <?php echo $value->kualifikasi ?>
        </div>
      </div>
    </div>
    <?php endforeach ?>
    <?php else: ?>
    <div class="title-head">
      <div class="avail">
        <p><?php echo Tt::t('front', 'There are no opening positions at the moment.'); ?></p>
      </div>
    </div>
    <?php endif ?>

    <div class="clear"></div>

  </div>
  <div class="pb-5"></div>
</section>
*/ ?>
