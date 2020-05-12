<%@ include file="common/header.jsp" %>

<div class="container wow slideInDown" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="row">
        <div class="col-lg-8 push-lg-2 col-sm-10 push-sm-1">
            <div class="row">
                <div class="col-lg-6 push-lg-3 col-md-8 push-md-2 col-sm-10 push-sm-1 forgotpwd_margin">
                    <div class="login_logo login_border_radius1">
                        <h3 class="text-xs-center">
                               Forgot Password
                        </h3>
                    </div>
                    <form action="<%=request.getContextPath() %>/Controller" id="login_validator1" method="post"
                          class="form-group  login_validator">
                        <div class="bg-white login_content login_border_radius">
                            <div class="form-group">
                                <label for="email_modal">Please enter your email to reset the password</label>
                                <div class="input-group">
                            <span class="input-group-addon addon_email"><i
                                    class="fa fa-envelope text-primary"></i></span>
                                    <input type="text" class="form-control email_forgot form-control-md"
                                           id="email_modal" name="email_modal" placeholder="E-mail">
                                </div>
                            </div>
                            <div class="form-group form-actions">
                                <button type="submit" class="btn btn-primary submit_email login_button" value="login">Submit
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- global js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- end of global js-->
<!--Plugin js-->
<script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="vendors/wow/js/wow.min.js"></script>
<!--End of plugin js-->
<script type="text/javascript" src="js/pages/forgot_password.js"></script>
</body>
<%@ include file="common/footer.jsp" %>


<!-- Mirrored from dev.lorvent.com/admire/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:27:23 GMT -->
</html>