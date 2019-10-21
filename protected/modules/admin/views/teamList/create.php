<?php
$this->breadcrumbs=array(
	'Team Lists'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'TeamList',
	'subtitle'=>'Add TeamList',
);

$this->menu=array(
	array('label'=>'List TeamList', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>