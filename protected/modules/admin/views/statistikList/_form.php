<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'statistik-list-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data Statistik</h4>
<div class="widgetcontent">

	<?php echo $form->textFieldRow($model,'tgl_statistik',array('class'=>'span5 datepicker2','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'bopd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'mscfd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'bwpd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->fileFieldRow($model,'image',array(
	'hint'=>'<b>Note:</b> Ukuran gambar adalah 1024 x 768px. Gambar yang lebih besar akan ter-crop otomatis, tolong upload foto ukuran horizontal')); ?>
	<?php if ($model->scenario == 'update'): ?>
	<div class="control-group">
		<label class="control-label">&nbsp;</label>
		<div class="controls">
		<div style="max-width: 25%;">
		<img class="img-polaroid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(782,929, '/images/statistik/'.$model->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"/>
		</div>
		</div>
	</div>
	<?php endif; ?>

	<?php // echo $form->textFieldRow($model,'date_input',array('class'=>'span5')); ?>

	<?php echo $form->dropDownListRow($model, 'status', array(
        		'1'=>'Aktif',
        		'0'=>'Disable',
        	),  array('class'=>'span5',)); ?>

	<?php // echo $form->textFieldRow($model,'sorts',array('class'=>'span5')); ?>

		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Add' : 'Save',
		)); ?>
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			// 'buttonType'=>'submit',
			// 'type'=>'info',
			'url'=>CHtml::normalizeUrl(array('index')),
			'label'=>'Batal',
		)); ?>
</div>
</div>
<div class="alert">
  <button type="button" class="close" data-dismiss="alert">×</button>
  <strong>Warning!</strong> Fields with <span class="required">*</span> are required.
</div>

<?php $this->endWidget(); ?>
