<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<title>Home</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>">

</head>



<body>

	<div id="login-navbar">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark pay-nav">
			<a class="navbar-brand"> <img class="logo"
				src="http://bootstrap-ecommerce.com/main/images/logo-white.png"
				height="40"><b> &nbsp;B Payroll</b>
			</a>
		</nav>
	</div>


	<div id="emplist-navbar">


		<nav class="navbar navbar-expand-lg navbar-dark bg-dark pay-nav">
			<a class="navbar-brand"> <img class="logo"
				src="http://bootstrap-ecommerce.com/main/images/logo-white.png"
				height="40"><b> &nbsp;B Payroll</b>
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
								<input type="text" class="form-control" placeholder="search"
									name="q">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="fa fa-search"></i>
									</button>
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
					<li class="nav-item btn btn-dark"><a style="color: white;" href="logout">Logout</a></li>
				</ul>
			</div>
		</nav>



	</div>




	<div id="login-body">

		<div class="container.fluid">

			<div class="row">
				<div class="col-lg-4 col-12 col-md-4 col-sm-12"></div>
				<div class="col-lg-4 col-12 col-md-4 col-sm-12">

					<br> <br>
					<h2 style="text-align: center;">
						<i class="fa fa-user" style="color: #007b5e"></i><b>&nbsp;Login</b>
					</h2>
					<br>
					<div class="sam">
						<h4>
							<c:out value="${error}" />
						</h4>
					</div>

					<form action="authenticate" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">UserName</label> <input
								type="text" class="form-control" name="userName" value="user" id="userName"
								aria-describedby="emailHelp" placeholder="Enter username">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="password" class="form-control" value="name"
								id="password" placeholder="Password">
						</div>

						<input type="button" class="btn btn-primary" style="width: 100%"
							onclick="authenticate()" value="Login">
					</form>

				</div>
				<div class="col-lg-4 col-12 col-md-4 col-sm-12"></div>

			</div>
		</div>

	</div>



	<div id="emplist-body">


		<h2>
			<c:out value="${success}"></c:out>
		</h2>

		<section id="team" class="pb-5">
			<div class="container">
				<h5 class="section-title h1">
					<i class="fa fa-users"></i> &nbsp;&nbsp;Employee List
				</h5>
				<div class="row">

					<div class="col-lg-12 col-md-12 col-sm-12 col-12 activity">


						<div id="emplist" class="row">






<%-- 							<div class="col-lg-3 col-md-6 col-sm-12 col-12 card pay-card">
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

													<p class="card-text">${employee.gender}|
														${employee.dateofBirth}| &#8377; ${employee.salary}</p>
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
															class="btn btn-outline-dark"><i class="fa fa-edit"></i></a></li>

													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> --%>


						</div>
					</div>
				</div>



			</div>
		</section>


	</div>

<div id="update-body">

	<div class="container">
		<div class="row">

			
			<div class="col-lg-12 col-md-12 col-sm-12 col-12 activity" style="border:1px solid grey;">

				<h2 style="text-align:center;color:#007b5e;"><i class="fa fa-user-edit"></i> &nbsp; Update Employee</h2><hr/>
				
			
				<h2>
					<c:out value="${error}" />
					<c:out value="${success}" />
					<c:out value="${sessionScope.currentuser}" />
				</h2>
<div id="update-table">

			<form method="POST" id="submitform" action="/payrollm1/app/rest/employee/modify">

					<div class="row" >
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
							<label>Name</label>
							<input type="hidden" id="id" />
							<input type="text" id="name" name="name" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Date Of Birth</label>
							<input type="text" class="textbox" name="dateofBirth" id="dateofBirth" value="">
						</div> 
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Gender</label><br>
					 	
					 	
						<input type="radio" name="gender"  id="radiomale" value="Male"/>
								Male
								<input type="radio"  name="gender" id="radiofemale" value="Female"/>
								Female
				
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Salary</label>
							<input type="text" id="salary" name="salary" class="textbox" />
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Department</label>
						<select  class="form-control" id="department" name="department">
							<option>[Select department]</option>
							
							</select>
							
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Address Line 1</label>
							<input type="hidden" id="addressid" name="addressid" class="textbox" />
							<input type="text" id="address1" name="address1" class="textbox" />
						</div>

						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Address Line 2</label>
							<input type="text" id="address2" name="address2" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Locality</label>
							<input type="text" id="locality" name="locality" class="textbox" />
						</div>
					</div>

					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
					<label>City</label>
							<input type="text" id="city" name="city" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Pincode</label>
							<input type="text" id="pincode" name="pincode" class="textbox" />
						</div>
						<div class="col-lg-3 col-md-4 col-sm-12 col-12 ">
						<label>Email</label>
							<input type="text" id="email" name="email" class="textbox" />
						</div>
					</div>
					<div class="row">

						<div class="col-lg-6 col-md-8 col-sm-12 col-12 ">
						<label>Skills</label><br>
					<div id="skillss">
													
					</div>
							
						</div>

					</div>


					<input type="submit" class="btn btn-outline-secondary" value="Save Employee" >
				</form>


			</div>
		</div>
	</div>

</div>
</div>

</body>

<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>

