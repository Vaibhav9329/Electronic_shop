import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author harsh
 */
public class user_forgot_pass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out = resp.getWriter();

        String email = req.getParameter("mail");
        String cpass = req.getParameter("confirm_pass");
        String submit = req.getParameter("btn_submit");

        out.println(email);
        out.println(cpass);




         Database_file db = new Database_file();
        out.println(db.Connectdb());
        
        //update
        if (submit.equals("Submit")) {
            String query1 = "update tbl_user_signup set pass='" + cpass.toString() + "' where email='" + email.toString() + "'";
            String result = db.Query(query1, "Record Updated");
            out.println(result);

            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Password Update successfully');");
            out.println("location='user_login.jsp';");
            out.println("</script>");
        }
    }
}