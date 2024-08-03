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
public class upipay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();


        String upi_id = req.getParameter("txt_upi");
        String total_amount = req.getParameter("txt_amount");
        String submit = req.getParameter("txt_btn");

        out.println(upi_id);
        out.println(total_amount);
        out.println(submit);
        
          Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Pay"))
        {
            String query1 = "insert into tbl_upi_pay(upi_id,total_amount)values('"+upi_id+"','"+total_amount+"')";
            String result=db.Query(query1, "Record Inserted");
             out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment Successful....!');");
            out.println("location='feedback.jsp';");
            out.println("</script>");
        }
    }
    
}
    