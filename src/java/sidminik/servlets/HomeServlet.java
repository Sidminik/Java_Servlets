package sidminik.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import sidminik.data.Data;

import java.io.IOException;

@WebServlet({"/index", "/homeView.jsp"})
public class HomeServlet extends HttpServlet {
    public HomeServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String name = (String) session.getAttribute("name");
        if (name == null) {
            session.setAttribute("name", "guest");
        }

        if (Data.getCurrentRole() == null) {
            Data.setCurrentRole("guest");
        }

        Data.setSelector("home");
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/pages/homeView.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
