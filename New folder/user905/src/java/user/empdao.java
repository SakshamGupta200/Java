/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

/**
 *
 * @author Bhanu Yadav
 */
 import java.util.*;
  import java.sql.*;
public class empdao 
     {
   
      

      public static Connection getConnection()
      {
      Connection con=null;
      try
       {
          Class.forName("oracle.jdbc.driver.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
          }
        catch(Exception e){System.out.println(e);
        }
        return con;
        }
       public static int save(emp e)
       {
        int status=0;
        try
        {
         Connection con=empdao.getConnection();        
         PreparedStatement ps=con.prepareStatement("insert into user905(name,password,email,country) values (?,?,?,?)");
         ps.setString(1,e.getName());
         ps.setString(2,e.getPassword());
         ps.setString(3,e.getEmail());
         ps.setString(4,e.getCountry());

       status=ps.executeUpdate();

        con.close();
       }
         catch(Exception ex){ex.printStackTrace();
         }

         return status;
         }
         public static int update(emp e){
         int status=0;
         try
     {
         Connection con=empdao.getConnection();
          PreparedStatement ps=con.prepareStatement("update user905 set name=?,password=?,email=?,country=? where id=?");
          ps.setString(1,e.getName());
          ps.setString(2,e.getPassword());
          ps.setString(3,e.getEmail());
          ps.setString(4,e.getCountry());
          ps.setInt(5,e.getId());

         status=ps.executeUpdate();

        con.close();
       }
       catch(Exception ex){ex.printStackTrace(); 
       }

         return status;
        }
       public static int delete(int id){
       int status=0;
       try{
        Connection con=empdao.getConnection();
        PreparedStatement ps=con.prepareStatement("delete from user905 where id=?");
        ps.setInt(1,id);
        status=ps.executeUpdate();
        
        con.close();
        }catch(Exception e){e.printStackTrace();}

        return status;
        }
        public static emp getEmployeeById(int id){
        emp e=new emp();

        try{
        Connection con=empdao.getConnection();
        PreparedStatement ps=con.prepareStatement("select * from user905 where i?");
        ps.setInt(1,id);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
        e.setId(rs.getInt(1));
        e.setName(rs.getString(2));
        e.setPassword(rs.getString(3));
        e.setEmail(rs.getString(4));
        e.setCountry(rs.getString(5));
         }
         con.close();
         }catch(Exception ex)
         {
             ex.printStackTrace();
         }

         return e;
        }
        public static List<emp> getAllEmployees()
        {
       List<emp> list=new ArrayList<emp>();

       try
       {
       Connection con=empdao.getConnection();
       PreparedStatement ps=con.prepareStatement("select * from user905");
       ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
       emp e=new emp();
       e.setId(rs.getInt(1));
       e.setName(rs.getString(2));
       e.setPassword(rs.getString(3));
       e.setEmail(rs.getString(4));
       e.setCountry(rs.getString(5));
       list.add(e);
        }
       con.close();
       }
       catch(Exception e){e.printStackTrace();
       
       }
      
       return list;
      }
    }
    

