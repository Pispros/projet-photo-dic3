package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;


/**
 * Servlet implementation class AdminSvlet
 */
@WebServlet({ "/admin/users", "/admin/albums", "/admin/user/voir", "/admin/user/supprimer", "/admin/album/voir", "/admin/album/supprimer", "/admin/album/photo/supprimer"})
public class AdminSvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_ALBUMS_ADMIN = "/WEB-INF/admin/listAlbums.jsp";
	private static final String VUE_USERS_ADMIN = "/WEB-INF/admin/listUsers.jsp";
	private static final String VUE_USER_DETAILS_ADMIN = "/WEB-INF/admin/detailsUser.jsp";
	private static final String VUE_ALBUMS_PHOTO_ADMIN = "/WEB-INF/admin/photosAlbum.jsp";
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try{
			String requestedUrl = request.getServletPath();
			if (requestedUrl.equals("/admin/albums")) {
				request.setAttribute("albums", AdminDAO.listerAlbums());
				getServletContext().getRequestDispatcher(VUE_ALBUMS_ADMIN).forward(request, response);
			} 
			else if(requestedUrl.equals("/admin/users")) {
				request.setAttribute("users", AdminDAO.listerUtilisateurs());
				getServletContext().getRequestDispatcher(VUE_USERS_ADMIN).forward(request, response);	
			}
			else if(requestedUrl.equals("/admin/user/voir")) {
				request.setAttribute("user", UtilisateurDAO.getUserByLogin(request.getParameter("login")));
				request.setAttribute("albums", AlbumDAO.albumByUser(request.getParameter("login")));
				getServletContext().getRequestDispatcher(VUE_USER_DETAILS_ADMIN).forward(request, response);	
			}
			else if(requestedUrl.equals("/admin/user/supprimer")) {
			UtilisateurDAO.supprimer(request.getParameter("login"));
			response.sendRedirect(request.getContextPath() + "/admin/users");
			}
			else if(requestedUrl.equals("/admin/album/voir")) {
				request.setAttribute("imagesAlbum", ImageDAO.lister(Integer.parseInt(request.getParameter("id"))));
				request.setAttribute("album", AlbumDAO.getAlbumById(Integer.parseInt(request.getParameter("id"))));
				getServletContext().getRequestDispatcher(VUE_ALBUMS_PHOTO_ADMIN).forward(request, response);	
			}
			else if(requestedUrl.equals("/admin/album/supprimer")) {
				AlbumDAO.supprimer(Integer.parseInt(request.getParameter("id")));
				response.sendRedirect(request.getContextPath() + "/admin/albums");
				}
			else if(requestedUrl.equals("/admin/album/photo/supprimer")) {
				ImageDAO.supprimer(request.getParameter("url"));
				response.sendRedirect(request.getContextPath() + "/admin/albums");
				}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try{}catch (Exception e) {
			// TODO: handle exception
		}
	}

}
