<section class="cover-about blue-blocksall">
  <div class="container cont-fcs produk">
    <div class="cover-image">
        <!-- <img class="w-100 d-block" src="<?php echo $this->assetBaseurl; ?>ill-process.jpg" alt=""> -->
        <div class="centered">
          <p>
            <?php echo strtoupper( Tt::t('front', 'PROCESS QUALITY') ); ?>
          </p>
        </div>
    </div>
    <div class="row pt-3">
      <div class="col-40">
        <div class="breadcrumb">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">HOME</a></li>
              <li class="breadcrumb-item"><a href="#"><?php echo strtoupper( Tt::t('front', 'PROCESS QUALITY') ); ?></a></li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="col-20">
        <div class="back text-right">
          <a href="#"><?php echo strtoupper( Tt::t('front', 'BACK') ); ?></a>
        </div>
      </div>
    </div>
    <hr class="cover">
  </div>

  <div class="prelative container">
    <div class="content-text text-center pt-5">
      <?php if (Yii::app()->language == 'en'): ?>
      <span><b>achieving the highest STANDARD</b></span>
      <h3>A process towards quality perfections</h3>
      <h5>Strict process and quality control at Dwi Selo Girimas is critical for us to consistently achieve the highest standards across our Calcium Carbonate products. QC is applied at every stage within our processing operations throughout raw calcium material sourcing and selection, calcium screening and testing on the laboratory, product packing and delivery.</h5>
      <p>Our Quality Control system is integrated and handed over per division carefully so that we can offer full integrity and traceability for all our calcium carbonate products. This quality assurance model that we’ve developed, will inspects and verifies all our products, making sure that all our processes are free from defects and flaws, attaining the highest level of calcium carbonate you demand.</p>
      <?php else: ?>
      <span><b>mencapai STANDAR tertinggi</b></span>
      <h3>Suatu proses menuju kesempurnaan kualitas</h3>
      <h5>Proses dan kontrol kualitas yang ketat di Dwi Selo Girimas sangat penting bagi kami untuk secara konsisten mencapai standar tertinggi di seluruh produk Kalsium Karbonat kami. QC diterapkan pada setiap tahap dalam operasi pemrosesan kami di seluruh sumber dan pemilihan bahan baku kalsium, penyaringan dan pengujian kalsium di laboratorium, pengemasan dan pengiriman produk.</h5>
      <p>Sistem Kontrol Kualitas kami terintegrasi dan diserahkan per divisi dengan hati-hati sehingga kami dapat menawarkan integritas dan keterlacakan penuh untuk semua produk kalsium karbonat kami. Model jaminan kualitas yang kami kembangkan ini, akan memeriksa dan memverifikasi semua produk kami, memastikan bahwa semua proses kami bebas dari cacat dan cacat, mencapai tingkat kalsium karbonat tertinggi yang Anda minta.</p>
      <?php endif; ?>
      <div class="clear clearfix"></div>
    </div>
  </div>

  <div class="clear clearfix"></div>
</section>


<section class="middles_customprocess back-white">
  <div class="py-5"></div>
  <div class="text-center tops_titles">
    <?php if (Yii::app()->language == 'en'): ?>
    <span>our process</span>
    <?php else: ?>
    <span>proses kami</span>
    <?php endif; ?>
  </div>
  <div class="py-3"></div>
  <div class="py-1"></div>

  <div class="inners_backs py-5">
    <div class="prelatife container containers_inside py-4">

      <div id="carouselExa_gal" class="carousel slide" data-ride="carousel">
        <div class="row no-gutters content-text back-white">
          <div class="col-md-30">
            <div class="row no-gutters">
              <div class="col-md-30">
                <div class="lefts_con">
                  <div class="py-5"></div>
                  <ul class="list-unstyled listsn_car_process">
                    <li data-target="#carouselExa_gal" data-slide-to="0" class="data0 active"><a href="#">material sourcing</a></li>
                    <li data-target="#carouselExa_gal" data-slide-to="1" class="data1"><a href="#">oven & crush</a></li>
                    <li data-target="#carouselExa_gal" data-slide-to="2" class="data2"><a href="#">final screening</a></li>
                    <li data-target="#carouselExa_gal" data-slide-to="3" class="data3"><a href="#">dispatch</a></li>
                  </ul>
                  <div class="clear clearfix"></div>
                </div>
              </div>
              <div class="col-md-30">
                <div class="pictures">
                  <div class="carousel-inner">
                    <div class="carousel-item active" data-id="0">
                      <img class="d-block img img-fluid w-100" src="<?php echo $this->assetBaseurl ?>process-material.jpg" alt="">
                    </div>
                    <div class="carousel-item" data-id="1">
                      <img class="d-block img img-fluid w-100" src="<?php echo $this->assetBaseurl ?>process-crush.jpg" alt="">
                    </div>
                    <div class="carousel-item" data-id="2">
                      <img class="d-block img img-fluid w-100" src="<?php echo $this->assetBaseurl ?>process-final-screen.jpg" alt="">
                    </div>
                    <div class="carousel-item" data-id="3">
                      <img class="d-block img img-fluid w-100" src="<?php echo $this->assetBaseurl ?>process-dispatch.jpg" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-30">
            <div class="py-5"></div>
            <div class="description pl-5">
              <div class="car-item d-block data0">
                <h4>Material Sourcing</h4>
                <p>Dwi Selo Giri Mas with it's decades of experience, has all the knowledge of where to find the best resource materials for calcium carbonate. For the best outcome, we can't sacrifice quality, therefore we will only source from the best.</p>
              </div>
              <div class="car-item d-none data1">
                <h4>Oven & Crush</h4>
                <p>In the making, we put the screened calcium materials for oven and crush process. All process are machine-automated in order to avoid human errors and all the automation system are being monitored all the time.</p>
              </div>
              <div class="car-item d-none data2">
                <h4>Final Screening</h4>
                <p>Before product packing, we always perform batch-checking to confirm and ensure every batch result is perfect.</p>
              </div>
              <div class="car-item d-none data3">
                <h4>Dispatch</h4>
                <p>Our quality process continues until the goods are received by the customer, therefore we are very concerned about the loading process in each of our fleets.</p>
              </div>

            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>  
  <div class="py-5"></div>
