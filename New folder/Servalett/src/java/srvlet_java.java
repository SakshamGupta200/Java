/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.*;
import java.io.*;
/**
 *
 * @author Bhanu Yadav
 */

public class srvlet_java implements Servlet 
{
  /*lifrcycle of servlet*/
    ServletConfig cong;
    public void init(ServletConfig cong)
    {
        this.cong=cong;
        System.out.println("initialisation function.......");
    }
    
    
    public void service(ServletRequest req,ServletResponse resp)throws ServletException,IOException
            {
                System.out.println("service is running.....");  
            }
            
    public void destroy()
    {
        System.out.println("servlet destroy....");
    }
    
    //java non life cycle methods
            
    public ServletConfig getServletConfig()
    {
        return this.cong;
    }
    
    public String getServletInfo()
    {
        return "this servlet created by chandu";
    }
}
