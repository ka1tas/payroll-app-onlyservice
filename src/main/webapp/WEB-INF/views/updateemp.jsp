<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous">
<title>Edit</title>
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


	<h2>
		<c:out value="${user.userName}" />
	</h2>
	<div class="container">
		<div class="row">

			
			<div class="col-lg-12 col-md-12 col-sm-12 col-12 activity" style="border:1px solid grey;">

				<h2 style="text-align:center;color:#007b5e;"><i class="fa fa-user-edit"></i> &nbsp; Update Employee</h2><hr/>
				
			
				<h2>
					<c:out value="${error}" />
					<c:out value="${success}" />
					<c:out value="${sessionScope.currentuser}" />
				</h2>


				<form:form modelAttribute="employee" method="POST"
					action="/payrollm1/app/employee/modify">

					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
							<label>Name</label>
							<form:input type="hidden" path="id" />
							<form:input type="text" path="name" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Date Of Birth</label>
							<form:input type="text" path="dateofBirth" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Gender</label><br>
							<form:radiobutton path="gender" value="Male" />
							Male
							<form:radiobutton path="gender" value="Female" />
							Female
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Salary</label>
							<form:input type="text" path="salary" class="textbox" />
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Department</label> <br>
							<form:select path="department.departmentId" class="btn btn-light dropdown-toggle pay-dep-btn">
								<form:option value="0" label="[ Select Department ]" />
								<form:options items="${departments}" itemLabel="departentname"
									itemValue="departmentId" />
							</form:select>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Address Line 1</label>
							<form:input type="hidden" path="address.id" class="textbox" />
							<form:input type="text" path="address.address1" class="textbox" />
						</div>

						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Address Line 2</label>
							<form:input type="text" path="address.address2" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Locality</label>
							<form:input type="text" path="address.locality" class="textbox" />
						</div>
					</div>

					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
					<label>City</label>
							<form:input type="text" path="address.city" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Pincode</label>
							<form:input type="text" path="address.pincode" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Email</label>
							<form:input type="text" path="email" class="textbox" />
						</div>
					</div>
					<div class="row">

						<div class="col-lg-6 col-md-8 col-sm-12 col-12 ">
						<label>Skills</label><br>
							<c:forEach items="${skills}" var="skill">
								<c:if
									test="${fn:containsIgnoreCase(employee.skills, skill.name)}">
									<input type="checkbox" name="skill" value="${skill.id}" checked> ${skill.name}
										</c:if>

								<c:if
									test="${!fn:containsIgnoreCase(employee.skills, skill.name)}">
									<input type="checkbox" name="skill" value="${skill.id}"> ${skill.name}
				</c:if>
			
							</c:forEach>
						</div>

					</div>


					<input type="submit" class="btn btn-outline-secondary" value="Save Employee">
				</form:form>


			</div>
		</div>
	</div>
</body>
</html>