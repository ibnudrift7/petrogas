<?php
$this->breadcrumbs=array(
	'Managements'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Managements','url'=>array('index')),
	array('label'=>'Add Managements','url'=>array('create')),
);
?>

<h1>Manage Managements</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'managements-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'type_board',
		'image',
		'name',
		'age',
		'position_en',
		/*
		'position_id',
		'content_en',
		'content_id',
		'sorts',
		'actives',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
