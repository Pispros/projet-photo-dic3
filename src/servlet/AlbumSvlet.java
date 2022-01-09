package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AlbumEnumeration.AlbumTheme;
import AlbumEnumeration.AlbumType;
import dao.AlbumDAO;
import beans.Album;
import beans.Utilisateur;
/**
 * Servlet implementation class NewAlbum
 */
@WebServlet({"/detailsalbum", "/createalbum"})
public class AlbumSvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	private static final String ATT_SESSION_USER = "sessionUtilisateur";
	private static final String VUE_DETAIL = "/WEB-INF/user/albums.jsp";	
	private static final String VUE_NEW_ALBUM = "/WEB-INF/user/albums.jsp";	
	private HttpSession session;
	private Utilisateur utilisateur = (Utilisateur) session.getAttribute(ATT_SESSION_USER);

	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try { 
			String requestedUrl = request.getServletPath();
			if (requestedUrl.equals("/album/detailsalbum")) {
				request.setAttribute("albumDetails", AlbumDAO.getAlbumById(Integer.parseInt(request.getParameter("album"))));
				getServletContext().getRequestDispatcher(VUE_DETAIL).forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try { 
			String requestedUrl = request.getServletPath();
			if (requestedUrl.equals("/createalbum")) {
				String nom   = request.getParameter("nom");
				String type  = request.getParameter("type");
				AlbumType newType = AlbumType.valueOf(type);
				String theme = request.getParameter("theme");
				AlbumTheme newTheme = AlbumTheme.valueOf(theme);
				Album alb = new Album(0, nom, newType, newTheme, utilisateur.getNom());
				System.out.println("Album"+alb);
				AlbumDAO.ajouter(alb);
				getServletContext().getRequestDispatcher(VUE_NEW_ALBUM).forward(request, response);
				//response.sendRedirect(request.getContextPath()+"/Home");
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	}

}
