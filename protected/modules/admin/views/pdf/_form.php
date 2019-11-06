<div class="row-fluid">
	<div class="span8">
<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'bank-form',
    // 'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data PDF</h4>
<div class="widgetcontent">
	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textFieldRow($model,'nama_en',array('class'=>'span12')); ?>
		</div>
		<div class="span6">
			<?php echo $form->textFieldRow($model,'nama_id',array('class'=>'span12')); ?>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textFieldRow($model,'sort',array('class'=>'span12')); ?>
		</div>
		<div class="span6">
			<?php // echo $form->textFieldRow($model,'dates',array('class'=>'span12', 'id'=>'datepicker2')); ?>
		</div>
	</div>

	<?php echo $form->fileFieldRow($model,'file',array(
	'hint'=>'<b>Note:</b> Ukuran tidak boleh melebihi 10MB', 'style'=>"width: 100%")); ?>
	<?php if ($model->scenario == 'update'): ?>
	<a href="<?php echo Yii::app()->baseUrl ?>/images/pdf/<?php echo $model->file ?>">Lihat file di sini</a>
	<?php endif; ?>

	<?php echo $form->fileFieldRow($model,'image',array(
	'hint'=>'<b>Note:</b> Ukuran gambar adalah 300 x 400px. Gambar yang lebih besar akan ter-crop otomatis, tolong upload foto ukuran horizontal')); ?>
	<?php if ($model->scenario == 'update'): ?>
	<div class="control-group">
		<label class="control-label">&nbsp;</label>
		<div class="controls">
		<div style="max-width: 25%;">
		<img class="img-polaroid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(300,400, '/images/blog/'.$model->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"/>
		</div>
		</div>
	</div>
	<?php endif; ?>

	<br>
	<?php $this->widget('bootstrap.widgets.TbButton', array(
		'buttonType'=>'submit',
		'type'=>'primary',
		'label'=>$model->isNewRecord ? 'Add' : 'Save',
	)); ?>
	<?php $this->widget('bootstrap.widgets.TbButton', array(
		// 'buttonType'=>'submit',
		// 'type'=>'info',
		'url'=>CHtml::normalizeUrl(array('index', 'category'=>$_GET['category'])),
		'label'=>'Batal',
	)); ?>
		
</div>
</div>

<div class="alert">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Warning!</strong> Fields with <span class="required">*</span> are required.
</div>

<?php $this->endWidget(); ?>
</div>
	<div class="span4">
		<?php // echo $this->renderPartial('/setting/page_menu') ?>
	</div>
</div>