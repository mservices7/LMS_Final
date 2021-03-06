<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>License Management Software</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="css/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="css/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="css/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="css/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="css/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="css/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="css/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#to").datepicker({
			format : 'yyyy-mm-dd'
		});
		$("#to1").datepicker({
			format : 'yyyy-mm-dd'
		});
		$("#from").datepicker({
			format : 'yyyy-mm-dd'
		}).bind("change", function() {
			var minValue = $(this).val();
			minValue = $.datepicker.parseDate("yyyy-mm-dd", minValue);
			minValue.setDate(minValue.getDate() + 1);
			$("#to").datepicker("option", "minDate", minValue);
		})
	});
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript" src="js/jQuery-2.1.4.min.js"></script>

<script>
	function addFieldForDescription() {
		alert("Inside Function");

		var table = document.getElementById("addTable");
		var tr = document.getElementById("addTables");
		var a = table.rows.length;
		alert(a);
		var row = table.insertRow(a);
		// var cell0=row.insertCell(0);
		// cell0.innerHTML=a;
		var input = document.createElement("input");
		input.type = "text";
		input.id = "addDesc" + a;
		input.size = "40";
		var br = document.createElement("br");
		tr.appendChild(br);
		tr.appendChild(input);
		tr.appendChild(br);
	}
	function addFieldForAmount() {
		alert("Inside Function");

		var table = document.getElementById("addTable");
		var tr = document.getElementById("addTables1");
		var a = table.rows.length;
		alert(a);
		var row = table.insertRow(a);
		// var cell0=row.insertCell(0);
		// cell0.innerHTML=a;
		var input = document.createElement("input");
		input.type = "text";
		input.id = "addAmount" + a;
		input.size = "40";
		var br = document.createElement("br");
		tr.appendChild(br);
		tr.appendChild(input);
		tr.appendChild(br);
	}

	function submitValues() {
		alert("Inside Submit");
		var amountId = document.getElementById("addTables");
		alert(amountId.value);
		for (var i = 0; i < amountId.rows.length; i++) {
			var temp = document.getElementById("addDesc" + i);
			alert(temp.value);
		}
	}
