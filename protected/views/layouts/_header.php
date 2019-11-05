<?php 
    $e_activemenu = $this->action->id;
    $controllers_ac = $this->id;
    $session=new CHttpSession;
    $session->open();
    $login_member = $session['login_member'];

    $active_menu_pg = $controllers_ac.'/'.$e_activemenu;
?>


<section class="header d-none d-sm-block">
  <div class="prelative container-header header-tops">
    <div class="row">
      <div class="col-md-15">
        <div class="image-kiri">
          <a href="#" class="view-leftmenu"><img src="<?php echo $this->assetBaseurl; ?>Rectangle-2-copy-2.png" alt=""></a>
        </div>
      </div>
      <div class="col-md-30">
        <div class="image-tengah logo_headers">
          <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
            <!-- <img src="<?php echo $this->assetBaseurl; ?>Petrogas-copy.png" alt=""> -->
            <img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>logo-petro.svg" alt="">
          </a>
        </div>
      </div>
      <div class="col-md-15">
        <div class="image-kanan">
          <div class="text">
            <a href="<?php echo CHtml::normalizeUrl(array('/home/statistic')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>line-graph.png" alt=""></span>PRODUCTION PROFILE</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-bottom">
    <div class="row no-gutters">
      <div class="col-md-45">
        <div class="image logo-image">
          <nav class="navbar navbar-expand-lg">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item <?php echo ($active_menu_pg == 'home/index')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">Home</a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about', 'lang'=>Yii::app()->language)); ?>">About Us</a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/business')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=>Yii::app()->language)); ?>">Our Business</a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/news')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/news', 'lang'=>Yii::app()->language)); ?>">News</a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/career')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=>Yii::app()->language)); ?>">Career</a>
                </li>             
                <li class="nav-item <?php echo ($active_menu_pg == 'home/contact')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>">Contact Us</a>
                </li>             
              </ul>
            </div>
          </nav>
        </div>
      </div>
      <div class="col-md-15 text-right">
        <div class="py-2 my-1"></div>
        <img src="<?php echo $this->assetBaseurl ?>taglines_headernxs_txt.png" alt="" class="img img-fluid">
      </div>
    </div>

    
  </div>
</section>

<header class="header-mobile homepage_head">
  <nav class="navbar fixed-top navbar-light">
  <a class="navbar-brand" href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>"><img src="<?php echo $this->assetBaseurl; ?>Petrogas-copy-2.png" alt="" class="img img-fluid"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">Home</a>
		</li>
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/about', 'lang'=>Yii::app()->language)); ?>">About Us</a>
		</li>
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=>Yii::app()->language)); ?>">Our Business</a>
		</li>
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/news', 'lang'=>Yii::app()->language)); ?>">News</a>
		</li>
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=>Yii::app()->language)); ?>">Career</a>
		</li>
		<li class="list-inline-item">
			<a href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>">Contact Us</a>
		</li>
	</ul>
  </div>
  </nav>
</header>

<script type="text/javascript">
  $(function(){

  // views sub menu
  $('a.views_menu_drop').on('click', function(e){
    $('section.header .header-bottom').find('.logo-image a img').attr('src', '<?php echo $this->assetBaseurl; ?>corpus-header.png');
    $('.blocks_menu_dropdown.about-n1').removeClass('views-menu');
    $('section.header .header-bottom').removeClass('mn-open');
    $('section.header .header-bottom').find('.logo-image a img').attr('src', '<?php echo $this->assetBaseurl; ?>corpus-header.png');


    var n_act = $(this).attr('data-id');

    $('#'+n_act+'.blocks_menu_dropdown.about-n1').addClass('views-menu');
    $('section.header -mobil.header-bottom').addClass('mn-open');
    $('section.header -mobil.header-bottom').find('.logo-image a img').attr('src', '<?php echo $this->assetBaseurl; ?>corpus-header-op.png');

    e.preventDefault();
  });

  $('.blc_right_close_menu a.closing_menu').on('click', function(e){
    $('.blocks_menu_dropdown.about-n1').removeClass('views-menu');
    $('section.header .header-bottom').removeClass('mn-open');
    $('section.header .header-bottom').find('.logo-image a img').attr('src', '<?php echo $this->assetBaseurl; ?>corpus-header.png');

    e.preventDefault();
  });

  var sn_width = $(window).width();
  if (sn_width > 1150) {

      $(window).scroll(function(){
        var sntop1 = $(window).scrollTop();

        if(sntop1 > 115){
          // console.log(sntop1);
          $('.header-affixs').removeClass('affix-top').addClass('affix');
          // $('.header-affixs').addClass('affix');
        }else{
          $('.header-affixs.affix').removeClass('affix').addClass('affix-top');
          // $('body').css('padding-top', '0px');
        }
      });

    }

  });
