<?php
$this->breadcrumbs=array(
	'What We Do'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-weixin',
	'title'=>'What We Do',
	'subtitle'=>'Add What We Do',
);

$this->menu=array(
	array('label'=>'List What We Do', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?><br/><br/>
<div class="row-fluid">
	<div class="span8">
		<h1>Add What We Do</h1>
		<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
	</div>
	<div class="span4">
		<?php //$this->renderPartial('/setting/page_menu') ?>
	</div>
</div>
