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
public class addNewLaunches extends HttpServlet {

    @Override   
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String title=req.getParameter("txt_Launchtitle");
        String image=req.getParameter("img_launch");
        String prod_cat=req.getParameter("category_name");
        String product=req.getParameter("product_name");
        String launch_date=req.getParameter("dte_end");
        String desc_launch=req.getParameter("txt_launch_disc");
        String submit=req.getParameter("btn_add");
 
        
        out.println (title);
        out.println (image);
        out.println (prod_cat);
        out.println (product);
        out.println (launch_date);
        out.println (desc_launch);
        out.println (submit);
        
        Database_file db=new Database_file();
         out.println(db.Connectdb());
         
         if(submit.equals("Add"))
       {
          String query1="insert into tbl_new_launches(launch_title,cat_name,prod_name,launch_image,launch_date,launch_desc)values('"+title+"','"+prod_cat+"','"+product+"','images/"+image+"','"+launch_date+"','"+desc_launch+"')";
       String result=db.Query(query1, "Record Inserted");
       
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Insertd!');");
            out.println("location='add_new_launches.jsp';");
            out.println("</script>");
 
       }
          if(submit.equals("Delete"))
       {
         String query1="delete from   tbl_new_launches where launch_title='"+title+"'";
       String result=db.Query(query1, "Record Deleted");
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted!');");
            out.println("location='manage_launches.jsp';");
            out.println("</script>");
       }
          
          if(submit.equals("Update"))
       {
          String query1="update tbl_new_launches set launch_title='"+title+"',cat_name='"+prod_cat+"',prod_name='"+product+"',launch_image='images/"+image+"',launch_date='"+launch_date+"',launch_desc='"+desc_launch+"' where launch_title='"+title+"'";
       String result=db.Query(query1, "Record Updated");
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated!');");
            out.println("location='manage_launches.jsp';");
            out.println("</script>");
       }
    }
}
