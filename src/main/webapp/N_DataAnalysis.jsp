<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Visualizer - Karsha project</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin-2.css" rel="stylesheet">
<link href="css/c3.css">
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="css/jquery-ui.css" rel="stylesheet">
<script src="js/d3.min.js"></script>
<script src="js/c3.js"></script>
<script src="js/N_dataAnalysis.js"></script>

</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">GC Visualizer - Karsha
					project</a>
			</div>
			<!-- /.navbar-header -->
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav navbar-nav side-nav">
						<!-- <li class="active"><a href="index.jsp"><i
							class="fa fa-fw fa-dashboard"></i> GC Visualizer</a></li> -->
						<li><a><i class="fa fa-fw fa-arrows-v"></i> GC-Analysis
						</a>
							<ul id="accordion">
								<%
									for (int i = 2005; i < 2013; i++) {
								%>
								<li>
									<h3>
										<a
											href="?filename=data<%=i%>.json&year=data<%=i%>.json&year=<%=i%>"><%=i%></a>
									</h3>
									<ul>
										<li><a
											href="N_network_Y.jsp?year=<%=i%>&Q=-1"><i
												class="fa fa-fw fa-table"></i> Annual </a></li>
										<li><a
											href="N_network_Q.jsp?year=<%=i%>&Q=1"><i
												class="fa fa-fw fa-table"></i> Quarter 1</a></li>
										<li><a
											href="N_network_Q.jsp?year=<%=i%>&Q=2"><i
												class="fa fa-fw fa-table"></i> Quarter 2</a></li>
										<li><a
											href="N_network_Q.jsp?year=<%=i%>&Q=3"><i
												class="fa fa-fw fa-table"></i> Quarter 3</a></li>
										<li><a
											href="N_network_Q.jsp?year=<%=i%>&Q=4"><i
												class="fa fa-fw fa-table"></i> Quarter 4</a></li>
									</ul>
								</li>
								<%
									}
								%>
							</ul></li>
						<li><a href="DataAnalysis.jsp"><i
								class="fa fa-fw fa-table"></i> Network Summary Statistics</a></li>
						<li><a href="analysis_extended.jsp"><i
								class="fa fa-fw fa-file"></i> H-Index Analysis</a></li>

					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Network Summary Statistics</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="template.html">Visualizer</a>
							</li>
							<li class="active"><i class="fa fa-table"></i> Network Summary Statistics
							</li>
						</ol>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div id="chart" style="border: 2px solid; height:400px">
							<center>
								<h2>Edge Distribution - Log Volume</h2>
							</center>
							<script type="text/javascript">	
								c3_edge();
							</script>
						</div>
					</div>
				</div>
				<br></br>
				
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery Version 1.11.0 -->
	<script src="js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
		$("#accordion").accordion();
	</script>
</body>

</html>
