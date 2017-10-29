<header class="navbar navbar-fixed-top" role="banner">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="<?php echo base_url();?>Dashboard" class="navbar-brand"></a>
		</div>
		<ul class="top_links">
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="user_menu">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="navbar_el_icon ion-person"></span> <span class="caret"></span>
				</a>
				<ul class="dropdown-menu dropdown-menu-right">
					<li>
						<a href="#"><i class="fa fa-user"></i><span> <?php echo $this->session->userdata('namechemical'); ?> </span></a>
					</li>
					<li>
						<a href="<?php echo base_url();?>Lab/Logout"><i class="fa fa-sign-out"></i><span> Logout</span></a>
					</li>
				</ul>
			</li>
			<li><a href="javascript:void(0)" class="slidebar-toggle"></a></li>
		</ul>
	</div>
</header>
