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
              <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/news')); ?>">NEWS</a></li>
              <li class="breadcrumb-item active" aria-current="page">title news</li>
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
                  <h1>Lorem Ipsum dolor sit amet,,</h1>
                  <div class="py-1"></div>
                  <span class="dates"><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d M Y"); ?></span>
                  <div class="clear"></div>
                </div>
                <div class="picture">
                  <img class="img img-fluid w-100" src="https://placehold.it/1280x690" alt="">
                </div>
                <div class="content pt-4 mt-3">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultricies semper nibh et fermentum. Etiam posuere orci quis enim interdum lacinia. Mauris leo felis, congue et ullamcorper eget, ultricies sit amet odio. Pellentesque congue tempor lacinia. Phasellus bibendum elit ut egestas eleifend. Vivamus sagittis lobortis lectus. In hac habitasse platea dictumst. In cursus rutrum pellentesque. Donec egestas nunc sed felis tempor luctus. Vivamus ut pretium turpis. <br><br>

                  Etiam molestie eget urna quis volutpat. Cras quam lectus, efficitur nec velit eget, pretium commodo lacus. Donec congue quam sed molestie suscipit. Nam facilisis dignissim eros, et pretium purus congue vitae. Fusce vitae ligula ante. Ut faucibus eros vitae lacus commodo, rhoncus vulputate nulla mollis. Proin et pulvinar odio, eget bibendum magna. Vestibulum non posuere odio, at efficitur velit. Morbi maximus sem nec eros euismod accumsan. Proin id viverra lacus, sit amet feugiat augue. <br><br>

                  In facilisis eu justo sed hendrerit. Praesent sit amet diam tellus. Donec luctus sapien interdum lacus dignissim vehicula. Cras eleifend purus at sagittis iaculis. Maecenas egestas aliquet blandit. Quisque lacinia nunc lacus, eget consequat ex lobortis quis. Morbi elementum in sem nec tincidunt. Cras et aliquam quam. Fusce auctor vitae mauris ut malesuada.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="py-5"></div>


          <div class="box-list-newsdata">
              <div class="row no-gutters">
                <?php for ($i=1; $i <= 3; $i++) { ?>
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

