/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

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
        return SESSION_FACTORY;
    }
    public static Session getSession(){
        return SESSION_FACTORY.getCurrentSession();
    }
    //won't make close session function because the automatic session will close it once the thread dies
}
