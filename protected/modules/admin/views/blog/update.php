<?php
$this->breadcrumbs=array(
	'News & Event'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-book',
	'title'=>'News & Event',
	'subtitle'=>'Data News & Event',
);

if ($model->category_id == 2) {
	$cat2 = 'financial';
	$cat = 2;
} else {
	$cat2=0;
	$cat = 0;
}


$this->menu=array(
	array('label'=>'List News & Event', 'icon'=>'th-list','url'=>array('index', 'category'=>$cat2)),
	array('label'=>'Add News & Event', 'icon'=>'plus-sign','url'=>array('create', 'category'=>$cat)),
	// array('label'=>'View News & Article', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<div class="row-fluid">
	<div class="span9">
		<h1>Edit News & Article</h1>
		<?php echo $this->renderPartial('_form',array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
	</div>
	<div class="span3">
		<?php //$this->renderPartial('/setting/page_menu') ?>
	</div>
</div>
