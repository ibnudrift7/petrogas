<!-- illustration cover -->
<section class="coverpages ill-business" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['business_hero_image']; ?>');">
    <!-- <div class="prelatife container"> -->
        <div class="inners_npage_ill">
            <h1><?php echo $this->setting['business_hero_title'] ?></h1>
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
                        <li class="breadcrumb-item active" aria-current="page">OUR BUSINESS</li>
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
               <!--  <h2><b>We explore to mine oil and gas in Indonesia Participating interest of 2,2423% at Cepu Block.</b><br>With a country to serve, we operate with passion to our nation.</h2>
                <p>To achieve these aims and objectives, Petrogas Jatim Utama Cendana is conducting business in the fields of exploration, evaluation, preparation, feasibility studies, exploitation, production, development, mining, processing, storage and transportation of oil and gas for upstream oil and gas activities in the Cepu Block.</p>
                <p> All of Petrogas Jatim Utama Cendana’s activities are in accordance with applicable laws and regulations and conducting oil and gas mining business, both for own business or undertaken on the basis of cooperation with third parties, for upstream oil and gas activities in the working area of the Cepu Block. Petrogas Jatim Utama Cendana have the rights to market the production outcome in both domestically and abroad.</p> -->
                <?php echo $this->setting['business1_content'] ?>

                </div>
                <div class="py-4 d-none d-sm-block"></div>
				<div class="py-2 d-block d-sm-none"></div>

                <section class="outers_business3n">
                    <div class="content-text">
                    <h4>Our Business Operation Field</h4>
                    <p class="n_small">CLICK ON EACH OPERATION FIELD TO EXPLORE MORE</p>
                    </div>
                    <div class="py-2  d-none d-sm-block"></div>
                    <?php 
                    $criteria = new CDbCriteria;
                    $criteria->order = 't.id ASC';
                    $data_block = Blockbuilding::model()->findAll($criteria);
                    ?>
                    <div class="row no-gutters text-left">
                        <?php foreach ($data_block as $key => $value): ?>
                        <div class="col-md-30">
                            <div class="image-atass">
                                <a href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $value->id)); ?>"><img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/building/'. $value->image ?>" alt=""></a>
                                <div class="insidesss">
                                    <h5><?php echo $value->nama ?></h5>
                                    <p><?php echo ucwords(strtolower($value->lokasi_blok)); ?></p>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; ?>

                    </div>
                    <div class="clearfix"></div>
                </section>
                

                <div class="clear"></div>
            </div>

            <div class="clear"></div>
        </div>
        <div class="py-3"></div>
        <div class="py-5 d-none d-sm-block"></div>
    </div>

</section>

<section class="bussines-sec-3">
    <div class="prelatife container text-center">
        <div class="box-content content-text mw1075 mx-auto d-block">
            <?php echo $this->setting['business3_holder_btm_content'] ?>
        </div>
        <div class="py-3  d-none d-sm-block"></div>

        <div class="row blocks_sm_list">
            <?php for ($i=1; $i < 4; $i++) { ?>
            <div class="col-md-20">
                <div class="box-content-bottom">
                    <h5><?php echo $this->setting['business_sec2_title_'. $i] ?></h5>
                    <?php echo $this->setting['business_sec2_info_'. $i] ?>
                </div>
            </div>
            <?php } ?>

        </div>
        <div class="py-4 my-3 d-none d-sm-block"></div>
        <div class="image d-block mx-auto">
            <img src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['business3_bottom_banner'] ?>" alt="" class="img img-fluid d-block mx-auto">
        </div>
        <div class="py-4 my-3"></div>
    </div>
</section>
