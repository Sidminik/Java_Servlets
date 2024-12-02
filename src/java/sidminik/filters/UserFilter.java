package sidminik.filters;

import sidminik.data.Data;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter("/userTask")
public class UserFilter implements Filter {
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        Data.setSelector("user");
        if ("user".equals(Data.getCurrentRole()) || "admin".equals(Data.getCurrentRole())) {
            chain.doFilter(request, response);
        }
        else {
            String errorMessage = "Для входа на данную страницу необходимо обладать правами зарегистрированного пользователя. Пожалуйста, авторизируйтесь!";

            request.setAttribute("errorMessage", errorMessage);

            RequestDispatcher dispatcher //
                    = request.getServletContext().getRequestDispatcher("/WEB-INF/pages/accessDeniedView.jsp");

            dispatcher.forward(request, response);
        }
    }
}