</script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <nav
			class="navbar navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="index.jsp" class="navbar-brand"><b>Chaitanyaa</b> Arts</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<s:url action="HomeAction"/>">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Event <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="create_event.jsp">Create Event</a></li>
							<li class="divider"></li>
							<s:if test="#session.role.equals('Admin')">
								<li><a href="<s:url action="ViewEditEventsViewAction"/>">View/Edit
										Event</a></li>
							</s:if>

						</ul></li>
					<li><a href=<s:url action="ViewDetailsForBillsJsp"/>>Bills</a></li>
					<s:if test="#session.role.equals('Admin')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Reports <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href=<s:url action="ViewDetailsForGeneralReports"/>>General
										Report</a></li>
								<li class="divider"></li>
								<li><a href=<s:url action="financialPdfAction"/>>Financial
										Report</a></li>
								<li class="divider"></li>
								<li><a href=<s:url action="ViewDetailsForSales"/>>Sales
										Report</a></li>
								<li class="divider"></li>
								<li><a href=<s:url action="ViewDetailsForDd"/>>DD
										Report</a></li>
							</ul></li>
					</s:if>
					<li><a href=<s:url action="expensesViewAction"/>>Expenses</a></li>
					<s:if test="#session.role.equals('Admin')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Manage Users <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="adduser.jsp">Add User</a></li>
								<li class="divider"></li>
								<li><a href=<s:url action="viewUsersAdminPanel"/>>View/Edit
										Users</a></li>

							</ul></li>
					</s:if>
				</ul>
				<!--<form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
        </div>
      </form> -->
				<ul class="nav navbar-nav navbar-right">
					<!--<li><a href="#">Link</a></li> -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Welcome <s:property
								value="#session.name" /> <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">

							<div align="center">
								<li><s:form action="LogoutAction">
										<input type="submit" class="btn btn-primary" value="Logout" />
									</s:form></li>
							</div>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav> </header>
		<!-- Left side column. contains the logo and sidebar -->


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Invoice <small></small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Bills</li>
			</ol>
			</section>

			<!-- Main content -->
			<s:form action="InvoicePDFAction">

				<section class="content"> <!-- Small boxes (Stat box) -->



				<div class="container-fluid">
					<div class="row">
						<div class="debitote_form">
							<div>
								<input name="companyname" class="debitote_compname" type="text"
									id="companyname">
							</div>
							<div>
								<input name="companyaddress" class="debitote_compaddress"
									type="text" id="companyaddress">
							</div>

							<div class="invoicedatepanel">
								<div class="invoicetext1">Invoice No. :</div>
								<div>
									<s:textfield name="invoiceVar.invoiceNumber"
										class="invoice_formtextbox1" value="%{invoiceNumber}" />
								</div>

								<div>
									<s:textfield id="to" name="invoiceVar.invoiceEventsDate"
										value="%{eventDate}" class="invoice_formtextbox2" />
								</div>
								<div class="invoicetext2">Date :</div>
								<div class="clear"></div>
							</div>


							<div class="debitnotetext2">To,</div>
							<div>
								<s:textfield name="invoiceVar.companyName"
									class="debitote_formtextbox1" value="%{companyName}" />
								<s:hidden name="invoiceVar.eventName" value="%{eventName}" />
							</div>
							<div class="clear"></div>



							<table class="responstable3" id="addTable">

								<tr>
									<th></th>
									<th style="width: 60%;">Description &nbsp;&nbsp;</th>
									<th data-th="Amount"><span>Amount &nbsp;&nbsp;</th>
								</tr>
								<s:iterator value="invoiceActionList">
									<tr>
										<td>&nbsp;</td>
										<td><s:property value="licenseName" /> <s:hidden
												name="invoiceVar.licName" value="%{licenseName}" /></td>
										<td></td>

									</tr>
								</s:iterator>
								<tr>
									<td colspan="2" style="padding: 0px;">
										<table class="responstable4">
											<tr>
												<td style="text-align: left;">Pan No. :<input
													type="text" name="invoiceVar.panNumber"
													class="profarma_formtextbox1" /></td>
												<td style="text-align: left;">Net Amount :</td>
											</tr>
											<tr>
												<td style="text-align: left;">Service Tax No. :<input
													type="text" name="invoiceVar.serviceTaxNumber"
													class="profarma_formtextbox1" /></td>
												<td style="text-align: left;">Service Tax @ 14.00%</td>
											</tr>
											<tr>
												<td style="text-align: left;"></td>
												<td style="text-align: left;">SBC @ 0.50%</td>
											</tr>
											<tr>
												<td style="text-align: left;"></td>
												<td style="text-align: left;">KKC @ 0.50%</td>
											</tr>
											
											<tr>
												<td style="text-align: left;"></td>
												<td style="text-align: left;">Total Amount</td>
											</tr>
										</table>
									</td>
									<td style="padding: 0px;">
										<div ng-app>
											<table class="responstable4">
												<tr>
													<td><input type="text" name="invoiceVar.netAmount"
														class="profarma_formtextbox2" ng-model="a" /></td>
												</tr>
												<tr>
													<td><input type="text" name="invoiceVar.serviceTax"
														class="profarma_formtextbox2" value="{{a*0.14}}" ng-model="b" /></td>
												</tr>
												<tr>
													<td><input type="text" name="invoiceVar.sbcTax"
														class="profarma_formtextbox2" value="{{a*0.005}}" /></td>
												</tr>
												<tr>
													<td><input type="text" name="invoiceVar.kkcTax"
														class="profarma_formtextbox2" value="{{a*0.005}}" /></td>
												</tr>
												
												<tr>
													<td><input type="text"
														name="invoiceVar.invoiceTotalAmount"
														class="profarma_formtextbox2"
														value="{{a--b--(a*0.005)--(a*0.005)}}" /></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>

								<tr>
									<td colspan="3" style="text-align: left;">Total Amount in
										Words :</td>
								</tr>

							</table>

							<div class="invoicedatepanel">
								<div class="invoicetext1">Receiver's Signature :</div>
								<div>
									<input name="formtext1" class="invoice_formtextbox1"
										type="text" id="formtext1">
								</div>

								<div>
									<input name="formtext1" class="invoice_formtextbox2"
										type="text" id="formtext1">
								</div>
								<div class="invoicetext2">Proprietor :</div>
								<div class="clear"></div>
							</div>

							<div class="debitnotebtn">
								<s:submit value="Generate Invoice" class="btn btn-primary" />
							</div>


						</div>
					</div>
				</div>

				</section>
			</s:form>
		</div>
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.0
		</div>
		<strong>Copyright &copy; 2016-2017 <a
			href="http://mservices.in" target="_blank">MServices Solutions
				Pvt. Ltd.</a>.
		</strong> All rights reserved. </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-user bg-yellow"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>
								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>
								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>
								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>
					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked>
						</label>
						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <input type="checkbox" class="pull-right" checked>
						</label>
						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <input type="checkbox" class="pull-right" checked>
						</label>
						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							online <input type="checkbox" class="pull-right" checked>
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript::;" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script src="js/jQuery-2.1.4.min.js">
		
	</script>
	<!-- jQuery UI 1.11.4 -->
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.5 -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="js/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="js/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="js/jquery.knob.js"></script>
	<!-- daterangepicker -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
	<script src="js/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="js/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="js/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="js/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="js/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="js/demo.js"></script>


</body>
</html>