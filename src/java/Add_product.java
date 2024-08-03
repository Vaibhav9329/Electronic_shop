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
public class Add_product extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String category = req.getParameter("category");
        String prod_name = req.getParameter("txt_productname");
        String company_name = req.getParameter("txt_company_name");
        String prod_image = req.getParameter("img_product");
        String prod_desc = req.getParameter("txt_productdescription");
        String prod_avail = req.getParameter("txt_availability");
        String ori_price = req.getParameter("txt_original_price");
        String dis_price = req.getParameter("txt_discounted_price");
        String submit = req.getParameter("txt_add");

        out.println(category);
        out.println(prod_name);
        out.println(company_name);
        out.println(prod_image);
        out.println(prod_desc);
        out.println(prod_avail);
        out.println(ori_price);
        out.println(dis_price);
        out.println(submit);

        Database_file db = new Database_file();
        out.println(db.Connectdb());

        if (submit.equals("Add")) {
            String query1 = "insert into tbl_add_product(cat_name,product_name,company,product_image,product_desc,availability,original_price,discounted_price)values('" + category + "','" + prod_name + "','" + company_name + "','images/" + prod_image + "','" + prod_desc + "','" + prod_avail + "','" + ori_price + "','" + dis_price + "')";
            String result = db.Query(query1, "Record Inserted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Product Inserted');");
            out.println("location='add_product.jsp';");
            out.println("</script>");
        }

        if (submit.equals("Delete")) {
            String query1 = "delete from  tbl_add_product where product_name='" + prod_name + "'";
            String result = db.Query(query1, "Record Deleted");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Product Deleted');");
            out.println("location='manage_products.jsp';");
            out.println("</script>");
        }

        if (submit.equals("Update")) {
            String query1 = "update tbl_add_product set cat_name='" + category + "',product_name='" + prod_name + "',company='" + company_name + "',product_image='images/" + prod_image + "',product_desc='" + prod_desc + "',availability='" + prod_avail + "',original_price='" + ori_price + "',discounted_price='" + dis_price + "' where product_name='" + prod_name + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Product Updated');");
            out.println("location='manage_products.jsp';");
            out.println("</script>");
        }
    }
}