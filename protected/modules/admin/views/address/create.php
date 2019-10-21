<?php
$this->breadcrumbs=array(
	'Company Location'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-bank',
	'title'=>'Company Location',
	'subtitle'=>'Add Company Location',
);

$this->menu=array(
	array('label'=>'List Company Location', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>