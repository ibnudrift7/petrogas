<?php
$this->breadcrumbs=array(
	'Blockbuildings'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Blockbuilding','url'=>array('index')),
	array('label'=>'Add Blockbuilding','url'=>array('create')),
);
?>

<h1>Manage Blockbuildings</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'blockbuilding-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'nama',
		'lokasi_blok',
		'image',
		'facts_info',
		'facilities_info',
		/*
		'sorts',
		'active',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
