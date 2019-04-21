/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.util;

import java.net.URI;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.net.URISyntaxException;

/**
 *
 * @author Lamiaa Abdrabou
 */
public class HibernateUtil {

    private static final SessionFactory SESSION_FACTORY = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        synchronized (HibernateUtil.class) {
            if (SESSION_FACTORY == null || SESSION_FACTORY.isClosed()) {
                try {
                    Configuration configuration = new Configuration();
                    return configuration.configure("cfg/hibernate.cfg.xml").buildSessionFactory();
                    /*
                        Custom Building for SessionFactory
                        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder();
                        builder.applySetting(configuration.getProperties());
                        ServiceRegistry serviceRegistry = builder.build();
                        configuraiton.configure().buildSessionFacotry(serviceRegistry);
                        .buildSessionFactory(new StandardServiceRegistryBuilder().applySetting("", configuration.getProperties()).build());
                    */
                } catch (Throwable exception) {
                    System.err.println("Initial SessionFactory Creation Failed" + exception);
                    throw new ExceptionInInitializerError();
                }
            }
        }
        return SESSION_FACTORY;
    }
public static SessionFactory getSessionFactory() {
//        Hibernate.initialize(SESSION_FACTORY);
        return SESSION_FACTORY;
    }

    public static Session getSession() {
        return SESSION_FACTORY.getCurrentSession();
    }
    //won't make close session function because the automatic session will close it once the thread dies
}
/*
//for hosting in heroku with postgresql

        try {
            Configuration cfg = new Configuration().configure("cfg/hibernate.cfg.xml");
            if (System.getenv("DATABASE_URL") != null) {
                URI dbUri = new URI(System.getenv("DATABASE_URL"));
                String username = dbUri.getUserInfo().split(":")[0];
                String password = dbUri.getUserInfo().split(":")[1];
                String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort()
                        + dbUri.getPath();
                cfg = cfg.setProperty("hibernate.connection.url", dbUrl)
                        .setProperty("hibernate.connection.username", username)
                        .setProperty("hibernate.connection.password", password)
                        .setProperty("hibernate.hbm2ddl.auto", "create")
                        .setProperty("hibernate.connection.driver_class",
                                "org.postgresql.Driver")
                        .setProperty("hibernate.dialect",
                                "org.hibernate.dialect.PostgreSQLDialect");
            }
            return cfg.buildSessionFactory();
        } catch (URISyntaxException ex) {
            return null;
        }
*/