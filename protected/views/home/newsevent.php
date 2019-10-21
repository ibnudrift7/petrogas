<?php 
$data = SourcesMod::newsData();
$numbs = isset( $_GET['id'] )? intval($_GET['id']) : 1;
$model = $data[$numbs];
// echo "<pre>";
// var_dump($model);
// exit;
?>
<div class="cover">
  <div class="text">
  	<!-- <h2 class="what">Investor Relations</h2> -->
  	<p>News & Events</p>
  </div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/newsfront')); ?>">NEWS & EVENTS</a></li>
		    <li class="breadcrumb-item"><a href="javascript:;"><?php echo ucwords( strtolower($model['title']) ) ?></a></li>
		  </ol>
		  <div class="back float-right">
		  	<a href=""><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
		  </div>
		</nav>
	</div>
</section>


<section class="news-sec-1">
    <div class="prelative container">
        <div class="row w-100 mx-auto">
            <div class="col-md-60">
                <div class="box-content">
                    <div class="tanggal">
                        <p><?php echo $model['date'] ?></p>
                    </div>
                    <div class="title">
                        <p><?php echo ucwords( strtolower($model['title']) ) ?></p>
                    </div>
                    <div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $model['image'] ?>" alt=""></div>
                    <div class="content">
                        <?php echo $model['desc'] ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pb-5 d-none d-sm-block"></div>
    <div class="pb-5"></div>
</section>

<section class="news-sec-2">
    <div class="prelative container">
        <div class="head-title">
            <p>Other News & Events</p>
        </div>
        <div class="hr-news"></div>
        <div class="row">
            <?php 
            $data_financial = SourcesMod::newsData();
            $data2 = array_chunk($data_financial, 3);
            ?>
            <?php foreach ($data2[0] as $key => $value): ?>
                <?php 
                    if( $key == $_GET['id']) {
                        continue;
                    }
                ?>
            <div class="col-md-20">
                <div class="box-content">
                     <a href="<?php echo CHtml::normalizeUrl(array('/home/newsEvent', 'id'=> $value['id'], 'lang'=>Yii::app()->language)); ?>">
                    <img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['image'] ?>" alt="">
                    </a>
                    <div class="tanggal">
                        <p><?php echo $value['tanggal'] ?></p>
                    </div>
                    <div class="title-content">
                        <a href="<?php echo CHtml::normalizeUrl(array('/home/newsEvent', 'id'=> $value['id'], 'lang'=>Yii::app()->language)); ?>">
                            <p><?php echo ucwords( strtolower($value['title']) ) ?></p>
                        </a>
                    </div>
                </div>
            </div>
            <?php endforeach ?>
        </div>
    </div>
    <div class="pb-5 d-none d-sm-block"></div>
    <div class="pb-5"></div>
</section>