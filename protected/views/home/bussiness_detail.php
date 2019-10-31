<!-- illustration cover -->
<section class="coverpages ill-business" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['business_hero_image']; ?>');">
    <!-- <div class="prelatife container"> -->
        <div class="inners_npage_ill">
            <h1><?php echo $this->setting['business_hero_title'] ?></h1>
        </div>
        <div class="clear"></div>
    <!-- </div> -->
</section>

<?php 
$data = Blockbuilding::model()->find('t.id = :ids', array(':ids'=> intval($_GET['id']) ));
?>
<section class="outers_inside back-white pg-about">

    <div class="prelatife container">
        <div class="outers_breadcrumbgrey">
            <div class="row">
                <div class="col-md-40">
                    <nav aria-label="breadcrumb">
                      <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
                        <li class="breadcrumb-item active" aria-current="page">OUR BUSINESS</li>
                      </ol>
                    </nav>
                    <div class="clear"></div>
                </div>
                <div class="col-md-20 text-right">
                    <div class="blocc_back">
                        <a href="#" onclick="window.history.back();" class="btn btn-link">BACK</a>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>

        <div class="insides">
            <div class="content-text t-about text-center">
                <div class="py-4"></div>
                <h5 class="def">Business Operation Field</h5>
                <h2><b><?php echo $data->nama ?></b></h2>
                <div class="py-2"></div>
                <h5>PRODUCTION PROFILE OF BANYU URIP PLANT - <?php echo strtoupper( strtolower($data->lokasi_blok) ); ?></h5>
                <div class="py-3"></div>
                <div class="full_banner_frame">
                    <img src="<?php echo Yii::app()->baseUrl.'/images/building/'. $data->image ?>" alt="" class="img img-fluid w-100">
                </div>
                <div class="py-4"></div>
                <div class="row text-left flown_small">
                    <div class="col-md-30">
                        <div class="pr-3">
                        <h4><b>Facts</b></h4>
                        <?php echo $data->facts_info; ?>
                        </div>
                    </div>
                    <div class="col-md-30">
                        <h4><b>Facilities</b></h4>
                        <?php echo $data->facilities_info; ?>
                    </div>
                </div>

                <div class="clear"></div>
            </div>

            <div class="clear"></div>
        </div>
        <div class="py-5"></div>
    </div>
    <div class="lines-grey2"></div>
    <div class="py-4"></div>
    <?php 
    $data_other = Blockbuilding::model()->find('t.id != :ids', array(':ids'=> intval($_GET['id']) ));
    ?>
    <div class="prelatife container">
        <div class="insides bottoms_bisnis_dt text-center">
            <p>View Other Business Operation Field</p>
            <p class="nb"><a href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $data_other->id)); ?>"><?php echo $data_other->nama ?></a></p>
            <div class="py-4 my-2"></div>
            <div class="clear"></div>
        </div>
    </div>
</section>
