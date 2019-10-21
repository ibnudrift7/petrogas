<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'team-list-form',
    'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<?php echo $form->errorSummary($model); ?>

<div class="widget">
<h4 class="widgettitle">Data TeamList</h4>
<div class="widgetcontent">
	<?php echo $form->textFieldRow($model,'title',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'position_en', array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'position_id', array('class'=>'span5','maxlength'=>225)); ?>

	<?php // echo $form->textAreaRow($model,'content',array('rows'=>3, 'class'=>'span8')); ?>

	<?php echo $form->fileFieldRow($model,'image',array(
	'hint'=>'<b>Note:</b> Ukuran gambar adalah 206 x 269px. Gambar yang lebih besar akan ter-crop otomatis, tolong upload foto ukuran horizontal')); ?>
	<?php if ($model->scenario == 'update'): ?>
	<div class="control-group">
		<label class="control-label">&nbsp;</label>
		<div class="controls">
		<div style="max-width: 25%;">
		<img class="img-polaroid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(100,140, '/images/team/'.$model->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"/>
		</div>
		</div>
	</div>
	<?php endif; ?>

	<?php // echo $form->textFieldRow($model,'sortings', array('class'=>'span5')); ?>
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
