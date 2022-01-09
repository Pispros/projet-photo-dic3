package forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import beans.Utilisateur;
import dao.UtilisateurDAO;

public class UtilisateurForm {
	private static final String CHAMP_NAME = "example";
	private static final String CHAMP_LASTNAME = "example";
	private static final String CHAMP_LOGIN = "example.example";
	private static final String CHAMP_EMAIL = "example.example@gmail.com";
	private static final String CHAMP_PASSWORD = "pass123#";
	
	private boolean status;
	private String statusMessage;
	private Utilisateur VisiteurSimple;
	private HttpServletRequest request;
	private Map<String,String> erreurs;
	
	public UtilisateurForm(HttpServletRequest req){
		this.status = false;
		this.request = req;
		this.erreurs = new HashMap<String,String>();
	}
	
	public boolean ajouter(){
		String nom = getParameter(CHAMP_NAME);
		String prenom = getParameter(CHAMP_LASTNAME);
		String login = nom + " " + prenom;
		String password = getParameter(CHAMP_PASSWORD);
		String email = getParameter(CHAMP_EMAIL);
		int profil = 0;//utilisateur simple
		Utilisateur VisiteurSimple = new Utilisateur(login,email,password,profil);
		
		if(erreurs.isEmpty()){
			status = UtilisateurDAO.ajouterUser(VisiteurSimple);
			System.out.println(status);
			if(status){
				this.statusMessage = "Ajout effectuer avec succès";
				return true;
			}
		}
		
		statusMessage = "Ajout effectué avec succès";
		return false;
	}
	
	private String getParameter(String parametre){
		
		String valeur = request.getParameter(parametre);
		
		if(valeur == null  || valeur.trim().isEmpty()){
			return null;
		}
		
		return valeur.trim();
	}
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getStatusMessage() {
		return this.statusMessage;
	}

	public void setStatusMessage(String statusMessage) {
		this.statusMessage = statusMessage;
	}

	public Utilisateur getMen() {
		return VisiteurSimple;
	}

	public void setMen(Utilisateur u) {
		VisiteurSimple = u;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public Map<String, String> getErreurs() {
		return erreurs;
	}

	public void setErreurs(Map<String, String> erreurs) {
		this.erreurs = erreurs;
	}
}
