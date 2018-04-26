<?php include "header.php";?>
	<!-- loading animation -->

    <?php foreach($css_files as $file): ?>
    	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
    <?php endforeach; ?>

<?php include "header2.php";?>    

    <div id="wrapper">
    	<?php include "sidebar.php";?>
<!--Body content-->
		<aside class="right-side">
	        <div id="content" class="clearfix">
	            <div class="contentwrapper"><!--Content wrapper-->
	                <!-- Build page from here: -->
	                <div style="padding: 10px">
						<?php echo $output; ?>
	                </div><!-- End .row-fluid -->
	                <!--End page -->
	                
	            </div><!-- End contentwrapper -->
	        </div><!-- End #content -->
    	</asside>
    </div><!-- End #wrapper -->

    <?php foreach($js_files as $file): ?>
    	<script src="<?php echo $file; ?>"></script>
    <?php endforeach; ?>
<?php include "footer.php";?>