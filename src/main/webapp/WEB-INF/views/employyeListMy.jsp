<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<title>Payroll_Employee</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="navbar-brand">ABC Company - Payroll Application</div>
	</nav>
	<div class="container-fluid">
		
				<div class="row">
					<div class="col-12 col-lg-2 menu">
						<div class="menu-item selected">
							<a href="">Employee</a>
						</div>
						<div class="menu-item">
							<a href="">Departments</a>
						</div>
						<div class="menu-item">
							<a href="">Skills</a>
						</div>
				
					</div>
					
					<div class="col-12 col-lg-10 activity">
						<h2>Employee List</h2>

<div class="card-deck">
						<c:forEach items="${employees}" var="employee">
							<div class="card bg-light text-dark">
								<div class="card-body">


									<h4>${employee.name}<span style="font-size: 14px">(${employee.department.name})</span>
									</h4>

									<h6 style="font-size: 13px; color: grey">
										<span>${employee.email} | </span> <span>${employee.gender}
											| </span> <span>${employee.dob} | </span> <span>${employee.salary}
											| </span> <span> <c:forEach items="${employee.skillList }"
												var="skill">
								${skill.name },
							</c:forEach>
										</span> <span> | ${employee.address.address1} ,
											${employee.address.address2} , ${employee.address.locality} -
											${employee.address.pincode} | </span> <a
											href="employee/show/${employee.id }">Edit</a>
									</h6>
								</div>
							</div>


						</c:forEach>
						</div>

					</div>
				</div>
			</div>
</body>
</html>