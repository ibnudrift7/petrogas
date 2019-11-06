<!-- illustration cover -->
<section class="coverpages ill-about" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['contact_hero_image']; ?>');">
  <!-- <div class="prelatife container"> -->
    <div class="inners_npage_ill">
      <h1><?php echo $this->setting['contact_hero_title'] ?></h1>
    </div>
    <div class="clear"></div>
  <!-- </div> -->
</section>

<section class="outers_inside back-white pg-contact">

  <div class="prelatife container">
    <div class="outers_breadcrumbgrey">
      <div class="row">
        <div class="col-md-40 col-40">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
              <li class="breadcrumb-item active" aria-current="page"><?php echo $this->setting['contact_hero_title'] ?></li>
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

    <div class="insides outers_blogc_news">
      <div class="content-text t-about">
        <div class="py-4 d-none d-sm-block"></div>

        <div class="row">
          <div class="col-md-30">
            <h3><b><?php echo $this->setting['contact_top_title'] ?></b></h3>
            <div class="py-2 d-none d-sm-block"></div>
            <?php echo $this->setting['contact_content'] ?>
            
            <?php echo $this->setting['contact_bottom_content'] ?>
          </div>
          <div class="col-md-30">
            <?php if (Yii::app()->language == 'en'): ?>
            <h3><b>For any inquiries and information request, please fill out the form below</b></h3>
            <?php else: ?>
            <h3><b>Untuk pertanyaan dan permintaan informasi apa pun, silakan isi formulir di bawah ini</b></h3>
            <?php endif ?>

            <div class="row boxn_form">
              <div class="col-md-10 col-10">
                <img src="<?php echo $this->assetBaseurl ?>backsn_tn_form.png" alt="" class="img img-fluid">
              </div>
              <div class="col-md-50 col-50">
                <form method="post" action="#" onsubmit="alert('underconstruction');">
                  <div class="form-group">
                    <label for="exn1"><?php echo Tt::t('front', 'NAME') ?></label>
                    <div class="pl-5 ml-4">
                    <input type="text" class="form-control" id="exn1" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="exn12"><?php echo Tt::t('front', 'COMPANY') ?></label>
                    <div class="pl-5 ml-4">
                    <input type="text" class="form-control" id="exn1" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="exn13"><?php echo Tt::t('front', 'PHONE') ?></label>
                    <div class="pl-5 ml-4">
                    <input type="text" class="form-control" id="exn1" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="exn14"><?php echo Tt::t('front', 'EMAIL') ?></label>
                    <div class="pl-5 ml-4">
                    <input type="text" class="form-control" id="exn1" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="exn15"><?php echo Tt::t('front', 'MESSAGE') ?></label>
                    <div class="pl-5 ml-4">
                    <input type="text" class="form-control" id="exn1" placeholder="">
                    </div>
                  </div>
                  <div class="text-right">
                  <button type="submit" class="btn btn-primary">SUBMIT</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

        
        <div class="clear"></div>
      </div>

      <div class="clear"></div>
    </div>
    <div class="py-2"></div>
    <div class="py-5 d-none d-sm-block"></div>
	  <div class="py-3 d-block d-sm-none"></div>
  </div>

</section>

