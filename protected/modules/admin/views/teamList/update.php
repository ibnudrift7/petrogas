<?php
$this->breadcrumbs=array(
	'Team Lists'=>array('index'),
	// $model->title=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Team List',
	'subtitle'=>'Edit Team List',
);

$this->menu=array(
	array('label'=>'List Team List', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Team List', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Team List', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>