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
public class addCustomerCare extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
         String care_title=req.getParameter("txt_caretitle");
        String email=req.getParameter("txt_email");
        String contact=req.getParameter("txt_Contact");
        String submit=req.getParameter("btn_update");
 
        
        out.println (care_title);
        out.println (email);
        out.println (contact);
        out.println (submit);
        
        Database_file db=new Database_file();
         out.println(db.Connectdb());
         
         /*if(submit.equals("Add"))
       {
          String query1="insert into tbl_customer_care(care_title,care_email,care_contact)values('"+care_title+"','"+email+"','"+contact+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }*/
         if(submit.equals("Update"))
       {
          String query1="update tbl_customer_care set care_title='"+care_title+"',care_email='"+email+"',care_contact='"+contact+"' where care_email='"+email+"'";
       String result=db.Query(query1, "Record Updated");
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Customer Care updated....!');");
            out.println("location='add_customer_care.jsp';");
            out.println("</script>");
       }
    }
    }
