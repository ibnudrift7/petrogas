<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'blockbuilding-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data Blockbuilding</h4>
<div class="widgetcontent">
	<?php Yii::import('ext.imperavi-redactor-widget.ImperaviRedactorWidget'); ?>
	<?php $this->widget('ImperaviRedactorWidget', array(
	    'selector' => '.redactor',
	    'options' => array(
	        'imageUpload'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'image')),
	        'clipboardUploadUrl'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'clip')),
	    ),
	    'plugins' => array(
	        'clips' => array(
	        ),
	    ),
	)); ?>

	<?php echo $form->textFieldRow($model,'nama', array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'lokasi_blok', array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textAreaRow($model,'facts_info',array('rows'=>6, 'cols'=>50, 'class'=>'span8 redactor')); ?>

	<?php echo $form->textAreaRow($model,'facilities_info',array('rows'=>6, 'cols'=>50, 'class'=>'span8 redactor')); ?>

	<?php echo $form->textFieldRow($model,'sorts',array('class'=>'span5', 'hint'=> 'Ex. only number 5, 10, 15, 20, 25, 30')); ?>
	
	<?php // echo $form->textFieldRow($model,'image',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->fileFieldRow($model,'image',array(
	'hint'=>'<b>Note:</b> Ukuran gambar adalah 782 x 929px. Gambar yang lebih besar akan ter-crop otomatis, tolong upload foto ukuran horizontal')); ?>
	<?php if ($model->scenario == 'update'): ?>
	<div class="control-group">
		<label class="control-label">&nbsp;</label>
		<div class="controls">
		<div style="max-width: 25%;">
		<img class="img-polaroid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(782,929, '/images/building/'.$model->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"/>
		</div>
		</div>
	</div>
	<?php endif; ?>

	<?php // echo $form->textFieldRow($model,'active', array('class'=>'span5')); ?>
	<?php echo $form->dropDownListRow($model, 'active', array(
        		// '2'=>'Tampilkan dan jadikan slide',
        		'1'=>'Di Tampilkan',
        		'0'=>'Di Sembunyikan',
        	)); ?>

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
