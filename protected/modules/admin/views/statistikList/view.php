<?php
$this->breadcrumbs=array(
	'Statistik Lists'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List StatistikList', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add StatistikList', 'icon'=>'plus-sign','url'=>array('create')),
	array('label'=>'Edit StatistikList', 'icon'=>'pencil','url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete StatistikList', 'icon'=>'trash','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
);
?>

<h1>View StatistikList #<?php echo $model->id; ?></h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'tgl_statistik',
		'bopd',
		'mscfd',
		'bwpd',
		'image',
		'date_input',
		'status',
		'sorts',
	),
)); ?>
