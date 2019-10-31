<?php
$this->breadcrumbs=array(
	'Statistik Lists'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List StatistikList','url'=>array('index')),
	array('label'=>'Add StatistikList','url'=>array('create')),
);
?>

<h1>Manage Statistik Lists</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'statistik-list-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'tgl_statistik',
		'bopd',
		'mscfd',
		'bwpd',
		'image',
		/*
		'date_input',
		'status',
		'sorts',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
