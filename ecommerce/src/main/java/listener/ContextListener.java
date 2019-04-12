/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 *
 * @author FARES-LAP
 */
@WebListener
public class ContextListener implements ServletContextListener {

    private volatile Map<String, Set<Integer>> carts;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        carts = new HashMap<>();
        sce.getServletContext().setAttribute("carts", carts);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

}
