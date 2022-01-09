package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.*;
import database.*;

public class UtilisateurDAO {

	private static ConnectionDb cnx = new ConnectionDb();
	 
	/*public static boolean ajouterUser(Utilisateur u){
		String query = " insert into users (id, login, email, password, profil)"
	        + " values (? ,?, ?, ?, ?)";
		System.out.println(query);
	      // create the mysql insert preparedstatement
	      PreparedStatement preparedStmt;
		try {
			preparedStmt = cnx.getConnection().prepareStatement(query);
			  preparedStmt.setString (1, null);
		      preparedStmt.setString (2, u.getLogin());
		      preparedStmt.setString (3, u.getEmail());
		      preparedStmt.setString (4, u.getPassword());
		      preparedStmt.setInt	 (5, u.getProfil());			 
		      preparedStmt.execute();
		      return true;
		} catch (SQLException e) {
			 System.out.println(e);
		      return false;
		}
		
	}	
	
	public static Utilisateur getbyLogin(String login){
		Utilisateur userfind = null;
		String query = "SELECT * FROM users WHERE login ='"+login+"'";
		
		try {
			Statement stmt = cnx.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(query);
		      if (rs.next()) {
		    	  Utilisateur user = new Utilisateur(rs.getString("login"),rs.getString("email"), rs.getString("password") ,rs.getInt("profil"));
			      return user;
		      }
			
		} catch (SQLException e) {
			// TODO: handle exception
		      System.out.println(e);
		}
		return userfind;
	}
*/
	private static final String INSERT_USER_PREPARED = "INSERT INTO users VALUES (0, ?, ?, ?, ?, ?)";
	private static final String UPDATE_USER_PREPARED = "UPDATE users SET prenom = ?, nom = ?, password= ? WHERE login = ?";
	private static final String DELETE_USER_PREPARED = "DELETE FROM users WHERE login = ?";
	private static final String SELECT_USER_BY_LOGIN_PREPARED = "SELECT * FROM users WHERE login = ?";
	private static final String SELECT_USER_BY_LOGIN_PASS_PREPARED = "SELECT * FROM users WHERE login = ? and password = ?";

	public static void ajouter(Utilisateur utilisateur)  {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(INSERT_USER_PREPARED);
			preparedStatement.setString(1, utilisateur.getPrenom());
			preparedStatement.setString(2, utilisateur.getNom());
			preparedStatement.setString(3, utilisateur.getLogin());
			preparedStatement.setString(4, utilisateur.getPassword());
			preparedStatement.setString(5, utilisateur.getRole());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
		}
	}


	public static void modifier(Utilisateur Utilisateur) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(UPDATE_USER_PREPARED);
			preparedStatement.setString(1, Utilisateur.getPrenom());
			preparedStatement.setString(2, Utilisateur.getNom());
			preparedStatement.setString(3, Utilisateur.getPassword());
			preparedStatement.setString(4, Utilisateur.getLogin());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
		}
	}

	public static void supprimer(String login) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(DELETE_USER_PREPARED);
			preparedStatement.setString(1, login);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
		}
	}

	public static Utilisateur getUserByLogin(String login) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(SELECT_USER_BY_LOGIN_PREPARED);
			preparedStatement.setString(1, login);
			ResultSet resultat = preparedStatement.executeQuery();
			if (resultat.next()) {
				String nom = resultat.getString("nom");
				String prenom = resultat.getString("prenom");
				String password = resultat.getString("password");
				String role = resultat.getString("role");

				return new Utilisateur(nom, prenom, login, password, role);
			}
		} catch (SQLException e) {
			
		}
		return null;
	}
	public static boolean seConnecter(String login, String password) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(SELECT_USER_BY_LOGIN_PASS_PREPARED);
			preparedStatement.setString(1, login);
			preparedStatement.setString(2, password);
			ResultSet resultat = preparedStatement.executeQuery();
			if (resultat.next()) {
				return true;
			}
		} catch (SQLException e) {
			return false;
		}
		return false;
	}
}
