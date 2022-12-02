package register;
//Imports
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lockserv
 */
//extending the servlet lock screen class
public class lockserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public lockserv() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("hello");
		String attempt=request.getParameter("attempt");
		
	//crating the lock bean method	
		lockbean lockBean=new lockbean(attempt);

		
		lockBean.setAttempt(attempt);
		//Showing the lock screen condition
		lock lDao=new lock();
		 if(lDao.validate(lockBean)) {
		
				response.sendRedirect("lock.jsp");
			}
		else {
			response.sendRedirect("lock.jsp");
		}
			
		}
		
	}


