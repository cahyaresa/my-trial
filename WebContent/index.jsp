<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"  uri="http://www.springframework.org/security/tags" %>
<c:url value="/j_spring_security_logout" var="logoutUrl" />

<spring:url value="/resources/util/css/bootstrap.min.css" var="bootcss"></spring:url>
<spring:url value="/resources/util/js/bootstrap.min.js" var="bootjs"></spring:url>
<spring:url value="/resources/util/jquery-3.3.1.min.js" var="jq"></spring:url>

<spring:url value="/resources/" var="resources"></spring:url>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link rel="stylesheet" href="${bootcss}" />
	
	<script type="text/javascript" src="${jq }"></script>
	<script type="text/javascript" src="${bootjs }"></script>
	
		
	
	<!-- Bootstrap 3.3.4 -->
	<link href="${resources }/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="${resources }/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${resources }/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="${resources }/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="${resources }/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="${resources }/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="${resources }/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="${resources }/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="${resources }/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <link href="${resources }/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
	
</head>

<body style="background-color='red'">
   <nav class="navbar navbar-default">
    	<div align="center" class="row">
    		<h3 align="center">MY Superior</h3>
    	</div>
       
    </nav>
    
    
    
    <div class="jumbotron hero">
        <div class="container">
            <div class="row">
                <div align="center" class="col-lg-12">
                    <p><a class="btn btn-success btn-lg" role="button" href="${pageContext.request.contextPath}/login">LOGIN </a></p>
                </div>
            </div>
        </div>
    </div>
    
    
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h5 align="right">MySueperior© 2019</h5></div>
               <!--  <div class="col-sm-6 social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div> -->
            </div>
        </div>
    </footer>
    <!-- jQuery 2.1.4 -->
	<script src="${resources }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- jQuery UI 1.11.2 -->
	<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.min.js"  type="text/javascript"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script> $.widget.bridge('uibutton', $.ui.button); </script>
	<!-- Bootstrap 3.3.2 JS -->
	<script src="${resources }/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- Morris.js charts -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="${resources }/plugins/morris/morris.min.js"
		type="text/javascript"></script>
	<!-- Sparkline -->
	<script src="${resources }/plugins/sparkline/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<!-- jvectormap -->
	<script
		src="${resources }/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"
		type="text/javascript"></script>
	<script
		src="${resources }/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>
	<!-- jQuery Knob Chart -->
	<script src="${resources }plugins/knob/jquery.knob.js" type="text/javascript"></script>
	<!-- daterangepicker -->
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
	<script src="${resources }/plugins/daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<!-- datepicker -->
	<script src="${resources }/plugins/datepicker/bootstrap-datepicker.js"
		type="text/javascript"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="${resources }/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
		type="text/javascript"></script>
	<!-- Slimscroll -->
	<script src="${resources }/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- FastClick -->
	<script src='${resources }/plugins/fastclick/fastclick.min.js'></script>
	<!-- AdminLTE App -->
	<script src="${resources }/dist/js/app.min.js" type="text/javascript"></script>

	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="${resources }/dist/js/pages/dashboard.js"
		type="text/javascript"></script>

	<!-- AdminLTE for demo purposes -->
	<script src="${resources }/dist/js/demo.js" type="text/javascript"></script>
	<!-- Data Tanble-->
	
	<script src="${resources }/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="${resources }/plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js" type="text/javascript"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js" type="text/javascript"></script>
	
</body>

</html>