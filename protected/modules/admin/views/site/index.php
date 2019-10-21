<?php
$this->breadcrumbs=array(
    'Dashboard',
);
?>
    
<div class="pageheader">
    
    <div class="pageicon"><span class="fa fa-laptop"></span></div>
    <div class="pagetitle">
        <h5>All Features Summary</h5>
        <h1>Dashboard</h1>
    </div>
</div><!--pageheader-->

<div class="maincontent">
    <div class="maincontentinner">
        <div class="row-fluid">
            <div id="dashboard-left" class="span8">
                    <h5 class="subtitle">Menu</h5>

                    <ul class="shortcuts">
                        <li class="events">
                            <a href="<?php echo CHtml::normalizeUrl(array('/admin/blog/index')); ?>">
                                <i class="icon-cms fa fa-tag"></i>
                                <span class="shortcuts-label">Blog</span>
                            </a>
                        </li>
                        <li class="products">
                            <a href="<?php echo CHtml::normalizeUrl(array('/admin/slide/index')); ?>">
                                <i class="icon-cms fa fa-image"></i>
                                <span class="shortcuts-label">Slide</span>
                            </a>
                        </li>
                        <li class="archive">
                            <a href="<?php echo CHtml::normalizeUrl(array('/admin/static/about')); ?>">
                                <i class="icon-cms fa fa-info"></i>
                                <span class="shortcuts-label">About Us</span>
                            </a>
                        </li>
                        <li class="archive">
                            <a href="<?php echo CHtml::normalizeUrl(array('/admin/static/contact')); ?>">
                                <i class="icon-cms fa fa-phone"></i>
                                <span class="shortcuts-label">Contact Us</span>
                            </a>
                        </li>

                </ul>


            </div> <!-- span-8 -->
            
            <div id="dashboard-right" class="span4">
                
                <h5 class="subtitle">Announcements</h5>
                
                <div class="divider15"></div>

                <div class="alert alert-block">
                      <button data-dismiss="alert" class="close" type="button">&times;</button>
                      <p style="margin: 8px 0">Download User Guide</p>
                      <!-- <p style="margin: 8px 0">Lihat User Guide <a href="<?php echo Yii::app()->baseUrl.'/images/user-guide.pdf' ?>">di sini</a> </p> -->
                </div>
                
                <br />
                
                                        
            </div><!--span4-->
        </div><!--row-fluid-->
        
        <div class="footer">
            <div class="footer-left">
                <span>Copyright &copy; <?php echo date('Y'); ?> by <?php echo Yii::app()->name ?>.</span>
            </div>
            <div class="footer-right">
                <span>All Rights Reserved. Developed By <a target="_blank" href="http://markdesign.net">Markdesign</a></span>
            </div>
        </div><!--footer-->
        
    </div><!--maincontentinner-->
</div><!--maincontent-->
