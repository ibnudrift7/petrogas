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

	<?php echo $form->dropDownListRow($model, 'type_board', array(
        		'1'=>'Board Of Commissary',
        		'2'=>'Board Of Directors',
        	)); ?>

	<?php echo $form->textFieldRow($model,'image',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'name',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'age',array('class'=>'span5','maxlength'=>10)); ?>
	<div class="row-fluid">
		<div class="span6">
			<?php echo $form->textAreaRow($model,'position_en',array('rows'=>6, 'class'=>'span8')); ?>
			
			<?php echo $form->textAreaRow($model,'content_en',array('rows'=>6, 'class'=>'span8')); ?>
		</div>
		<div class="span6">
			<?php echo $form->textAreaRow($model,'position_id',array('rows'=>6, 'class'=>'span8')); ?>
			
			<?php echo $form->textAreaRow($model,'content_id',array('rows'=>6, 'class'=>'span8')); ?>
		</div>
	</div>

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
