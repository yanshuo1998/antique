package yanshuo;

public class UserDataBean {
		private String username;
		private String password;
		private String realname;
		private String sex;
		private String role;
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
		public String getRealname() {
			return realname;
		}
		public void setRealname(String realname) {
			this.realname = realname;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		
		public UserDataBean(String username,String password,String realname,String sex,String role){
			   this.username=username;
			   this.password=password;
			   this.realname=realname;
			   this.sex=sex;
			   this.role=role;
		}
		
		public UserDataBean(){
			
		}
}
