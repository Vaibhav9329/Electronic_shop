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
public class addCategory extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String cat_name = req.getParameter("txt_catname");
        String cat_image = req.getParameter("cat_image");
        String description = req.getParameter("cat_description");
        String submit = req.getParameter("btn_add");

        out.println(cat_name);
        out.println(cat_image);
        out.println(description);
        out.println(submit);

        Database_file db = new Database_file();
        out.println(db.Connectdb());



        if (submit.equals("Add")) {
            String query1 = "insert into tbl_add_category(cat_name,cat_image,description)values('" + cat_name + "','images/" + cat_image + "','" + description + "')";
            String result = db.Query(query1, "Record Inserted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Category Inserted');");
            out.println("location='add_category.jsp';");
            out.println("</script>");
        }

        if (submit.equals("Delete")) {
            String query1 = "delete from  tbl_add_category where cat_name='" + cat_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Category Deleted');");
            out.println("location='manage_category.jsp';");
            out.println("</script>");
        }

        if (submit.equals("Update")) {
            String query1 = "update tbl_add_category set cat_name='" + cat_name + "',cat_image='images/" + cat_image + "',description='" + description + "' where cat_name='" + cat_name + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Category Updated');");
            out.println("location='manage_category.jsp';");
            out.println("</script>");

        }


    }
}
