package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.ConnectionDb;

import beans.Album;
import beans.Utilisateur;
import AlbumEnumeration.AlbumTheme;
import AlbumEnumeration.AlbumType;


public class AdminDAO {
	private static final String SELECT_ALL_USERS = "SELECT * FROM users";
	private static final String SELECT_ALL_ALBUMS = "SELECT * FROM album";

	private static ConnectionDb cnx = new ConnectionDb();

	public static List<Utilisateur> listerUtilisateurs() {
		List<Utilisateur> Utilisateurs = null;
		try {
			String nom, prenom, login, password, role;
			Utilisateurs = new ArrayList<Utilisateur>();
			Statement statement = cnx.getConnection().createStatement();
			ResultSet reponse = statement.executeQuery(SELECT_ALL_USERS);

			while (reponse.next()) {
				nom = reponse.getString("nom");
				prenom = reponse.getString("prenom");
				login = reponse.getString("login");
				password = reponse.getString("password");
				role = reponse.getString("role");
				Utilisateurs.add(new Utilisateur(nom, prenom, login, password, role));

			}
			return Utilisateurs;
		} catch (SQLException e) {
			return null;
		}
	}

	public static List<Album> listerAlbums() {
		List<Album> albums = null;
		PreparedStatement statement;
		try {
			int id;
			String nom, proprietaire;
			AlbumType type;
			AlbumTheme theme;
			albums = new ArrayList<Album>();
			statement =cnx.getConnection().prepareStatement(SELECT_ALL_ALBUMS);
			ResultSet reponse = statement.executeQuery();

			while (reponse.next()) {
				id = reponse.getInt("id");
				nom = reponse.getString("nom");
				type = AlbumType.valueOf(reponse.getString("type"));
				theme = AlbumTheme.valueOf(reponse.getString("theme"));
				proprietaire = reponse.getString("login_user");

				albums.add(new Album(id, nom, type, theme, proprietaire));
			}
			return albums;
		} catch (SQLException e) {
			return null;
		}
	}
}
