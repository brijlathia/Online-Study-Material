<?php
//echo $_GLOBAL['page_name'];
?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--<title>Travel &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>-->
	<title>Notes N Kits | Get any kind of notes for free from right here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<!--<script src="js/modernizr-2.6.2.min.js"></script>-->
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.php"><i class="icon-airplane"></i>Travel</a></h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">


						<?php
							if($_GLOBAL['page_name']=="index")
							{
						?>
								<li class="active"><a href="index.php">Home</a></li>	
						<?php
							}
							else
							{
						?>
								<li><a href="index.php">Home</a></li>
						<?php
							}
						?>
							<li>
								<!--<a href="vacation.php" class="fh5co-sub-ddown">Vacations</a>
								<ul class="fh5co-sub-menu">
									<li><a href="#">Family</a></li>
									<li><a href="#">CSS3 &amp; HTML5</a></li>
									<li><a href="#">Angular JS</a></li>
									<li><a href="#">Node JS</a></li>
									<li><a href="#">Django &amp; Python</a></li>
								</ul>
							</li>
							<li><a href="flight.php">Flights</a></li>
							<li><a href="hotel.php">Hotel</a></li>
							<li><a href="car.php">Car</a></li>-->

						<?php
							if($_GLOBAL['page_name']=="blog")
							{
						?>
							<li class="active"><a href="blog.php">Blog</a></li>
						<?php
							}
							else
							{
						?>
							<li><a href="blog.php">Blog</a></li>
						<?php
							}
						?>


						<?php
							if($_GLOBAL['page_name']=="contact")
							{
						?>
							<li class="active"><a href="contact.php">Contact</a></li>
						<?php
							}
							else
							{
						?>
							<li><a href="contact.php">Contact</a></li>
						<?php
							}
						?>
						</ul>
					</nav>
				</div>
			</div>
			<!--css of span-->
			<!--<style type="text/css">
				.input {
					position: relative;
					z-index: 1;
					display: inline-block;
					margin: 1em;
					max-width: 350px;
					width: calc(100% - 2em);
					vertical-align: top;
				}

				.input__field {
					position: relative;
					display: block;
					float: right;
					padding: 0.8em;
					width: 60%;
					border: none;
					border-radius: 0;
					background: #f0f0f0;
					color: #aaa;
					font-weight: bold;
					font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
					-webkit-appearance: none; /* for box shadows to show on iOS */
				}

				.input__field:focus {
					outline: none;
				}

				.input__label {
					display: inline-block;
					float: right;
					padding: 0 1em;
					width: 40%;
					color: #6a7989;
					font-weight: bold;
					font-size: 70.25%;
					-webkit-font-smoothing: antialiased;
				    -moz-osx-font-smoothing: grayscale;
					-webkit-touch-callout: none;
					-webkit-user-select: none;
					-khtml-user-select: none;
					-moz-user-select: none;
					-ms-user-select: none;
					user-select: none;
				}

				.input__label-content {
					position: relative;
					display: block;
					padding: 1.6em 0;
					width: 100%;
				}











				.input--juro {
					overflow: hidden;
				}

				.input__field--juro {
					position: absolute;
					z-index: 100;
					padding: 2.15em 0.75em 0;
					width: 100%;
					background: transparent;
					color: #1784cd;
					font-size: 0.85em;
				}

				.input__label--juro {
					padding: 0;
					width: 100%;
					height: 100%;
					background: #fff;
					text-align: left;
				}

				.input__label-content--juro {
					padding: 2em 1em;
					-webkit-transform-origin: 0% 50%;
					transform-origin: 0% 50%;
					-webkit-transition: -webkit-transform 0.3s, color 0.3s;
					transition: transform 0.3s, color 0.3s;

					text-rendering: geometricPrecision;
				}

				.input__label--juro::before {
					content: '';
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					border: 0px solid transparent;
					-webkit-transition: border-width 0.3s, border-color 0.3s;
					transition: border-width 0.3s, border-color 0.3s;
				}

				.input__field--juro:focus + .input__label--juro::before,
				.input--filled .input__label--juro::before {
					border-width: 8px;
					border-color: #1784cd;
					border-top-width: 2em;
				}

				.input__field--juro:focus + .input__label--juro .input__label-content--juro,
				.input--filled .input__label--juro .input__label-content--juro {
					color: #fff;
					-webkit-transform: translate3d(0, -1.5em, 0) scale3d(0.75, 0.75, 1);
					transform: translate3d(0, -1.5em, 0) scale3d(0.75, 0.75, 1) translateZ(1px);
				}
			</style>
			<style type="text/css">
				.pathik{
					background: rgba(0,0,0,.05);
					border: none;
					box-shadow: none;
					font-weight: bold;
					font-size: 14px;
					padding: 5px 10px !important;
					@include border-radius(0);
					color: $brand-primary !important;
					&::-webkit-input-placeholder { /* Chrome/Opera/Safari */
					  color: $brand-primary !important;
					}
					&::-moz-placeholder { /* Firefox 19+ */
					  color: $brand-primary !important;
					}
					&:-ms-input-placeholder { /* IE 10+ */
					  color: $brand-primary !important;
					}
					&:-moz-placeholder { /* Firefox 18- */
					  color: $brand-primary !important;
					}
					@media screen and(max-width: $screen-xs){
						width: 55%;
						float: right;
					}





							display: block;
					  width: 100%;
					  height: $input-height-base; // Make inputs at least the height of their button counterpart (base line-height + padding + border)
					  padding: $padding-base-vertical $padding-base-horizontal;
					  font-size: $font-size-base;
					  line-height: $line-height-base;
					  color: $input-color;
					  background-color: $input-bg;
					  background-image: none; // Reset unusual Firefox-on-Android default style; see https://github.com/necolas/normalize.css/issues/214
					  border: 1px solid $input-border;
					  border-radius: $input-border-radius; // Note: This has no effect on <select>s in some browsers, due to the limited stylability of <select>s in CSS.
					  @include box-shadow(inset 0 1px 1px rgba(0,0,0,.075));
					  @include transition(border-color ease-in-out .15s, box-shadow ease-in-out .15s);

					  // Customize the `:focus` state to imitate native WebKit styles.
					  @include form-control-focus;

					  // Placeholder
					  @include placeholder;

					  // Disabled and read-only inputs
					  //
					  // HTML5 says that controls under a fieldset > legend:first-child won't be
					  // disabled if the fieldset is disabled. Due to implementation difficulty, we
					  // don't honor that edge case; we style them as disabled anyway.
					  &[disabled],
					  &[readonly],
					  fieldset[disabled] & {
					    background-color: $input-bg-disabled;
					    opacity: 1; // iOS fix for unreadable disabled content; see https://github.com/twbs/bootstrap/issues/11655
					  }

					  &[disabled],
					  fieldset[disabled] & {
					    cursor: $cursor-disabled;
					  }
					}
			</style>-->
			<style type="text/css">
				.utkarsh{
					width: 100%;
					color: #848484;
					background: rgba(0,0,0,.05);
					border: none;
					box-shadow: none;
					font-weight: bold;
					font-size: 14px;
					padding: 5px 10px !important;
					@include border-radius(0);
					color: $brand-primary !important;
					&::-webkit-input-placeholder { /* Chrome/Opera/Safari */
					  color: $brand-primary !important;
					}
					&::-moz-placeholder { /* Firefox 19+ */
					  color: $brand-primary !important;
					}
					&:-ms-input-placeholder { /* IE 10+ */
					  color: $brand-primary !important;
					}
					&:-moz-placeholder { /* Firefox 18- */
					  color: $brand-primary !important;
					}
					@media screen and(max-width: $screen-xs){
						width: 55%;
						float: right;
					}
				}


				.maulik{
					width: 50%;
					color: #848484;
					background: rgba(0,0,0,.05);
					border: none;
					box-shadow: none;
					font-weight: bold;
					font-size: 14px;
					padding: 5px 10px !important;
					@include border-radius(0);
					color: $brand-primary !important;
					&::-webkit-input-placeholder { /* Chrome/Opera/Safari */
					  color: $brand-primary !important;
					}
					&::-moz-placeholder { /* Firefox 19+ */
					  color: $brand-primary !important;
					}
					&:-ms-input-placeholder { /* IE 10+ */
					  color: $brand-primary !important;
					}
					&:-moz-placeholder { /* Firefox 18- */
					  color: $brand-primary !important;
					}
					@media screen and(max-width: $screen-xs){
						width: 55%;
						float: right;
					}
				}

				.mgp_table{
					text-align: center;
					color: #848484 !important;
					/*color: #848484;*/
					/*background: rgba(0,0,0,.05);*/
					border: none;
					box-shadow: none;
					font-weight: bold;
					font-size: 14px;
					/*padding: 5px 10px !important;*/

					padding: 15px 15px 15px 15px;
					margin-top: 5px;
					margin-bottom: 5px;
					width: 50%;
				}

				.utkarsh2{
					text-align: center;
					width: 100%;
					/*color: #F58F48;*/
					color: #848484 !important;
					/*color: white !important;*/
					background: rgba(0,0,0,.05);
					border: none;
					box-shadow: none;
					font-weight: bold;
					font-size: 14px;
					/*padding: 5px 10px !important;*/

					padding: 15px 15px 15px 15px;
					margin-top: 5px;
					margin-bottom: 5px;
					/*line-height: 5px;*/


					line-height: 20px;
				}


			</style>

			<?php
			if($_GLOBAL['page_name']=="signup")
			{
			?>
			<style type="text/css">

							.tabulation.animate-box.fadeInUp.animated {
			    			width: 1150px;
							}
			</style>
			<?php
			}
			?>
		</header>

		<!-- end:header-top -->
	