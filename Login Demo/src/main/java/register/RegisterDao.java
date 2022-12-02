package register;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class RegisterDao {
	private String dbUrl="jdbc:mysql://localhost:3306/dbphase1";
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
	public String insert(RegisterBean registerBean) {
		loadDriver(dbDriver);
		Connection con=getConnection();
		String result="data Entered successfully";
		String sql="insert into login values(?,?,?,?,?,?,?,0,0)";
		PreparedStatement ps;
		try {
			ps=con.prepareStatement(sql);
			
			ps.setString(1, registerBean.getUserfname());
			ps.setString(2, registerBean.getUserlname());
			ps.setString(3, registerBean.getUseraddress());
			ps.setString(4, registerBean.getTelephone());
			ps.setString(5, registerBean.getEmail());
			ps.setString(6, registerBean.getUsername());
			ps.setString(7, registerBean.getPassword()); 
			//ps.setLong(8, registerBean.getCount());
			//ps.setString(9, registerBean.isLocked());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result="data not entered";
			
		
			
		}
			return result;
	}
}


