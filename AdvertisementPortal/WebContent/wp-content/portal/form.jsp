<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
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
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                        Block Validation
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form action="#" class="form-horizontal  login_validator" id="form_block_validator">
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label">Name *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="required2" name="Name2" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="email2" class="form-control-label">E-mail *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="email" id="email2" name="Email2" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="password2" class="form-control-label">Password *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="password" id="password2" name="Password2" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="confirm_password2" class="form-control-label">Confirm Password *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="password" id="confirm_password2" name="Confirmpassword2" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label class="form-control-label">Date *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" class="form-control form_val_popup_dp3" name="date_inline" placeholder="YYYY-MM-DD" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="url2" class="form-control-label">Url *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="url" id="url2" name="Url2" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="digits" class="form-control-label">Digits Only *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="digits" name="digits_only"  class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label for="range" class="form-control-label">Range [5,16] *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="range" name="Range" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 text-lg-right">
                                                    <label class="form-control-label check_form_val">Please agree to our policy</label>
                                                </div>
                                                <div class="col-lg-4 error_color1">
                                                    <label class="custom-control custom-checkbox error_color">
                                                        <input type="checkbox" class="custom-control-input" name="activate">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">I agree to the terms and conditions.</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-actions form-group row">
                                                <div class="col-lg-4 push-lg-4">
                                                    <input type="submit" value="Validate" class="btn btn-primary">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <%@include file="common/footer.jsp" %>