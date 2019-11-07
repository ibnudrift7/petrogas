<?php 
$criteria = new CDbCriteria;
$criteria->addCondition('status = "1"');
$criteria->order = 't.tgl_statistik DESC';
// $criteria->limit = 3;
$data_fet = StatistikList::model()->find($criteria);
?>
<div class="blocks_latestHome">
	<div class="row">
		<div class="col col-15 inf-date my-auto">
			<span><?php echo strtoupper( date('d M Y') ); ?></span>
		</div>
		<div class="col small_inf my-auto">
			<p><?php echo $data_fet->bopd ?><br><b>BOPD</b></p>
		</div>
		<div class="col small_inf my-auto">
			<p><?php echo $data_fet->mscfd ?><br><b>MSCFD</b></p>
		</div>
		<div class="col small_inf my-auto">
			<p><?php echo $data_fet->bwpd ?><br><b>BWPD</b></p>
		</div>
		<div class="col buttons_chart my-auto">
			<p>
				<a href="<?php echo CHtml::normalizeUrl(array('/home/statistic', 'lang'=> Yii::app()->language)); ?>">
				<span><img src="<?php echo $this->assetBaseurl; ?>line-graph.png" alt=""></span><?php echo Tt::t('front', 'PRODUCTION PROFILE') ?>
				</a>
			</p>
		</div>
	</div>
	<div class="clear"></div>
</div>