<?php
$this->breadcrumbs=array(
	'What We Do'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-weixin',
	'title'=>'What We Do',
	'subtitle'=>'Edit What We Do',
);

$this->menu=array(
	array('label'=>'List What We Do', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add What We Do', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View What We Do', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<div class="row-fluid">
	<div class="span8">
		<h1>Update What We Do</h1>
		<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
	</div>
	<div class="span4">
		<?php //$this->renderPartial('/setting/page_menu') ?>
	</div>
</div>
