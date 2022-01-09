package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import forms.UtilisateurForm;
/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VU_AJOUT_UTILISATEUR = "/WEB-INF/ajoutUtilisateur.jsp";
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try {
			HttpSession session = request.getSession();
			Object form = session.getAttribute("form");
		if(form != null){
			session.removeAttribute("form");
		}
		request.setAttribute("form",form);
			getServletContext().getRequestDispatcher(VU_AJOUT_UTILISATEUR).forward(request, response);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try {
			UtilisateurForm form = new  UtilisateurForm(request);
			
			//HttpSession session = request.getSession();
			//session.setAttribute("form",form);
			//System.out.println("Bien");
			if(form.ajouter()){
				//System.out.println("Bien");
				String url = request.getContextPath() + "/" + "?Notification = " + form.getStatusMessage();
				System.out.println(url);
				response.sendRedirect(url);
			}else{
				response.sendRedirect(request.getContextPath() + "/signup");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}

}
