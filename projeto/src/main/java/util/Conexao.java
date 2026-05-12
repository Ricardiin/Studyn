package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

    private static final String URL =
        "jdbc:mysql://localhost:3306/projeto";

    private static final String USER = "root";

    private static final String PASSWORD = "";

    public static Connection conectar() {

        Connection conn = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
            );

            System.out.println("Conectado!");

        } catch (Exception e) {

            e.printStackTrace();
        }

        return conn;
    }
}