package ptscale;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;

public class usersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String userName = request.getParameter("userName");
		String firstName = request.getParameter("firstName");
		String secondName = request.getParameter("secondName");
		String jobTitle = request.getParameter("jobTitle");
		String contactPhone = request.getParameter("contactPhone");
		String email = request.getParameter("email");
		String appRole = request.getParameter("appRole");
		
		users users = new users();
		
		users.setUserName(userName);
		users.setSecondName(secondName);
		users.setFirstName(firstName);
		users.setJobTitle(jobTitle);
		users.setContactPhone(contactPhone);
		users.setEmail(email);
		users.setAppRole(appRole);
		
				if (userName.isEmpty() || secondName.isEmpty() || firstName.isEmpty() || jobTitle.isEmpty() || contactPhone.isEmpty() || email.isEmpty() ||
						appRole =="null" ) {
							
							RequestDispatcher req = request.getRequestDispatcher("index.html");
							req.include(request, response);
				
				} else {
							usersMongo input = new usersMongo();
							input.addUsers(request.getParameter("userName"),request.getParameter("firstName"),request.getParameter("secondName"),
							request.getParameter("jobTitle"),request.getParameter("contactPhone"),request.getParameter("email"),request.getParameter("appRole"));
						    System.out.println(" wyniki :" + input.readUsers());     
						    RequestDispatcher req = request.getRequestDispatcher("users.html");
							req.include(request, response);
			
		}
		
		
		
	}

	
	

}
