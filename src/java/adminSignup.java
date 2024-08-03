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
public class adminSignup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        
        String fullname=req.getParameter("txt_fullname");
        String email=req.getParameter("txt_email");
        String gender=req.getParameter("gender");
        String photo=req.getParameter("txt_photo");
        String contact=req.getParameter("txt_contact");
        String address=req.getParameter("txt_address");
        String username=req.getParameter("txt_username");
        String password=req.getParameter("txt_pass");
        String submit=req.getParameter("btn_signup");
       
         out.println (fullname);
         out.println (email);
         out.println (gender);
         out.println (photo);
         out.println (contact);
         out.println (address);
         out.println (username);
         out.println (password);
         out.println (submit);
         
         Database_file db=new Database_file();
         out.println(db.Connectdb());
         
          if(submit.equals("SignUp"))
       {
          String query1="insert into tbl_admin_signup(full_name,gender,photo,email,contact,address,username,pass)values('"+fullname+"','"+gender+"','images/"+photo+"','"+email+"','"+contact+"','"+address+"','"+username+"','"+password+"')";
       String result=db.Query(query1, "Record Inserted");
       resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Signup Success....!');");
            out.println("location='admin_login.jsp';");
            out.println("</script>");
 
       }
    }
}