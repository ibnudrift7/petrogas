<?php
$this->breadcrumbs=array(
	'Statistik List'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Statistik List',
	'subtitle'=>'Add Statistik List',
);

$this->menu=array(
	array('label'=>'List Statistik List', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>