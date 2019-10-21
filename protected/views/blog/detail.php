<div class="cover">
  <div class="text">
    <p><?php echo Tt::t('front', 'News & Events'); ?></p>
  </div>
</div>

<section class="breadcrumb-insides">
  <div class="prelative container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">Home</a></li>
        <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=>Yii::app()->language)); ?>"><?php echo strtoupper( Tt::t('front', 'News & Events')); ?></a></li>
        <li class="breadcrumb-item"><a href="javascript:;"><?php echo ucwords( strtolower($data->description->title) ) ?></a></li>
      </ol>
      <div class="back float-right">
        <a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
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
                        <p><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d F Y", strtotime($data->date_input));  ?></p>
                    </div>
                    <div class="title">
                        <p><?php echo ucwords( strtolower($data->description->title) ) ?></p>
                    </div>
                    <div class="image"><img class="w-100" src="<?php echo Yii::app()->baseUrl.'/images/blog/'; ?><?php echo $data->image ?>" alt="<?php echo strtolower($data->description->title) ?>"></div>
                    <div class="content">
                        <?php echo $data->description->content ?>
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
            <?php foreach ($dataBlogs->getData() as $key => $value): ?>
            <div class="col-md-20">
                <div class="box-content">
                     <a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
                    <img class="w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(403,268, '/images/blog/'.$value->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
                    </a>
                    <div class="tanggal">
                        <p><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d F Y", strtotime($value->date_input)); ?></p>
                    </div>
                    <div class="title-content">
                        <a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
                            <p><?php echo ucwords( strtolower($value->description->title) ) ?></p>
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


<?php /*
<section class="outers_page_static back_cream mh500 back_grey_pattern">
  <div class="insides sub_page_static about_us">
    <div class="prelatife container">
      <div class="clear height-50"></div><div class="height-10"></div>

      <div class="content-text insides_static">
        <h1 class="title_page">BLOGS</h1>
        <div class="clear"></div>
        <h3 class="tagline"><?php echo $dataBlog->description->title ?></h3>
        <div class="clear"></div>
        <div class="row details_cont_articles">
          <div class="col-md-9 text-left">
            <div class="left_cont">
              <div class="mw906">

                <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(980,1000, '/images/blog/'.$dataBlog->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">

                <?php echo $dataBlog->description->content ?>

                <div class="clear height-10"></div>
                <div class="shares-text text-left p_shares_article">
                    <span class="inline-t">SHARE</span>&nbsp; / &nbsp;<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=#">FACEBOOK</a>&nbsp; /
                    &nbsp;<a target="_blank" href="https://plus.google.com/share?url=#">GOOGLE PLUS</a>&nbsp; /
                    &nbsp;<a target="_blank" href="https://twitter.com/home?status=#">TWITTER</a>
                </div>

                <div class="clear"></div>
              </div>
            </div>

          </div>
          <div class="col-md-3 text-left">
            <div class="right_cont">
              <div class="padding-left-25">
                  <span class="sub_page_title">Other Blogs</span>
              </div>
              <div class="clear"></div>
              <div class="right_sub_menu">
                <ul class="list-unstyled">
                    <?php foreach ($dataBlogs->getData() as $key => $value): ?>
                        
                  <li><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><?php echo $value->description->title ?></a></li>
                    <?php endforeach ?>
                </ul>
                <div class="clear"></div>
              </div>

              <div class="clear"></div>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        

        <div class="clear"></div>
      </div>
      
      <div class="clear height-20"></div>
      <div class="clear height-50"></div>
    </div>
    <div class="clear"></div>
  </div>
</section>
*/ ?>