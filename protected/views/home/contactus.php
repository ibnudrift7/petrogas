<div class="cover contact" style="background-image: url('<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['contact_hero_image']; ?>');">
  <div class="text">
  	<!-- <h2 class="what">Investor Relations</h2> -->
  	<p><?php echo $this->setting['contact_hero_title'] ?></p>
  </div>
</div>

<section class="breadcrumb-insides">
	<div class="prelative container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
		    <li class="breadcrumb-item"><a href="#"><?php echo $this->setting['contact_hero_title'] ?></a></li>
		    <!-- <li class="breadcrumb-item"><a href="#">FINANCIAL HIGHLIGHTS</a></li> -->
		  </ol>
		  <div class="back float-right">
		  	<a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><span><img src="<?php echo $this->assetBaseurl; ?>arrow-back.png" alt=""></span>BACK TO PREVIOUS PAGE</a>
		  </div>
		</nav>
	</div>
</section>

<section class="contact-sec-1">
    <div class="prelative container">
        <div class="row w-100">
            <div class="col-md-30">
                <div class="content">
                    <div class="lets">
                        <p><?php echo $this->setting['contact_top_title'] ?></p>
                    </div>
                    <div class="title">
                        <p><?php echo $this->setting['contact_content'] ?></p>
                    </div>
                    <div class="fill">
                        <p><?php echo $this->setting['contact_bottom_content'] ?></p>
                    </div>
                </div>

                <form method="post" action="#" onsubmit="alert('underconstruction'); return false;">
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-12 col-20 col-form-label">Full Name</label>
                        <div class="col-sm-35 col-40">
                        <input type="text" class="form-control" id="inputEmail3" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-12 col-20 col-form-label">Company</label>
                        <div class="col-sm-35 col-40">
                        <input type="text" class="form-control" id="inputPassword3" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-12 col-20 col-form-label">Telephone</label>
                        <div class="col-sm-35 col-40">
                        <input type="text" class="form-control" id="inputPassword3" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-12 col-20 col-form-label">Email</label>
                        <div class="col-sm-35 col-40">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-12 col-20 col-form-label">Message</label>
                        <div class="col-sm-35 col-40">
                        <!-- <input type="email" class="form-control" id="inputEmail3" placeholder=""> -->
                        <textarea class="form-control" name="" id="" cols="" rows=""></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12 col-20"></div>
                        <div class="col-sm-35 col-40">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>

                </form>
            </div>
            <div class="col-md-30">
                <div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?>Layer-33.jpg" alt=""></div>
            </div>
        </div>
    </div>
</section>

<div class="bawah-section">
    <div class="prelative container">
        <div class="row w-100">
            <div class="col-md-30">
                <?php if (Yii::app()->language == 'en'): ?>
                <p>Alternatively for a quicker response, you can contact the nearest Corpus office to you below during the weekdays office hours. Our account officers will be at your service.</p>
                <?php else: ?>
                <p>Atau untuk respons yang lebih cepat, Anda dapat menghubungi kantor Corpus terdekat di bawah ini selama jam kantor hari kerja. Petugas akun kami akan siap melayani Anda.</p>
                <?php endif ?>
            </div>
        </div>
    </div>
</div>

<section class="contact-sec-2">
    <div class="prelative container">
        <div class="row w-100">
            <div class="col-md-60">
                <div class="head-title">
                    <?php if (Yii::app()->language == 'en'): ?>
                    <p><span><img src="<?php echo $this->assetBaseurl; ?>contact-logo.png" alt=""></span>Corpus Headquarter & Offices</p>
                    <?php else: ?>
                    <p><span><img src="<?php echo $this->assetBaseurl; ?>contact-logo.png" alt=""></span>Kantor Pusat & Kantor Corpus</p>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <div class="row w-100 pt-4">
            <?php 
            $m_address = Address::model()->findAll();
            ?>
            <?php foreach ($m_address as $key => $value): ?>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5><?php echo $value->nama ?></h5>
                                    <h4><?php echo $value->address_1 ?></h4>
                                    <p><?php echo nl2br($value->address_2) ?></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(305,203, '/images/address/'. $value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach ?>

            <!-- <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Kapital Manajemen</h5>
                                    <h4>Branch Office</h4>
                                    <p>Sahid Sudirman Center Lantai 49 Unit B <br> Jl. Jendral Sudirman No. 86 <br> Jakarta Pusat, 10220</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Bali</h5>
                                    <h4>Branch Office</h4>
                                    <p>Jl. Raya Padang Luwih No. 8 (Kav. 2) <br> Kerobokan Kaja - Kuta Utara, <br> Denpasar, 80361</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Malang</h5>
                                    <h4>Branch Office</h4>
                                    <p>Jl. Buring No. 1 (Kav. 6) <br> Oro-Oro Dowo, Klojen <br> Kota Malang, 65119</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con4.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Jakarta</h5>
                                    <h4>Branch Office</h4>
                                    <p>Equity Tower 15H <br> Jl. Jendral Sudirman 52-53 <br> Jakarta Pusat, 12190</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con5.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Medan</h5>
                                    <h4>Branch Office</h4>
                                    <p>Komplek Ruko Royal Residence <br> Jl. Palang Merah No. 15-16 <br> 20151</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Bandung</h5>
                                    <h4>Branch Office</h4>
                                    <p>Wisma Monex 9C <br> Jl. Asia Afrika No. 133 <br> 40112</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con7.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="kartu-contact">
                    <div class="row no-gutters">
                        <div class="col-md-30">
                            <div class="kiri">
                                <div class="content">
                                    <h5>Corpus Semarang</h5>
                                    <h4>Branch Office</h4>
                                    <p>Jl. Seroja Dalam A2 <br> Karang Kidul, 50241</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-30">
                            <div class="kanan">
                                <img class="w-100" src="<?php echo $this->assetBaseurl; ?>con8.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
    <div class="pb-5"></div>
    <div class="pb-5"></div>
</section>
