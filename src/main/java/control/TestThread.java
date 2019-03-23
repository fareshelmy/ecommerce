/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import model.dao.UserDAO;
import model.entity.User;
/**
 *
 * @author Lamiaa Abdrabou
 */
public class TestThread extends Thread{
    private Thread thread;
    public TestThread(){
        thread = new Thread();
        thread.start();
    }
    @Override
    public void run(){
        UserDAO userDao = new UserDAO();
        User user = new User();
        user.setEmail("Eman@mgail.com");
        user.setJob("Professor");
        user.setUsername("Eman");
        user.setPassword("Eman Password");
        userDao.persist(user);
    }
}
