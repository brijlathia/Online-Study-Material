<?php
	session_start();
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
		if($gender=='Male')
			{ $gender=1;}
		else if($gender=='Female')
			{$gender=0;}
		if($utype=='Student')
			{ $utype="S";}
		else if($utype=='Professor')
		{ $utype="P";}
		$q1="insert into info_common (FNAME,LNAME,DOB,GENDER,MOBILE,USERNAME,EMAIL,PASS,TYPE) VALUES ('$fname','$lname','$dob','$gender','$mobile','$uname','$email','$pass','$utype')";
		$exec_q1=$conn->query($q1);

        //$_GLOBAL['ut']=$utype;
		$next="select * from info_common where email='$email'";
		$execn=$conn->query($next);
		$datan=$execn->fetch_object();
		$_SESSION['uid']=$datan->ID;
		$_SESSION['step']="1";
	}
	else if(isset($_SESSION['uid']))
	{
		if(isset($_SESSION['step']))
		{
			include('head.php');
			top();
			if($_SESSION['step']==1)
			{
				//course
				?>
				<form method="POST">
					<select name="course">
						<?php
							$q_c="select * from course";
							$e_q_c=mysql->query($q_c);
							while($d_q_c=$e_q_c->fetch_object())
							{
								?>
								<option value="<?php echo $d_q_c->C_ID; ?>"><?php echo $d_q_c->C_NAME; ?></option>
								<?php
							}
						?>
					</select>
				</form>
				<?php
			}
			else if($_SESSION['step']==2)
			{
				//university
				?>
				<?php
			}
			else if($_SESSION['step']==3)
			{
				//college
				?>
				<?php
			}
			else if($_SESSION['step']==4)
			{
				//branch
				?>
				<?php
			}
			bottom();
			include('foot.php');
		}
	}
	else
	{
		header('Locatin:index.php');
	}
	function top()
	{
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
													<div class="col-xs-12">
		<?php
	}
	function bottom()
	{
		?>
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
		<?php
	}
?>