<?php
$this->breadcrumbs=array(
	'Managements'=>array('index'),
	// $model->name=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Managements',
	'subtitle'=>'Edit Managements',
);

$this->menu=array(
	array('label'=>'List Managements', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Managements', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Managements', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>