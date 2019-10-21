<div class="cover">
  <div class="text">
    <!-- <h2 class="what">Investor Relations</h2> -->
    <p><?php echo Tt::t('front', 'News & Events'); ?></p>
  </div>
</div>

<section class="breadcrumb-insides">
  <div class="prelative container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>"><?php echo Tt::t('front', 'Newsroom'); ?></a></li>
      </ol>
      <div class="back float-right">
        <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
      </div>
    </nav>
  </div>
</section>

<section class="newssss-sec-1">
  <div class="prelative container">
    <div class="head-title">
      <div class="title">
        <p><?php echo Tt::t('front', 'News & Events'); ?></p>
      </div>
      <div class="cont">
        <p><?php echo Tt::t('front', 'Keeping Up With Corpus Group'); ?></p>
      </div>
        </div>
        <div class="pt-3"></div>
        <div class="hr-verti"></div>
        <div class="row inblock_topfilter">
            <div class="col-md-15"></div>
            <div class="col-md-30">
                <div class="katern">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=>Yii::app()->language)); ?>">ALL</a></li>
                        <li class="separator"></li>
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> 1, 'lang'=>Yii::app()->language)); ?>">NEWS</a></li>
                        <li class="separator"></li>
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> 2, 'lang'=>Yii::app()->language)); ?>">EVENTS</a></li>
                    </ul>
                </div>
                <div class="pb-1"></div>
                <div class="clear"></div>
            </div>
            <div class="col-md-15">
                <div class="paginat text-right">
                <nav>
                    <?php $this->widget('CLinkPager', array(
                      'pages' => $dataBlog->getPagination(),
                      'header' => '',
                      'htmlOptions' => array('class' => 'pagination m-0'),
                    )) ?>
                    </nav>
                </div>
            </div>
        </div>

        <div class="hr-verti"></div>
        <div class="row">
      <?php foreach ($dataBlog->getData() as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content-inner">
                    <div class="image">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
                            <img class="w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(403,268, '/images/blog/'.$value->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
                        </a>
                    </div>
                    <div class="tanggal">
                        <p class="d-inline-block align-middle"><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d F Y", strtotime($value->date_input)); ?></p>
                        <div class="hr-tanggal d-inline-block align-middle mx-2"></div>
                        <p class="d-inline-block align-middle"><?php echo ($value->topik_id == '1')? 'NEWS':'EVENTS' ?></p>
                    </div>
                    <div class="content">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
                            <p><?php echo $value->description->title ?></p>
                        </a>
                    </div>
                    <div class="read-more">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">Read More</a>
                    </div>
                </div>
            </div>
      <?php endforeach ?>
        </div>
  </div>
    <div class="pb-1 d-none d-sm-block"></div>
    <!-- <div class="pt-3"></div> -->
    <div class="prelative container2">
        <div class="hr-verti"></div>
        <div class="row inblock_topfilter">
            <div class="col-md-15"></div>
            <div class="col-md-30">
                <div class="katern">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=>Yii::app()->language)); ?>">ALL</a></li>
                        <li class="separator"></li>
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> 1, 'lang'=>Yii::app()->language)); ?>">NEWS</a></li>
                        <li class="separator"></li>
                        <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> 2, 'lang'=>Yii::app()->language)); ?>">EVENTS</a></li>
                    </ul>
                </div>
                <div class="pb-1"></div>
                <div class="clear"></div>
            </div>
            <div class="col-md-15">
                <div class="paginat text-right">
                <nav>
                    <!-- <ul class="pagination m-0">
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul> -->
                    <?php $this->widget('CLinkPager', array(
                      'pages' => $dataBlog->getPagination(),
                      'header' => '',
                      'htmlOptions' => array('class' => 'pagination m-0'),
                    )) ?>
                    </nav>
                </div>
            </div>
        </div>
        <div class="hr-verti"></div>
    </div>
  <div class="pb-5"></div>
</section>

