<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.modal.Role"%>
<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<% List<Role> roles =(List<Role>) session.getAttribute("roles");%> 
     <%!
     int role_id=0;
     String role_type =null;
    
     %>
     
   
<div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-sm-5 col-lg-6">
                            <h4 class="nav_top_align">
                                <i class="fa fa-pencil"></i>
                                Form Validations
                            </h4>
                        </div>
                       
                        <div class="col-sm-7 col-lg-6">
                            <ol  class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                        Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Forms</a>
                                </li>
                                <li class="active breadcrumb-item">Form Validations</li>
                            </ol>
                        </div>
                    </div>
                </header>
                <div class="outer">
                    <div class="inner bg-container">
                    
                        
                        <!-- updated Code  -->
                        
                        <%
       if(role_id==0) {                 
    
     %>
                         <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                        Block Validation
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form action="<%=request.getContextPath()%>/Controller" method="post" class="form-horizontal  login_validator" id="form_block_validator">
                                        <input type="hidden" value="updateroledata" name="actionCode">
                                        <input type="hidden" name="role_id" value="<%=role_id%>">
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label">Name *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="required2" value="<%=role_type%>" name="role_type" class="form-control" required>
                                                </div>
                                            </div>
                                           
                                            <div class="form-actions form-group row">
                                                <div class="col-lg-4 push-lg-4">
                                               
												  <input type="submit" value="Add" class="btn btn-primary">
												  
												 
                                                    
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <% } else {
                        	
                        	 if(!roles.isEmpty() && roles!=null)
     {
    	 Iterator<Role> iterator = roles.iterator();
    	 Role roleObj = null;
    	 while( iterator.hasNext())
    	 {
    		 roleObj =(Role) iterator.next();
    		
    		 role_id =roleObj.getRole_id();
    		 role_type = roleObj .getRole_type();
    	
    	 }
    	 
    	 
     }
     %>
                        <!-- Edit Code --> 
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                        Block Validation
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form action="<%=request.getContextPath()%>/Controller" method="post" class="form-horizontal  login_validator" id="form_block_validator">
                                        <input type="hidden" value="updateroledata" name="actionCode">
                                        <input type="hidden" name="role_id" value="<%=role_id%>">
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label">Name *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="required2" value="<%=role_type%>" name="role_type" class="form-control" required>
                                                </div>
                                            </div>
                                           
                                            <div class="form-actions form-group row">
                                                <div class="col-lg-4 push-lg-4">
                                                
												    	
												    	 <input type="submit" value="Update" class="btn btn-primary">
												    	 
												  
                                                    
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <% } %>
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
