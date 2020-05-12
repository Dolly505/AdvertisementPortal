<%@page import="com.dao.Dao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.modal.RoleType"%>
<%@page import="com.modal.AdvType" %>
<%@page import="com.modal.AdminUser" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <div id="left">
            <div class="media user-media bg-dark dker">
                <div class="user-media-toggleHover">
                    <span class="fa fa-user"></span>
                </div>
                <div class="user-wrapper bg-dark">
                    <a class="user-link" href="">
                        <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture"
                             src="img/admin.jpg">
                        <p class="text-white user-info">Welcome AdvPortal</p>
                    </a>
                    <div class="search_bar col-lg-12">
                        <div class="input-group">
                            <input type="search" class="form-control" placeholder="search">
                            <span class="input-group-btn">
<button class="btn without_border" type="button"><span class="fa fa-search">
</span></button>
</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #menu -->
            <ul id="menu" class="bg-blue dker">
                <li class="active">
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span class="link-title">&nbsp;Dashboard</span>
                    </a>
                </li>
                <li><a href="javascript:;"> <i class="fa fa-user"></i> <span
					class="link-title">&nbsp; Role Type</span> <span class="fa arrow"></span>

			</a>
				<ul>
					<li><a href="javascript:;" data-toggle="modal"
						data-target="#roleModal"> <i class="fa fa-angle-right"></i>
							&nbsp; Add Role
					</a></li>
					
					<li><a href="manage-role.jsp" > <i class="fa fa-angle-right"></i> &nbsp; Manage Role
					</a>
					</li>
				</ul></li>
                 <li><a href="javascript:;"> <i class="fa fa-user"></i> <span
					class="link-title">&nbsp; Advertisement Type</span> <span class="fa arrow"></span>

			</a>
				<ul>
					<li><a href="javascript:;" data-toggle="modal"
						data-target="#advModal"> <i class="fa fa-angle-right"></i>
							&nbsp; Add Advertisement
					</a></li>
					
					<li><a href="manage-adv.jsp" > <i class="fa fa-angle-right"></i> &nbsp; Manage Advertisement
					</a>
					</li>
				</ul></li>
				<li><a href="javascript:;"> <i class="fa fa-user"></i> <span
					class="link-title">&nbsp; User</span> <span class="fa arrow"></span>

			</a>
				<ul>
					
					<li><a href="manage-user.jsp" > <i class="fa fa-angle-right"></i> &nbsp; Manage User
					</a>
					</li>
				</ul></li>
                 <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Password</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        
                         <li>
                            <a href="viewForgotPassword.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Forgot Password
                            </a>
                        </li>
                        
                        
                        
                    </ul>
                </li>
                 <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Publisher</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        
                         <li>
                            <a href="publisher.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Publisher details
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>
                 <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Feedback</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        
                         <li>
                            <a href="viewFeedback.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; viewFeedback
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Post Query</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        
                         <li>
                            <a href="viewQuery.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; viewQuery
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Category</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="add-category.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Add Category
                            </a>
                        </li>
                         <li>
                            <a href="viewCategory.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Category
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>
                 <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Frequently asked questions</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="addFAQ.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Add FAQ
                            </a>
                        </li>

                         <li>
                            <a href="viewFAQ.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View FAQ
                            </a>
                        </li>
                        
                        
                    </ul>
                </li>
                
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Advertising medium</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                    	
                         <li>
                            <a href="viewAdvertising.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Advertising Medium
                            </a>
                        </li>
                        
                        
                    </ul>
                    <ul>
                        
                         <li>
                            <a href="viewBusPanels.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View BusPanels
                            </a>
                        </li>
                        
                        
                    </ul>
                    <ul>
                        
                         <li>
                            <a href="viewBusShelters.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View BusShelters
                            </a>
                        </li>
                        
                        
                    </ul>
                     <ul>
                        
                         <li>
                            <a href="viewGantry.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Gantry
                            </a>
                        </li>
                        
                        
                    </ul>
                    
                    <ul>
                    	
                         <li>
                            <a href="viewHoardings.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Hoardings
                            </a>
                        </li>
                        
                        
                    </ul>
                    <ul>
                        
                         <li>
                            <a href="viewKiosks.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Kiosks
                            </a>
                        </li>
                        
                        
                    </ul>
                    
                   
                    
                    
                    <ul>
                        
                         <li>
                            <a href="viewTaxiAuto.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View TaxiAuto
                            </a>
                        </li>
                        
                        
                    </ul>
                    
                </li>
                       
                
            </ul>
            <!-- /#menu -->
        </div>
       <!--  Add Miodal -->
