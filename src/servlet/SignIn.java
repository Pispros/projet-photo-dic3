package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import forms.LoginForm;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/signin")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VU_LOGIN_UTILISATEUR = "/WEB-INF/login.jsp";
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
			getServletContext().getRequestDispatcher(VU_LOGIN_UTILISATEUR).forward(request, response);
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			LoginForm form = new LoginForm(request);
			
			if(form.Authen()){
				response.sendRedirect(request.getContextPath() + "/list");
			}else {
				request.setAttribute("login", form.getLogin());
				getServletContext().getRequestDispatcher(VU_LOGIN_UTILISATEUR).forward(request, response);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}

}
