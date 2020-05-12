<%@page import="java.util.Iterator"%>
<%@ include file="common/header.jsp" %>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.modal.Category" %>
<%!

  private Dao dao=new Dao();
%>
	<div class="home-page">
		<div id="home-section" class="parallax-section carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active" style="background-image:url(images/bg/header-1.jpg)">
					<div class="container">
						<div class="row">
							<div class="col-md-9">
								<div class="slider-content">
									<h1 data-animation="animated lightSpeedIn">Welcome</h1>
									<h2 data-animation="animated lightSpeedIn">To Advertisement Pin</h2>
									<h3><p data-animation="animated lightSpeedIn">It is about outdoor advertising and outdoor publicity in Ahmedabad and surrounding areas.</p></h3>									
								</div>
							</div>
						</div><!-- row -->
					</div><!-- container -->
				</div><!-- item -->

				<div class="item" style="background-image:url(images/bg/header-2.png)">
					<div class="container">
						<div class="row">
							<div class="col-md-9">
								<div class="slider-content">
									<h1 data-animation="animated lightSpeedIn">Login Yourself</h1>
									<h2 data-animation="animated lightSpeedIn">as Advertisment Provider</h2>
									<h3><p data-animation="animated lightSpeedIn">where you can post your Bus Panels, Bus Shelters, Gantries, Hoardings, Kiosks,Taxi&Auto for getting it published. </p></h3>
								</div>
							</div>
						</div><!-- row -->
					</div><!-- container -->
				</div><!-- item -->
				<div class="item" style="background-image:url(images/bg/header-3.jpg)">
					<div class="container">
						<div class="row">
							<div class="col-md-9">
								<div class="slider-content">
									<h1 data-animation="animated lightSpeedIn">Advertisement Pin</h1>
									<h2 data-animation="animated lightSpeedIn"><font color="black">consists of</font></h2>
									<h3><p data-animation="animated lightSpeedIn"><font color="black">Bus Panels, Bus Shelters, Gantries, Hoardings, Kiosks, Mobile vans, Taxi&Auto</font></h3></p>
								</div>
							</div>
						</div><!-- row -->
					</div><!-- container -->
				</div><!-- item -->
			</div>
			<a class="left carousel-control" href="#home-section" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
		  	</a>
			  	<a class="right carousel-control" href="#home-section" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
		  	</a>
		</div><!-- #home-section -->

		<div id="search-section">
			<div class="container">
				<form action="<%=request.getContextPath()%>/controller" method="post">
					<div class="search-section">
					<input type="hidden" name="actionCode" value="search"> 
						<ul>
							<li>
								<div class="col-md-12">
										<div class="post-inner">
											<div class="row form-group">
											
												
												<select name="categoryID" id="category-group" class="form-control">
     <option>select ad</option>
     <%  ArrayList<Category>arrayList=dao.fetchSingleColumn();
        Iterator<Category>iterator=arrayList.iterator();
        while(iterator.hasNext()){
        	Category category=iterator.next();
         %> 
        <option value="<%= category.getCateID() %>"><%= category.getCategoryName() %></option>
     <%} %>
  </select>	
												
											</div>
										</div><!-- post-inner -->
									</div>
							</li>
							<li>
							
							</li>
							
							<li>
							<div class="col-md-12">
								<label claass="form control"></label>
							</div>
							</li>
							<li>
								<button type="submit" class="form-control btn btn-primary" value="Search">Search</button>
							</li>
						</ul>
					</div>
				</form>
			</div>
		</div>
		<!-- search-section -->
				
		<!-- avt-category -->
		<!-- start -->
		
		<div class="ad-post-wrapper section">
			<div class="container">
				<div class="blog-content">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" src="images/blog/bus-panel.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="bus-panel.jsp">Bus panels</a></h3>
									<div class="entry-meta">
										<span>In bus advertising, buses and their related infrastructure is a medium commonly used by advertisers to reach the public with their message. Usually, this takes the form of promoting commercial brands.</span>  
									</div>									
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" src="images/blog/bus_shelter.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="bus-shelter.jsp">Bus shelters</a></h3>
									<div class="entry-meta">
										<span>Bus Shelters provide excellent exposure to pedestrian and vehicular traffic.Shelters give consumers something to look at while they are waiting for the bus, making them particularly effective for advertising point-of-purchase and directional information. </span>  
									</div>								
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" height="400" src="images/blog/gantry.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="gantries.jsp">Gantries</a></h3>
									<div class="entry-meta">
										<span>A double-sided gantry billboard fixed to an overhead structure offers advertisers the option of advertising to either side of the traffic. They deliver high impact and allow for an effective long term presence in the market due to their prominent positioning and large display size.We offer highly acclaimed Gantries Advertising solutions to the clients. </span>  
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" src="images/blog/hoardings.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="hoardings.jsp">Hoardings</a></h3>
									<div class="entry-meta">
										<span>An effectively placed hoarding has a massive impact in every kind of campaign. From product launches, brand awareness and promotional offers to long-term media campaigns, they are a must have. These hoardings are either front-lit or back-lit and situated in the best locations across Gujarat, to catch the eye of thousands daily. </span> 
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" src="images/blog/kiosks.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="kiosks.jsp">Kiosks</a></h3>
									<div class="entry-meta">
										<span>Located on the busiest streets in high-profile areas across Gujarat, our kiosks target areas where minimal advertising exists. Strategically placed branded kiosks provide coverage in areas zoned out to other media. Dusk-to-dawn illumination with round-the-clock visibility to both vehicular and pedestrian traffic ensures you drive.</span>  
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="col-sm-6 col-md-4">
							<div class="blog-post">
								<div class="entry-thubmnail">
									<img class="img-responsive" src="images/blog/taxi &auto.jpg" alt="" />
								</div>
								<div class="entry-content">	
									<h3 class="entry-title"><a href="taxi&auto.jsp">Taxi & Auto</a></h3>
									<div class="entry-meta">
										<span>The easiest way to connect with your customers is to place your message where they spend most of their time – on the road. The solution: Radio Taxis. They go everywhere and are on the roads all the time, making them the most visible advertising spaces in the city.The advantage is that it can get your brand to streets and neighbourhoods.</span>  
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- ad-post -->
	</div>	<!-- page -->
		<!-- end -->
		<div id="call-to-act">
			<div class="container">
				<div class="call-to-act">
					<h1><span>Start Your Business </span> as Advertising Provider</h1>
					<p>Register your outdoor media here!</p>
					<a href="ad-post.jsp" class="btn btn-primary">Register</a>
				</div>
			</div>
		</div><!-- #call-to-act -->
		
		<!-- newsletter -->
		<div id="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="newsletter">
							<p>Give feedback here</p>
							
				                <input type="text" placeholder="Enter your feedback here" name="feedback" id="feedback">
				                <input type="submit" class="btn btn-primary" value="Give feedback">
				            
						</div>
					</div>
				</div>
			</div><!-- contaioner -->
		</div><!-- #newsletter -->
<%@ include file="common/footer.jsp" %>