<?php
$this->breadcrumbs=array(
	'Statistik List'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Statistik List',
	'subtitle'=>'Edit Statistik List',
);

$this->menu=array(
	array('label'=>'List Statistik List', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Statistik List', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Statistik List', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>