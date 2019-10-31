<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'tgl_statistik',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'bopd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'mscfd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'bwpd',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'image',array('class'=>'span5','maxlength'=>225)); ?>

	<?php echo $form->textFieldRow($model,'date_input',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'status',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'sorts',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
