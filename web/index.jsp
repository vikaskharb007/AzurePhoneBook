
<html>
<head></head>
<body>
    


 <form name="MyForm" method="POST" action="<%=contextPath%>\MyPackage\MyServlet">

<H1> Welcome To Phone Repository</H1>
<h4>Enter you credentials</h4>
Enter username: <input type="text" name="Username" id= "Username"></input>
Enter password: <input type="text" name="Password" id= "Password"></input>
<input type="submit" value="Login!" onclick="return validate();" ></input>

<br>
<br>
<br>

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
