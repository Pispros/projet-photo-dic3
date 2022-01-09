package beans;

import java.util.ArrayList;

import AlbumEnumeration.AlbumTheme;
import AlbumEnumeration.AlbumType;

public class Album {
	private int id;
	private String nom;
	private AlbumType type;
	private AlbumTheme theme;
	private ArrayList<ImageAlbum> listImage;
	private String proprietaire;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Album(AlbumType type, AlbumTheme theme) {
		this.type = type;
		this.theme = theme;
	}

	public AlbumType getType() {
		return type;
	}

	public void setType(AlbumType type) {
		this.type = type;
	}

	public AlbumTheme getTheme() {
		return theme;
	}

	public void setTheme(AlbumTheme theme) {
		this.theme = theme;
	}

	public ArrayList<ImageAlbum> getListImage() {
		return listImage;
	}

	public void setListImage(ArrayList<ImageAlbum> listImage) {
		this.listImage = listImage;
	}
	
	public Album(int id, String nom, AlbumType type, AlbumTheme theme, String proprietaire) {
		this.id = id;
		this.nom = nom;
		this.type = type;
		this.theme = theme;
		this.proprietaire = proprietaire;
	}
	
	public String getProprietaire() {
		return proprietaire;
	}

	public void setProprietaire(String proprietaire) {
		this.proprietaire = proprietaire;
	}

}
