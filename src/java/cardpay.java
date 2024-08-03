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
public class cardpay extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();


        String cardholder = req.getParameter("txt_name");
        String card_no = req.getParameter("txt_no");
        String month = req.getParameter("txt_month");
        String year = req.getParameter("txt_year");
        String cvv = req.getParameter("txt_number");
        String t_amount = req.getParameter("txt_amount");
        String submit = req.getParameter("txt_btn");

        out.println(cardholder);
        out.println(card_no);
        out.println(month);
        out.println(year);
        out.println(cvv);
        out.println(t_amount);
        
          Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Pay"))
        {
            String query1 = "insert into card_payment(cardholders_name,card_no,month,year,cvv,total_amount)values('"+cardholder+"','"+card_no+"','"+month+"','"+year+"','"+cvv+"','"+t_amount+"')";
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
    