package login.database;
//MY SQL CONNECTION
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import login.bean.LoginBean;
import login.bean.LoginStatus;
//CONNECTING THE PAGE TO DATABASE
public class LoginDao {
	//DATABASE credentials url,name,password,driver configurations
	private String dbUrl = "jdbc:mysql://localhost:3306/dbphase1";
	private String dbUname = "root";
	private String dbPassword = "Arjunyadav@3";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	//creating driver class to call DB
	public void loadDriver(String dbDriver) {
//implementing try catch method for excewption handling
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//Getting the database Connection
	public Connection getConnection() {

		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}
//Conctructing the beanclass to call datadriver
	public LoginStatus validate(LoginBean loginBean) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		boolean locked = false;
		String user = "";
		int count = 0;
//Sql command to serch for valid user data
		String sql = "select * from login where username=?";
		PreparedStatement ps;
//Exception handling		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, loginBean.getUsername());
			// ps.setString(2, loginBean.getPassword());
//results collection and validation of user credentials like user name and password
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			if (status) {
				locked = rs.getBoolean("locked");
				user = rs.getString("username");
				if (!locked && (loginBean.getPassword() == null || !loginBean.getPassword().equals(rs.getString("password")))) {
					System.out.println("Incorrect password.");
					status = false;
					count = rs.getInt("count");
					count++;
					String updateSql = "update login set count=?, locked=? where username=?";
					ps = con.prepareStatement(updateSql);
					ps.setInt(1, count);
					if (count >= 3) {
						locked = true;
					}
					ps.setBoolean(2, locked);
					ps.setString(3, loginBean.getUsername());
					ps.executeUpdate();
				}
				if(loginBean.getPassword() != null && !loginBean.getPassword().equals(rs.getString("password"))) {
					status = false;
				}
			} else {
				status = false;
			}

			LoginStatus loginStatus = new LoginStatus();
			loginStatus.setLocked(locked);
			loginStatus.setSuccess(status);
			loginStatus.setUserName(user);
			return loginStatus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
