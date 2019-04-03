/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter.customer;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mohamed
 */
public class AuthFilter implements Filter {

    ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse =(HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);
        if (session != null) {
            String role = (String) session.getAttribute("loggedIn");
            
            if(role == null){
                //User is not Logged In
                httpResponse.sendRedirect("/ecommerce/customer/pages/login.jsp");
                chain.doFilter(request, response);
            }else{
                chain.doFilter(request, response);
            }
            
        }

    }

    @Override
    public void destroy() {
    
    }

}
