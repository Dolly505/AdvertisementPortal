<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page
	import="javax.servlet.http.*, com.modal.Photo, java.util.Iterator,java.util.List"%>
    	<%
    	 List<Photo> photos =(List<Photo>)session.getAttribute("photos"); 	
%>

 
 <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-th"></i>
                            Data Tables
                        </h4>
                        </div>
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Tables</a>
                                </li>
                                <li class="breadcrumb-item active">Data Tables</li>
                            </ol>
                        </div>
                    </div>
                   
                </header>
                <div class="outer">
                    <div class="inner bg-light lter bg-container">
                        <div class="row">
                            <div class="col-xs-12 data_tables">
                                <!-- BEGIN EXAMPLE1 TABLE PORTLET-->
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-table"></i> Datatable with Table Tools
                                    </div>
                                    <div class="card-block p-t-25">
                                        <div class="">
                                            <div class="pull-sm-right">
                                                <div class="tools pull-sm-right"></div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>photo Id</th>
                                                    <th>title</th>
                                                    <th>image</th>
                                                    <th>Action</th>
                                                   
                                                </tr>
                                            </thead>
                                                <tbody>
                                                 <%
				if (!photos.isEmpty() && photos != null) {
					Iterator<Photo> it = photos.iterator();
					Photo photoObj = null;
					while (it.hasNext()) {
						photoObj = (Photo) it.next();
			%>
                                                     <tr>
                                                       <td> <%=photoObj.getPhoto_id() %></td>
                                                       <td><%=photoObj.getTitle()%> </td>
                             <td width="25.5px"> <img width="40" height="30"  alt="" src="photo/<%=photoObj.getPhoto()%>"></td>
 <td><a href="<%=request.getContextPath()%>/Controller?actionCode=updaterole&role_id=<%=photoObj.getPhoto_id()%>" class="btn btn-success">Edit</a>&nbsp&nbsp
<a href="<%=request.getContextPath()%>/Controller?actionCode=deleterole&role_id=<%=photoObj.getPhoto_id()%>" class="btn btn-danger">Delete</a></td>
                                                     
                                                     </tr>
                                                     <%
}}%>
    
                                                </tbody>
                                        </table>
                                    </div>
                                </div>
                                <%@include file="common/footer.jsp" %>
                                
	