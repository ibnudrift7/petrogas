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
              <li class="breadcrumb-item active" aria-current="page">NEWS</li>
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
        <div class="tops_news_fltr">
          <div class="row">
            <div class="col-md-35">
              <div class="pn_top">
                <p class="mb-0"><b>SORTING ARTICLES:</b>  <a class="active" href="#">LATEST</a> / <a href="#">OLDEST</a></p>
              </div>
            </div>
            <div class="col-md-25">
              <div class="pagins">
                <nav aria-label="...">
                  <ul class="pagination pagination-sm justify-content-end">
                    <li class="page-item firsts_d">PAGE</li>
                    <li class="page-item disabled">
                      <a class="page-link" href="#" tabindex="-1">1</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                  </ul>
                </nav>
                <div class="clear"></div>
              </div>
            </div>
          </div>
          <div class="py-2 my-2"></div>
          <div class="lines-grey"></div>
          <div class="clear"></div>
        </div>
        <div class="py-4 my-3 d-none d-sm-block"></div>
		  <div class="py-2 my-2 d-block d-sm-none"></div>


		  <div class="box-list-newsdata">
          <div class="row no-gutters">
            <?php for ($i=1; $i < 4; $i++) { ?>

            <div class="col-md-20">
              <div class="items">
                <div class="pict"><img src="<?php echo $this->assetBaseurl ?>Layer-10.jpg" alt="" class="img img-fluid"></div>
                <div class="info pt-3 px-3 text-center">
                  <div class="nx-titles">
                    <h6>Perkembangan status eksplorasi Kedung Keris bulan September 2019</h6>
                  </div>
                  <a href="#" class="btn btn-link p-0 nviews">VIEW ARTICLE</a>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
            <div class="col-md-20">
              <div class="items">
                <div class="pict"><img src="<?php echo $this->assetBaseurl ?>Layer-11.jpg" alt="" class="img img-fluid"></div>
                <div class="info pt-3 px-3 text-center">
                  <div class="nx-titles">
                    <h6>Perkembangan status eksplorasi Kedung Keris bulan September 2019</h6>
                  </div>
                  <a href="#" class="btn btn-link p-0 nviews">VIEW ARTICLE</a>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
            <div class="col-md-20">
              <div class="items">
                <div class="pict"><img src="<?php echo $this->assetBaseurl ?>Layer-12.jpg" alt="" class="img img-fluid"></div>
                <div class="info pt-3 px-3 text-center">
                  <div class="nx-titles">
                    <h6>Perkembangan status eksplorasi Kedung Keris bulan September 2019</h6>
                  </div>
                  <a href="#" class="btn btn-link p-0 nviews">VIEW ARTICLE</a>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
            
            <?php } ?>
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

