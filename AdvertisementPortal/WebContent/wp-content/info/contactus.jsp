<%@include file="common/header1.jsp" %>

	<div class="page">
		<div id="breadcrumb-section" class="section">
			<div class="container">
				<div class="page-title text-center">
					<h1>Contact Us</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Any Query Contact Us!</li>
					</ol>
				</div>
			</div>
		</div><!-- breadcrumb-section -->

		<div class="ad-post-wrapper section">
			<div class="container">
				<div class="contact-us">
					<div class="map-wrapper">
						<div id="gmap">
						<img src="images/map.jpg" height="90%" alt="map"/>
						</div>
					</div>
					<div class="contact-form-wrapper">
						
                        <form id="contact-form" class="contact-form" name="contact-form" method="post" action="<%=request.getContextPath()%>/Controller">
                            <input type="hidden" name="actionCode" value="query">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="queryName" id="queryName" required="required" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="queryEmail" id="queryEmail" required="required" placeholder="Email Id">
                                    </div> 
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="querySubject" name="querySubject" required="required" placeholder="Query">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <textarea id="queryDetail" name="queryDetail" required="required" class="form-control" rows="10" placeholder="Enter your query"></textarea>
                                    </div>             
                                </div>     
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-primary">Submit Message</button>
                            </div>
                        </form><!-- contact form -->  
                    </div> 
				</div>
			</div>
		</div> <!-- ad-post -->
	</div>	<!-- page -->
		


<%@include file="common/footer.jsp" %>