<?php
include("admin_header.php");
include("../conn.php");

		$q="select count(id)'total' from info_main";
		$exec_q=$conn->query($q);
		/*$data_q=$exec->fetch_object();
		if($exec_q->num_rows > 0)
		{
			echo "Data Received";
		}*/
?>

<!--<body>
		<h3 align="center"><b>Welcome Admin</b></h3>
</body>-->





<div class="fh5co-hero">
	<div class="fh5co-overlay"></div>
	<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg);">
		<div class="desc">
			<div class="container">
				<div class="row">
					<div class="col-sm-5 col-md-5">
						<div class="tabulation animate-box">
							<div class="tab-content">
							 <div role="tabpanel" class="tab-pane active" id="flights">  <!--flights (students)-->
								<div class="row">
								<table align="center" width="75%" class="mgp_table">
										<tr>
											<td>Total Users</td>
											<td>Total Uploads</td>
										</tr>
								</table>
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
include("admin_footer.php");
?>