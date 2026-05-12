package controller;

import java.io.IOException;

import dao.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginUsuario")

public class LoginUsuario extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(

        HttpServletRequest request,
        HttpServletResponse response

    )

    throws ServletException, IOException {

        String email =
            request.getParameter("email");

        String senha =
            request.getParameter("senha");

        UsuarioDAO dao =
            new UsuarioDAO();

        boolean login =
            dao.login(email, senha);

        if(login){

            HttpSession session =
                request.getSession();

            session.setAttribute(
                "usuario",
                email
            );

            response.sendRedirect(
                "home.jsp"
            );

        } else {

            response.sendRedirect(
                "login.jsp?erro=1"
            );
        }
    }
}