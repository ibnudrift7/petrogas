<?php 
$numbs = isset( $_GET['id'] )? intval($_GET['id']) : 1;

$criteria = new CDbCriteria;
$criteria->with = array('description');
$criteria->addCondition('description.language_id = :language_id');
$criteria->params[':language_id'] = $this->languageID;
$criteria->addCondition('t.id = :id');
$criteria->params[':id'] = intval( htmlspecialchars($numbs) );
$model = Service::model()->find($criteria);
?>
<div class="cover whatwedo">
  <div class="text">
  	<h2 class="what">Services</h2>
  	<p>Helping you to grow and perform optimally</p>
  </div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Services</a></li>
<!--		    <li class="breadcrumb-item"><a href="javascript:;">--><?php //echo ucwords( strtolower( $model->description->title) ) ?><!--</a></li>-->
		  </ol>
		  <div class="back float-right">
		  	<a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
		  </div>
		</nav>
	</div>
</section>

<section class="what-sec-1 d-none d-sm-block">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-25">
				<div class="box-aneh">
					<div class="image"><img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/service/'. $model->image; ?>" alt=""></div>
					<div class="bawah-gambar px-3 pt-3 d-none d-sm-block">
						<div class="row">
							<div class="col-md-5 col-xs-5 col-5">
								<img src="<?php echo $this->assetBaseurl; ?>logo-bawah-gambar.png" alt="">
							</div>
							<div class="col-md-55 col-xs-55 col-55">
								<p>Take the next steps with Corpus Prima Ventura, come contact us and talk to our consultants - let’s get your finance growing.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-35 pl-4">
				<div class="content">
					<div class="title">
						<p>Service Introduction</p>
					</div>
<!--					<div class="sub">-->
<!--						<p>By <span><img src="--><?php //echo $this->assetBaseurl; ?><!--what-corpus.png" alt=""></span></p>-->
<!--					</div>-->
				</div>
				<div class="content-utama">
					<div class="title">
						<p>Corpus Prima Ventura was established on 30 June 2014 as a part of Corpus Prima Mandiri. We provide funding solutions for businesses. We believe in helping businesses with an entrepreneurial spirit, integrity, passion, and commitment to thrive in what they do. We are registered with and overseen by Otoritas Jasa Keuangan (OJK).</p>
					</div>
					<div class="isi">
						Corpus Prima Ventura provides professional business solutions to clients. We also provide monetary support in the form of capital to startup companies, ailing companies and growing companies. We always strive to do our best for our clients. Presently, Corpus Prima Ventura is one of the leading and most profitable venture capital
						company in Indonesia.
					</div>
					<div class="py-4 d-none d-sm-block"></div>
					<div class="py-1"></div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="what-sec-1 d-block d-sm-none">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-35 pl-4 pb-3">
				<div class="content">
					<div class="title">
						<p><?php echo ucwords( strtolower( $model->description->title ) ) ?></p>
					</div>
					<div class="sub">
						<p>By <span><img src="<?php echo $this->assetBaseurl; ?>what-corpus.png" alt=""></span></p>
					</div>
				</div>
			</div>
			<div class="col-md-25">
				<div class="box-aneh">
					<div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $model['image'] ?>" alt=""></div>
					<div class="bawah-gambar px-3 pt-3 d-none d-sm-block">
						<div class="row">
							<div class="col-md-5 col-xs-5 col-5">
								<img src="<?php echo $this->assetBaseurl; ?>logo-bawah-gambar.png" alt="">
							</div>
							<div class="col-md-55 col-xs-55 col-55">
								<p>Take the next steps with Corpus Capital, come contact us and talk to our consultants - let’s get your finance growing.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="what-sec-2">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-25">
			</div>
			<div class="col-md-35 pl-4">
				<div class="row">
					<div class="col-md-60">
						<div class="box-content">
							<div class="title-utama">
								<h3>Our Services</h3>
							</div>
							<div class="content-isi">
								<h4>01. Venture Capital</h4>
								<p>Joint investment contract made between Corpus and the custodian bank, where Corpus as PMV is given the authority to manage the funds you invest</p>
							</div>
							<div class="content-isi">
								<h4>02. Capital Funding Facility</h4>
								<h5>Productive Business Financing</h5>
								<ul>
									<li>Financing of productive activities must be carried out in the form of distribution of funds to debtors that
										aim to produce goods and / or services that can increase income.</li>
									<li>This financing is carried out in the form of providing capital to business partners for a certain period of
										time for productive business activities with profit sharing in accordance with the agreement of both
										parties.</li>
								</ul>
								<h5>Equity Participation</h5>
								<p>Investments in shares are made through the purchase of shares from business partners that have not yet been traded on the stock exchange.</p>
								<h5>Obligation Conversion</h5>
								<p>Financing can also be in the form of purchasing a certificate of ownership conversion bond set forth in an agreement with a notary.</p>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</section>
