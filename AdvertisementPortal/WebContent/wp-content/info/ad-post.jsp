<%@page import="java.util.Iterator"%>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.modal.Category" %>
<%@include file="common/header1.jsp" %>
<%!

  private Dao dao=new Dao();
%>
	<div class="page">
		<div id="breadcrumb-section" class="section">
			<div class="container">
				<div class="page-title text-center">
					<h1>Register your advertising medium here!</h1>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Home</a></li>
						<li class="active">Register</li>
					</ol>
				</div>
			</div>
		</div><!-- breadcrumb-section -->

		<div class="avt-post-wrapper section">
			<div class="container">
				<div class="avt-post">
					<form action="<%=request.getContextPath() %>/Controller" method="post">
					<input type="hidden" name="actionCode" value="adminLogin">
						<fieldset>
							<div class="product-section avtpost-fields">
								<div class="row">
									<div class="col-xs-12">
										<h3>Register advertising medium</h3>
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Select Ad Category: </label>
												<div class="col-md-8">
												<select name="categoryID" id="category-group" class="form-control">
     <option>--select ad category--</option>
     <%  ArrayList<Category>arrayList=dao.fetchSingleColumn();
        Iterator<Category>iterator=arrayList.iterator();
        while(iterator.hasNext()){
        	Category category=iterator.next();
         %> 
        <option value="<%= category.getCateID() %>"><%= category.getCategoryName() %></option>
     <%} %>
  </select>	
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner select-cat">
											<div class="row form-group">
												<label class="col-md-4">Select Location: </label>
												<div class="col-md-8">
											<input type="text" name="txtLocationName" id="category-group" class="form-control">
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner choose-options">
											<div class="row form-group">
												<label class="col-md-4">Details: </label>
												<div class="col-md-8">
													<div class="row">
														<div class="col-md-6">	
														<select name="duration" required id="category-group" class="form-control">
														<option value="0" selected="selected">Duration</option>
														<option value="week">1 week </option>
														<option value="month">1 month</option>
														<option value="year">1 year</option>
														</select>
															
														</div>
														<div class="col-md-6">
															<input type="text" name="size" placeholder="Size/VehicleNo" required class="form-control" id="text">
														</div>
													</div>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Item Price <span>&#8377;</span> :	</label>
												<div class="col-md-8">
													<div class="row">
														<div class="col-md-6">
															<input id="Price" name="Price" class="form-control" placeholder="Price(&#8377;)" required type="text">
														</div>
														 	</div>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Description: </label>
												<div class="col-md-8">
													<textarea class="form-control" name="description" id="description" placeholder="Write details about your product" rows="6"></textarea>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Upload Photo: </label>
												<div class="col-md-8">
													<div class="upload-section">
														<label class="upload-image" for="uploadOne">
															<input type="file" id="uploadOne">
														</label>										

														<label class="upload-image" for="uploadTwo">
															<input type="file" id="uploadTwo">
														</label>											
														<label class="upload-image" for="uploadThree">
															<input type="file" id="uploadThree">
														</label>	
														<label class="upload-image" for="uploadFour">
															<input type="file" id="uploadFour">
														</label>	
													</div>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
								</div>
							</div><!-- product-section -->

							<div class="seller-section avtpost-fields">
								<div class="row">
									<div class="col-xs-12">
										<h3>Seller Information</h3>
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Contact Name: </label>
												<div class="col-md-8">
													<input type="text" name="seller-name" class="form-control" id="seller-name" placeholder="Your name">
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Contact Email: </label>
												<div class="col-md-8">
													<input type="email" name="seller-email" required class="form-control" id="seller-email"  placeholder="name@yourmail.com" >
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Contact Number: </label>
												<div class="col-md-8">
													<input type="tel" name="seller-phone" required class="form-control" id="seller-phone" placeholder="Contact number" >
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="row form-group">
												<label class="col-md-4">Your Address: </label>
												<div class="col-md-8">
													<input type="text" name="seller-address" class="form-control" id="seller-address" placeholder="Your address">
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
								</div>
							</div><!-- seller-section -->

							<div class="seller-option avtpost-fields">
								<div class="row">
									<div class="col-md-12">
										<h3>Make Your Ad Featured <span><a href="#">What is featured ad ?</a></span></h3>
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="form-group">
												<span>Premium Ad Options: </span>
												<div class="premium-avts">
													<ul>
														<li class="premium-avt">
															<input type="radio" name="premiumAvt" value="option-one" id="option-one">
															<label for="option-one">Regular Ad</label>
															<span>&#8377;00.00</span>
														</li>
														<li class="premium-avt">
															<input type="radio" name="premiumAvt" value="option-two" id="option-two">
															<label for="option-two">Top Featured Ads</label>
															<span>&#8377;59.00</span>
														</li>
														<li class="premium-avt">
															<input type="radio" name="premiumAvt" value="option-three" id="option-three">
															<label for="option-three">Urgent Ads</label>
															<span>&#8377;79.00</span>
														</li>							
													</ul>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
									<div class="col-md-6">
										<div class="post-inner">
											<div class="form-group">
												<span>Please select the preferred payment method: </span>
												<div class="payment-options">
													<ul>
														<li class="payment-option">
															<input type="radio" name="payment-option" value="payment-one">
															<label for="payment-one">Direct Bank Transfer</label>
														</li>
														<li class="payment-option">
															<input type="radio" name="payment-option" value="payment-two">
															<label for="payment-two">Cheque Payment</label>
														</li>
														<li class="payment-option">
															<input type="radio" name="payment-option" value="payment-three">
															<label for="payment-three">Credit Card</label>
														</li>							
													</ul>
												</div>
											</div>
										</div><!-- post-inner -->
									</div>
								</div>
							</div><!-- seller-option -->
							<div class="submit-section">
								<div class="ad-condition checkbox">
									<label for="submit-post">
										<input type="checkbox" name="submit-post" id="submit-post">
										By click you must agree with our  Terms &amp; Condition and
                                   Registering Rules.
									</label>
								</div>
								<div class="submit-button">
									<button class="btn btn-primary" type="submit">Register</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div> <!-- avt-post -->
	</div>	<!-- page -->
		
<%@include file="common/footer.jsp" %>