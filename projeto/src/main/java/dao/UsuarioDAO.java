package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Usuario;

public class UsuarioDAO {

    private String url =
        "jdbc:mysql://localhost:3306/projeto";

    private String user =
        "root";

    private String password =
        "";

    // CADASTRAR
    public void cadastrar(Usuario u) {

        String sql =
            "INSERT INTO usuarios(nome,email,senha) VALUES(?,?,?)";

        try {

            Class.forName(
                "com.mysql.cj.jdbc.Driver"
            );

            Connection conn =
                DriverManager.getConnection(
                    url,
                    user,
                    password
                );

            PreparedStatement stmt =
                conn.prepareStatement(sql);

            stmt.setString(
                1,
                u.getNome()
            );

            stmt.setString(
                2,
                u.getEmail()
            );

            stmt.setString(
                3,
                u.getSenha()
            );

            stmt.executeUpdate();

            System.out.println(
                "USUÁRIO CADASTRADO!"
            );

            stmt.close();
            conn.close();

        } catch(Exception e){

            e.printStackTrace();
        }
    }

    // LOGIN
    public boolean login(
        String email,
        String senha
    ) {

        String sql =
            "SELECT * FROM usuarios WHERE email=? AND senha=?";

        try {

            Class.forName(
                "com.mysql.cj.jdbc.Driver"
            );

            Connection conn =
                DriverManager.getConnection(
                    url,
                    user,
                    password
                );

            PreparedStatement stmt =
                conn.prepareStatement(sql);

            stmt.setString(1, email);
            stmt.setString(2, senha);

            ResultSet rs =
                stmt.executeQuery();

            boolean existe =
                rs.next();

            rs.close();
            stmt.close();
            conn.close();

            return existe;

        } catch(Exception e){

            e.printStackTrace();

            return false;
        }
    }
    public void salvarPerfil(Usuario u) {

        String sql =
            "UPDATE usuarios SET nome=?, bio=?, telefone=?, curso=?, foto=? WHERE email=?";

        try {

            Class.forName(
                "com.mysql.cj.jdbc.Driver"
            );

            Connection conn =
                DriverManager.getConnection(
                    url,
                    user,
                    password
                );

            PreparedStatement stmt =
                conn.prepareStatement(sql);

            stmt.setString(
                1,
                u.getNome()
            );

            stmt.setString(
                2,
                u.getBio()
            );

            stmt.setString(
                3,
                u.getTelefone()
            );

            stmt.setString(
                4,
                u.getCurso()
            );

            if(u.getFoto() != null){

                stmt.setBlob(
                    5,
                    u.getFoto()
                );

            } else {

                stmt.setNull(
                    5,
                    java.sql.Types.BLOB
                );
            }

            stmt.setString(
                6,
                u.getEmail()
            );

            stmt.executeUpdate();

            System.out.println(
                "PERFIL SALVO!"
            );

            stmt.close();
            conn.close();

        } catch(Exception e){

            e.printStackTrace();
        }
    }
}