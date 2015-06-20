package MyPackage;


import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  


public class MyServlet extends HttpServlet { 

  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    System.out.println("m here");
    
    
    String un=request.getParameter("Username");  
    String pwd=request.getParameter("Password");  
    
    MyDao obj=new MyDao();
      
    boolean success=obj.validate(un, pwd);
    if(success){
        RequestDispatcher rd=request.getRequestDispatcher("LandingPage.jsp");  
        rd.forward(request,response);  
    }  
    else{  
        request.setAttribute("Message", "Invalid Credentials..!"); 
        RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
        rd.include(request,response);  
    }  
    
    }  
}  
