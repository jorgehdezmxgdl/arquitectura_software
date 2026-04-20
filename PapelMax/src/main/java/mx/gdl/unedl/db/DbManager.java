package mx.gdl.unedl.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author jorgefausto
 */
public class DbManager {
    private String host;
    private int    port;
    private String username;
    private String password;
    private String database;

    public DbManager(boolean option) {
        if (option) {
            this.host = "db.xjslehwymdedwrgetvjr.supabase.co";
            this.port = 5432;
            this.username = "postgres";
            this.password = "JwbBnSAMNEkFTAxa";
            this.database = "postgres";
        } else {
            this.host = "localhost";
            this.port = 5432;
            this.username = "postgres";
            this.password = "12345678";
            this.database = "papeleria";
        }
    }
    
    public boolean isActivo() {
        Connection cp  = getConnection();
        boolean activo = (cp != null);
        if (cp != null) {
            try {
                cp.close();
            } catch (SQLException ex) {
                System.getLogger(DbManager.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            }
        }
        return activo;
    }
    
    public Connection getConnection() {
        try {
            Connection cp = DriverManager.getConnection(
                    "jdbc:postgresql://" + host + ":"
                            + port + "/" + database,
                    username, password);
            System.out.println("Conexion exitosa!");
            return cp;
        } catch (SQLException ex) {
            System.getLogger(DbManager.class.getName()).
                    log(System.Logger.Level.ERROR, (String) 
                            null, ex);
        }
        return null;
    }
    
    public void creaTabla() {
        String sql = "create table if not exists productos (id integer "
                + "not null, "
                + "nombre varchar(100), precio real, "
                + "existencias integer)";
        Connection cp = getConnection();
        if (cp != null) {
            try {
                Statement st = cp.createStatement();
                st.execute(sql);
                System.out.println("Tabla creada");
            } catch (SQLException ex) {
                System.getLogger(DbManager.class.getName()).
                        log(System.Logger.Level.ERROR, 
                                (String) null, ex);
            }
        }
    }
    
    public void populaDatos(String tabla) {
        if (tabla.equalsIgnoreCase("productos")) {
            int cantidad  = (int)(Math.random() * 60);
            Connection cp = getConnection();
            if (cp != null) {
                try {
                    Statement st = cp.createStatement();
                    int exito    = 0;
                    for (int i=1; i <= cantidad; i++) {
                        
                               String sql = "insert into productos values "
                                        + "("+i+",'producto'," + 
                                          (Math.random() * 450) + ","
                                        + (int)(Math.random() * 10) + ")";
                               exito += st.executeUpdate(sql);
                    }
                    System.out.println("Creando: " +
                            cantidad + "de los cuales,"
                            + exito + " fueron adicionados"
                                    + "correctamente");
                } catch (SQLException ex) {
                    System.getLogger(DbManager.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
                }
            }
        }
    }
}
