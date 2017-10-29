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
								<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Update Chemical Record</div>
								<div class="panel-body">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
												<label for="No">Registered No.</label>
												<input required="on" type="text" id="No" name="No" autocomplete="off" class="form-control" value="<?php echo $reg->No ?>">
											</div>
                      <div class="form-group">
                        <label for="Name">Name</label>
                        <input required="on" type="text" id="Name" name="Name" autocomplete="off" class="form-control" value="<?php echo $reg->Name ?>">
                      </div>
                      <div class="form-group">
                        <label for="Synonim">Synonim</label>
                        <input required="on" type="text" id="Synonim" name="Synonim" autocomplete="off" class="form-control" value="<?php echo $reg->Synonim ?>">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Local_name">Local Name</label>
                        <input required="on" type="text" id="Local_name" name="Local_name" autocomplete="off" class="form-control" value="<?php echo $reg->Local_name ?>">
                      </div>
                      <div class="form-group">
                        <label for="Original_form">Original Form</label>
                        <select required="on" id="Original_form" name="Original_form" class="form-control">
  												<option value="">Please Select...</option>
                          <option value="Gas" <?php if($reg->Original_form == "Gas"){echo "selected = 'true'";} ?>>Gas</option>
                          <option value="Liquid" <?php if($reg->Original_form == "Liquid"){echo "selected = 'true'";} ?>>Liquid</option>
                          <option value="Solid" <?php if($reg->Original_form == "Solid"){echo "selected = 'true'";} ?>>Solid</option>
                          <option value="Solution" <?php if($reg->Original_form == "Solution"){echo "selected = 'true'";} ?>>Solution</option>
  											</select>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Chemical_formula">Chemical Formula</label>
                        <input required="on" type="text" id="Chemical_formula" name="Chemical_formula" autocomplete="off" class="form-control" value="<?php echo $reg->Chemical_formula ?>">
                      </div>
                      <div class="form-group">
                        <label for="Packing">Packing Category</label>
                        <select required="on" id="Packing" name="Packing" class="form-control">
                          <option value="">Please Select...</option>
                          <option value="Small" <?php if($reg->Packing == "Small"){echo "selected = 'true'";} ?>>Small</option>
                          <option value="Medium" <?php if($reg->Packing == "Medium"){echo "selected = 'true'";} ?>>Medium</option>
                          <option value="Bulk" <?php if($reg->Packing == "Bulk"){echo "selected = 'true'";} ?>>Bulk</option>
                          <option value="Other" <?php if($reg->Packing == "Other"){echo "selected = 'true'";} ?>>Other</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Grade_concentration">Grade & Concentration</label>
												<textarea required="on" name="Grade_concentration" id="Grade_concentration" cols="4" rows="3" class="form-control"><?php echo $reg->Grade_concentration ?></textarea>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Location">Location</label>
												<textarea required="on" name="Location" id="Location" cols="4" rows="3" class="form-control"><?php echo $reg->Location ?></textarea>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Identification">Hazard Identification</label>
												<textarea required="on" name="Hazard_Identification" id="Hazard_Identification" cols="4" rows="3" class="form-control"><?php echo $reg->Hazard_Identification ?></textarea>
											</div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_category">Hazard Category</label>
                        <select required="on" id="Hazard_category" name="Hazard_category" class="form-control">
  												<option value="">Please Select...</option>
                          <?php foreach ($Category as $category): ?>
                            <option value="<?php echo $category->Hazard_cat ?>" <?php if($reg->Hazard_category == $category->Hazard_cat){echo "selected = 'true'";} ?>><?php echo $category->Hazard_cat ?></option>
                          <?php endforeach; ?>
  											</select>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Remarks">Hazard Remarks</label>
                        <select required="on" id="Hazard_Remarks" name="Hazard_Remarks" class="form-control">
                          <?php foreach ($Category as $category): ?>
                            <option class="<?php echo $category->Hazard_cat ?>" value="<?php echo $category->Hazard_remarks ?>" <?php if($reg->Hazard_Remarks == $category->Hazard_remarks){echo "selected = 'true'";} ?>><?php echo $category->Hazard_remarks ?></option>
                          <?php endforeach; ?>
  											</select>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="file">MSDS</label>
												<input type="file" required="on" name="file" id="id-input-file-2" />
											</div>
                    </div>
                  </div>
                  <hr/>
                  <div class="row">
                    <div class="col-md-12" style="text-align:center">
                      <button type="submit" id="submit" class="btn btn-md btn-primary">
												<i class="ace-icon fa fa-save"></i>
												Update
											</button>
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
