package register;

public class RegisterBean {
	private String userfname,userlname,useraddress,telephone,email,username,password;
	public RegisterBean() {
		super();
	}

	public RegisterBean(String userfname, String userlname, String useraddress, String telephone, String email,
			String username, String password) {
		super();
		this.userfname = userfname;
		this.userlname = userlname;
		this.useraddress = useraddress;
		this.telephone = telephone;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public String getUserfname() {
		return userfname;
	}

	public void setUserfname(String userfname) {
		this.userfname = userfname;
	}

	public String getUserlname() {
		return userlname;
	}

	public void setUserlname(String userlname) {
		this.userlname = userlname;
	}

	public String getUseraddress() {
		return useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
