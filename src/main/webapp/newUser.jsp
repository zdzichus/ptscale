
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<title>GetUsers</title>
</head>
<body>
	<div class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="../">Project Tracking </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor01" aria-controls="navbarColor01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
					<li class="nav-item active"><a class="nav-link" href="../newUser.jsp">Users<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#">TimeSheets</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Projects</a></li>
				</ul>
				    
					
			</div>
		</div>
	</div><br><br><br>
    
 <div class="container">

<div class="card border-primary mb-3" style="max-width: 35rem;">
  <div class="card-header">New User</div>
  <div class="card-body">
    <h4 class="card-title">Entry details:</h4>
    	<form method ="get" action="usersServlet">
				  
			  <div class="form-group">
				    <label class="form-control-label" for="inputSuccess1">Login Name</label>
                    <input type="text" name="userName" class="form-control"> <br>
				
				     <label class="form-control-label" for="inputSuccess1">First Name</label>
                     <input type="text" name="firstName" class="form-control" > <br>
                    
                      <label class="form-control-label" for="inputSuccess1">Second Name</label>
                     <input type="text" name="secondName" class="form-control" > <br>
                     
                       <label class="form-control-label" for="inputSuccess1">Job Title</label>
                     <input type="text" name="jobTitle" class="form-control" > <br>
                     
                       <label class="form-control-label" for="inputSuccess1">Contact Phone</label>
                     <input type="text" name="contactPhone" class="form-control" > <br>
                      
                        <label class="form-control-label" for="inputSuccess1">Email</label>
                     <input type="text" name="email" class="form-control" > <br>
                            
                     
                 </div>
  						
  						<div class="form-group">
   						
   						 <div class="custom-control custom-radio">
      					 <input type="radio" id="admin" name="appRole" value="admin" class="custom-control-input">
     					 <label class="custom-control-label" for="admin">admin</label>
    					 </div>
    					
   						 <div class="custom-control custom-radio">
     					 <input type="radio" id="user" name="appRole" value="user" class="custom-control-input">
     					 <label class="custom-control-label" for="user">user</label>
   						 </div>
   						
   						 </div>	
  				
				
				     <div>
				    <button type="submit" class="btn btn-primary">Submit</button>
					<!-- <input type="submit" value="Submit">  -->
						
				</div>
		</form>
		</div>	
  </div>	
  
</div>
	
</body>
</html>