<div class="modal fade" id="roleModal" role="dialog"
	aria-labelledby="modalLabelprimary">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h4 class="modal-title text-white" id="modalLabelprimary">Add
					New Role</h4>
			</div>
			<form action="<%=request.getContextPath() %>/controller" method="post" onsubmit="">
				<div class="modal-body">
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconID" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgID"></label>
							</div>
							<div class="input-group">
							   <input type="hidden" name="actionCode" value="addRole">
								<span class="input-group-addon"> <i class="fa fa-user"></i></span>
								<input type="text" id="roleTypeID" class="form-control"
									placeholder="Role Type" onkeydown="roleTypeValidation()"
									autocomplete="off" name="txtRoleType">
							</div>
						</div>
					</div>
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconIDForActiveDeactive" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgIDForActiveDeactive"></label>
							</div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="fa fa-chevron-circle-down" id="toogelOffOn"></i>
								</span> <select id="activeDeactiveID" class="form-control"
									onchange="changeActiveDeactiveIcon()" name="roleActiveFlag">
									<option selected>---select---</option>
									<option value="y">Active</option>
									<option value="n">Deactive</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-primary">Add Role</button>
					<button type="reset" class="btn  btn-danger">Reset</button>
					<button class="btn  btn-danger" data-dismiss="modal">Close
						me!</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- //End of add Modal -->

<% if(application.getAttribute("editRoleID") != null){
	%>
<script type="text/javascript">
$(window).on('load', function() {
	$('#editRoleModal').modal('show');
});
</script>

<!-- edit Modal -->
<div class="modal fade" id="editRoleModal" role="dialog"
	aria-labelledby="modalLabelprimary">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h4 class="modal-title text-white" id="modalLabelprimary">Update
					Role</h4>
			</div>
			<%
			Dao daoTwo=new Dao();
			String temp=(String)application.getAttribute("editRoleID");
		    RoleType list=daoTwo.getUniqueRoleRow(Integer.parseInt(temp));
			%>
			<form action="<%=request.getContextPath() %>/controller" method="post" onsubmit="">
				<input type="hidden" name="editRoleID" value="<%= list.getId() %>">
				<div class="modal-body">
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconID" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgID"></label>
							</div>
							<div class="input-group">
							   <input type="hidden" name="actionCode" value="editRole">
								<span class="input-group-addon"> <i class="fa fa-user"></i></span>
								<input type="text" id="roleTypeID" class="form-control"
									placeholder="Role Type" onkeydown="roleTypeValidation()"
									autocomplete="off" name="editRoleType" value="<%= list.getRoleType() %>">
							</div>
						</div>
					</div>
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconIDForActiveDeactive" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgIDForActiveDeactive"></label>
							</div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="fa fa-chevron-circle-down" id="toogelOffOn"></i>
								</span> <select id="activeDeactiveID" class="form-control"
									onchange="changeActiveDeactiveIcon()" name="editRoleActiveFlag">
									<option value="y" <% if(list.getRoleActiveFlag().equals("y")){
										%><%= "selected" %>		
										<% }%>
									>Active</option>
									<option value="n"  <% if(list.getRoleActiveFlag().equals("n")){
										%><%= "selected" %>		
										<% }%>>Deactive</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-primary">update Role</button>
					<button type="reset" class="btn  btn-danger">Reset</button>
					<button class="btn  btn-danger" data-dismiss="modal">Close
						me!</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%
 application.removeAttribute("editRoleID");
}
  
