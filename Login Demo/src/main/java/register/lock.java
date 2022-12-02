package register;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import login.bean.LoginBean;
public class lock {
		private String dbUrl="jdbc:mysql://localhost:3306/arjun";
		private String dbUname="root";
		private String dbPassword="Arjunyadav@3";
		private String dbDriver="com.mysql.cj.jdbc.Driver";
		public void loadDriver(String dbDriver){
			
			try {
				Class.forName(dbDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public Connection getConnection()
		{
			
			Connection con=null;
			try {
				con=DriverManager.getConnection(dbUrl,dbUname,dbPassword);
			} catch (SQLException  e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return con;
	}
		public boolean validate(lockbean lockBean) {
			loadDriver(dbDriver);
			Connection con=getConnection();
			boolean status=false;
			
			String sql="select * from login where attempt=?";
			PreparedStatement ps;
			try { 
				ps=con.prepareStatement(sql);
				ps.setString(3,lockBean.getAttempt());
				
				
			ResultSet rs=ps.executeQuery();	
			status=rs.next();	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;	



		
	}
}

