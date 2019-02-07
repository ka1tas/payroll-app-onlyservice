<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!--    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous">

<title>Employee List</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>">

</head>


<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark pay-nav">
		<a class="navbar-brand"> <img class="logo"
			src="http://bootstrap-ecommerce.com/main/images/logo-white.png"
			height="40" ><b> &nbsp;B Payroll</b>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar1" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbar1">
			<ul class="navbar-nav ml-auto ">
				<li class="nav-item btn btn-light"><a>Employee </a></li>

				<li class="nav-item btn btn-dark "><a style="color: white;">Department</a></li>
				<li class="nav-item btn btn-dark  "><a style="color: white;">Skills</a></li>

     <li>
            <form class="navbar-form" role="search">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="search" name="q">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                </div>
            </div>
            </form>    
        </li>
				<!-- <form class="form-inline">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
				</form>
 -->
				<li class="nav-item btn btn-dark"><a style="color: white;"
					href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>


	<!-- <nav class="navbar  navbar-dark bg-dark">
		<div class="navbar-brand">XYZ Company - Payroll Application</div>
		<div style="float:right;" >
	<form action="logout" method="post" class="form-inline" >
	<input type="submit" value="logOut" class="btn btn-outline-success my-2 my-sm-0">
	</form>
	</div>
	</nav>


<div class="col-lg-3 col-md-4 col-sm-12 col-12 menu">


<div class="menu-item selected"><a>Employee</a></div>
<div class="menu-item"><a href="">Department</a></div>
<div class="menu-item"><a href="">Skills</a></div>

</div> -->

	<h2>
		<c:out value="${success}"></c:out>
	</h2>

	<section id="team" class="pb-5">
		<div class="container">
			<h5 class="section-title h1"><i class="fa fa-users"></i> &nbsp;&nbsp;Employee List</h5>
			<div class="row">

				<div class="col-lg-12 col-md-12 col-sm-12 col-12 activity">


					<div class="row">
						<c:forEach items="${employees}" var="employee">

							<div class="col-lg-3 col-md-6 col-sm-12 col-12 card pay-card">
								<div class="image-flip"
									ontouchstart="this.classList.toggle('hover');">
									<div class="mainflip">
										<div class="frontside">
											<div class="card">
												<div class="card-body text-center">
													<p>
														<img class=" img-fluid"
															src="http://anes.spr.go.th/images/uploads/user-2160923_960_720.png"
															alt="card image">
													</p>
													<h4 class="card-title">${employee.name}</h4>
													<p class="card-text">
													<h5>(${employee.department.departentname})</h5>
													</p>
													<p class="card-text">${employee.email}</p>
													<a href="#" class="btn btn-primary btn-sm"><i
														class="fa fa-plus"></i></a>


												</div>
											</div>
										</div>
										<div class="backside">
											<div class="card">
												<div class="card-body text-center mt-4">

													<p class="card-text">${employee.gender}
														| ${employee.dateofBirth}|  &#8377;
														${employee.salary}
													</p>
														<hr>
													<ul class="list-inline">
														<li class="list-inline-item"><a
															class="social-icon text-xs-center"><i
																class=" fa fa-trophy"></i> </a>
															<p class="card-text">
																<c:forEach items="${employee.skillList}" var="skill"> ${skill.name}, </c:forEach>
															</p></li>
															<hr>
														<li class="list-inline-item"><a
															class="social-icon text-xs-center"> <i
																class="fa fa-home"></i>
														</a> <br>
															<p>${employee.address.address1},
																${employee.address.address2},
																${employee.address.locality},
																${employee.address.city}-${employee.address.pincode}</p></li>
														<li><a
															href="<c:url value="/employee/showemp/${employee.id}"/>"
															class="btn btn-outline-dark"><i
																class="fa fa-edit"></i></a></li>

													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
					</div>
				</div>
			</div>






			<%-- 
	<div class="row">
		
	<c:forEach items="${employees}" var="employee">

	<div class="col-lg-4 col-md-6 col-sm-12 col-12 card pay-card">
  	<div class="card-body">
    <h5 class="card-title" style="background-color:lightgrey">${employee.name} (${employee.department.departentname})</h5>
    <h6 class="card-subtitle mb-2 text-muted">${employee.email}</h6>
    <p class="card-text">${employee.gender} | ${employee.dateofBirth}| ${employee.salary} | ${employee.address.address1},
			${employee.address.address2},
			${employee.address.locality},
			${employee.address.city}-${employee.address.pincode}</p>
			
	<p class="card-text"><c:forEach items="${employee.skillList}" var="skill">
					${skill.name},
			</c:forEach></p>
	<p class="card-text"> <a href="<c:url value="/employee/showemp/${employee.id}"/>" class="btn btn-secondary btn-sm" >Edit</a></p>
	</div>
	</div>
	
	</c:forEach>
		
		</div>
	<div class="col-lg-3 col-sm-6 col-6">
			<h3 style=" text-decoration: underline; font-weight:bold">${employee.name}</h3>(${employee.department.departentname})|
			${employee.email} |
			${employee.gender} |
			${employee.dateofBirth}
			</div>
		
			
		
				<div class="col-lg-3 col-sm-6 col-6">
				
				<h4></h4>
			<c:forEach items="${employee.skillList}" var="skill">
					${skill.name},
			</c:forEach>
			
			</div>
	
		
			<div class="col-lg-3 col-sm-12 col-12">
			
			${employee.address.address1},
			${employee.address.address2},
			${employee.address.locality},
			${employee.address.city}-${employee.address.pincode}
			</div>
			<div class="col-lg-3 col-sm-12 col-12" style="border:1px solid white;">
			<!-- <td> <a href="showemployee?id=${employee.id}">Edit</a></td>  -->	<!-- Its used for @requestparam -->
			<td> <a href="employee/showemp/${employee.id}">Edit</a></td>
			<br>
		<a href="<c:url value="/employee/showemp/${employee.id}"/>" class="btn btn-secondary btn-lg" style="width:80%;">Edit</a>
		</div> --%>

<form method="post">
<input type="hidden" value=data.id>
<input type="button" onclick="update()" class="btn btn-outline-dark"><i class="fa fa-edit"></i>
</form>

<a onclick="update()" class="btn btn-outline-dark"><i class="fa fa-edit"></i></a>

		</div>
	</section>
</body>

</html>