<div class="cover investor">
  <div class="text">
  	<h2 class="what"><?php echo Tt::t('front', 'Insights'); ?></h2>
  	<p><?php echo Tt::t('front', 'Financial Reports'); ?></p>
  </div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
		    <li class="breadcrumb-item"><a href="#"><?php echo Tt::t('front', 'Insights'); ?></a></li>
		    <li class="breadcrumb-item"><a href="#"><?php echo Tt::t('front', 'Financial Reports'); ?></a></li>
		  </ol>
		  <div class="back float-right">
		  	<a href=""><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
		  </div>
		</nav>
	</div>
</section>

<section class="fac-sec-1">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="content">
					<div class="title">
						<?php if (Yii::app()->language == 'en'): ?>
						<p>Annual Financial Reports</p>
						<?php else: ?>
						<p>Laporan Keuangan Tahunan</p>
						<?php endif ?>
					</div>
					<div class="sub">
						<p><?php echo Tt::t('front', 'By'); ?> <span><img src="<?php echo $this->assetBaseurl; ?>what-corpus.png" alt=""></span></p>
					</div>
					<div class="isi">
						<?php if (Yii::app()->language == 'en'): ?>
						<p>The Annual Financial Report gives details about our company’s results, outlook and strategies for the given year.</p>
						<?php else: ?>
						<p>Laporan Keuangan Tahunan memberikan rincian tentang hasil, prospek, dan strategi perusahaan kami untuk tahun yang bersangkutan.</p>
						<?php endif ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="tabel">
	<div class="prelative container">
		<div class="table-responsive">
			<?php 
			// $data_report = SourcesMod::reportData();
			$criteria = new CDbCriteria;
			$criteria->addCondition('t.category_id = :category');
			$criteria->params[':category'] = 1;
			$criteria->group = 't.id';
			$criteria->order = 't.sort ASC';

			$data_report = Pdf::model()->findAll($criteria);

			?>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col"><?php echo Tt::t('front', 'date'); ?></th>
						<th scope="col"><?php echo Tt::t('front', 'title'); ?></th>
						<th scope="col"><?php echo Tt::t('front', 'action'); ?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($data_report as $key => $value): ?>
					<tr>
						<td><?php echo date('d F Y', strtotime($value->dates)); ?></td>
						<?php if (Yii::app()->language == 'en'): ?>
						<td class="bulan"><?php echo $value->nama_en ?></td>	
						<?php else: ?>
						<td class="bulan"><?php echo $value->nama_id ?></td>
						<?php endif ?>
						<td class="down">
							<a target="_blank" href="<?php echo ( Yii::app()->baseUrl .'/images/pdf/'. $value->file ); ?>">
							<span><img src="<?php echo $this->assetBaseurl; ?>download.png" alt=""></span>DOWNLOAD
						</td>
						</a>
					</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
		<div class="py-4"></div>	
	</div>
</section>


<div class="hr-investor"></div>

<section class="pilih-kategori">
	<div class="prelative container">
		<div class="row no-gutters">
			<div class="col-md-60">
				<div class="content">
					<p><?php echo Tt::t('front', 'Also in the Insights'); ?>:</p>
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