</section>
<script type="text/javascript">
  $(function(){
    var s_leftindicat = $('.inners_backs .lefts_con ul li');
    
    $(s_leftindicat).on('mouseenter', function(){

      if ( $('.inners_backs .lefts_con ul li').hasClass('active') ) {
        $('.inners_backs .lefts_con ul li').removeClass('active');
      }
      $(this).addClass('active');

      var desc_act = $(this).attr('data-slide-to');
      
      $('#carouselExa_gal').carousel(desc_act);

      $('.inners_backs .description .car-item').removeClass('d-block').addClass('d-none');
      $('.inners_backs .description .car-item.data'+desc_act).removeClass('d-none').addClass('d-block');
    });

    $('#carouselExa_gal').on('slid.bs.carousel', function () {
        var currentIndex = $('div.carousel-inner .active').attr('data-id');
        console.log(currentIndex);
        
        var slef_indicat = $('ul.listsn_car_process li');
        if ( $('ul.listsn_car_process li').hasClass('active') ) {
          $('ul.listsn_car_process li').removeClass('active');
        }
        $('ul.listsn_car_process li.data'+currentIndex).addClass('active');
        // console.log(slef_indicat);
        $('.inners_backs .description .car-item').removeClass('d-block').addClass('d-none');
        $('.inners_backs .description .car-item.data'+currentIndex).removeClass('d-none').addClass('d-block');
        
    });

  });
</script>

<section class="block-bottom-process">
  <div class="py-4"></div>
  <div class="text-center tops_titles pt-2">
    <span>our quality</span>
  </div>
  <div class="py-3 hide-pc"></div>
  <div class="py-2"></div>

  <div class="prelative container containers_inside py-4">
    <div class="row lists_btm_process">
      <div class="col-md-30 slines">
        <div class="items d-block mx-auto">
          <?php if (Yii::app()->language == 'en'): ?>
          <h4 class="titles">Why is quality so important for a Calcium Carbonate </h4>
          <div class="pictures py-3"><img src="<?php echo $this->assetBaseurl ?>prog_ban_proc_ss1.jpg" alt="" class="img img-fluid"></div>
          <div class="infos py-1">
            <p>As we know that calcium carbonate plays an important role to our customers as one of the main / core material for their production, when a calcium carbonate fails to meet the desired quality this will affect our customer’s production and end products, such as a bad fuel will destroy a vehicle that run it.</p>
            <div class="clear"></div>
          </div>
          <?php else: ?>
          <h4 class="titles">Mengapa kualitas sangat penting untuk Kalsium Karbonat</h4>
          <div class="pictures py-3"><img src="<?php echo $this->assetBaseurl ?>prog_ban_proc_ss1.jpg" alt="" class="img img-fluid"></div>
          <div class="infos py-1">
            <p>Seperti kita ketahui bahwa kalsium karbonat memainkan peran penting bagi pelanggan kita sebagai salah satu bahan utama / inti untuk produksi mereka, ketika kalsium karbonat gagal memenuhi kualitas yang diinginkan, ini akan mempengaruhi produksi dan produk akhir pelanggan, seperti bahan bakar yang buruk akan menghancurkan kendaraan yang menjalankannya.</p>
            <div class="clear"></div>
          </div>
          <?php endif; ?>
        </div>
      </div>
      <div class="col-md-30">
        <div class="items d-block mx-auto">
          <?php if (Yii::app()->language == 'en'): ?>
          <h4 class="titles">What’s the secret behind our high quality products</h4>
          <div class="pictures py-3"><img src="<?php echo $this->assetBaseurl ?>prog_ban_proc_ss2.jpg" alt="" class="img img-fluid"></div>
          <div class="infos py-1">
            <p>We take pride in providing high quality calcium carbonate products to our market in Surabaya, Jakarta and throuhout Indonesia. We will meet your specification and we will ensure a steady production flow by maintaining our stock priority for your long-term order suply.</p>
            <div class="clear"></div>
          </div>
          <?php else: ?>
          <h4 class="titles">Apa rahasia di balik produk-produk berkualitas tinggi kami</h4>
          <div class="pictures py-3"><img src="<?php echo $this->assetBaseurl ?>prog_ban_proc_ss2.jpg" alt="" class="img img-fluid"></div>
          <div class="infos py-1">
            <p>Kami bangga menyediakan produk kalsium karbonat berkualitas tinggi untuk pasar kami di Surabaya, Jakarta dan di seluruh Indonesia. Kami akan memenuhi spesifikasi Anda dan kami akan memastikan aliran produksi yang stabil dengan mempertahankan prioritas stok kami untuk suply pesanan jangka panjang Anda.</p>
            <div class="clear"></div>
          </div>
          <?php endif; ?>
        </div>
      </div>
    </div>
    <div class="py-4 my-2 hide-pc"></div>
    <div class="clear"></div>
  </div>
</section>