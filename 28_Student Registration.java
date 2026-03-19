import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StudentServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        PrintWriter out = res.getWriter();

        out.println("<h2>Student Details</h2>");
        out.println("Name: " + req.getParameter("name") + "<br>");
        out.println("Age: " + req.getParameter("age") + "<br>");
        out.println("Course: " + req.getParameter("course"));
    }
}