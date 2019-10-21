<?php
$this->breadcrumbs=array(
	'What We Do',
);

$this->pageHeader=array(
	'icon'=>'fa fa-weixin',
	'title'=>'What We Do',
	'subtitle'=>'Data What We Do',
);

$this->menu=array(
	array('label'=>'Add What We Do', 'icon'=>'plus-sign','url'=>array('create')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php if(Yii::app()->user->hasFlash('success')): ?>

    <?php $this->widget('bootstrap.widgets.TbAlert', array(
        'alerts'=>array('success'),
    )); ?>

<?php endif; ?>
<div class="row-fluid">
	<div class="span10">
<h1>What We Do</h1>
<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'faq-grid',
	'dataProvider'=>$model->search($this->languageID),
	// 'filter'=>$model,
	'enableSorting'=>false,
	'summaryText'=>false,
	'type'=>'bordered',
	'columns'=>array(
		// 'id',
		'description.title',
		array(
			'name'=>'status',
			'filter'=>array(
				'0'=>'Non Active',
				'1'=>'Active',
			),
			'type'=>'raw',
			'value'=>'($data->status == "1") ? "Di Tampilkan" : "Di Sembunyikan"',
			),
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'template'=>'{update} &nbsp; {delete}',
		),
	),
)); ?>
</div>
	<div class="span2">
		<?php // $this->renderPartial('/pages/page_menu') ?>
	</div>
</div>