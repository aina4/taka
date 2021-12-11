package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class connect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <style>\n");
      out.write("    p {text-align: center;}\n");
      out.write("    h1 {text-align: center;}\n");
      out.write("    </style>\n");
      out.write("</head>\n");

 
        String custName = request.getParameter("custName");
	String custPwd = request.getParameter("custPwd");
	String custPhoneNum = request.getParameter("custPhoneNum");
        String custEmail = request.getParameter("custEmail");
	String custUsername = request.getParameter("custUsername");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiedye","root","");
			PreparedStatement pst = con.prepareStatement("insert into customers(custName, custPwd, custPhoneNum, custEmail, custUsername)values(?,?,?,?,?)");
		
			pst.setString(1, custName);
			pst.setString(2, custPwd);
			pst.setString(3, custPhoneNum);
			pst.setString(4, custEmail);
			pst.setString(5, custUsername);
			
			int x = pst.executeUpdate();
			if(x>0){
				out.println("Successfully");
			}else{
				out.println("Failed");
			}
			con.close();
		}catch(Exception e){
			out.println(e);
		}
        
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Profile Edited</title>\n");
      out.write("        \n");
      out.write("         <link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Your Profile Has Been Updated!</h1><br><br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("                 <div class=\"panel-body\">\n");
      out.write("                     <table id=\"tbl-student\" class=\"table table-responsive table-bordered\" cellpadding =\"0\" width=\"100%\" colour=\"blue\">\n");
      out.write("                         <thead>\n");
      out.write("                             <tr>\n");
      out.write("                                    <th>Customer Name</th>\n");
      out.write("                                    <th>Password</th>\n");
      out.write("                                    <th>Phone Number</th>\n");
      out.write("                                    <th>Email</th>\n");
      out.write("                                    <th>Username</th>\n");
      out.write("                             </tr> \n");
      out.write("                             ");
  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiedye","root","");
                                
                                  String query = "select * from customers";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("custID");
                                   
      out.write("\n");
      out.write("                             <tr>\n");
      out.write("                                 <td align=\"center\">");
      out.print(rs.getString("custName") );
      out.write("</td>\n");
      out.write("                                 <td align=\"center\">");
      out.print(rs.getString("custPwd") );
      out.write("</td>\n");
      out.write("                                 <td align=\"center\">");
      out.print(rs.getString("custPhoneNum") );
      out.write("</td>\n");
      out.write("                                 <td align=\"center\">");
      out.print(rs.getString("custEmail") );
      out.write("</td>\n");
      out.write("                                 <td align=\"center\">");
      out.print(rs.getString("custUsername") );
      out.write("</td>\n");
      out.write("                             </tr>\n");
      out.write("                              ");
 
                                 }
                               
      out.write("\n");
      out.write("                       </table>    \n");
      out.write("                 </div>\n");
      out.write("                                 <p><a href=\"homepage.jsp\" align=\"center\">HomePage</a></p>\n");
      out.write("                                 <p><a href=\"editProfile.jsp\" align=\"center\">Edit Profile</a></p>\n");
      out.write("            </div>  \n");
      out.write("      </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
