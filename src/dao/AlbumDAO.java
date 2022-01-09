package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.ConnectionDb;

import beans.Album;
import AlbumEnumeration.AlbumTheme;
import AlbumEnumeration.AlbumType;

public class AlbumDAO {
	
	//ALL Request
	
	private static final String INSERT_ALBUM = "INSERT INTO album VALUES (0, ?, ?, ?,?)";
	private static final String ALBUMS_BY_USER = "SELECT * FROM album WHERE proprietaire = ?";
	private static ConnectionDb cnx = new ConnectionDb();
	private static final String ALBUM_BY_ID = "SELECT * FROM album WHERE id = ?";
	private static final String ALBUM_UPDATE = "UPDATE album set nom = ?, type = ?, theme = ?, proprietaire = ? where id = ?";
	private static final String Album_DELETE = "DELETE FROM album WHERE id = ?";
	
	//ALLMETHODE DAO
	
	public static void ajouter(Album album) {
		System.out.println(album);
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(INSERT_ALBUM);
			preparedStatement.setString(1, album.getNom());
			preparedStatement.setString(2, String.valueOf(album.getType()));
			preparedStatement.setString(3, String.valueOf(album.getTheme()));
			preparedStatement.setString(4, album.getProprietaire());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			
			 System.out.println(e);
			 
		      //return false;
		}
	}
	
	public static List<Album> albumByUser(String login) {
		List<Album> albums = null;
		PreparedStatement statement;
		try {
			int id;
			String nom, proprietaire;
			AlbumType type;
			AlbumTheme theme;
			albums = new ArrayList<Album>();
			statement = cnx.getConnection().prepareStatement(ALBUMS_BY_USER);
			statement.setString(1, login);

			ResultSet reponse = statement.executeQuery();

			while (reponse.next()) {
				id = reponse.getInt("id");
				nom = reponse.getString("nom");
				type = AlbumType.valueOf(reponse.getString("type"));
				theme = AlbumTheme.valueOf(reponse.getString("theme"));
				proprietaire = reponse.getString("proprietaire");

				albums.add(new Album(id, nom, type, theme, proprietaire));
			}
			return albums;
		} catch (SQLException e) {
			 System.out.println(e);
		      return null;
		}
	}
	
	public static Album getAlbumById(int id) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(ALBUM_BY_ID);
			preparedStatement.setInt(1, id);
			ResultSet resultat = preparedStatement.executeQuery();
			if (resultat.next()) {
				int idAlbum = resultat.getInt("id");
				String nom = resultat.getString("nom");
				AlbumType type = AlbumType.valueOf(resultat.getString("type"));
				AlbumTheme theme = AlbumTheme.valueOf(resultat.getString("theme"));
				String proprietaire = resultat.getString("proprietaire");
				
				return new Album(idAlbum, nom, type, theme, proprietaire);
			}
		} catch (SQLException e) {
			 System.out.println(e);
		      return null;
		}
		return null;
	}
	
	public static void modifier(Album album) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(ALBUM_UPDATE);
			preparedStatement.setString(1, album.getNom());
			preparedStatement.setString(2, String.valueOf(album.getType()));
			preparedStatement.setString(3, String.valueOf(album.getTheme()));
			preparedStatement.setString(4, album.getProprietaire());
			preparedStatement.setInt(5, album.getId());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			 System.out.println(e);
		      //return false;
		}		
	}
	
	public static void supprimer(int id) {
		PreparedStatement preparedStatement;
		try {
			preparedStatement = cnx.getConnection().prepareStatement(Album_DELETE);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			 System.out.println(e);
		      //return false;
		}	
	}

}
