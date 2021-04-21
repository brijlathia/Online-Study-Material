<?php
	include("conn.php");

	if(!(empty($_POST["course"]))){
		$course=$_POST["course"];
		$q1="select * from university where C_ID='$course'";
		$e1=$conn->query($q1);
			?><option value="default">(Select University)</option> <?php
		while($d1=$e1->fetch_object())
		{
			?>
			<option value="<?php echo $d1->U_ID; ?>"><?php echo $d1->U_NAME; ?></option>
			<?php
		}
	}
	if(!(empty($_POST["univ"]))){
		$univ=$_POST["univ"];
		$q1="select * from college where U_ID='$univ'";
		$e1=$conn->query($q1);
		while($d1=$e1->fetch_object())
		{
			?>
			<option value="<?php echo $d1->CLG_ID; ?>"><?php echo $d1->CLG_NAME; ?></option>
			<?php
		}
	}
	if(!(empty($_POST["clg"]))){
		$clg=$_POST["clg"];
		$q1="select * from branch where CLG_ID='$clg'";
		$e1=$conn->query($q1);
		while($d1=$e1->fetch_object())
		{
			?>
			<option value="<?php echo $d1->B_ID; ?>"><?php echo $d1->B_NAME; ?></option>
			<?php
		}
	}
?>