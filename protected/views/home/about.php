<!-- illustration cover -->
<section class="coverpages ill-about" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['about_hero_image']; ?>');">
	<!-- <div class="prelatife container"> -->
		<div class="inners_npage_ill">
			<h1><?php echo $this->setting['about_hero_title'] ?></h1>
		</div>
		<div class="clear"></div>
	<!-- </div> -->
</section>

<section class="outers_inside back-white pg-about">
	<div class="prelatife container">
		<div class="outers_breadcrumbgrey">
			<div class="row">
				<div class="col-md-40 col-40">
					<nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
					    <li class="breadcrumb-item active" aria-current="page">ABOUT US</li>
					  </ol>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="col-md-20 text-right col-20">
					<div class="blocc_back">
						<a href="#" onclick="window.history.back();" class="btn btn-link">BACK</a>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="insides">
			<div class="content-text t-about text-center">
				<div class="py-4 d-none d-sm-block"></div>
				<div class="mw1091 mx-auto">
				<!-- <h2><strong>Opening new horizon of Indonesian Oil & Gas Industry.</strong><br>We are the no. 1 contributor in Indonesia, we will take the lead in nation’s oil and gas supplies.</h2>
				<p>Petrogas Jatim Utama Cendana is conducting business in the fields of exploration, evaluation, preparation, feasibility studies, exploitation, production, development, mining, processing, storage and transportation of oil and gas for upstream oil and gas activities in the Cepu Block.</p>
				<p>Petrogas Jatim Utama Cendana outstanding human resources on field and outside the field are providing the best possible exploration to distribution services based on domestic and global demand outnumbering other government oil and gas company in East Java. By continously expanding our operation field, Petrogas Jatim Utama Cendana will offer a variety of products for corporate needs and create comfortable chain supply environments applying digital transparancy to finance. We will take the leap to become the national group leading both the Indonesian and East Java distribution.</p> -->
				<?php echo $this->setting['about1_content'] ?>
				</div>
				<div class="py-4"></div>
				<div class="in_banner row">
					<div class="col-md-30">
						<div class="pict"><img src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['about2_pictures'] ?>" alt="" class="img-fluid"></div>
					</div>
					<div class="col-md-30 text-left">
						<div class="content-boxx">
							<div class="pl-2">
								<?php echo $this->setting['about_history_content'] ?>
								<!-- <h2><b>History And Value Behind Petrogas Jatim Utama Cendana</b></h2>
								<p>PT Petrogas Jatim Utama Cendana is a BUMD (govern under a province), which was a subsidiary company from Petrogas Jatim Utama. The reason of the establishment of PT Petrogas Jatim Utama Cendana is none other than to increase Indonesia's state revenue in the oil and gas sector for short-term purposes.</p>
								<p>Currently holding the biggest possession of oil and gas exploration in East Java, PT Petrogas Jatim Utama Cendana is one of the main pilar of the oil distribution system in Indonesia.</p> -->
							</div>
						</div>
					</div>
				</div>
				

				<div class="clear"></div>
			</div>

			<div class="clear"></div>
		</div>
		<div class="py-3"></div>
		<div class="py-5 d-none d-sm-block"></div>
	</div>

	<?php 
		$data_milest = [
						[
							'pict'=> $this->setting['about_milestones_picture_1'] ,
							'titles'=> $this->setting['about_milestones_title_1'],
							'subcontent'=> $this->setting['about_milestones_info_1'],
						],
						[
							'pict'=> $this->setting['about_milestones_picture_2'] ,
							'titles'=> $this->setting['about_milestones_title_2'],
							'subcontent'=> $this->setting['about_milestones_info_2'],
						],
						[
							'pict'=> $this->setting['about_milestones_picture_3'] ,
							'titles'=> $this->setting['about_milestones_title_3'],
							'subcontent'=> $this->setting['about_milestones_info_3'],
						],
						[
							'pict'=> $this->setting['about_milestones_picture_4'] ,
							'titles'=> $this->setting['about_milestones_title_4'],
							'subcontent'=> $this->setting['about_milestones_info_4'],
						],
						
					];
	 ?>

	<div class="block-milestone">
		<div class="prelatife container">
			<div class="content-text t-about text-center insides">
				<h2 class="subtitle text-center">Our Milestones</h2>
				<div class="my-3 py-3 d-none d-sm-block"></div>
				<div class="row text-left lists_milestones_dnitem">
					<?php foreach ($data_milest as $key => $value): ?>
					<div class="col-md-15">
						<div class="items">
							<div class="pict"><img src="<?php echo Yii::app()->baseUrl.'/images/static/' ?><?php echo $value['pict'] ?>" alt="" class="img img-fluid"></div>
							<div class="info">
								<h4 class="subtitles"><?php echo $value['titles'] ?></h4>
								<div class="clear"></div>
								<p><?php echo $value['subcontent'] ?></p>
							</div>
						</div>
					</div>
					<?php endforeach ?>

				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	
	<div class="outers_block_visionnmission">
		<div class="prelatife container">
			<div class="insides content-text">
				<h2 class="subtitle text-center">Vision & Mission</h2>
				<div class="py-5 d-none d-sm-block"></div>
				<div class="row">
					<div class="col-md-30">
						<div class="inners_vision">
							<div class="d-inline-block align-top b-titles">
								<h4>Our Vision</h4>
							</div>
							<div class="d-inline-block align-top b-lines pt-2 mx-4">
								<div class="lines-grey"></div>
							</div>
							<div class="d-inline-block align-top b-info">
								<?php echo $this->setting['about_visi'] ?>
							</div>
						</div>
					</div>
					<div class="col-md-30">
						<div class="inners_vision">
							<div class="d-inline-block align-top b-titles">
								<h4>Our Mission</h4>
							</div>
							<div class="d-inline-block align-top b-lines pt-2 mx-4">
								<div class="lines-grey"></div>
							</div>
							<div class="d-inline-block align-top b-info">
								<?php echo $this->setting['about_misi'] ?>
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
	</div>

	<section class="backs_bottom_corevalues py-5">
		<div class="prelatife container">
			<div class="insides py-5 text-center">
				<div class="py-3 d-none d-sm-block"></div>
				<div class="titlesN-log text-center">
					<img src="<?php echo $this->assetBaseurl ?>logo-npjuc-corevalue.png" alt="" class="img img-fluid">
				</div>
				<div class="py-5 d-none d-sm-block"></div>
				<div class="py-4 d-block d-sm-none"></div>
				
				<!-- <div class="lists_colmn_people d-block mx-auto">
					<div class="row no-gutters">
						<div class="col-md-15 py-5">
							<div class="ins black py-4 my-1"><p class="py-5">Honesty</p></div>
						</div>
						<div class="col-md-15 py-5">
							<div class="ins py-4 my-1"><p class="py-5">Trust</p></div>
						</div>
						<div class="col-md-15 py-5">
							<div class="ins py-4 my-1"><p class="py-5">People<br>First</p></div>
						</div>
						<div class="col-md-15 py-5">
							<div class="ins py-4 my-1"><p class="py-5">Future</p></div>
						</div>
					</div>
					<div class="clear"></div>
				</div> -->
				<div class="dn_banners d-block mx-auto">
					<img src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['about_pujv_banner'] ?>" alt="" class="img img-fluid">
				</div>
				<div class="py-3 d-block d-sm-none"></div>
				<div class="py-4 d-none d-sm-block"></div>

				<div class="clear"></div>
			</div>
		</div>
	</section>

</section>

<style>
	.content-boxx{
		display: table;
		vertical-align: middle;
		height: 100%;
		width: 100%;
	}
	.content-boxx .pl-2{
		vertical-align: middle;
		display: table-cell;
		height: 100%;
	}
</style>
