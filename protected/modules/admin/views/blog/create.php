<?php
$this->breadcrumbs=array(
	'News & Article'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-book',
	'title'=>'News & Event',
	'subtitle'=>'Data News & Event',
);

$this->menu=array(
	array('label'=>'List News & Event', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<div class="row-fluid">
	<div class="span9">
		<h1>Add News & Article</h1>
		<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
	</div>
	<div class="span3">
		<?php //$this->renderPartial('/setting/page_menu') ?>
	</div>
</div>
