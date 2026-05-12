package controller;

import java.io.IOException;
import java.io.InputStream;

import dao.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import model.Usuario;

@WebServlet("/SalvarPerfil")

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize = 1024 * 1024 * 50,
    maxRequestSize = 1024 * 1024 * 100
)

public class SalvarPerfil extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(

        HttpServletRequest request,
        HttpServletResponse response

    )

    throws ServletException, IOException {

        HttpSession session =
            request.getSession();

        String email =
            (String) session.getAttribute(
                "usuario"
            );

        if(email == null){

            response.sendRedirect(
                "login.jsp"
            );

            return;
        }

        String nome =
            request.getParameter("nome");

        String bio =
            request.getParameter("bio");

        String curso =
            request.getParameter("curso");

        String telefone =
            request.getParameter("telefone");

        Part arquivo =
            request.getPart("foto");

        InputStream foto = null;

        if(arquivo != null &&
           arquivo.getSize() > 0){

            foto =
                arquivo.getInputStream();
        }

        Usuario u =
            new Usuario();

        u.setNome(nome);

        u.setEmail(email);

        u.setBio(bio);

        u.setCurso(curso);

        u.setTelefone(telefone);

        u.setFoto(foto);

        UsuarioDAO dao =
            new UsuarioDAO();

        dao.salvarPerfil(u);

        response.sendRedirect(
            "home.jsp"
        );
    }
}