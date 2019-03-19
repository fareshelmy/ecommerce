package model.entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Mohamed Jamal
 */
public class MySessionFactory {

    private static SessionFactory sessionFactory;

    private MySessionFactory() {
    }

    public static Session getHibernateSession() {
        if (sessionFactory == null) {
            synchronized (MySessionFactory.class) {
                if (sessionFactory == null) {
                    sessionFactory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
                }
            }
        }
        return sessionFactory.openSession();
    }

    
    public static void closeSession(Session session){
        session.close();
    }
}
