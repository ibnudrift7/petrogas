<section class="home-sec-1">
	<div class="prelative container2">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<h4><?php echo $this->setting['home1_title'] ?></h4>
					<?php echo $this->setting['home1_subtitle'] ?>
				</div>
			</div>
		</div>
		<?php 
        $criteria = new CDbCriteria;
        $criteria->order = 't.id ASC';
        $data_block = Blockbuilding::model()->findAll($criteria);
        ?>
		<div class="row no-gutters">
			<?php foreach ($data_block as $key => $value): ?>
            <div class="col-md-30">
                <div class="image-atass">
                    <a href="<?php echo CHtml::normalizeUrl(array('/home/business_detail', 'id'=> $value->id)); ?>"><img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/building/'. $value->image ?>" alt=""></a>
                    <div class="insidesss">
                        <h5><?php echo $value->nama ?></h5>
                        <p><?php echo ucwords(strtolower($value->lokasi_blok)); ?></p>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
		</div>

		<div class="row no-gutters pt-4 mt-4">
			<div class="col-md-60">
				<div class="image-bawah">
					<img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['home2_banner_pictures'] ?>" alt="">
					<div class="title-page">
						<div class="row no-gutters">
							<div class="col-md-30">

							</div>
							<div class="col-md-30">
								<div class="teks">
									<?php echo $this->setting['home2_banner_content'] ?>
									<a target="_blank" href="<?php echo $this->setting['home2_banner_link'] ?>">
										<span><img src="<?php echo $this->assetBaseurl; ?>right-thin.png" alt=""></span>READ MORE
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</section>

<?php 
    $criteria = new CDbCriteria;
    $criteria->with = array('description');
    $criteria->addCondition('active = "1"');
    $criteria->addCondition('description.language_id = :language_id');
    $criteria->params[':language_id'] = $this->languageID;
    $criteria->order = 'date_input DESC';
    $criteria->limit = 3;

    $dataBlog = new CActiveDataProvider('Blog', array(
        'criteria'=>$criteria,
        'pagination'=>false,
    ));
?>
<?php if ($dataBlog->TotalItemCount > 0): ?>
<section class="home-sec-2">
	<div class="title-sec">
		<h5>Latest News Update</h5>
	</div>
	<div class="prelative container2">
		<div class="row no-gutters">
			<?php foreach ($dataBlog->getData() as $key => $value): ?>
			<div class="col-md-20">
				<img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(432,260, '/images/blog/'. $value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" class="img img-fluid" alt="">
				<div class="box-content">
					<h4><?php echo $value->description->title ?></h4>
					<a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">view article</a>
				</div>
			</div>
			<?php endforeach ?>

		</div>
		<div class="more-news">
			<a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>"> <span><img src="<?php echo $this->assetBaseurl; ?>right-thin.png" alt=""></span>MORE NEWS</a>
		</div>
	</div>
</section>
<?php endif ?>