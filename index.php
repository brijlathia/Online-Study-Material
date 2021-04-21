
<?php 
session_start();
if (isset($_GET['logout'])) {
	unset($_SESSION['uid']);
	# code...
}
 include("conn.php"); ?>
<style type="text/css">
				.tabulation{
					width: 100%;
				}
			</style>
<?php
	$page_name="index";
	include("head.php");
	if(isset($_REQUEST['msg']))
	{
		?>
		<script>
			alert("You Signed Up Successfully, Login to cointinue");
		</script>
		<?php
	}

if(isset($_POST['slogin'])){

	echo "signup";

		$email = $_POST['emailid'];
	$pass = $_POST['pass'];
	$up = "SELECT * FROM `info_common` WHERE `EMAIL` = '".$email."' AND `PASS` = '".$pass."' ";
	$ex=$conn->query($up);
	if($ex->num_rows > 0)
	{
		$data=$ex->fetch_object();
		$_SESSION['uid'] = $data->ID;
		echo "<script type='text/javascript'>window.top.location='upload.php';</script>"; exit;	
		
	}else{
		echo "Failed";
	}
	
}
if(isset($_POST['plogin'])){

	echo "signup";
	
		$email = $_POST['emailid'];
	$pass = $_POST['pass'];
	$up = "SELECT * FROM `info_common` WHERE `EMAIL` = '".$email."' AND `PASS` = '".$pass."' ";
	$ex=$conn->query($up);
	if($ex->num_rows > 0)
	{
		$data=$ex->fetch_object();
		$_SESSION['uid'] = $data->ID;
	echo "<script type='text/javascript'>window.top.location='pupload.php';</script>"; exit;	
	//	echo "login Successfully";	
	}else{
		echo "Failed";
	}
	
}



?>
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<!--<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg);">-->
            <div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_new.jpg);">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation" class="active">
								      	<!-- <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Student</a> -->
								      	<a href="#student" aria-controls="flights" role="tab" data-toggle="tab">Student</a>
								      </li>
								      <li role="presentation">
								    	   <!-- <a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">Professors</a> -->
								    	   <a href="#professor" aria-controls="hotels" role="tab" data-toggle="tab">Professors</a>
								      </li>
								      <li role="presentation">
								    	   <!--<a href="#packages" aria-controls="packages" role="tab" data-toggle="tab">Sign Up</a>-->
								    	   <a href="signup.php" aria-controls="packages">Sign Up</a>
								      </li>
								   </ul>

								   <!-- Tab panes -->
									<div class="tab-content">
									  <!-- <div role="tabpanel" class="tab-pane active" id="flights"> -->  <!--flights (students)-->
									  <div role="tabpanel" class="tab-pane active" id="student">
										<div class="row">
												<form method="post">
													<div class="col-xs-12">
													<input type="email" name="emailid" placeholder="Student's Email"  class="utkarsh" /> <br><br>
													<input type="password" name="pass" placeholder="Password" class="utkarsh" /> <br><br>
															<!-- <input type="submit" class="btn btn-primary btn-block" value="Login"> -->
												<button class="btn btn-primary btn-block" name="slogin">Login</button>
													</div>
												</form>
										</div>
									 </div>

									 <!-- <div role="tabpanel" class="tab-pane" id="hotels"> --> <!--hotels (professor)-->
									 <div role="tabpanel" class="tab-pane" id="professor">
									 	<div class="row">
											<form method="post">
												<div class="col-xs-12">
												<input type="email" name="emailid" placeholder="Professor's Email"  class="utkarsh" /> <br><br>
												<input type="password" name="pass" placeholder="Password" class="utkarsh" /> <br><br>
														<!-- <input type="submit" class="btn btn-primary btn-block" value="Login"> -->
														<button class="btn btn-primary btn-block" name="plogin">Login</button>
												</div>
											</form>
										</div>
									 </div>

									 <div role="tabpanel" class="tab-pane" id="packages"> <!--packages (signup)-->
									 	<div class="row">
											</div>
									 </div>
									</div>

								</div>
							</div>
							<div class="desc2 animate-box">
									</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		
		
		
		
		
		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					</div>
			</div>
					
	