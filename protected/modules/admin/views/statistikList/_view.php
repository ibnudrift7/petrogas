<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id),array('view','id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tgl_statistik')); ?>:</b>
	<?php echo CHtml::encode($data->tgl_statistik); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('bopd')); ?>:</b>
	<?php echo CHtml::encode($data->bopd); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mscfd')); ?>:</b>
	<?php echo CHtml::encode($data->mscfd); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('bwpd')); ?>:</b>
	<?php echo CHtml::encode($data->bwpd); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('image')); ?>:</b>
	<?php echo CHtml::encode($data->image); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_input')); ?>:</b>
	<?php echo CHtml::encode($data->date_input); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sorts')); ?>:</b>
	<?php echo CHtml::encode($data->sorts); ?>
	<br />

	*/ ?>

</div>