<style type="text/css">
							.tabulation.animate-box.fadeInUp.animated {
								width: 100%;
			    			/*width: 1150px;
			    			max-width: 1150px !important;*/
							}
							.col-md-5{
								width: 100%;
							}
							.fh5co-cover{
								/*height: 1375px;*/
							}
							.tabulation{
								margin-top: -9.5em !important;
							}
			</style>
			<style type="text/css">
				.pathik{
					box-shadow: none;
					color: #fff !important;
					width: 100%;
					letter-spacing: 0px;
					text-transform: none;
					font-weight: bold;
					font-size: 18px;
					/*background: #393e46;*/
					background: #F78536;
					outline: none !important;

					border-top-width: 2px !important;
					border-right-width: 2px !important;
					border-bottom-width: 2px !important;
					border-left-width: 2px !important;

					border-top-style: solid !important;
					border-right-style: solid !important;
					border-bottom-style: solid !important;
					border-left-style: solid !important;

					border-top-color: transparent !important;
					border-right-color: transparent !important;
					border-bottom-color: transparent !important;
					border-left-color: transparent !important;

					padding-top: 1em;
					padding-right: 2em;
					padding-bottom: 1em;
					padding-left: 2em;
					opacity: 0.9;

					text-decoration: none;
					outline: 5px auto -webkit-focus-ring-color;
					outline-offset: -2px;

					-webkit-appearance:button;
					cursor: pointer;
					-o-transition: 0.3s;
					transition-property: all;
					transition-duration: 0.3s;
					transition-timing-function: ease;
					transition-delay: 0s;

					-o-transition: 0.3s;

					display: block;

					margin-bottom: 0px;
					text-align: center;
					vertical-align: middle;
					touch-action:manipulation;
					white-space: nowrap;
					line-height: 1.4285;
					border-top-left-radius: 4px;
					border-top-right-radius: 4px;
					border-bottom-left-radius: 4px;
					border-bottom-right-radius: 4px;

					-moz-user-select:none;
					-ms-user-select:none;
					user-select:none;
					font-family: inherit;
					-moz-box-sizing:border-box;
					font-style: inherit;
					font-variant: inherit;

					margin-top: 0px;
					margin-right: 0px;
					margin-left: 0px;

					-moz-box-sizing:border-box;
					box-sizing: border-box;

					border-collapse: collapse;
					border-spacing: 0px;
				}
				.pathik:hover{
					/*background: #848484;*/
					/*background: #4D5258;*/
					background: #393e46;
				}
			</style>
<?php
	session_start();
	$page_name="signup";
	include("head.php");
	include("conn.php");
	if(isset($_REQUEST['signup']))
	{

		$fname=$_REQUEST['fname'];
		$lname=$_REQUEST['lname'];
		$dob=$_REQUEST['dob'];
		$gender=$_REQUEST['gender'];
		$mobile=$_REQUEST['mobile'];
		$email=$_REQUEST['email'];
		$pass=$_REQUEST['pass'];
		$utype=$_REQUEST['utype'];
		if($gender=='Male')
			{ $gender=1;}
		else if($gender=='Female')
			{$gender=0;}
		if($utype=='Student')
			{ $utype="S";}
		else if($utype=='Professor')
		{ $utype="P";}

	$qc="select * from info_common where email='$email'";
	
	$eqc=$conn->query($qc);
	
	$dqc=$eqc->fetch_object();
	
		if($eqc->num_rows > 0){
			echo "<script type='text/javascript'>alert('User already exist using following email: $email');</script>";
		}
		else{
			$q1="insert into info_common (FNAME,LNAME,DOB,GENDER,MOBILE,EMAIL,PASS,TYPE) VALUES ('$fname','$lname','$dob','$gender','$mobile','$email','$pass','$utype')";

			$exec_q1=$conn->query($q1);

			//echo "$q1";
	        //$_GLOBAL['ut']=$utype;
	        
			$next="select * from info_common where email='$email'";
			
			$execn=$conn->query($next);
			
			$datan=$execn->fetch_object();
			
			$_SESSION['uid']=$datan->ID;	//new vars
			
			$_SESSION['step']="1";
			
			/*header("location:step2.php"); exit;*/
			/*sleep(10);*/
			 echo "<script type='text/javascript'>window.top.location='step2.php';</script>";

			 exit;
			/*echo "<form action='step2.php'><input type='submit' value='next'/></form>";*/
		}
	}

