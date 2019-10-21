<div class="cover investor">
  <div class="text">
  	<h2 class="what"><?php echo Tt::t('front', 'Insights'); ?></h2>
  	<p><?php echo Tt::t('front', 'Financial Highlights'); ?></p>
  </div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
		    <li class="breadcrumb-item"><a href="#"><?php echo Tt::t('front', 'Insights'); ?></a></li>
		    <li class="breadcrumb-item"><a href="#"><?php echo Tt::t('front', 'Financial Highlights'); ?></a></li>
		  </ol>
		  <div class="back float-right">
		  	<a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
		  </div>
		</nav>
	</div>
</section>

<section class="financial-sec-1">
	<div class="prelative container">
		<div class="head-title">
			<div class="title">
				<p><?php echo Tt::t('front', 'Financial Highlights'); ?></p>
			</div>
			<div class="sub">
				<p><?php echo Tt::t('front', 'By'); ?> <span><img src="<?php echo $this->assetBaseurl; ?>what-corpus.png" alt=""></span></p>
			</div>
			<div class="cont">
				<?php if (Yii::app()->language == 'en'): ?>
				<p>Learn more about Corpus and get in the loop with whats going on in the corporations.</p>
				<?php else: ?>
				<p>Pelajari lebih lanjut tentang Corpus dan dapatkan informasi tentang apa yang terjadi di perusahaan.</p>
				<?php endif ?>
			</div>
		</div>
		<div class="row">
			<?php foreach ($dataBlog->getData() as $key => $value): ?>
				<div class="col-md-20">
					<div class="box-content">
						<a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
							<img class="w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(403,268, '/images/blog/'.$value->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
						</a>
						<div class="tanggal">
							<p><i class="fa fa-calendar"></i> &nbsp;<?php echo date("d F Y", strtotime($value->date_input)); ?></p>
						</div>
						<div class="title-content">
							<a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id, 'lang'=>Yii::app()->language)); ?>">
								<p><?php echo $value->description->title ?></p>
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

<div class="hr-investor"></div>

<section class="pilih-kategori">
	<div class="prelative container">
		<div class="row no-gutters">
			<div class="col-md-60">
				<div class="content">
					<p><?php echo Tt::t('front', 'Also in the Investor Relations'); ?>:</p>
				</div>
				<div class="finan">
					<a href="<?php echo CHtml::normalizeUrl(array('/home/investorreports', 'lang'=>Yii::app()->language)); ?>">
						<p><?php echo Tt::t('front', 'Financial Reports'); ?></p>
					</a>
				</div>
				<div class="hr-fooot"></div>
				<div class="facts">
					<a href="<?php echo CHtml::normalizeUrl(array('/home/investorfactsheet', 'lang'=>Yii::app()->language)); ?>">
						<p><?php echo Tt::t('front', 'Factsheets'); ?></p>
					</a>
				</div>
				<div class="hr-fooot"></div>
				<div class="high">
					<a href="<?php echo CHtml::normalizeUrl(array('/home/investorfinancial', 'lang'=>Yii::app()->language)); ?>">
						<p><?php echo Tt::t('front', 'Financial Highlights'); ?></p>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>