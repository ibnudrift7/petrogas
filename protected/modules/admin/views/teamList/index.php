<?php
$this->breadcrumbs=array(
	'Team Lists',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Team List',
	'subtitle'=>'Data Team List',
);

$this->menu=array(
	array('label'=>'Add Team List', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Team List</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'team-list-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		// 'image',
		'title',
		/*
		'position_en',
		'position_id',
		'content',
		'sortings',
		'actives',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
