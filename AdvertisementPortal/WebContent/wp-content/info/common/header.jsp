<!DOCTYPE html>
<html lang="en">
  

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Theme Region">
   	<meta name="description" content="">

    <title>Advertisement Portal</title>

   <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.css">  
    <link rel="stylesheet" href="css/main.css">  
    <link rel="stylesheet" href="css/responsive.css">
	
	
	<!-- font -->
	<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,300' rel='stylesheet' type='text/css'>

	<!-- favicon icon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/ico/favicon.ico">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
	<header id="header" class="clearfix">
		<nav class="navbar navbar-default">
			<div class="topbar">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<ul class="list-inline">
								<li><span><i class="fa fa-envelope-o"></i></span> <a href="mailto:emailadd?subject="> advertisementportal208@gmail.com</a></li>
								<li><span><i class="fa fa-phone"></i></span><a href="tel:9904089050"> +91 9904089050</a></li>
								<li><ul class="list-inline top-social">
										<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="col-sm-6">
							<div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                <strong>
                                Hi, <%= application.getAttribute("adminName") %>
                                </strong>
                                <span class="fa fa-sort-down "></span>
                            </button>
                            <div class="dropdown-menu admire_admin" style="font: black;">
                                <a class="dropdown-item title" href="home.jsp">
                                    Advertisement Portal</a><br>

                                <a class="dropdown-item" href="<%=request.getContextPath() %>/controller"><i class="fa fa-sign-out"></i>
                                    Log Out</a>
                            </div>
                        </div>
                    </div>
							
							
							<!-- <div class="user-section">			
								<ul class="list-line">
									<li><a href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i> Login </a></li>
									<li><a href="register.jsp"><i class="fa fa-user" aria-hidden="true"></i> Register</a></li>
								</ul>	
								
							</div>user-section -->
						</div>
					</div>
				</div>
			</div><!-- topbar -->

			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><img class="img-responsive" src="images/adv.jpg" width="50" height="30" alt="Logo"></a>
				</div><!-- /navbar-header -->
				
				<div class="navbar-right">
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="services.jsp">Services</a></li>
							<li><a href="contactus.jsp">Contact Us</a></li>
						</ul>
					</div>
				</div>
			</div><!-- container -->
		</nav><!-- navbar -->
	</header><!-- header -->
	