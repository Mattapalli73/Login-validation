package login.web;
//imports for initiating the servlets
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import login.bean.LoginBean;
import login.bean.LoginStatus;
import login.database.LoginDao;
import register.lock;
import register.lockbean;

/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("done2");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);
		LoginDao loginDao = new LoginDao();
//calling Servlet bean
		LoginStatus loginStatus = loginDao.validate(loginBean);

		if (loginStatus != null && loginStatus.isSuccess()) {
			System.out.println("logginged in success");
			if (loginStatus.isLocked()) {
				System.out.println("LoginStatus says account is locked-->" + loginStatus);
				request.getSession().setAttribute("message", "Use account is locked. Please reach Admin to unlock.");
				response.sendRedirect("login.jsp");
			} else {
				response.sendRedirect("loginsuccess.jsp");
			}
		}
//validating the loack and providing the Error message or warning Message
		if (loginStatus != null && !loginStatus.isSuccess()) {
			if (loginStatus.isLocked()) {
				System.out.println("Account Locked-->" + loginStatus);
				request.getSession().setAttribute("message", "Use account is locked. Please reach Admin to unlock.");
				response.sendRedirect("login.jsp");
			} else {
				System.out.println("Invalid Credentials-->" + loginStatus);
				request.getSession().setAttribute("message",
						"Incorrect credentials, Account will be locked for 3 failure attempts.");
				response.sendRedirect("login.jsp");
			}
		}

		/*
		 * else if(lDao.validate(lockBean)) { response.sendRedirect("lock.jsp"); }
		 * 
		 * else { System.out.println("done3"); RequestDispatcher rd =
		 * request.getRequestDispatcher("attempt"); System.out.println("done1");
		 * rd.forward(request, response); // response.sendRedirect("error.jsp"); }
		 */

	}

}
