<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Chemicals Management - Login</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/login/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/login/font-awesome/css/font-awesome.min.css">
	      <link rel="stylesheet" href="<?php echo base_url();?>assets/login/css/form-elements.css">
        <link rel="stylesheet" href="<?php echo base_url();?>assets/login/css/style.css">

        <!-- Favicon and touch icons -->
        <link rel="icon" type="image/png" href="<?php echo base_url();?>pictures/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>assets/login/ico/apple-touch-icon-57-precomposed.png">

      <style media="screen">
      body {
          background-image: url("<?php echo base_url();?>assets/login/img/backgrounds/chemistry.jpg");
		  background-size:     cover;                      /* <------ */
          background-repeat:   no-repeat;
          background-position: center center;              /* optional, center the image */
        }
      </style>
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1 style="color:#c0392b"><strong>Chemicals Management</strong></h1>
                            <div class="description">
                            	<p>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="demo-form2" data-parsley-validate class="login-form" method="post" action="<?php echo base_url().'Login' ?>" enctype="multipart/form-data">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" autocomplete="off" name="username" required="on" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password"  autocomplete="off" name="password" required="on" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!-- Javascript -->
        <script src="<?php echo base_url();?>assets/login/js/jquery-1.11.1.min.js"></script>
        <script src="<?php echo base_url();?>assets/login/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url();?>assets/login/js/jquery.backstretch.min.js"></script>
        <script src="<?php echo base_url();?>assets/login/js/scripts.js"></script>

    </body>

</html>
