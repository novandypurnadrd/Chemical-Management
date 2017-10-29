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

       <link href="<?php echo base_url();?>assets/magicsuggest/magicsuggest-min.css" rel="stylesheet">

    </head>
    <body>
		<!-- top bar -->
		<?php $this->load->view('lib/Header') ?>

		<!-- main content -->
    <div id="main_wrapper">
			<div class="page_content">
				<div class="container-fluid">
					<div class="row">
            <form class="" method="post" action="<?php echo base_url().'Hazardous/Input/InputHazardous'?>" enctype="multipart/form-data">
              <div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Add New Storing Requirement</div>
								<div class="panel-body">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
												<label for="No">Hazardous No.</label>
												<input required="on" type="text" id="No" name="No" autocomplete="off" class="form-control">
											</div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Name">Name</label>
                        <input required="on" type="text" id="Name" name="Name" autocomplete="off" class="form-control">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12">
                      <h4 style="text-align:bold">Storing</h4>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
												<label for="Storing_Tightly_Closed">Tightly Closed</label>
                        <select required="on" id="Storing_Tightly_Closed" name="Storing_Tightly_Closed" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
											</div>
                      <div class="form-group">
												<label for="Storing_Well_Ventilated">Well Ventilated</label>
                        <select required="on" id="Storing_Well_Ventilated" name="Storing_Well_Ventilated" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
											</div>
                      <div class="form-group">
												<label for="Storing_Away_Ignition">Away Ignition</label>
                        <select required="on" id="Storing_Away_Ignition" name="Storing_Away_Ignition" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
											</div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Storing_Locked_Up">Locked Up</label>
                        <select required="on" id="Storing_Locked_Up" name="Storing_Locked_Up" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="Storing_Dry_Cool">Dry Cool</label>
                        <select required="on" id="Storing_Dry_Cool" name="Storing_Dry_Cool" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="Storing_Other">Other</label>
                        <select required="on" id="Storing_Other" name="Storing_Other" class="form-control" onchange="Other()">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Storing_Authorized_Personnel">Authorized Personnel</label>
                        <select required="on" id="Storing_Authorized_Personnel" name="Storing_Authorized_Personnel" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="Storing_Protect_Light">Protect Light</label>
                        <select required="on" id="Storing_Protect_Light" name="Storing_Protect_Light" class="form-control">
                          <option value="N/R">N/R</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                      <div class="form-group" id="Other">

                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-12">
                      <h4 style="text-align:bold">Incompabilities</h4>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
												<label for="Incompabilities_Reg_Chemlist">Incompabilities to Registered Chemicals</label>
                        <input name="Incompabilities_Reg_Chemlist" id="magicsuggest" required="on">
											</div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label for="Incompabilities_Other_Chemical">Incompabilities to other Chemical</label>
                        <input name="Incompabilities_Other_Chemical" id="Incompabilities_Other_Chemical" autocomplete="off" class="form-control">
                      </div>
                    </div>
                  </div>
                  <hr/>
                  <div class="row">
                    <div class="col-md-12" style="text-align:center">
                      <button type="submit" id="submit" class="btn btn-md btn-primary">
												<i class="ace-icon fa fa-save"></i>
												Insert
											</button>
                    </div>
                  </div>
								</div>
							</div>
						</div>
            </form>
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
    <script src="<?php echo base_url();?>assets/magicsuggest/magicsuggest-min.js"></script>
    <script type="text/javascript">
      function Other() {
        var Storing_Other = document.getElementById("Storing_Other").value;
        var Other = document.getElementById("Other");

        if (Storing_Other == "Yes") {
          Other.innerHTML = '<label for="Name">Type Here..</label><input required="on" type="text" name="Other_Value" autocomplete="off" class="form-control">';
        }
        else {
          Other.innerHTML = "";
        }

      }
			$("#Hazard_Remarks").chained("#Hazard_category");
      $(function() {
          $('#magicsuggest').magicSuggest({
            allowFreeEntries : false,
            data: [
              <?php foreach ($Registered as $reg): ?>
              '<?php echo $reg->No ?>',
              <?php endforeach; ?>
            ]
          });
      });
    </script>
    </body>
</html>
