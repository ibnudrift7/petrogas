<!-- illustration cover -->
<section class="coverpages ill-news">
  <!-- <div class="prelatife container"> -->
    <div class="inners_npage_ill">
      <h1>News</h1>
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
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">NEWS</a></li>
              <li class="breadcrumb-item active" aria-current="page"><?php echo $data->description->title; ?></li>
            </ol>
          </nav>
          <div class="clear"></div>
        </div>
        <div class="col-md-20 text-right col-20">
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
            <div class="col-md-60">
              <div class="box-content blogns_detail">
                <div class="text-left tops_detailblog pb-4">
                  <h1><?php echo $data->description->title; ?></h1>
                  <div class="py-1"></div>
                  <span class="dates"><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d M Y", strtotime($data->date_input)); ?></span>
                  <div class="clear"></div>
                </div>
                <div class="picture">
                  <img class="img img-fluid w-100" src="<?php echo Yii::app()->baseUrl.'/images/blog/'. $data->image ?>" alt="<?php echo $data->description->title; ?>">
                </div>
                <div class="content pt-4 mt-3">
                  
                  <?php echo $data->description->content; ?>

                  <div class="clear clearfix"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="py-5"></div>


          <div class="box-list-newsdata">
              <div class="row no-gutters">
               <?php foreach ($dataBlogs->getData() as $key => $value): ?>
                <div class="col-md-20">
                  <div class="items">
                    <div class="pict">
                      <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(432,260, '/images/blog/'.$value->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="<?php echo $value->description->title ?>" class="img img-fluid"></a>
                    </div>
                    <div class="info pt-3 px-3 text-center">
                      <div class="nx-titles">
                        <h6><?php echo $value->description->title ?></h6>
                      </div>
                      <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>" class="btn btn-link p-0 nviews">VIEW ARTICLE</a>
                      <div class="clear"></div>
                    </div>
                  </div>
                </div>
                <?php endforeach; ?>

              </div>
              <div class="clear"></div>
            </div>
        
        <div class="clear"></div>
      </div>

      <div class="clear"></div>
    </div>
    <div class="py-2"></div>
    <div class="py-4"></div>
  </div>

</section>

