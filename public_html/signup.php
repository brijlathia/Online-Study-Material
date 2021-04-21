<?php
	$_GLOBAL['page_name']="signup";
	include("header.php");
	include("conn.php");

	if(isset($_REQUEST['signup']))
	{
		$fname=$_REQUEST['fname'];
		$lname=$_REQUEST['lname'];
		$dob=$_REQUEST['dob'];
		$gender=$_REQUEST['gender'];
		$mobile=$_REQUEST['mobile'];
		$uname=$_REQUEST['uname'];
		$email=$_REQUEST['email'];
		$pass=$_REQUEST['pass'];
		$utype=$_REQUEST['utype'];

		echo $fname;
		echo $lname;
		echo $dob;
		echo $gender;
		if($gender=='Male')
			{ $gender=1;}
		else if($gender=='Female')
			{$gender=0;}
		echo $mobile;
		echo $uname;
		echo $email;
		echo $pass;
		/*echo $utype;*/
		if($utype=='Student')
			{ $utype="S";}
		else if($utype=='Professor')
		{ $utype="P";}

		echo $q1="insert into info_common (FNAME,LNAME,DOB,GENDER,MOBILE,USERNAME,EMAIL,PASS,TYPE) VALUES ('$fname','$lname','$dob','$gender','$mobile','$uname','$email','$pass','$utype')";
		$exec_q1=$conn->query($q1);
		if($exec_q1==1)
		{
			header("location:step2.php");
		}
		else
		{
			?>
			<h2 style="color: red;"><i>Sorry Signup Failed, Insert genuine data and try again</i></h2>
			<?php
		}
	}

	//if(isset($_POST[]))
?>
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<!--<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg); margin-top: -2em;">-->

			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="margin-top: -2em; background-color: white !important;">

				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box" style="align:center !important;">
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="flights">  <!--flights (students)-->
										<div class="row">
												<form method="post">
													<div class="col-xs-12">
													<form action="" method="post">
														<table align="center" class="mgp_table">
														<th><center><h4><b>Few things to go through..</b></h4></center></th>
				<tr>
					<td><input type="text" name="fname" placeholder="First Name"  class="utkarsh2" required="required" /></td>
				</tr>
				<tr>
					<td><input type="text" name="lname" placeholder="Last Name" class="utkarsh2" required="required" /></td>
				</tr>
				<tr>
					<td><input type="date" name="dob" placeholder="Date of Birth"  class="utkarsh2" required="required" /></td>
				</tr>
				<!--<tr>
					<td><input type="radio" name="gender" class="utkarsh2" value="Male" name="Male" />Male<input type="radio" name="gender" class="utkarsh2" value="Female" />Female</td>
				</tr>-->
				<tr>
				<td>
					<table align="center">
						<tr>
							<td><input type="radio" name="gender" value="Male" /></td>
							<td>&nbsp;Male&nbsp;</td>
							<td><input type="radio" name="gender" value="Female" /></td>
							<td>&nbsp;Female&nbsp;</td>
						</tr>
					</table>
				</td>
				</tr>
				<tr>
					<td><input type="tel" name="mobile" class="utkarsh2" placeholder="Mobile Number" required="required" /></td>
				</tr>
				<tr>
					<td><input type="text" name="uname" class="utkarsh2" placeholder="Username" required="required" /></td>
				</tr>
				<tr>
					<td><input type="email" name="email" placeholder="Email ID" class="utkarsh2" required="required" /><br/></td>
				</tr>
				<tr>
					<td><input type="password" name="pass" placeholder="Password" class="utkarsh2" required="required" /></td>
				</tr>
				
				<tr>
				<td>
					<table align="center">
						<tr>
							<td>&nbsp;I am a &nbsp;</td>
							<td><input type="radio" name="utype" value="Student" /></td>
							<td>&nbsp;Student&nbsp;</td>
							<td><input type="radio" name="utype" value="Professor" /></td>
							<td>&nbsp;Professor&nbsp;</td>
						</tr>
					</table>
				</td>
				</tr>
				<tr>
					<td><input type="submit" class="btn btn-primary btn-block" value="Sign Up" name="signup"></td>
				</tr>
														</table>
													</form>
													</div>
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
		<?php
	include("footer.php");
?>