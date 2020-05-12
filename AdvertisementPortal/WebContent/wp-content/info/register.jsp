<%@include file="common/header1.jsp" %>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.modal.AdminUser"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%!
	
	  private Dao dao=new Dao();
	 %>
<script type="text/javascript" src="js/validation.js"></script>

<link type="text/css" rel="stylesheet"
	href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css" />
	<div class="page">
		<div id="breadcrumb-section" class="section">
			<div class="container">
				<div class="page-title text-center">
					<h1>User Registration</h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Home</a></li>
						<li class="active">Register</li>
					</ol>
				</div>
			</div>
		</div><!-- breadcrumb-section -->

		<div class="ad-post-wrapper section">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="user-form">
							<form class="form-horizontal login_validator" id="tryitForm" action="<%=request.getContextPath()%>/controller"
                                    method="post">
								<div class="modal-body">
					            	<div class="row">
                                    	<input type="hidden" name="actionCode" value="addAdminUser">              
                                        	<div class="form-group">
                                            	<div class="input-group">
                                                	<span class="input-group-addon"><i class="fa fa-user text-primary"></i>
                                                    </span>
                                                    <input type="text" name="userName" id="userName"
                                                            class="form-control" placeholder="user name">
                                                </div>
                                            </div>
											<div class="form-group">
												<div class="input-group">
                                                	<span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>
                                                    <input type="text" placeholder="user email" id="email" name="userEmail"
                                                            class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-briefcase text-primary"></i></span>
                                                        <input type="text" name="userOccupation" placeholder="occupation" id="userOccupation"
                                                            class="form-control">
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-phone text-primary"></i></span>
                                                        <input type="tel" name="userContactNo" placeholder="contact no" id="userContactNo"
                                                            class="form-control">
                                                    </div>
                                               
                                            </div>
                                            <div class="form-group row">
                                                
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                                        <input type="password" name="userPassword" id="pwd" pattern=""
                                                            class="form-control" placeholder="password">
                                                    </div>
                                               
                                            </div>
                                            <!-- <div class="form-group">
                                                
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                                        <input type="password" name="userConfirnPassword" placeholder="confirm password" id="cpwd"
                                                            class="form-control">
                                                    </div>
                                               
                                            </div> -->
                                             		
											<br><br>	
                                            <div class="form-group">
                                                
                                                    <button class="btn btn-primary" type="submit">
                                                        <i class="fa fa-user"></i>
                                                        Register
                                               
                                                    </button>
                                                   
                                                
                                            </div>
                                        
                                   </div>
                                  
                                </div>  
                            </form>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- ad-post -->
	</div>	<!-- page -->
		
	
<%@include file="common/footer.jsp" %>

                     <%
	try{
    String msg=request.getParameter("msg");
    
    if(msg.equals("success")){
    %>
    <script type="text/javascript">
    toastr["success"]("successfully data inserted","inserted");
    </script>
  
    <%}
    else {%>
    <script type="text/javascript">
    toastr["error"]("successfully data not inserted","not inserted");
    </script>
    <%} 
    }catch(Exception e){
    e.printStackTrace();
    }%>
   