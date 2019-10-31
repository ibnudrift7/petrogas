<?php
$this->breadcrumbs=array(
	'Blockbuildings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Blockbuilding', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Blockbuilding', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit Blockbuilding', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Blockbuilding', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View Blockbuilding #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'nama',
		'lokasi_blok',
		'image',
		'facts_info',
		'facilities_info',
		'sorts',
		'active',
	),
)); ?>
