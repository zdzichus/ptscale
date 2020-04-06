package ptscale;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class dashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	usersMongo input = new usersMongo();


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usersAll = input.readUsers();
		int sizeint = input.size();
		String sizestring = String.valueOf(sizeint); 
	  
		request.setAttribute("usersAllForward", usersAll);
		request.setAttribute("usersstring", sizestring);
	 	request.getRequestDispatcher("user.jsp").forward(request, response); 
	}


}
