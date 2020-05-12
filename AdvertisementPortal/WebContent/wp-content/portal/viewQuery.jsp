<%@page import="javax.swing.text.StyledEditorKit.ItalicAction"%>
<%@page import="antlr.ASdebug.IASDebugStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.modal.Query"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dao.Dao"%>
<%!
  private Dao dao=new Dao();
%>   
<jsp:include page="common/header.jsp"></jsp:include>
<jsp:include page="common/sidebar.jsp"></jsp:include>    
<div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page">
             <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-xs-left nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.jsp">
                                        <i class="fa fas-user" data-pack="default" data-tags=""></i>User 
                                    </a>
                                </li>
                             
                                <li class="breadcrumb-item active">Manage Query</li>
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
                                    <div class="card-block p-t-25">
                                        <div class="">
                                            <div class="pull-sm-right">
                                                <div class="tools pull-sm-right"></div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Subject</th>
                                                    <th>Detail</th>
                                                                                                         
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <% 
                                              ArrayList<Query>arrayList=dao.selectAllQueryRow();
                                              Iterator<Query>iterator=arrayList.iterator();
                                              int i=0;
                                              while(iterator.hasNext()){
                                            	  Query type=iterator.next();	  
                                              i++;
                                             
                                            %>
                                             <tr>
                                               <td><%= i %></td>
                                               <td><%=type.getQueryName() %></td> 
                                               <td><%=type.getQueryEmail() %></td> 
                                               <td><%=type.getQuerySubject() %></td> 
                                               <td><%=type.getQueryDetail() %></td> 
                                                                                  
                                               
                                               <td>
                                                
                                              <form method="post" action="<%=request.getContextPath() %>/Controller">
                                                 <input type="hidden" name="actionCode" value="deleteQuery">
                                                <input type="hidden" name="deleteQueryID" value="<%= type.getQueryID() %>">
                                                <button class="btn btn-danger" type="submit">
                                                    <i class="fa fa-trash"></i>
                                                 </button>
                                              </form>   
                                                 
                                               </td>
                                             </tr>
                                             <% } %>
                                             
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- END EXAMPLE1 TABLE PORTLET-->
                            
                            </div>
                    </div>
           </div>             
    </div>
 </div>   

<jsp:include page="common/footer.jsp"></jsp:include>