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
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        
        String feedback_type=req.getParameter("feedType");
        String full_name=req.getParameter("txt_fullname");
        String desc_feed=req.getParameter("txt_descfeedback");
        String email=req.getParameter("txt_email");
        String submit=req.getParameter("btn_Send");
       
         out.println (feedback_type);
         out.println (full_name);
         out.println (desc_feed);
         out.println (email);
         out.println (submit);
         
         Database_file db=new Database_file();
         out.println(db.Connectdb());
         
         if(submit.equals("Send"))
       {
          String query1="insert into tbl_feedback(feed_type,feed_describe,full_name,feed_email)values('"+feedback_type+"','"+desc_feed+"','"+full_name+"','"+email+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
       
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Feedback Send Success....!');");
            out.println("location='view_category.jsp';");
            out.println("</script>");
 
       }
        
    }
}