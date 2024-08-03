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
import javax.servlet.http.HttpSession;

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 *
 * @author acer
 */
public class Booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session=req.getSession();
        PrintWriter out = resp.getWriter();


        String fullName = req.getParameter("txt_fullname");
        String address = req.getParameter("address");
        String email = req.getParameter("txt_email");
        String contact = req.getParameter("txt_contact");
        String prod_name = req.getParameter("product_name");
        String price = req.getParameter("txt_price");
        String qty = req.getParameter("txt_Qty");
        String total_amount = req.getParameter("txt_totalamount");
        String date_time = req.getParameter("txt_datetime");
        String submit = req.getParameter("btn_proceed");

        out.println(fullName);
        out.println(address);
        out.println(email);
        out.println(contact);
        out.println(prod_name);
        out.println(price);
        out.println(qty);
        out.println(total_amount);
        out.println(date_time);
        out.println(submit);

        Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Proceed")) {
            String query1 = "insert into tbl_booking(full_name,address,email,contact,prod_name,price,qty,total_amount,date_time)values('" + fullName + "','" + address + "','" + email + "','" + contact + "','" + prod_name + "','" + price + "','" + qty + "','" + total_amount + "','" + date_time + "')";
            
            session.setAttribute("total_amount", total_amount);
            session.setAttribute("email", email);

            String result = db.Query(query1, "Record Inserted");
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Booking Completed! Now Proceed For Next Step!');");
            out.println("location='payment.jsp';");
            out.println("</script>");
        }
    }
}
