package forms;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import beans.Utilisateur;

import dao.*;
public class LoginForm {
	private String login;
	private HttpServletRequest request;
	
	private static final String CHAMP_LOGIN = "login";
	private static final String CHAMP_PWD = "password";
	
	public LoginForm(HttpServletRequest req){
		this.request = req;
	}
	
	public boolean Authen(){
		login = request.getParameter(CHAMP_LOGIN);
		String password = request.getParameter(CHAMP_PWD);
		
		Utilisateur uoauth = null;
		
		HttpSession session = request.getSession();
		
//		if("admin".equals(login) && "passer".equals(password)){
//			
//			uoauth = new Utilisateur("ADMIN","ADMIN","ADMIN","ADMIN");
//			
//		}else {
			uoauth = UtilisateurDAO.getbyLogin(login);
			
			if (uoauth != null && !uoauth.getPassword().equals(password)) {
				uoauth = null;
			}
		//}
		if (uoauth != null) {
			session.setAttribute("utilisateur", uoauth);
			return true;
		}
		return false;
	}

	public String getLogin() {
		// TODO Auto-generated method stub
		return this.login;
	}
}
