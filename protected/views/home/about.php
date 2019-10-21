<!-- illustration cover -->

<section class="coverpages ill-about">
	<!-- <div class="prelatife container"> -->
		<div class="inners_npage_ill">
			<h1>About Us</h1>
		</div>
		<div class="clear"></div>
	<!-- </div> -->
</section>

<section class="outers_inside back-white pg-about">

	<div class="prelatife container">
		<div class="outers_breadcrumbgrey">
			<div class="row">
				<div class="col-md-40">
					<nav aria-label="breadcrumb">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
					    <li class="breadcrumb-item active" aria-current="page">ABOUT US</li>
					  </ol>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="col-md-20 text-right">
					<div class="blocc_back">
						<a href="#" class="btn btn-link">BACK</a>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="insides">
			<div class="content-text t-about text-center">
				<div class="py-4"></div>
				<div class="mw1091 mx-auto">
				<h2><strong>We will open a new horizon of Korean finance.</strong><br>Going beyond the No. 1 financial group in Korea, we will take the lead in global financial markets.</h2>
				<p>Petrogas Jatim Utama Cendana is conducting business in the fields of exploration, evaluation, preparation, feasibility studies, exploitation, production, development, mining, processing, storage and transportation of oil and gas for upstream oil and gas activities in the Cepu Block.</p>
				<p>Woori Financial Group outstanding employees are providing the best possible financial services based on domestic sales networks, global networks outnumbering other financial groups, broad customer base including individual, business, and institutional clients, and differentiated digital competitiveness. By expanding our business portfolio, Woori Financial Group will offer a variety of financial services for customers’ needs and create comfortable financial environments applying new and digital technologies to finance. We will take the leap to become the global financial group leading both the Korean and global financial markets</p>
				</div>
				<div class="py-4"></div>
				<div class="in_banner row">
					<div class="col-md-30">
						<div class="pict"><img src="<?php echo $this->assetBaseurl ?>about-value.jpg" alt="" class="img-fluid"></div>
					</div>
					<div class="col-md-30 text-left">
						<div class="py-2"></div>
						<div class="pl-2">
						<h2><b>History And Value Behind Petrogas Jatim Utama Cendana</b></h2>
						<p>PT Petrogas Jatim Utama Cendana adalah sebuah perusahaan berstatus BUMD, yang merupakan anak perusahaan dari Petrogas Jatim Utama. Asal usul didirikannya PT Petrogas Jatim Utama Cendana tidak lain adalah guna meningkatkan pendapatan negara Indonesia di sektor Migas untuk keperluan jangka pendek.</p>
						<p>Asal usul didirikannya PT Petrogas Jatim Utama Cendana tidak lain adalah guna meningkatkan pendapatan negara Indonesia di sektor Migas untuk keperluan jangka pendek.</p>
						</div>
					</div>
				</div>
				

				<div class="clear"></div>
			</div>

			<div class="clear"></div>
		</div>
		<div class="py-3"></div>
		<div class="py-5"></div>
	</div>

	<?php 
		$data_milest = [
						[
							'pict'=>'milestones1.jpg',
							'titles'=>'1997',
							'subcontent'=>'The Birth of PT Petrogas',
						],
						[
							'pict'=>'milestones2.jpg',
							'titles'=>'2000',
							'subcontent'=>'The Birth of PT Petrogas Jatim Utama Cendana at East Java',
						],
						[
							'pict'=>'milestones3.jpg',
							'titles'=>'2008-2012',
							'subcontent'=>'Development and operations of Cepu Block oil refinery at East Java',
						],
						[
							'pict'=>'milestones4.jpg',
							'titles'=>'2013-2016',
							'subcontent'=>'Banyu Urip new development of oil exploration',
						],
						
					];
	 ?>

	<div class="block-milestone">
		<div class="prelatife container">
			<div class="content-text t-about text-center insides">
				<h2 class="subtitle text-center">Our Milestones</h2>
				<div class="my-3 py-3"></div>
				<div class="row text-left lists_milestones_dnitem">
					<?php foreach ($data_milest as $key => $value): ?>
					<div class="col-md-15">
						<div class="items">
							<div class="pict"><img src="<?php echo $this->assetBaseurl ?><?php echo $value['pict'] ?>" alt="" class="img img-fluid"></div>
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
				<div class="py-5"></div>
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
								<p>We strive to fulfil our social responsibilities as a financial group to help our society grow, and contribute to creating a future where the country, people, and our customers are prosperous and happy</p>
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
								<p>We strive to fulfil our social responsibilities as a financial group to help our society grow, and contribute to creating a future where the country, people, and our customers are prosperous and happy</p>
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
				<div class="py-3"></div>
				<div class="titlesN-log text-center">
					<img src="<?php echo $this->assetBaseurl ?>logo-npjuc-corevalue.png" alt="" class="img img-fluid">
				</div>
				<div class="py-5"></div>
				
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
					<img src="<?php echo $this->assetBaseurl ?>block_bottoms_missl.png" alt="" class="img img-fluid">
				</div>
				<div class="py-4"></div>

				<div class="clear"></div>
			</div>
		</div>
	</section>

</section>