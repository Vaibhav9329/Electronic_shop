
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Database_file{
    Connection cn=null;
    Statement st=null;
    String Connectdb()
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop","root","root");
                return("Database connected");        
            }
            catch(Exception ex)
            {
                return(ex.toString());
            }
        }
    
     String Query(String sql,String msg)
   {
       try
       {
           st=cn.createStatement();
           st.executeUpdate(sql);
           return(msg);
       }catch(Exception ex)
       {
           return(ex.toString());
       }
   }
     
}
