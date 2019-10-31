<?php
$this->breadcrumbs=array(
	'Statistik List',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Statistik List',
	'subtitle'=>'Data Statistik List',
);

$this->menu=array(
	array('label'=>'Add Statistik List', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Statistik List</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'statistik-list-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		// 'tgl_statistik',
		array(
			'header'=>'Tgl Statistik',
			'type'=>'raw',
			'value'=>'$data->tgl_statistik',
		),
		'bopd',
		'mscfd',
		'bwpd',
		/*
		'image',
		'date_input',
		'status',
		'sorts',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
