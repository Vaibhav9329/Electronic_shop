/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 *
 * @author acer
 */
public class admin_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();


        String username = req.getParameter("txt_username");
        String password = req.getParameter("txt_pass");
        String event = req.getParameter("btn_login");

        out.println(username);
        out.println(password);
        out.println(event);
        Connection cn = null;
        Statement st = null;

        if (event.equals("Login")) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronics_shop", "root", "root");
                st = cn.createStatement();
                String sql = "select * from tbl_admin_signup where email='" + username + "' and pass='" + password + "'";
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) {

                    resp.sendRedirect("view_orders.jsp");
                } else {
                    resp.setContentType("text/html;charset=UTF-8");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Incorrect Username or Pasword!');");
                    out.println("location='admin_login.jsp';");
                    out.println("</script>");
                }

            } catch (Exception ex) {
                out.println(ex.toString());
            }

        }



    }
}