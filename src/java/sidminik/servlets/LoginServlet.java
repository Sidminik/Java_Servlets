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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Data.setSelector("login");
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/pages/loginView.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");


        if (Data.getLoginInfo().containsKey(userName) && password.equals(Data.getLoginInfo().get(userName))) {
            request.getSession().invalidate();
            HttpSession session = request.getSession();
            session.setAttribute("name", userName);
            Data.setCurrentRole(Data.getRoleInfo().get(userName));
            RequestDispatcher dispatcher;
            if ("user".equals(Data.getCurrentRole())) {
                Data.setSelector("user");
                dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/pages/userTaskView.jsp");
            } else {
                Data.setSelector("admin");
                dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/pages/adminTaskView.jsp");
            }
            dispatcher.forward(request, response);
        } else {
            String errorMessage;
            if (!Data.getLoginInfo().containsKey(userName) && !Data.getLoginInfo().containsValue(password)) {
                errorMessage = "Указаны неверные имя пользователя и пароль! Пожалуйста, попробуйте еще раз.";
            } else if (!Data.getLoginInfo().containsKey(userName)) {
                errorMessage = "Указано неверное имя пользователя! Пожалуйста, попробуйте еще раз.";
            } else {
                errorMessage = "Указан неверный пароль! Пожалуйста, попробуйте еще раз.";
            }
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher dispatcher //
                    = request.getServletContext().getRequestDispatcher("/WEB-INF/pages/accessDeniedView.jsp");
            dispatcher.forward(request, response);
        }
    }
}
