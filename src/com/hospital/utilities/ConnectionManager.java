package com.hospital.utilities;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Ankit @iankit3 on 1/11/17.
 */

public class ConnectionManager {
    private static DataSource ds = null;
    static {
        try {
            InitialContext ctx = new InitialContext();
            ds = (DataSource) ctx.lookup("java:comp/env/jdbc/hospital");
        } catch (NamingException eName) {
            System.out.println("Name lookup error" + eName);
        }
    }

    public static Connection getConnection() throws SQLException{

        try {
            return ds.getConnection();
        }catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }

    public static void close(Connection connection) throws SQLException{
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            //logger.error("Error closing connection",e.fillInStackTrace());
            e.printStackTrace();
        }
    }

}
