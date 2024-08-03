/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String submit = req.getParameter("btn_cod");
        
        out.println(submit);
        
         Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Cash On Delivary"))
        {
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Cash On Delivary Order Placed Success...!');");
            out.println("location='feedback.jsp';");
            out.println("</script>");
        }
    }
    
}
    