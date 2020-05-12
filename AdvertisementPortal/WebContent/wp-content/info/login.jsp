<%@include file="common/header1.jsp" %>

	<div class="page">
		<div id="breadcrumb-section" class="section">
			<div class="container">
				<div class="page-title text-center">
					<h1>User Login</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Login</li>
					</ol>
				</div>
			</div>
		</div><!-- breadcrumb-section -->
<!-- Tryyyyyyyy -->
<!-- <div class="form-group">
                              
                              <div class="input-group">
                                 
                              </div>
                           </div>
                           </h3>
                           <div class="form-group">
                              
                           </div>
                           <div class="form-group">
                              <div class="row">
                                 <div class="col-lg-12">
                                    <input type="submit" value="Log In" class="btn btn-primary btn-block login_button">
                                 </div>
                              </div>
                           </div>
                        </form>
                       
                        </div> -->
<!-- /tryyy -->
		<div class="ad-post-wrapper section">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="user-form">
							<form action="<%=request.getContextPath() %>/Controller" method="post">
							 <input type="hidden" name="actionCode" value="verifyLogin">
							    <div class="form-group">
							    	<label for="email" class="form-control-label">E-mail</label>
							    	<div class="input-group">
							    		<span class="input-group-addon input_email"><i class="fa fa-envelope text-primary"></i></span>
                                 		<input type="email" class="form-control  form-control-md" id="email" name="loginID" placeholder="E-mail">
							    	</div>
							    </div>
							    <div class="form-group">
							    	<label for="password" class="form-control-label">Password</label>
                              		<div class="input-group">
                                 		<span class="input-group-addon addon_password"><i class="fa fa-lock text-primary"></i></span>
                                 		<input type="password" class="form-control form-control-md" id="password" name="loginPassword" placeholder="Password">
                             		</div>
							    </div>
							    <div class="form-group">
							   <div class="row">
                                 <div class="col-lg-12">
                                    <input type="submit" value="Log In" class="btn btn-primary btn-block login_button">
                                 </div>
                              </div>
                              </div>
							   </form>	
							  <div class="form-group">
                           <div class="row">
                              <div class="col-xs-6">
                               <a href="forgot_password.jsp" class="custom-control-description forgottxt_clr">Forgot password?</a>
                              </div>
                           </div>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- ad-post -->
		<!-- page -->
	
	      <!-- global js -->
      <script type="text/javascript" src="js/jquery.min.js"></script>
      <script type="text/javascript" src="js/tether.min.js"></script>
      <script type="text/javascript" src="js/bootstrap.min.js"></script>
      <!-- end of global js-->
      <!--Plugin js-->
      <script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
      <script type="text/javascript" src="vendors/wow/js/wow.min.js"></script>
      <!--End of plugin js-->
      <script type="text/javascript" src="vendors/toastr/js/toastr.min.js"></script>
      <script type="text/javascript" src="js/pages/login.js"></script>
   </body>
   <!-- Mirrored from dev.lorvent.com/admire/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:21:33 GMT -->

<%
 if(application.getAttribute("loginError") != null){
	 out.print("<script type='text/javascript'>toastr['error']('"+application.getAttribute("loginError")+"');</script>");
	 application.removeAttribute("loginError");
 }
%>
		
	 	<%@include file="common/footer.jsp" %>