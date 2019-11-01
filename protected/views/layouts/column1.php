<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<?php echo $this->renderPartial('//layouts/_header', array()); ?>


<!-- Start fcs -->
<div class="fcs-wrapper outers_fcs_wrapper prelatife wrapper-slide">
    <div class="container cont-fcs">
        <div id="myCarousel_home" class="carousel slide" data-ride="carousel" data-interval="4500">
            <div class="carousel-inner">
                <div class="carousel-item <?php if ($key == 0): ?>active<?php endif ?> home-slider-new">
                    <img class="w-100" src="<?php echo $this->assetBaseurl; ?>Layer-71.jpg" alt="First slide" style="background-repeat: no-repeat;background-size: cover;">
                    <img class="w-100 d-none d-sm-block" src="<?php echo $this->assetBaseurl; ?>Layer-71.jpg" alt="">
                    <div class="carousel-caption caption-slider-home">
                        <div class="prelative container">
                            <div class="bxsl_tx_fcs">
                                <div class="row no-gutters">
                                    <div class="col-md-60">
                                        <?php echo $this->setting['home_sectionf_text'] ?>

                                        <h3 class="d-none d-sm-block">LATEST EXPLORATION STATISTIC</h3>
                                        <?php echo $this->renderPartial('//home/_latest_statistik', array()); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-button-native">
                <div class="">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel_home" data-slide-to="0" class="active"></li>
                    </ol>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- End fcs -->

<?php echo $content ?>

<?php echo $this->renderPartial('//layouts/_footer', array()); ?>

<script type="text/javascript">
    $(document).ready(function(){
        
        if ($(window).width() >= 768) {
            var $item = $('#myCarousel_home.carousel .carousel-item'); 
            var $wHeight = $(window).height();
            $item.eq(0).addClass('active');
            $item.height($wHeight); 
            $item.addClass('full-screen');

            $('#myCarousel_home.carousel img.w-100').each(function() {
              var $src = $(this).attr('src');
              var $color = $(this).attr('data-color');
              $(this).parent().css({
                'background-image' : 'url(' + $src + ')',
                'background-color' : $color
              });
              $(this).remove();
            });

            $(window).on('resize', function (){
              $wHeight = $(window).height();
              $item.height($wHeight);
            });

            $('#myCarousel_home.carousel').carousel({
              interval: 4000,
              pause: "false"
            });
        }

    });
</script>

<script>
        $(document).ready(function (){
            $("#click").click(function (){
                $('html, body').animate({
                    scrollTop: $("#div1").offset().top
                }, 2000);
            });
        });
    </script>

<?php $this->endContent(); ?>
