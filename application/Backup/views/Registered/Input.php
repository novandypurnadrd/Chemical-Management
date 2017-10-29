<!DOCTYPE html>
<html>
    <head>

      <?php $this->load->view('lib/Headlib') ?>

    </head>
    <body>
		<!-- top bar -->
		<?php $this->load->view('lib/Header') ?>

		<!-- main content -->
    <div id="main_wrapper">
			<div class="page_content">
				<div class="container-fluid">
					<div class="row">
            <form class="" method="post" action="<?php echo base_url().'Registered/Input/InputRegistered'?>" enctype="multipart/form-data">
              <div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Add New Chemical Record</div>
								<div class="panel-body">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
												<label for="No">Registered No.</label>
												<input required="on" type="text" id="No" name="No" autocomplete="off" class="form-control">
											</div>
                      <div class="form-group">
                        <label for="Name">Name</label>
                        <input required="on" type="text" id="Name" name="Name" autocomplete="off" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="Synonim">Synonim</label>
                        <input required="on" type="text" id="Synonim" name="Synonim" autocomplete="off" class="form-control">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Local_name">Local Name</label>
                        <input required="on" type="text" id="Local_name" name="Local_name" autocomplete="off" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="Original_form">Original Form</label>
                        <select required="on" id="Original_form" name="Original_form" class="form-control">
  												<option value="">Please Select...</option>
                          <option value="Gas">Gas</option>
                          <option value="Liquid">Liquid</option>
                          <option value="Solid">Solid</option>
                          <option value="Solution">Solution</option>
  											</select>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label for="Chemical_formula">Chemical Formula</label>
                        <input required="on" type="text" id="Chemical_formula" name="Chemical_formula" autocomplete="off" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="Packing">Packing Category</label>
                        <select required="on" id="Packing" name="Packing" class="form-control">
                          <option value="">Please Select...</option>
                          <option value="Small">Small</option>
                          <option value="Medium">Medium</option>
                          <option value="Bulk">Bulk</option>
                          <option value="Other">Other</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Grade_concentration">Grade & Concentration</label>
												<textarea required="on" name="Grade_concentration" id="Grade_concentration" cols="4" rows="3" class="form-control"></textarea>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Location">Location</label>
												<textarea required="on" name="Location" id="Location" cols="4" rows="3" class="form-control"></textarea>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Identification">Hazard Identification</label>
												<textarea required="on" name="Hazard_Identification" id="Hazard_Identification" cols="4" rows="3" class="form-control"></textarea>
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
                            <option value="<?php echo $category->Hazard_cat ?>"><?php echo $category->Hazard_cat ?></option>
                          <?php endforeach; ?>
  											</select>
											</div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
												<label for="Hazard_Remarks">Hazard Remarks</label>
                        <select required="on" id="Hazard_Remarks" name="Hazard_Remarks" class="form-control">
                          <?php foreach ($Category as $category): ?>
                            <option class="<?php echo $category->Hazard_cat ?>" value="<?php echo $category->Hazard_remarks ?>"><?php echo $category->Hazard_remarks ?></option>
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
		<!-- textarea autosize -->
		<script src="<?php echo base_url();?>assets/lib/autosize/jquery.autosize.min.js"></script>

		<!-- form extended elements functions -->
		<script src="<?php echo base_url();?>assets/js/apps/tisa_extended_elements.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.chained.min.js"></script>
    <script type="text/javascript">
			$("#Hazard_Remarks").chained("#Hazard_category");
    </script>

    </body>
</html>
