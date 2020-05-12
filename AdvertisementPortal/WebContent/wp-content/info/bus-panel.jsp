<%@ include file="common/header.jsp" %>
<%@page import="javax.swing.text.StyledEditorKit.ItalicAction"%>
<%@page import="antlr.ASdebug.IASDebugStream"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.modal.Publisher"%>
<%@page import="com.dao.Dao"%>
<%!
  private Dao dao=new Dao();
%> 
<%@page import="java.util.ArrayList"%>		
		<div class="section">
			<div class="container">
				<div class="section-title">
					<div class="title-content">
						<h2>Bus Panel Advertisement</h2>
						
					</div>
				</div>
				<div class="category-adds">
						<div id="category-tab">
							
							<div class="category-tab">
								
								<!-- Tab panes -->

							  	<div class="tab-content list-view-tab">
							    	<div role="tabpanel" class="tab-pane active" id="recent">
							    	<ul>
	<% 
                                              ArrayList<Publisher>arrayList=dao.selectAllPublisherRow();
                                              Iterator<Publisher>iterator=arrayList.iterator();
                                              int i=0;
                                              while(iterator.hasNext()){
                                              Publisher type=iterator.next();
                                              if(type.getCategory().getCateID()==1)
                                        	  {
                                              i++;
                                             
                                            %>
							    			<li class="item-wrap">
							    				<div class="item">
							    					<div class="item-image-carousel item-image carousel slide" data-ride="carousel" data-interval="false">
							    						<div class="carousel-inner">
							    							<div class="item active">
							    								<img src="images/item/bp-1.jpg" alt="" class="img-responsive">
							    							</div>
							    						
							    						</div>
							    						
														<div class="item-price">
															<span><%=type.getPrice() %>* </span>
														</div> 
													</div>
												
													<div class="item-description">
														<div class="item-meta">
															
															<ul class="list-inline product-social">
																<li><a href="#"><i class="fa fa-bookmark-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="item-title">
															<h3><a href="#"><%=type.getTxtLocationName() %></a></h3>
														</div>
														<div class="item-info">
															<p>Duration: <%=type.getDuration() %> </p>
															<p>Vehicle No: <%=type.getSize() %></p>
                                               
                                               <p>Description: <%=type.getDescription() %></p> 
														
															
															<button type="submit" value="Log In" class="btn btn-primary">Book Now</button>
														</div>
													</div><!-- item-description -->
							    				</div><!-- item -->
							    			</li><!-- item-wrap -->

							    			<!-- <li class="item-wrap">
							    				<div class="item">
							    					<div class="item-image-carousel item-image carousel slide" data-ride="carousel" data-interval="false">
							    						<div class="carousel-inner">
							    							<div class="item active">
							    								<img src="images/item/bp-2.jpg" alt="" class="img-responsive">
							    							</div>
							    						
							    						</div>
							    						
														<div class="item-price">
															<span>4000</span>
														</div> 
													</div>
													<div class="item-description">
														<div class="item-meta">
															<div class="item-post-date">
																<span>Dec 29, 10:39 pm</span>
															</div>
															<ul class="list-inline product-social">
																<li><a href="#"><i class="fa fa-bookmark-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="item-title">
															<h3><a href="#">Bus panel 8x6</a></h3>
														</div>
														<div class="item-info">
															<p>Bus number- MH 05 R 1006</p>
															<p>Ulhasnagar</p>
															<button type="submit" value="Log In" class="btn btn-primary">Book Now</button>
														</div>
													</div>item-description
							    				</div>item
							    			</li>item-wrap -->
<% }} %>
							    		</ul>
							    	</div><!-- tab-pane-->	
							  	</div>
							</div>
						</div><!-- category-tab-->	
					</div>
			
			</div>
		</div><!-- category-tab-->	

		<%@ include file="common/footer.jsp" %>