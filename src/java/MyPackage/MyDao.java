package MyPackage;

import java.sql.*;  

public class MyDao {
  
    
public boolean validate(String name,String pass){ 
    
boolean success=false;  

try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
      
PreparedStatement ps=con.prepareStatement("select * from registration where name=? and pass=?");  
ps.setString(1,name);  
ps.setString(2,pass);  
      
ResultSet rs=ps.executeQuery();  
if(rs.next())
    success=true;
          
}catch(Exception e){System.out.println(e);}  
return success;  
}  
}      

