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

<title>Users</title>
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
					<li class="nav-item"><a class="nav-link" href="../">Dashboard</a></li>
					<li class="nav-item active"><a class="nav-link" href="../user.jsp">Users<span	class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#">TimeSheets</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Projects</a></li>
				</ul>

			</div>
		</div>
	</div>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="card border-primary mb-12">
			<div class="card-header">
			    <a class="btn btn-primary btn-sm" href="../newUser.jsp" role="button">+ Create New</a>
			
				<br>
			</div>
			<div class="card-body">
				<h4 class="card-title">User List</h4>
				<div class="form-group">
					<table class="table table-responsive-sm">
						<thead>
							<tr>
								<th scope="col">User Name</th>
								<th scope="col">First Name</th>
								<th scope="col">Second Name</th>
								<th scope="col">Job Title</th>
								<th scope="col">Contact Phone</th>
								<th scope="col">Email</th>
							</tr>
						</thead>
						<tbody>
							<%     
									
                                    String AllUsersDetails = (String)request.getAttribute("usersAllForward");
                					String usersstring = (String)request.getAttribute("usersstring");
 		 						    int inputs = Integer.valueOf(usersstring);
                  					String stringTable = (String)request.getAttribute("usersAllForward");
                                    if (inputs > 0) 
									{

									String wordTable = "\"\"";
									String tempTable[] = AllUsersDetails.split("\"");
									int countTable = 0;
			    						for (int i = 0; i < tempTable.length; i++) {
				    						if (wordTable.equals(tempTable[i]))
											countTable++;		
											}
				   					 		int z= 0; 
												for (int j=0; j< inputs; j++) {
													out.println(  "<tr class=table-light>" + 
													"      <th scope=row >"+tempTable[z+11]+"</td>" + 
													"      <td>"+tempTable[z+15]+"</td>" + 
													"      <td>"+tempTable[z+19]+"</td>" + 
													"      <td>"+tempTable[z+23]+"</td>" + 
													"      <td>"+tempTable[z+27]+"</td>" + 
													"      <td>"+tempTable[z+31]+"</td>" + 
													"    </tr>"); 			          
													z=z+36;
												}
											}
								else{
                                  				

								}	
									
            			 	 %>		
            			 	 	
				 		 </tbody>
				</table> 
	
			</div>	
   </div>	
 </div>
			<br>

		</div>
	
		
</body>
</html>