<?php
session_start();
$page_name="112";
include("conn.php");
	if(isset($_REQUEST['proceed'])){
		$id=$_SESSION['uid'];
		$c_id=$_REQUEST['course'];
		$u_id=$_REQUEST['univ'];
		$clg_id=$_REQUEST['college'];
		$b_id=$_REQUEST['branch'];
		$up="UPDATE `info_common` SET `C_ID` = '$c_id', `U_ID` = '$u_id', `CLG_ID` = '$clg_id', `B_ID` = '$b_id' WHERE `info_common`.`ID` = $id";
		$ex=$conn->query($up);
		/*$uid="";
		$step="";*/
		unset($uid);
		unset($step);
		/*header("index.php?msg=1"); exit;*/
		echo "<script type='text/javascript'>window.top.location='index.php?msg=1';</script>"; exit;
	}
	/*if(isset($uid) && isset($step))*/
	/*if(!empty($uid) && !empty($step))*/
	if(isset($_SESSION['uid']) && isset($_SESSION['step']))
	{
		include("head.php");

?>
<link rel="stylesheet" type="text/css" href="css\style2.css">
<script src="jquery.min.js"></script>
<script src="prefixfree.min.js"></script>
 <div class="fh5co-hero">
<div class="fh5co-overlay"></div>
<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="margin-top: -2em; background-color: white !important;">
<div class="desc">
<div class="container">
<div class="row">
<div class="col-sm-5 col-md-5" style="width:75% !important; padding-left: 25% !important;">
<div class="tabulation animate-box" style="align:center !important;">
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="flights">
<div class="row">
<div class="col-xs-12">

<?php
	$q_c="select * from course";
	$e_c=$conn->query($q_c);
?>

	<script type="text/javascript" src="jquery-3.2.0.min.js"></script>
	<script type="text/javascript">
		function get_univ(val) {
			var d=document.getElementById("course").value;
			if(d=="default"){
				alert("Please Select Suitable Option");
				return false;
			}
			else{
				$.ajax({
					type: "POST",
					url: "getdata.php",
					data: "course="+val,
					success: function(data){
						$("#univ").html(data);
					}
				});
			}
		}
		function get_college(val) {
			var d=document.getElementById("univ").value;
			if(d=="default"){
				alert("Please Select Suitable Option");
				return false;
			}
			else{
				$.ajax({
					type: "POST",
					url: "getdata.php",
					data: "univ="+val,
					success: function(data){
						$("#college").html(data);
					}
				});
			}
		}
		function get_branch(val) {
			var d=document.getElementById("college").value;
			if(d=="default"){
				alert("Please Select Suitable Option");
				return false;
			}
			else{
				$.ajax({
					type: "POST",
					url: "getdata.php",
					data: "clg="+val,
					success: function(data){
						$("#branch").html(data);
					}
				});
			}
		}

		function next() {
			if(document.getElementById("course").value == "default" || document.getElementById("univ").value == "default" || document.getElementById("college").value == "default" || document.getElementById("branch").value == "default"){
				alert("Please select suitable option");
				return false;
			}
			else{
				this.form.submit();
			}
		}
	</script>
	<style type="text/css">
		.form2{
			color: #F78536 !important;
		}
		.form2 td{
			padding: 15px 15px 15px 15px;
		}
		.form2 label{
			color: #848484 !important;
		}

		.button {
			padding: 10px 10px;
			/*padding: 15px 25px;*/
			/*font-size: 24px;*/
			font-size: inherit;
			text-align: center;
			cursor: pointer;
			outline: none;
			color: #fff;
			/*background-color: #4CAF50;*/
			background-color: #F78536;
			border: none;
			border-radius: 15px;
			box-shadow: 0 9px #999;
		}

		.button:hover {background-color: #96390D}

		.button:active {
			background-color: #DD6F00;
			box-shadow: 0 5px #666;
			transform: translateY(4px);
		}

		.selects select{
			width: 100%;
			color: #F78536 !important;
			display: block;
		}
		.selects select:hover{
			color: #848484 !important;
		}
		label{
			display: block;
		}
		label:hover{
			color: #F78536 !important;
		}
		.selects{
			/*font-family: Century;*/
		}
	</style>
<div class="selects">
<form method="post">
<table class="form2" align="center">
<tr><td><label>Your Course</label></td>
<td><select id="course" name="course" onchange="get_univ(this.value);">
	<option value="default">(Select Course)</option>
	<?php
		while ($data_c=$e_c->fetch_object()) {
	?>
	<option value="<?php echo $data_c->C_ID; ?>"><?php echo $data_c->C_NAME; ?></option>
	<?php
		}
	?>
</select></td></tr>

<tr><td><label>Your University</label></td>
<td><select id="univ" name="univ" onchange="get_college(this.value);">
	<option value="default">(Select University)</option>
</select></td></tr>

<tr><td><label>Your College</label></td>
<td><select id="college" name="college" onchange="get_branch(this.value);">
	<option value="default">(Select College)</option>
</select></td></tr>

<tr><td><label>Your Branch</label></td>
<td><select id="branch" name="branch">
	<option value="default">(Select Branch)</option>
</select></td></tr>

<!-- <tr><td colspan="2" align="center"><button id="submit" class="button" onclick="next();" name="proceed"><span>Proceed</span></button></td></tr> -->
<tr><td colspan="2" align="center"><input type="submit" id="submit" class="button" onclick="next();" name="proceed" value="Proceed" /></td></tr>
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
<?php
	include("foot.php");
	}
	else
	{
		/*header('location:index.php');*/
		?>
		<script>alert("Values not set");</script>
		<?php
	}
?>