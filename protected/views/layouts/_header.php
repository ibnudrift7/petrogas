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
          <a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>">
            <?php /*<!-- <img src="<?php echo $this->assetBaseurl; ?>Petrogas-copy.png" alt=""> -->*/ ?>
            <img class="img img-fluid" src="<?php echo $this->assetBaseurl; ?>logo-petro.svg" alt="">
          </a>
        </div>
      </div>
      <div class="col-md-15">
        <div class="image-kanan">
          <div class="text">
            <a href="<?php echo CHtml::normalizeUrl(array('/home/statistic', 'lang'=>Yii::app()->language)); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>line-graph.png" alt=""></span><?php echo Tt::t('front', 'PRODUCTION PROFILE') ?></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="header-bottom">
    <div class="row no-gutters">
      <div class="col-md-45">
        <div class="image logo-image">
          <nav class="navbar navbar-expand-lg d-none view_about_menu">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'profile')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'profile')); ?>"><?php echo Tt::t('front', 'Profile') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'structure')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'structure')); ?>"><?php echo Tt::t('front', 'Our Team') ?></a>
                </li>

                <!-- <li class="nav-item <?php // echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'commissary')? 'active':'' ?>">
                  <a class="nav-link" href="<?php // echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'commissary')); ?>"><?php echo Tt::t('front', 'Board of Commissary') ?></a>
                </li>
                <li class="nav-item <?php // echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'director')? 'active':'' ?>">
                  <a class="nav-link" href="<?php // echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'director')); ?>"><?php echo Tt::t('front', 'Board of Director') ?></a>
                </li>
                 -->
                 <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'management')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'management')); ?>"><?php echo Tt::t('front', 'Our Management') ?></a>
                </li>

                <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'share_holders')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'share_holders')); ?>"><?php echo Tt::t('front', 'Share Holders') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'rups')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'rups')); ?>"><?php echo Tt::t('front', 'RUPS') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'financial_report')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'financial_report')); ?>"><?php echo Tt::t('front', 'Financial Report') ?></a>
                </li>
                <!-- <li class="nav-item <?php echo ($active_menu_pg == 'home/about_us' && $_GET['name'] == 'production_profile')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'production_profile')); ?>"><?php echo Tt::t('front', 'Production Profile') ?></a>
                </li> -->
                
              </ul>
            </div>
          </nav>
          <nav class="navbar navbar-expand-lg view_default_menu">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <li class="nav-item <?php echo ($active_menu_pg == 'home/index')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Home') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/about')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'About Us') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/business')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Our Business') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'blog/index')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'News') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/career')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Career') ?></a>
                </li>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/contact')? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Contact Us') ?></a>
                </li>

                
              </ul>
            </div>
          </nav>
          <?php 
          $criteria = new CDbCriteria;
          $criteria->order = 't.id ASC';
          $data_blocks = Blockbuilding::model()->findAll($criteria);
          ?>
          <nav class="navbar navbar-expand-lg d-none view_business_menu">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
                <?php foreach ($data_blocks as $key => $value): ?>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/business_detail' && $_GET['id'] ==  $value->id)? 'active':'' ?>">
                  <a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $value->id)); ?>"><?php echo $value->nama ?></a>
                </li>
                <?php endforeach; ?>
                <li class="nav-item <?php echo ($active_menu_pg == 'home/blocks_cepu')? 'active': ''; ?>"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/blocks_cepu')); ?>">Block Cepu</a></li>
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
		<li class="nav-item">
			<a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Home') ?></a>
		</li>
		<li class="nav-item dropdown">
			<a class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="<?php echo CHtml::normalizeUrl(array('/home/about', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'About Us') ?></a>
      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'profile')); ?>"><?php echo Tt::t('front', 'Profile') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'structure')); ?>"><?php echo Tt::t('front', 'Our Team') ?></a></li>
        <?php 
        /*<li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'commissary')); ?>"><?php echo Tt::t('front', 'Board of Commissary') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'director')); ?>"><?php echo Tt::t('front', 'Board of Director') ?></a></li>*/ 
        ?>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'management')); ?>"><?php echo Tt::t('front', 'Our Management') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'share_holders')); ?>"><?php echo Tt::t('front', 'Share Holders') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'rups')); ?>"><?php echo Tt::t('front', 'RUPS') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'financial_report')); ?>"><?php echo Tt::t('front', 'Financial Report') ?></a></li>
        <!-- <li><a href="<?php // echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'production_profile')); ?>"><?php echo Tt::t('front', 'Production Profile') ?></a></li> -->
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/annual_report')); ?>"><?php echo Tt::t('front', 'Annual Report') ?></a></li>
      </ul>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Our Business') ?></a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'News') ?></a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Career') ?></a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=>Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Contact Us') ?></a>
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
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/index', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Home') ?></a></li>
        <li class="dropdown">
          <a href="#" class="customs_drop" id="dropdownMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo Tt::t('front', 'About') ?></a>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu" id="customs_dropMenu">
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'profile')); ?>"><?php echo Tt::t('front', 'Profile') ?></a></li>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'structure')); ?>"><?php echo Tt::t('front', 'Our Team') ?></a></li>
            <?php 
        /*<li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'commissary')); ?>"><?php echo Tt::t('front', 'Board of Commissary') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'director')); ?>"><?php echo Tt::t('front', 'Board of Director') ?></a></li>*/ 
        ?>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'management')); ?>"><?php echo Tt::t('front', 'Our Management') ?></a></li>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'share_holders')); ?>"><?php echo Tt::t('front', 'Share Holders') ?></a></li>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'rups')); ?>"><?php echo Tt::t('front', 'RUPS') ?></a></li>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'financial_report')); ?>"><?php echo Tt::t('front', 'Financial Report') ?></a></li>
            <!-- <li><a href="<?php // echo CHtml::normalizeUrl(array('/home/about_us', 'name'=> 'production_profile')); ?>"><?php echo Tt::t('front', 'Production Profile') ?></a></li> -->
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/annual_report')); ?>"><?php echo Tt::t('front', 'Annual Report') ?></a></li>
          </ul>
        </li>
        
        <?php 
        $criteria = new CDbCriteria;
        $criteria->order = 't.id ASC';
        $data_block = Blockbuilding::model()->findAll($criteria);
        ?>
        <?php /*<li class="dropdown"><a href="<?php echo CHtml::normalizeUrl(array('/home/business', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Our Business') ?></a>*/ ?>
        <li class="dropdown">
          <a href="#" class="customs_drop2" id="dropdownMenu2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo Tt::t('front', 'Our Business') ?></a>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" id="customs_dropMenu2">
            <?php foreach ($data_block as $key => $value): ?>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $value->id)); ?>"><?php echo $value->nama ?></a></li>
            <?php endforeach; ?>
            <li><a href="<?php echo CHtml::normalizeUrl(array('/home/blocks_cepu')); ?>">Block Cepu</a></li>
          </ul>
        </li>

        <li><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'News') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/career', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Career') ?></a></li>
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/contact', 'lang'=> Yii::app()->language)); ?>"><?php echo Tt::t('front', 'Contact Us') ?></a></li>
      </ul>

      <div class="py-3"></div>
      <div class="changes_lang py-3">
        <div class="row no-gutters py-1">
          <div class="col-md-20"><p><?php echo Tt::t('front', 'Language') ?></p></div>
          <div class="col-md-40">
            <?php
            $get = $_GET; $get['lang'] = 'en';
            ?>
            <p><a class="<?php if (Yii::app()->language == 'en'): ?>active<?php endif ?>" href="<?php echo $this->createUrl($this->route, $get) ?>">EN</a>
              &nbsp;&nbsp;|&nbsp;&nbsp;
              <?php
              $get = $_GET; $get['lang'] = 'id';
              ?>
              <a class="<?php if (Yii::app()->language == 'id'): ?>active<?php endif ?>" href="<?php echo $this->createUrl($this->route, $get) ?>">IN</a>
              </p>
          </div>
        </div>
      </div>
      <div class="py-3"></div>
      <div class="infos_nbottom">
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span>Whatsapp</span></p></div>
          <div class="col-md-40"><p><a href="https://wa.me/<?php echo str_replace(' ', '', $this->setting['contact_wa']); ?>">+<?php echo $this->setting['contact_wa'] ?></a></p></div>
        </div>
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span><?php echo Tt::t('front', 'Telephone') ?></span></p></div>
          <div class="col-md-40"><p><a href="tel:<?php echo str_replace(' ', '', $this->setting['contact_phone']) ?>"><?php echo $this->setting['contact_phone'] ?></a></p></div>
        </div>
        <div class="row no-gutters pb-1">
          <div class="col-md-20"><p><span>Email</span></p></div>
          <div class="col-md-40"><p><a href="mailto:<?php echo $this->setting['contact_email'] ?>"><?php echo $this->setting['contact_email'] ?></a></p></div>
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

    $('.customs_drop').on('click', function(){
      $('#customs_dropMenu2').hide();
      $('#customs_dropMenu').show();
    });
    $('.customs_drop2').on('click', function(){
      $('#customs_dropMenu').hide();
      $('#customs_dropMenu2').show();
    });
    
  });
</script>