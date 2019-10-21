<div class="cover whatwedo">
	<div class="text">
		<h2 class="what">Case Studies</h2>
<!--		<p>Helping you to grow and perform optimally</p>-->
	</div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
				<li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Case Studies</a></li>
				<!--		    <li class="breadcrumb-item"><a href="javascript:;">--><?php //echo ucwords( strtolower( $model->description->title) ) ?><!--</a></li>-->
			</ol>
			<div class="back float-right">
				<a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
			</div>
		</nav>
	</div>
</section>

<section class="case-sec-1">
	<div class="prelative container">
		<div class="title">
			<p>Case Studies</p>
		</div>
		<div class="row">
			<?php for($i=0;$i<=2;$i++){ ?>
				<div class="col-md-20">
					<div class="box-isi-content">
						<p>I've had great success with Corpus Prima Ventura, thanks to the knowledgeable staff who make every effort to find the right solutions for my business. They are very attentive to my needs and get things done quickly. True professionals.</p>
						<h3>Jerry Brilianto</h3>
						<h4>Alfa Midi Franchisee</h4>
					</div>
				</div>
				<div class="col-md-20">
					<div class="box-isi-content">
						<p>Corpus Prima Ventura trully understoods my situation and partnered me up with a perfect solution freeing up more than IDR 800 million of cash flow. Thank you Corpus for your ability to help business owners like me, I highly recommend your services.</p>
						<h3>Anthony Layola</h3>
						<h4>Dewani Digital Printing</h4>
					</div>
				</div>
				<div class="col-md-20">
					<div class="box-isi-content">
						<p>Excellent service! Highly recommended! Funding in less than a couple of days! If you need funding, don't go to the bank, go to Corpus Prima Ventura!</p>
						<h3>David Anis</h3>
						<h4>Alfa Midi Franchisee</h4>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>
