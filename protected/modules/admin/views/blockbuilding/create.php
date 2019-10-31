<?php
$this->breadcrumbs=array(
	'Blockbuildings'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Blockbuilding',
	'subtitle'=>'Add Blockbuilding',
);

$this->menu=array(
	array('label'=>'List Blockbuilding', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>