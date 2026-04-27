package mx.gdl.unedl.papeweb.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author jorgefausto
 */
public class DBManager {
    private final String url = "jdbc:postgresql://localhost:5432/papeleria";
    private final String username = "postgres";
    private final String passw = "12345678";
    private Connection getConnection() {
        try {
            Connection cp =  
                    DriverManager.getConnection(url,username,passw);
            return cp;
        } catch (SQLException ex) {
            System.getLogger(DBManager.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            return null;
        }
    }
    
    public boolean validaUsuario(String clave,
                                 String pass) {
        boolean entrada = false;
        Connection cp   = this.getConnection();
        if (cp != null) {
            try {
                try (PreparedStatement ps = cp.prepareStatement(""
                        + "select * from usuarios where "
                        + "clave= ? and passw = ? limit 1")) {
                    ps.clearParameters();
                    ps.setString(1, clave);
                    ps.setString(2, pass);
                    try (ResultSet rs = ps.executeQuery()) {
                        if (rs.next()) {
                            entrada = true;  
                        }
                    }
                }
                cp.close();
            } catch (SQLException ex) {
                System.getLogger(DBManager.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            }
        }
        return entrada;
    }
}
