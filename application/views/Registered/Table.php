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
							<div class="panel-heading" style="font-weight:bold"> <img src="<?php echo base_url();?>pictures/KBK Logo.png" alt="Logo" width="140px"> - Registered Chemicals</div>
							<div class="panel-body">
								<table id="dt_scroll_x" class="table table-striped">
									<thead>
										<tr>
											<th>Action</th>
											<th>Registered. No</th>
											<th>Name</th>
											<th>Chemical Formula</th>
											<th>Packing Category</th>
											<th>Grade & Concentration</th>
                      <th>Location</th>
                      <th>Hazard Identification</th>
                      <th>Hazard Category</th>
                      <th>Hazard Remarks</th>
											<th>MSDS</th>
										</tr>
									</thead>
									<tbody>
                    <?php foreach ($Registered as $reg): ?>
                      <tr>
                        <td class="center">
                          <center>
                            <?php if ($this->session->userdata('rolechemical')=="1"): ?>
                              <a  class="btn btn-xs btn-danger" data-toggle="modal" data-target="#<?php echo $reg->No; ?>">
                                <span class="fa fa-times"></span>
                              </a>
                              <a  class="btn btn-xs btn-warning" href="<?php echo base_url().'Registered/Table/Update/'.$reg->No ?>">
                                <span class="fa fa-pencil"></span>
                              </a>
                            <?php endif; ?>
                            <a target="_blank"  class="btn btn-xs btn-success" href="<?php echo base_url().'Registered/Table/Detail/'.$reg->No ?>">
                             <span class="fa fa-search"></span>
                            </a>
                          </center>
                        </td>
                        <td><?php echo $reg->No ?></td>
                        <td><?php echo $reg->Name ?></td>
                        <td><?php echo $reg->Chemical_formula ?></td>
                        <td><?php echo $reg->Packing ?></td>
                        <td><?php echo $reg->Grade_concentration ?></td>
                        <td><?php echo $reg->Location ?></td>
                        <td><?php echo $reg->Hazard_Identification ?></td>
                        <td><?php echo $reg->Hazard_category ?></td>
                        <td><?php echo $reg->Hazard_Remarks ?></td>
                        <?php
                          if ($reg->file == "") {
                            $temp = explode('-',$reg->No)[1];
                            $url = "../pdf/MSDS ".$temp.'.pdf';?>
                            <td><a href="<?php echo $url ?>" target="_blank"><?php echo $reg->No ?></a></td>
                        <?php  }
                          else { ?>
                            <td><a target="_blank" href=".<?php echo $reg->file ?>"><?php echo explode('.',explode('/',$reg->file)[2])[0]; ?></a></td>
                        <?php  }
                         ?>
                      </tr>
                      <div class="modal fade" id="<?php echo $reg->No; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-body">
														<h3>Are you sure? </h3>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
														<a> <?php echo anchor('/Registered/Table/DeleteRegistered/'.$reg->No,'<button type="button" class="btn btn-danger">Delete</button>') ?></a>
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
