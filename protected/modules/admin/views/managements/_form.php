<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'managements-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data Managements</h4>
<div class="widgetcontent">
	<?php Yii::import('ext.imperavi-redactor-widget.ImperaviRedactorWidget'); ?>
	<?php $this->widget('ImperaviRedactorWidget', array(
	    'selector' => '.redactor',
	    'options' => array(
	        'imageUpload'=> $this->createUrl('/admin/setting/uploadimage', array('type'=>'image')),
	        'clipboardUploadUrl'=> $this->createUrl('/admin/setting/uploadimage', array('type'=>'clip')),
	    ),
	    'plugins' => array(
	        'clips' => array(
	        ),
	    ),
	)); ?>

	<?php echo $form->dropDownListRow($model, 'type_board', array(
        		'1'=>'Board Of Commissary',
        		'2'=>'Board Of Directors',
        	)); ?>

	<?php echo $form->textFieldRow($model,'name',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'age',array('class'=>'span5','maxlength'=>10)); ?>
	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textFieldRow($model,'position_en',array('class'=>'span5','maxlength'=>225)); ?>
			
			<?php echo $form->textAreaRow($model,'content_en',array('rows'=>3, 'class'=>'span8 redactor')); ?>
		</div>
		<div class="span6">
			<?php echo $form->textFieldRow($model,'position_id',array('class'=>'span5','maxlength'=>225)); ?>
			
			<?php echo $form->textAreaRow($model,'content_id',array('rows'=>3, 'class'=>'span8 redactor')); ?>
		</div>
	</div>

	<?php echo $form->fileFieldRow($model,'image',array(
	'hint'=>'<b>Note:</b> Ukuran gambar adalah 600 x 250px. Gambar yang lebih besar akan ter-crop otomatis, tolong upload foto ukuran horizontal')); ?>
	<?php if ($model->scenario == 'update'): ?>
	<div class="control-group">
		<label class="control-label">&nbsp;</label>
		<div class="controls">
		<div style="max-width: 25%;">
		<img class="img-polaroid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(400,190, '/images/management/'.$model->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"/>
		</div>
		</div>
	</div>
	<?php endif; ?>

	<?php echo $form->textFieldRow($model,'sorts',array('class'=>'span5')); ?>

	<?php echo $form->dropDownListRow($model, 'actives', array(
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