<script>
	function authenticate() {
		
		$.ajax({
		url : '<c:url value="/app/rest/authenticate"/>',
		type : 'POST',
		dataType : 'json',
		data : {
			userName : $("#userName").val(),
			password : $("#password").val(),
		},
		success : function(data) {
			//alert(data);
			if (data.authenticated) {
				alert("Authentication successful.");
				$("#emplist-navbar").show();
				$("#emplist-body").show();
				$("#login-navbar").hide();
				$("#login-body").hide();
				
				        $.ajax({  
				        	url : '<c:url value="/app/rest/employee/list"/>',
				        	dataType : 'json', 
				            type : 'GET',
				            success: function (data) {  

				            	
				          
				                 var html="";
				               for(i=0;i<data.length;i++){
				            	   
				            	 html+=createCard(data[i]);

				            	 
				               } 
				               
				               $("#emplist").html(html); 
				               
				                }  
				        });
				
				
			} else {
				alert("Authentication failed.");
			}
		},
		error : function(req, status, error) {
			if (req.status == 500) {
				alert("Internal System Error. Please retry or contact administrator.")
			} else if (req.status == 400) {
				alert(req.responseJSON.errors[0].defaultMessage);
			}
		}
	});

	}
	
	function createCard(data){
		
		
		 var line="";
        
		
		 line+='<div class="col-lg-3 col-md-6 col-sm-12 col-12 card pay-card">';
		 line+='<div class="image-flip" ontouchstart="this.classList.toggle('+'hover'+');">';
		 line+='<div class="mainflip">';
		 line+='<div class="frontside">';
		 line+='<div class="card">';
		 line+='<div class="card-body text-center">';
		 line+='<p> <img class=" img-fluid" src="http://anes.spr.go.th/images/uploads/user-2160923_960_720.png" alt="card image"> </p>';
		 line+='<h4 class="card-title">'+data.name+'</h4>';
		 line+='<p class="card-text">';
		 line+='<h5>('+data.department.departentname+')</h5> </p>';
		 line+='<p class="card-text">${employee.email}</p>';
		 line+='<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>'; 
		 line+='</div> </div> </div>';
		 line+='<div class="backside"> <div class="card"> <div class="card-body text-center mt-4">';
		 line+='<p class="card-text">'+data.gender+'|'+data.dateofBirth+'| &#8377;'+ data.salary+'</p><hr>';
		 line+='<ul class="list-inline">';
		 line+='<li class="list-inline-item">';
		 line+='<a class="social-icon text-xs-center"><i class=" fa fa-trophy"></i> </a>';
		 line+='<p class="card-text">'+data.skills+'</p></li><hr>';
		 line+='<li class="list-inline-item">';
		 line+='<a class="social-icon text-xs-center"> <i class="fa fa-home"></i> </a> <br>';
			
		var add=data.address;
		 	
		 line+='<p class="card-text">'+add.address1+','+add.address2+','+add.locality+','+add.city+','+add.pincode+'</p></li>';
		 line+='<li>';
		 line+= '<button  onclick="update('+data.id+')" ><i class="fa fa-edit"/></button></li>';
			 
		 line+='</ul> </div> </div> </div></div> </div> </div>';
		

		 
		  return line;  
        
		
		
	}
	
function update(id) {
	
	
		$.ajax({
		    url: "<c:url value="/app/rest/employee/detail"/>",
            dataType: 'json',
            type: 'get',
            data: 
        	{
            	employeeId:id,                		
        	},
		
		success : function(data) {
			
		
				
				$("#emplist-body").hide();
				$("#update-body").show();
				
				$("#id").val(data.employee.ID);
				$("#name").val(data.employee.name);
				$("#salary").val(data.employee.salary);
				$("#dateofBirth").val(data.employee.dateofBirth);
				$("#addressid").val(data.employee.address.id);
				$("#address1").val(data.employee.address.address1);
				$("#address2").val(data.employee.address.address2);
				$("#locality").val(data.employee.address.locality);
				$("#city").val(data.employee.address.city);
				$("#pincode").val(data.employee.address.pincode);
				$("#email").val(data.employee.email);
				
				
				
				if(data.employee.gender=="Male"){
					//$("#radiomale").checked=true;
					$("#radiomale").prop("checked", true)
				}
				if(data.employee.gender=="Female"){				
					
					$("#radiofemale").prop("checked", true)
					
				}
				
				
			
			 	  for(i=0;i<data.skill.length;i++){
	                     var container = $('#skillss');
	                     var check=false;
	                     for(j=0;j<data.employee.skillList.length;j++){
	                          if(data.employee.skillList[j].id==data.skill[i].id){
	                               check=true;
	                          }
	                     }
	                     $('<input />', { type: 'checkbox', name: 'skill', value: data.skill[i].id, checked: check }).appendTo(container);
	                          $('<label />', {text: data.skill[i].name }).appendTo(container);                                                     
	                }

				

			 	 for(i=0;i<data.department.length;i++){
                     if(data.department[i].departmentId!=data.employee.department.departmentId){
                                      $("#department").append('<option value="'+data.department[i].departmentId+'">'+data.department[i].departentname+'</option>');
                                 }else{
                                      $("#department").append('<option value="'+data.department[i].departmentId+'" selected>'+data.department[i].departentname+'</option>');
                                 }                               
                            }
				
				
			
				
		},
		error : function(req, status, error) {
			if (req.status == 500) {
				alert("Internal System Error. Please retry or contact administrator.")
			} else if (req.status == 400) {
				alert(req.responseJSON.errors[0].defaultMessage);
			}
		}
	});

	}
	
	
	


$("#submitform").submit(function(e) {
	
	 var form = $(this);
	    var url = form.attr('action');
	 
	 
	$.ajax({
	    url: url,
        dataType: 'json',
        type: 'post',
     	data: form.serialize(),
	
     	success : function(data) {
			alert(data);
			if (data.updated) {
				alert("Updation successful.");
			}
			else {
				alert("Updation failed.");
			}
		},
	error : function(req, status, error) {
		if (req.status == 500) {
			alert("Internal System Error. Please retry or contact administrator.")
		} else if (req.status == 400) {
			alert(req.responseJSON.errors[0].defaultMessage);
		}
	}
		
		

}); 
 
	 e.preventDefault(); 
});


	
	
</script>



</html>