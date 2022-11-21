/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/ServletListener.java to edit this template
 */
package yzu.imsofa.network.evereat;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author lendle
 */
public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        List<FoodItem> foodItems=new ArrayList<>();
        se.getSession().setAttribute("foodItems", foodItems);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        
    }
}
