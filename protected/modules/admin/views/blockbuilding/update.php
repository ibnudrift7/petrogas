<?php
$this->breadcrumbs=array(
	'Blockbuildings'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Blockbuilding',
	'subtitle'=>'Edit Blockbuilding',
);

$this->menu=array(
	array('label'=>'List Blockbuilding', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Blockbuilding', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Blockbuilding', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>