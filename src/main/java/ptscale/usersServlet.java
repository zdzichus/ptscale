package ptscale;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

public class usersServlet extends HttpServlet {
	 
	public static final long serialVersionUID = 1L;
	users users = new users();
	usersMongo input = new usersMongo();
	
   
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		String userName = request.getParameter("userName");
		String firstName = request.getParameter("firstName");
		String secondName = request.getParameter("secondName");
		String jobTitle = request.getParameter("jobTitle");
		String contactPhone = request.getParameter("contactPhone");
		String email = request.getParameter("email");
		String appRole = request.getParameter("appRole");
		
		
			
		users.setUserName(userName);
		users.setSecondName(secondName);
		users.setFirstName(firstName);
		users.setJobTitle(jobTitle);
		users.setContactPhone(contactPhone);
		users.setEmail(email);
		users.setAppRole(appRole);
		
				if (userName.isEmpty() || secondName.isEmpty() || firstName.isEmpty() || jobTitle.isEmpty() || contactPhone.isEmpty() || email.isEmpty() ||
						appRole == null ) {
							
							RequestDispatcher req = request.getRequestDispatcher("index.html");
							req.include(request, response);
				
				} else {
							
							input.addUsers(request.getParameter("userName"),request.getParameter("firstName"),request.getParameter("secondName"),
							request.getParameter("jobTitle"),request.getParameter("contactPhone"),request.getParameter("email"),request.getParameter("appRole"));				
							
							//forwarding the All coolection's users to users.jsp 
							String usersAll = input.readUsers();
							int sizeint = input.size();
							String sizestring = String.valueOf(sizeint); 
						    System.out.println(usersAll);
							request.setAttribute("usersAllForward", usersAll);
							request.setAttribute("usersstring", sizestring);
						 	request.getRequestDispatcher("users.jsp").forward(request, response);
						 			   		 		
						    RequestDispatcher req = request.getRequestDispatcher("users.jsp");
							req.include(request, response);		

							

						
	 	}
				
	
	 }

}
