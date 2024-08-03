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

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 *
 * @author acer
 */
public class addNewOffers extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String offer_name = req.getParameter("txt_offername");
        String offer_img = req.getParameter("img_offer");
        String s_date = req.getParameter("dte_start");
        String e_date = req.getParameter("dte_end");
        String discount = req.getParameter("txt_discount");
        String category = req.getParameter("txt_category");
        String submit = req.getParameter("btn_add");


        out.println(offer_name);
        out.println(offer_img);
        out.println(s_date);
        out.println(e_date);
        out.println(discount);
        out.println(category);
        out.println(submit);

        Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Add")) {
            String query1 = "insert into tbl_add_offer(offer_name,cat_name,offer_image,offer_start_date,offer_end_date,offer_discount)values('" + offer_name + "','" + category + "','images/" + offer_img + "','" + s_date + "','" + e_date + "','" + discount + "')";
            String result = db.Query(query1, "Record Inserted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Offer Inserted');");
            out.println("location='add_new_offers.jsp';");
            out.println("</script>");

        }

        if (submit.equals("Delete")) {
            String query1 = "delete from  tbl_add_offer where offer_name='" + offer_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Offer Deleted');");
            out.println("location='manage_offers.jsp';");
            out.println("</script>");
        }

        if (submit.equals("Update")) {
            String query1 = "update tbl_add_offer set offer_name='" + offer_name + "',cat_name='" + category + "',offer_image='images/" + offer_img + "',offer_start_date='" + s_date + "',offer_end_date='" + e_date + "',offer_discount='" + discount + "' where offer_name='" + offer_name + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Offer Updated');");
            out.println("location='manage_offers.jsp';");
            out.println("</script>");
        }
    }
}
