<?php
$this->breadcrumbs=array(
	'Managements'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Managements', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Managements', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit Managements', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Managements', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View Managements #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'type_board',
		'image',
		'name',
		'age',
		'position_en',
		'position_id',
		'content_en',
		'content_id',
		'sorts',
		'actives',
	),
)); ?>
