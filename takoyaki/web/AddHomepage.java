import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/*Servlet implementation class*/
@WebServlet("/AddHomepageServlet")

public class AddHomepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/*@see HttpServlet#HttpServlet()*/
	
	public AddHomepage() {
		super();
		//TODO auto generated constructor stub
	}
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
	out.println("<!DOCTYPE html><html><style><body>");
	out.println("<title>Homepage</title>");
	out.println("</body></style></html>");

	}
}
