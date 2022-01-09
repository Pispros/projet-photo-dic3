package beans;

public class ImageAlbum {
	private String titre;
	private String description;
	private int hauteur;
	private int largeur;
	private String url;
	private String date_creation;
	private String date_update;
	private int album;


	public ImageAlbum(String titre, String description, int hauteur, int largeur, String url, String date_creation,
			String date_update, int album) {
		this.titre = titre;
		this.description = description;
		this.hauteur = hauteur;
		this.largeur = largeur;
		this.url = url;
		this.date_creation = date_creation;
		this.date_update = date_update;
		this.album = album;
	}

	public ImageAlbum() {
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getHauteur() {
		return hauteur;
	}

	public void setHauteur(int hauteur) {
		this.hauteur = hauteur;
	}

	public int getLargeur() {
		return largeur;
	}

	public void setLargeur(int largeur) {
		this.largeur = largeur;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDate_creation() {
		return date_creation;
	}

	public void setDate_creation(String date_creation) {
		this.date_creation = date_creation;
	}

	public String getDate_update() {
		return date_update;
	}

	public void setDate_update(String date_update) {
		this.date_update = date_update;
	}

	public int getAlbum() {
		return album;
	}

	public void setAlbum(int album) {
		this.album = album;
	}

}