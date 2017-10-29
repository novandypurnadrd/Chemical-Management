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
    <body onload="Other()">
		<!-- top bar -->
		<?php $this->load->view('lib/Header') ?>

		<!-- main content -->
    <div id="main_wrapper">
			<div class="page_content">
				<div class="container-fluid">
          <?php foreach ($Hazardous as $hazard): ?>
            <div class="row">
              <form class="" method="post" action="<?php echo base_url().'Hazardous/Update/UpdateHazardous/'.$no?>" enctype="multipart/form-data">
                <div class="col-lg-12">
				         <div class="panel panel-default">
  								<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Detail of Storing Requirement</div>
  								<div class="panel-body">
                    <div class="row">
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="No">Hazardous No.</label>
  												<label class="form-control" for="No" style="color:white;background-color:#c0392b"><?php echo $hazard->No ?></label>
  											</div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="Name">Name</label>
                          <label class="form-control" for="Name" style="color:white;background-color:#c0392b"><?php echo $hazard->Name ?></label>
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
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Tightly_Closed ?></label>
  											</div>
                        <div class="form-group">
  												<label for="Storing_Well_Ventilated">Well Ventilated</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Well_Ventilated ?></label>
  											</div>
                        <div class="form-group">
  												<label for="Storing_Away_Ignition">Away Ignition</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Away_Ignition ?></label>
  											</div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="Storing_Locked_Up">Locked Up</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Locked_Up ?></label>
                        </div>
                        <div class="form-group">
                          <label for="Storing_Dry_Cool">Dry Cool</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Dry_Cool ?></label>
                        </div>
                        <div class="form-group">
                          <label for="Storing_Other">Other</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Other ?></label>
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="Storing_Authorized_Personnel">Authorized Personnel</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Authorized_Personnel ?></label>
                        </div>
                        <div class="form-group">
                          <label for="Storing_Protect_Light">Protect Light</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Storing_Protect_Light ?></label>
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
                          <label class="form-control" style="border:none;" for="Name">
                            <?php
                              $incompabilities = explode(' ', $hazard->Incompabilities_Reg_Chemlist);
                              for ($i=0; $i < sizeof($incompabilities) ; $i++) {
                                if (strcasecmp($hazard->Incompabilities_Reg_Chemlist, "None") == 0 || strcasecmp($hazard->Incompabilities_Reg_Chemlist, "") == 0) {
                                  echo "None";
                                }
                                else { ?>
                                  <a href="<?php echo base_url().'Registered/Table/Detail/'.$incompabilities[$i] ?>" target="_blank"><?php echo $incompabilities[$i] ?></a>
                                <?php }
                              }
                            ?>
                          </label>
  											</div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="Incompabilities_Other_Chemical">Incompabilities to other Chemical</label>
                          <label class="form-control" for="Name"><?php echo $hazard->Incompabilities_Other_Chemical ?></label>
                        </div>
                      </div>
                    </div>
  								</div>
  							</div>
  						</div>
            </form>
					</div>
          <?php endforeach; ?>
				</div>
			</div>
		</div>

		<!-- side navigation -->
		<?php $this->load->view('lib/Navigation') ?>

		<!-- Footlib -->

    <?php $this->load->view('lib/Footlib') ?>

    <!-- page specific plugins -->
    </body>
</html>