%>

<!-- // end of edit modal -->
<!-- Advertisement     -->
       <div class="modal fade" id="advModal" role="dialog"
	aria-labelledby="modalLabelprimary">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h4 class="modal-title text-white" id="modalLabelprimary">Add
					New Advertisement</h4>
			</div>
			<form action="<%=request.getContextPath() %>/controller" method="post" onsubmit="">
				<div class="modal-body">
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconID" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgID"></label>
							</div>
							<div class="input-group">
							   <input type="hidden" name="actionCode" value="addAdv">
								<span class="input-group-addon"> <i class="fa fa-user"></i></span>
								<input type="text" id="advTypeID" class="form-control"
									placeholder="Advertisement Type" onkeydown="advTypeValidation()"
									autocomplete="off" name="txtAdvType">
							</div>
						</div>
					</div>
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconIDForActiveDeactive" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgIDForActiveDeactive"></label>
							</div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="fa fa-chevron-circle-down" id="toogelOffOn"></i>
								</span> <select id="activeDeactiveID" class="form-control"
									onchange="changeActiveDeactiveIcon()" name="advActiveFlag">
									<option selected>---select---</option>
									<option value="y">Active</option>
									<option value="n">Deactive</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-primary">Add Advertisement</button>
					<button type="reset" class="btn  btn-danger">Reset</button>
					<button class="btn  btn-danger" data-dismiss="modal">Close
						me!</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- //End of add Modal -->

<% if(application.getAttribute("editAdvID") != null){
	%>
<script type="text/javascript">
$(window).on('load', function() {
	$('#editAdvModal').modal('show');
});
</script>

<!-- editAdv Modal -->
<div class="modal fade" id="editAdvModal" role="dialog"
	aria-labelledby="modalLabelprimary">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary">
				<h4 class="modal-title text-white" id="modalLabelprimary">Update
					Advertisement</h4>
			</div>
			<%
			Dao daoTwo=new Dao();
			String temp=(String)application.getAttribute("editAdvID");
		    AdvType list=daoTwo.getUniqueAdvRow(Integer.parseInt(temp));
			%>
			<form action="<%=request.getContextPath() %>/controller" method="post" onsubmit="">
				<input type="hidden" name="editAdvID" value="<%= list.getId() %>">
				<div class="modal-body">
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconID" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgID"></label>
							</div>
							<div class="input-group">
							   <input type="hidden" name="actionCode" value="editAdv">
								<span class="input-group-addon"> <i class="fa fa-user"></i></span>
								<input type="text" id="advTypeID" class="form-control"
									placeholder="Advertisement Type" onkeydown="advTypeValidation()"
									autocomplete="off" name="editAdvType" value="<%= list.getAdvType() %>">
							</div>
						</div>
					</div>
					<div class="form-group row m-t-35">
						<div class="col-lg-12">
							<div class="input-group">
								<span> <i id="errorIconIDForActiveDeactive" style="color: red;"></i></span> <label
									style="color: red;" id="errorMsgIDForActiveDeactive"></label>
							</div>
							<div class="input-group">
								<span class="input-group-addon"> <i
									class="fa fa-chevron-circle-down" id="toogelOffOn"></i>
								</span> <select id="activeDeactiveID" class="form-control"
									onchange="changeActiveDeactiveIcon()" name="editAdvActiveFlag">
									<option value="y" <% if(list.getAdvActiveFlag().equals("y")){
										%><%= "selected" %>		
										<% }%>
									>Active</option>
									<option value="n"  <% if(list.getAdvActiveFlag().equals("n")){
										%><%= "selected" %>		
										<% }%>>Deactive</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn  btn-primary">update Advertisement</button>
					<button type="reset" class="btn  btn-danger">Reset</button>
					<button class="btn  btn-danger" data-dismiss="modal">Close
						me!</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%
 application.removeAttribute("editAdvID");
}
  
%>

<!-- // end of edit modal -->
 <!-- End of advertisement -->
 
