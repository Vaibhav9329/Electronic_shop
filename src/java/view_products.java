import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class view_products extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session=req.getSession();
        PrintWriter out = resp.getWriter();

        Database_file db = new Database_file();
        out.println(db.Connectdb());
        
         String pname = req.getParameter("p_name");
         String price = req.getParameter("price");
         String submit = req.getParameter("btn_buy");
        
        if (submit.equals("Add")) 
        {
            session.setAttribute("p_name", pname);
            session.setAttribute("price", price);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("location='booking.jsp';");
            out.println("</script>");
        }
        
    }
}
