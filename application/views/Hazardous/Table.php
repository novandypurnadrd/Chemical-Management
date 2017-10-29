<!DOCTYPE html>
<html>
    <head>

      <?php $this->load->view('lib/Headlib') ?>

      <!-- page specific stylesheets -->

      <!-- datatables -->
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/DataTables/media/css/jquery.dataTables.min.css">
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/DataTables/extensions/TableTools/css/dataTables.tableTools.min.css">
       <link rel="stylesheet" href="<?php echo base_url();?>assets/lib/DataTables/extensions/Scroller/css/dataTables.scroller.min.css">

    </head>
    <body>
		<!-- top bar -->
		<?php $this->load->view('lib/Header') ?>

		<!-- main content -->
    <div id="main_wrapper">
			<div class="page_content">
				<div class="container-fluid">
					<div class="row">
          <div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Storing Requirements & Incompabilities</div>
							<div class="panel-body">
								<table id="dt_scroll_x" class="table table-striped">
									<thead>
										<tr>
											<th>Action</th>
											<th>Hazardous. No</th>
											<th>Name</th>
											<th>Tightly Closed</th>
											<th>Keep Locked Up</th>
											<th>Authorized Personnel Only</th>
                      <th>Well Ventilated</th>
                      <th>Dry and Cool</th>
                      <th>Protect from Light/ sunlight</th>
                      <th>Away from Source of Ignition</th>
                      <th>Other</th>
                      <th>Incompabilities to Registered Chemicals</th>
											<th>Incompabilities to other Chemical</th>
										</tr>
									</thead>
									<tbody>
                    <?php foreach ($Hazardous as $hazard): ?>
                      <tr>
                        <td class="center">
                          <center>
                            <?php if ($this->session->userdata('rolechemical')=="1"): ?>
                              <a  class="btn btn-xs btn-danger" data-toggle="modal" data-target="#<?php echo $hazard->No; ?>">
                                <span class="fa fa-times"></span>
                              </a>
                              <a  class="btn btn-xs btn-warning" href="<?php echo base_url().'Hazardous/Table/Update/'.$hazard->No ?>">
                                <span class="fa fa-pencil"></span>
                              </a>
                            <?php endif; ?>
                            <a target="_blank"  class="btn btn-xs btn-success" href="<?php echo base_url().'Hazardous/Table/Detail/'.$hazard->No ?>">
                             <span class="fa fa-search"></span>
                            </a>
                          </center>
                        </td>
                        <td><?php echo $hazard->No ?></td>
                        <td><?php echo $hazard->Name ?></td>
                        <td><?php echo $hazard->Storing_Tightly_Closed ?></td>
                        <td><?php echo $hazard->Storing_Locked_Up ?></td>
                        <td><?php echo $hazard->Storing_Authorized_Personnel ?></td>
                        <td><?php echo $hazard->Storing_Well_Ventilated ?></td>
                        <td><?php echo $hazard->Storing_Dry_Cool ?></td>
                        <td><?php echo $hazard->Storing_Protect_Light ?></td>
                        <td><?php echo $hazard->Storing_Away_Ignition ?></td>
                        <td><?php echo $hazard->Storing_Other ?></td>
                        <td>
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
                        </td>
                        <td><?php echo $hazard->Incompabilities_Other_Chemical ?></td>
                      </tr>
                      <div class="modal fade" id="<?php echo $hazard->No; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-body">
														<h3>Are you sure? </h3>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
														<a> <?php echo anchor('/Hazardous/Table/DeleteHazardous/'.$hazard->No,'<button type="button" class="btn btn-danger">Delete</button>') ?></a>
													</div>
												</div>
											</div>
                    </div>
                    <?php endforeach; ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>

		<!-- side navigation -->
		<?php $this->load->view('lib/Navigation') ?>

		<!-- Footlib -->

    <?php $this->load->view('lib/Footlib') ?>

    <!-- page specific plugins -->

    <!-- datatables -->
  		<script src="<?php echo base_url();?>assets/lib/DataTables/media/js/jquery.dataTables.min.js"></script>
  		<script src="<?php echo base_url();?>assets/lib/DataTables/media/js/dataTables.bootstrap.js"></script>
  		<script src="<?php echo base_url();?>assets/lib/DataTables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
  		<script src="<?php echo base_url();?>assets/lib/DataTables/extensions/Scroller/js/dataTables.scroller.min.js"></script>

  		<!-- datatables functions -->
  		<script src="<?php echo base_url();?>assets/js/apps/tisa_datatables.js"></script>

    </body>
</html>
