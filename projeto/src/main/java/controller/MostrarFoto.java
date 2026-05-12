package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MostrarFoto")
public class MostrarFoto extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)

            throws ServletException, IOException {

        String email = request.getParameter("email");

        // verifica se o email existe
        if (email == null || email.isEmpty()) {

            response.sendRedirect("img/user.png");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/projeto",
                    "root",
                    ""
            );

            String sql =
                    "SELECT foto FROM usuarios WHERE email=?";

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, email);

            rs = stmt.executeQuery();

            // verifica se encontrou usuário
            if (rs.next()) {

                byte[] imagem = rs.getBytes("foto");

                // verifica se a foto existe
                if (imagem != null && imagem.length > 0) {

                    response.setContentType("image/jpeg");

                    response.getOutputStream().write(imagem);

                    response.getOutputStream().flush();

                } else {

                    // foto nula -> imagem padrão
                    response.sendRedirect("img/user.png");
                }

            } else {

                // usuário não encontrado
                response.sendRedirect("img/user.png");
            }

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("img/user.png");

        } finally {

            try {
                if (rs != null) rs.close();
            } catch (Exception e) {
            }

            try {
                if (stmt != null) stmt.close();
            } catch (Exception e) {
            }

            try {
                if (conn != null) conn.close();
            } catch (Exception e) {
            }
        }
    }
}