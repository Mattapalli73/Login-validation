package register;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import login.bean.LoginBean;
/*** Servlet implementation class Register*/
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /** * Default constructor. */
    public Register() {
        // TODO Auto-generated constructor stub
    }
	/*** @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/*** @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String userfname=request.getParameter("userfname");
		String userlname=request.getParameter("userlname");
		String useraddress=request.getParameter("useraddress");
		String telephone=request.getParameter("telephone");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//String count=request.getIntHeader(count);
		//boolean locked=request.getParameter(locked);
		RegisterBean registerBean=new RegisterBean(userfname,userlname,useraddress,telephone,email,username,password);
		registerBean.setUserfname(userfname);
		registerBean.setUserlname(userlname);
		registerBean.setUseraddress(useraddress);
		registerBean.setTelephone(telephone);
		registerBean.setEmail(email);
		registerBean.setUsername(username);
		registerBean.setPassword(password);
		
		
		RegisterDao rDao=new RegisterDao();
		String result=rDao.insert(registerBean);
		response.getWriter().print(result);
		System.out.println("Registration success full");
		request.getSession().setAttribute("message", "Your User Account is Created Successfully.");
		response.sendRedirect("login.jsp");
	}

}