?>
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<!--<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg); margin-top: -2em;">-->

			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="margin-top: -2em; background-color: white !important;">

<script>
function valid()
{
	var fname=document.getElementById("fname").value;
	if(fname!="xyz")
	{
		return true;
	}
	else
	{

		alert("please enter valid name");
		return false;
	}
}

</script>
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5"  style="width:75% !important; padding-left: 25% !important;">
								<div class="tabulation animate-box" style="align:center !important;">
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="flights">  <!--flights (students)-->
										<div class="row">
													<div class="col-xs-12">
													<form method="post" onsubmit="return valid()">
														<table align="center" class="mgp_table">
														<th><center><h4><b>Few things to go through..</b></h4></center></th>
				<tr>
					<td><input type="text" id="fname" name="fname" placeholder="First Name"  class="utkarsh2" required /></td>
				</tr>
				<tr>
					<td><input type="text" name="lname" placeholder="Last Name" class="utkarsh2" required /></td>
				</tr>
				<tr>
					<td><input type="date" name="dob" placeholder="Date of Birth"  class="utkarsh2" required /></td>
				</tr>
				<!--<tr>
					<td><input type="radio" name="gender" class="utkarsh2" value="Male" name="Male" />Male<input type="radio" name="gender" class="utkarsh2" value="Female" />Female</td>
				</tr>-->
				<tr>
				<td>
					<!-- <table align="center" class="utkarsh3">
						<tr>
							<td><input type="radio" name="gender" value="Male" id="male" /><label for="male">&nbsp;Male&nbsp;</label><input type="radio" name="gender" value="Female" id="female"/><label for="female">&nbsp;Female&nbsp;</label></td>
						</tr>
					</table> -->
					<input type="radio" name="gender" value="Male" id="male" class="utkarsh3" required /><label for="male">Male</label>&nbsp;<input type="radio" name="gender" value="Female" id="female" class="utkarsh3" /><label for="female">Female</label>
				</td>
				</tr>
				<tr>
					<td><input type="tel" name="mobile" class="utkarsh2" placeholder="Mobile Number" required /></td>
				</tr>
				<tr>
					<td><input type="email" name="email" placeholder="Email ID" class="utkarsh2" required /><br/></td>
				</tr>
				<tr>
					<td><input type="password" name="pass" placeholder="Password" class="utkarsh2" required /></td>
				</tr>
				<tr>
				<td>
					<table align="center" class="table_p">
						<tr>
							<td>&nbsp;I am a &nbsp;</td>
							<td><input type="radio" name="utype" value="Student" id="s" required /></td>
							<!-- <td>&nbsp;Student&nbsp;</td> -->
							<td><label for="s">&nbsp;Student&nbsp;</label></td>
							<td><input type="radio" name="utype" value="Professor" id="p" /></td>
							<td><label for="p">&nbsp;Professor&nbsp;</label></td>
							<!-- <td>&nbsp;Professor&nbsp;</td> -->
						</tr>
						<!-- <div class="stu" style="visibility: hidden;">
							<tr>
								<td><p>This is Div of Student</p></td>
							</tr>
						</div>
						<div class="pro" style="visibility: hidden;">
							<tr>
								<td><p>This is Div of professor</p></td>
							</tr>
						</div> -->
					</table>
				</td>
				</tr>
				<tr>
					<tr><td><input type="submit" class="pathik" value="Sign Up" name="signup"></td>
				</tr>
														</table>
													</form>
												</div>
											</div>
									 	</div>
									 </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
