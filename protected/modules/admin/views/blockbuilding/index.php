<?php
$this->breadcrumbs=array(
	'Block Building',
);

$this->pageHeader=array(
	'icon'=>'fa fa-minus',
	'title'=>'Block Building',
	'subtitle'=>'Data Block Building',
);

$this->menu=array(
	// array('label'=>'Add Block Building', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<h1>Block Building</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'blockbuilding-grid',
	'dataProvider'=>$model->search(),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		'nama',
		'lokasi_blok',
		// 'image',
		/*
		'facts_info',
		'facilities_info',
		'sorts',
		'active',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			// 'template'=>'{update} &nbsp; {delete}',
			'template'=>'{update}',
		),
	),
)); ?>
