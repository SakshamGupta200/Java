/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

    import java.io.IOException;
    import java.io.PrintWriter;
    import java.util.List;

    import javax.servlet.ServletException;
    import javax.servlet.annotation.WebServlet;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bhanu Yadav
 */
public class saveservlate extends HttpServlet
{

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
           
        protected void doPost(HttpServletRequest request, HttpServletResponse respons)throws ServletException, IOException
            {
            respons.setContentType("text/html");
            PrintWriter out=respons.getWriter();
  
            String name=request.getParameter("name");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String country=request.getParameter("country");

            emp e=new emp();
            e.setName(name);
             e.setPassword(password);
            e.setEmail(email);
            e.setCountry(country);

           int status=empdao.save(e);
           if(status>0)
           {
           out.print("<p>Record saved successfully!</p>");
           request.getRequestDispatcher("index.html").include(request, respons);
           }
           else
           {
           out.println("Sorry! unable to save record");
           }

          out.close();
          }

  
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
