<?php
$this->breadcrumbs=array(
	'Managements',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Managements',
	'subtitle'=>'Data Managements',
);

$this->menu=array(
	array('label'=>'Add Managements', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Managements</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'managements-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		// 'type_board',
		// 'image',
		'name',
		'age',
		/*
		'position_en',
		'position_id',
		'content_en',
		'content_id',
		'sorts',
		'actives',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
