<?php
$this->breadcrumbs=array(
	'Team Lists'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TeamList','url'=>array('index')),
	array('label'=>'Add TeamList','url'=>array('create')),
);
?>

<h1>Manage Team Lists</h1>
<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'team-list-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'image',
		'title',
		'position_en',
		'position_id',
		'content',
		/*
		'sortings',
		'actives',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
