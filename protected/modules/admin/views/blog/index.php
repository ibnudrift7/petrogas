<?php
$stn_parent = '';
$type_id = 0;
if ( isset($_GET['category']) && $_GET['category'] == 'financial' ) {
	$stn_parent = $_GET['category'];
	$type_id = 2;
}

$this->breadcrumbs=array(
	'News & Event',
);

$this->pageHeader=array(
	'icon'=>'fa fa-book',
	'title'=>'News & Event',
	'subtitle'=>'Data News & Event '. ucwords($stn_parent),
);

$this->menu=array(
	array('label'=>'Add News & Article', 'icon'=>'plus-sign','url'=>array('create', 'category'=> $type_id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<div class="row-fluid">
	<div class="span9">
	<h1>News & Article</h1>
		<?php $this->widget('bootstrap.widgets.TbGridView',array(
			'id'=>'promotion-grid',
			'dataProvider'=>$model->search($this->languageID),
			// 'filter'=>$model,
			'enableSorting'=>false,
			'summaryText'=>false,
			'type'=>'bordered',
			'columns'=>array(
				array(
		            'name'=>'title',
		        ),    
				// array(
		  //           'name'=>'writer_name',
		  //       ),    
				// array(
				// 	'name'=>'date_input',
				// 	'filter'=>false,
				// ),
				// array(
				// 	'name'=>'date_update',
				// 	'filter'=>false,
				// ),
				array(
					'name'=>'insert_by',
				),
				// array(
				// 	'name'=>'last_update_by',
				// ),
				array(
					'name'=>'active',
					'filter'=>array(
						'0'=>'Non Active',
						'1'=>'Active',
					),
					'type'=>'raw',
					'value'=>'($data->active == "1") ? "Di Tampilkan" : "Di Sembunyikan"',
				),
				array(
					'class'=>'bootstrap.widgets.TbButtonColumn',
					'template'=>'{update} {delete}'
				),
			),
		)); ?>
	</div>
	<div class="span3">
		<?php //$this->renderPartial('/setting/page_menu') ?>
	</div>
</div>
		