</script>

<script>
  // $(document).ready(function(){
  //   $("#headerproduct").css("display","none");
  // });
</script>

<section class="backs_leftmenun_blue back_blue box-left-menu-block">
  <div class="inner">
    <div class="tops_blun">
      <div class="row">
        <div class="col-45">
          <div class="logo_snheaders">
            <a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=> Yii::app()->language)); ?>"><img src="<?php echo $this->assetBaseurl ?>logo-update-lefts_menu.png" alt="<?php echo Yii::app()->name; ?>" class="img img-fluid"></a>
          </div>
        </div>
        <div class="col-15 text-right">
          <div class="blc_rights_tx py-3 my-2 c-icon-close">
            <a href="#" class="to_closeLeft"><img src="<?php echo $this->assetBaseurl ?>btn-xnim-close.png" alt="" class="img img-fluid"></a>
          </div>
        </div>
      </div>
    </div>
    <div class="middles">
      <ul class="list-unstyled ff_menu">
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=> Yii::app()->language)); ?>">Home</a></li>
        <li class="dropdown"><a href="<?php echo CHtml::normalizeUrl(array('/home/about', 'lang'=> Yii::app()->language)); ?>">About</a>
          <ul class="dropdown-menu">
            <li><a href="#">Profile</a></li>
            <li><a href="#">Organisation Structure</a></li>
            <li><a href="#">Board of Commissary</a></li>
            <li><a href="#">Board of Director</a></li>
            <li><a href="#">Share Holders</a></li>
            <li><a href="#">RUPS</a></li>
            <li><a href="#">Financial Report</a></li>
            <li><a href="#">Production Profile</a></li>
          </ul>
        </li>
        
        <?php 
        $criteria = new CDbCriteria;
        $criteria->order = 't.id ASC';
        $data_block = Blockbuilding::model()->findAll($criteria);
        ?>
        <li class="dropdown"><a href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=> Yii::app()->language)); ?>">Our Business</a>
          <ul class="dropdown-menu">
            <?php foreach ($data_block as $key => $value): ?>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $value->id)); ?>"><?php echo $value->nama ?></a></li>
            <?php endforeach; ?>
          </ul>
        </li>

        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/news', 'lang'=> Yii::app()->language)); ?>">News</a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=> Yii::app()->language)); ?>">Career</a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=> Yii::app()->language)); ?>">Contact us</a></li>
      </ul>

      <div class="py-3"></div>
      <div class="changes_lang py-3">
        <div class="row no-gutters py-1">
          <div class="col-md-20"><p>Language</p></div>
          <div class="col-md-40">
            <p><a href="#">EN</a>
              &nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="#">IN</a>
              </p>
          </div>
        </div>
      </div>
      <div class="py-3"></div>
      <div class="infos_nbottom">
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span>Whatsapp</span></p></div>
          <div class="col-md-40"><p><a href="https://wa.me/628164807016">081 6480 7016</a></p></div>
        </div>
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span>Telephone</span></p></div>
          <div class="col-md-40"><p><a href="tel:+62215907777">+62 21 590 7777</a></p></div>
        </div>
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span>Email</span></p></div>
          <div class="col-md-40"><p><a href="mailto:info@pjuc.co.id">info@pjuc.co.id</a></p></div>
        </div>
        
        <div class="clear"></div>
      </div>

      <div class="clear clearfix"></div>
    </div>
    <div class="clear clearfix"></div>
  </div>
</section>


<script type="text/javascript">
  $(document).ready(function() { // makes sure the whole site is loaded
    var link_hide = $('.c-icon-close > a');
    var icon_hides = $('.c-icon-close');

    var link_show = $('a.view-leftmenu');

    var left_panel = $('.box-left-menu-block');

    $(link_hide).on('click', function(){
      $(left_panel).animate({"margin-left": '-1200'}, "normal");
      
      setTimeout(function() {
        $(link_show).show();
      }, 350);
      return false;
    });

    $(link_show).on('click', function(){
      $(left_panel).animate({"margin-left": '0', "left": '0'}, "normal");

      setTimeout(function() {
        $(link_show).hide();
      }, 500);
      return false;
    });

    // var widths = $(window).width();
    // if (widths < 767){
    //   $('.inside-cont-black-foot.content-text p').find('br').remove();
    // };
    
  });
</script>