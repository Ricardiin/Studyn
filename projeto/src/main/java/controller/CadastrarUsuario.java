package controller;

import java.io.IOException;

import dao.UsuarioDAO;
import model.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CadastrarUsuario")

public class CadastrarUsuario extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(

        HttpServletRequest request,
        HttpServletResponse response

    )

    throws ServletException, IOException {

        String nome =
            request.getParameter("nome");

        String email =
            request.getParameter("email");

        String senha =
            request.getParameter("senha");

        Usuario u =
            new Usuario();

        u.setNome(nome);
        u.setEmail(email);
        u.setSenha(senha);

        UsuarioDAO dao =
            new UsuarioDAO();

        dao.cadastrar(u);

        response.sendRedirect(
            "login.jsp"
        );
    }
}