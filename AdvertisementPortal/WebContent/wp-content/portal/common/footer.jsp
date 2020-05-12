 </div>
    <!-- # right side -->
</div>

<!-- /#wrap -->
<!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- global scripts end-->
  <script>
        $(document).ready(function () {
            var activeurl = window.location.pathname.toLower"WebContent/wp-content/portal/common/footer.jsp"Case();
            var page = activeurl.substring(37, activeurl.length);
            alert(page);
            if (page == "") {
                page = "default.aspx";
            }

            $('a[href="' + page + '"]').parent('li').addClass('active');
            $('a[href="' + page + '"]').parent('li').parent('ul').addClass('in');
            $('a[href="' + page + '"]').parent('li').parent('ul').parent('li').addClass('active');
        });
    </script>
    
    
<script type="text/javascript" src="vendors/raphael/js/raphael-min.js"></script>
<script type="text/javascript" src="vendors/d3/js/d3.min.js"></script>
<script type="text/javascript" src="vendors/c3/js/c3.min.js"></script>
<script type="text/javascript" src="vendors/toastr/js/toastr.min.js"></script>
<script type="text/javascript" src="vendors/switchery/js/switchery.min.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.js" ></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.resize.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.stack.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.time.js"></script>
<script type="text/javascript" src="vendors/flotspline/js/jquery.flot.spline.min.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.categories.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.pie.js"></script>
<script type="text/javascript" src="vendors/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script type="text/javascript" src="vendors/jquery_newsTicker/js/newsTicker.js"></script>
<script type="text/javascript" src="vendors/countUp.js/js/countUp.min.js"></script>


<!--end of plugin scripts-->
<script type="text/javascript" src="js/pages/new_dashboard.js"></script>

<!--form js  -->
    <script type="text/javascript" src="vendors/jquery-validation-engine/js/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="vendors/jquery-validation-engine/js/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="vendors/jquery-validation/js/jquery.validate.js"></script>
    <script type="text/javascript" src="vendors/datepicker/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="vendors/datetimepicker/js/DateTimePicker.min.js"></script>
    <script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="vendors/moment/js/moment.min.js"></script>
    <!--End of plugin scripts-->
    <!--Page level scripts-->
    <script type="text/javascript" src="js/form.js"></script>
    <script type="text/javascript" src="js/pages/form_validation.js"></script>
    <!--view role page  -->
    
    <script type="text/javascript" src="vendors/select2/js/select2.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/pluginjs/dataTables.tableTools.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.rowReorder.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.colVis.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.print.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.scroller.min.js"></script>
    <!-- end of plugin scripts -->
    <!--Page level scripts-->
    <script type="text/javascript" src="js/pages/datatable.js"></script>
    
    
    
    
    <script>
        $(document).ready(function () {
            var activeurl = window.location.pathname.toLowerCase();
            var page = activeurl.substring(8, activeurl.length);
            alert(page);
            if (page == "") {
                page = "default.aspx";
            }

            $('a[href="' + page + '"]').parent('li').addClass('active');
            $('a[href="' + page + '"]').parent('li').parent('ul').addClass('in');
            $('a[href="' + page + '"]').parent('li').parent('ul').parent('li').addClass('active');
        });
    </script>
    
    
</body>
</html>
