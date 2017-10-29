<!DOCTYPE html>
<html>
    <head>

      <?php $this->load->view('lib/Headlib') ?>

      <!-- page specific stylesheets -->

       <!-- datepicker -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/bootstrap-datepicker/css/datepicker3.css">
       <!-- date range picker -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/bootstrap-daterangepicker/daterangepicker-bs3.css">
       <!-- timepicker -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
       <!-- ion.rangeSlider -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/ion.rangeSlider/css/ion.rangeSlider.css">
       <!-- bootstrap switches -->
       <link href="<?php echo base_url();?>assets/lib/bootstrap-switch/build/css/bootstrap3/bootstrap-switch.css" rel="stylesheet">
       <!-- 2col multiselect -->
       <link href="<?php echo base_url();?>assets/lib/multi-select/css/multi-select.css" rel="stylesheet">
       <!-- multiselect, tagging -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/select2/select2.css">

    </head>
    <body>
		<!-- top bar -->
		<?php $this->load->view('lib/Header') ?>

		<!-- main content -->
    <div id="main_wrapper">
			<div class="page_content">
				<div class="container-fluid">
					<div class="row">
            <?php foreach ($Registered as $reg): ?>
              <form class="" method="post" action="<?php echo base_url().'Registered/Update/UpdateRegistered/'.$no?>" enctype="multipart/form-data">
              <div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Detail of Chemicals Record</div>
								<div class="panel-body">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
												<label for="No">Registered No.</label>
                        <label class="form-control" for="" style="color:white;background-color:#c0392b"><?php echo $reg->No ?></label>
											</div>
                      <div class="form-group">
                        <label for="Name">Name</label>
                        <label class="form-control" for="" style="color:white;background-color:#c0392b"><?php echo $reg->Name ?></label>
                      </div>
                      <div class="form-group">
                        <label for="Synonim">Synonim</label>
                        <label class="form-control" for=""><?php echo $reg->Synonim ?></label>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Local_name">Local Name</label>
                        <label class="form-control" for=""><?php echo $reg->Local_name ?></label>
                      </div>
                      <div class="form-group">
                        <label for="Original_form">Original Form</label>
                        <label class="form-control" for=""><?php echo $reg->Original_form ?></label>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Chemical_formula">Chemicals Formula</label>
                        <label class="form-control" for=""><?php echo $reg->Chemical_formula ?></label>
                      </div>
                      <div class="form-group">
                        <label for="Packing">Packing Category</label>
                        <label class="form-control" for=""><?php echo $reg->Packing ?></label>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Grade_concentration">Grade & Concentration</label>
                        <label class="form-control" for=""><?php echo $reg->Grade_concentration ?></label>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Location">Location</label>
                        <label class="form-control" for=""><?php echo $reg->Location ?></label>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Identification">Hazard Identification</label>
                        <label class="form-control" for=""><?php echo $reg->Hazard_Identification ?></label>
											</div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_category">Hazard Category</label>
                        <label class="form-control" for=""><?php echo $reg->Hazard_category ?></label>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Remarks">Hazard Remarks</label>
                        <label class="form-control" for=""><?php echo $reg->Hazard_Remarks ?></label>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="file">MSDS</label>
                        <?php
                          if ($reg->file == "") {
                            $temp = explode('-',$reg->No)[1];
                            $url = "../pdf/MSDS ".$temp.'.pdf';?>
                            <a href="<?php echo $url ?>" target="_blank"><?php echo $reg->No ?></a>
                        <?php  }
                          else { ?>
                            <a target="_blank" href="<?php echo $reg->file ?>"><?php echo explode('.',explode('/',$reg->file)[2])[0]; ?></a>
                        <?php  }
                         ?>
											</div>
                    </div>
                  </div>
								</div>
							</div>
				      </div>
            </form>
            <?php endforeach; ?>
					</div>
				</div>
			</div>
		</div>

		<!-- side navigation -->
		<?php $this->load->view('lib/Navigation') ?>

		<!-- Footlib -->

    <?php $this->load->view('lib/Footlib') ?>

    <!-- page specific plugins -->

		<!--  datepicker -->
		<script src="<?php echo base_url();?>assets/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<!-- date range picker -->
		<script src="<?php echo base_url();?>assets/lib/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- timepicker -->
		<script src="<?php echo base_url();?>assets/lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		<!-- ion.rangeSlider -->
		<script src="<?php echo base_url();?>assets/lib/ion.rangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
		<!--  bootstrap switches -->
		<script src="<?php echo base_url();?>assets/lib/bootstrap-switch/build/js/bootstrap-switch.min.js"></script>
		<!--  2col multiselect -->
		<script src="<?php echo base_url();?>assets/lib/multi-select/js/jquery.multi-select.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.quicksearch.js"></script>
		<!-- multiselect, tagging -->
		<script src="<?php echo base_url();?>assets/lib/select2/select2.min.js"></script>
		<!-- textarea autosize -->
		<script src="<?php echo base_url();?>assets/lib/autosize/jquery.autosize.min.js"></script>
		<!-- masked inputs -->
		<script src="<?php echo base_url();?>assets/lib/jquery.inputmask/dist/jquery.inputmask.bundle.min.js"></script>

		<!-- form extended elements functions -->
		<script src="<?php echo base_url();?>assets/js/apps/tisa_extended_elements.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.chained.min.js"></script>
    <script type="text/javascript">
			$("#Hazard_Remarks").chained("#Hazard_category");
    </script>

    </body>
</html>
