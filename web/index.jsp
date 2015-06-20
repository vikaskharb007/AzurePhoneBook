
<% String contextPath=request.getContextPath(); %>
<html>
<head></head>
<body>
    

<% String message=(String) request.getAttribute("Message");
   if (message == null) message="NONE"; 

 %>

 <form name="MyForm" method="POST" action="<%=contextPath%>\MyPackage\MyServlet">

<H1> Welcome To Phone Repository</H1>
<h4>Enter you credentials</h4>
Enter username: <input type="text" name="Username" id= "Username"></input>
Enter password: <input type="text" name="Password" id= "Password"></input>
<input type="submit" value="Login!" onclick="return validate();" ></input>

<br>
<br>
<br>
<% if(!message.equalsIgnoreCase("NONE")){%>
<div align="left"><font color="red" size="3"><%=message%></font></div>
<% } %>

</form>
</body>
<script lang="Javascript">
function validate()
{
    var uname=document.getElementById("Username");
    var pwd=document.getElementById("Password");
    
    if(uname.value == "" || uname.value == null)
        {
            alert("Enter username!");
            uname.focus();
            uname.select();
            return false;
        }
        
    else if(pwd.value == "" || pwd.value == null)
        {
            alert("Enter password!");
            pwd.focus();
            pwd.select();
            return false;
        }
    
    else
        {
            
   
    document.MyForm.submit();
        }
}
    
    
</script>

</html> 