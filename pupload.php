<?php
session_start();
$page_name="112";
include("conn.php");
	if(isset($_REQUEST['upload'])){
		print_r($_FILES);
		if (isset($_FILES['pdfFile'] ) ) {
			if ($_FILES['pdfFile']['type'] == "application/pdf") {
				$source_file = $_FILES['pdfFile']['tmp_name'];
				$dest_file = "upload/".$_FILES['pdfFile']['name'];
					if (file_exists($dest_file)) {
					print "The file name already exists!!";
					}else {
						move_uploaded_file( $source_file, $dest_file )
						or die ("Error!!");
						if($_FILES['pdfFile']['error'] == 0) {
							print "Pdf file uploaded successfully!";
							print "<b><u>Details : </u></b><br/>";
							print "File Name : ".$_FILES['pdfFile']['name']."<br.>"."<br/>";
							print "File Size : ".$_FILES['pdfFile']['size']." bytes"."<br/>";
							print "File location : upload/".$_FILES['pdfFile']['name']."<br/>";
						}
					}
			}
			else {
			if ( $_FILES['pdfFile']['type'] != "application/pdf") {
				print "Error occured while uploading file : ".$_FILES['pdfFile']['name']."<br/>";
				print "Invalid  file extension, should be pdf !!"."<br/>";
				print "Error Code : ".$_FILES['pdfFile']['error']."<br/>";
			}
			}
		}
	}
	/*if(isset($uid) && isset($step))*/
	/*if(!empty($uid) && !empty($step))*/
	if(isset($_SESSION['uid']))
	{
		include("header3.php");

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
<!--<a href="upload/index.pdf" target="_blank" >Download</a>-->
<form method="post" enctype="multipart/form-data">
<table class="form2" align="center">
<tr><td><label>upload file</label></td>
<td><input type="file" name="pdfFile"></td></tr>

<tr><td colspan="2" align="center">
<input type="submit" id="submit" class="button" name="upload" value="Upload" /></td></tr>
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
	//include("foot.php");
	}
	else
	{
		/*header('location:index.php');*/
		?>
		<script>alert("Values not set");</script>
		<?php
	}
?>