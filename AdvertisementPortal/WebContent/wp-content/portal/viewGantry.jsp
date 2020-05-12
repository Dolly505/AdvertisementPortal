<%@page import="javax.swing.text.StyledEditorKit.ItalicAction"%>
<%@page import="antlr.ASdebug.IASDebugStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.modal.Publisher"%>

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
                             
                                <li class="breadcrumb-item active">Manage Advertising Medium</li>
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
                                                    <th>Location Name</th>
                                                    <th>Duration</th>
                                                    <th>Size</th>
                                                    <th>Price</th>
                                                    <th>Description</th>
                                                     <th>PremiumAvt</th>
                                                     <th>Payment</th>
                                                     <th>Category</th>
                                                     
                                                     
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <% 
                                              ArrayList<Publisher>arrayList=dao.selectAllPublisherRow();
                                              Iterator<Publisher>iterator=arrayList.iterator();
                                              int i=0;
                                              while(iterator.hasNext()){
                                              Publisher type=iterator.next();
                                              if(type.getCategory().getCateID()==3)
                                        	  {
                                              i++;
                                             
                                            %>
                                             <tr>
                                               <td><%= i %></td>
                                               <td><%=type.getTxtLocationName() %></td>
                                               <td><%=type.getDuration() %></td> 
                                               <td><%=type.getSize() %></td> 
                                               <td><%=type.getPrice() %></td> 
                                               <td><%=type.getDescription() %></td> 
                                               <td><%=type.getPremiumAvt() %></td>
                                               <td><%=type.getPaymentOption() %></td>  
                                               <td><%=type.getCategory().getCategoryName() %></td>
                                               
                                               
                                               
                                               <td>
                                                
                                              <form method="post" action="<%=request.getContextPath() %>/Controller">
                                                 <input type="hidden" name="actionCode" value="deletePublisher">
                                                <input type="hidden" name="deletePublisherID" value="<%= type.getPublisherID() %>">
                                                <button class="btn btn-danger" type="submit">
                                                    <i class="fa fa-trash"></i>
                                                 </button>
                                              </form>   
                                                 
                                               </td>
                                             </tr>
                                             <% }} %>
                                             
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