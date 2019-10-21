<?php
$this->breadcrumbs=array(
	'Company Location'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-bank',
	'title'=>'Company Location',
	'subtitle'=>'Edit Company Location',
);

$this->menu=array(
	array('label'=>'List Company Location', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Company Location', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Company Location', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>