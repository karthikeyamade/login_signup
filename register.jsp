<html>
<head>
<title>Registered</title>
<style>
body {
  height: 100%;
  /* max-height: 600px; */
  width: 1000px;
  background-color: hsla(200,40%,30%,.4);
  background-image:   
    url('https://78.media.tumblr.com/cae86e76225a25b17332dfc9cf8b1121/tumblr_p7n8kqHMuD1uy4lhuo1_540.png'), 
    url('https://78.media.tumblr.com/66445d34fe560351d474af69ef3f2fb0/tumblr_p7n908E1Jb1uy4lhuo1_1280.png'),
    url('https://78.media.tumblr.com/8cd0a12b7d9d5ba2c7d26f42c25de99f/tumblr_p7n8kqHMuD1uy4lhuo2_1280.png'),
    url('https://78.media.tumblr.com/5ecb41b654f4e8878f59445b948ede50/tumblr_p7n8on19cV1uy4lhuo1_1280.png'),
    url('https://78.media.tumblr.com/28bd9a2522fbf8981d680317ccbf4282/tumblr_p7n8kqHMuD1uy4lhuo3_1280.png');
  background-repeat: repeat-x;
  background-position: 
    0 20%,
    0 100%,
    0 50%,
    0 100%,
    0 0;
  background-size: 
    2500px,
    800px,
    500px 200px,
    1000px,
    400px 260px;
  animation: 50s para infinite linear;
  }

@keyframes para {
  100% {
    background-position: 
      -5000px 20%,
      -800px 95%,
      500px 50%,
      1000px 100%,
      400px 0;
    }
  }
    #card {
      position: start;
      width: 320px;
      display: block;
      margin: 40px auto;
      text-align: center;
      font-family: 'Source Sans Pro', sans-serif;
    }
     #upper-side {
      padding: 2em;
      background-color:/*#8BC34A;*/rgba(40,57,101,.9);
      box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
      display: block;
      color: #fff;
      border-top-right-radius: 8px;
      border-top-left-radius: 8px;
    }
/*0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);*/
    #checkmark {
      font-weight: lighter;
      fill: #fff;
      margin: -3.5em auto auto 20px;
    }
    
     #status {
      font-weight: lighter;
      text-transform: uppercase;
      letter-spacing: 2px;
      font-size: 1em;
      margin-top: -.2em;
      margin-bottom: 0;
    }
    
        #lower-side {
      padding: 2em 2em 5em 2em;
      background: #fff;
      display: block;
      border-bottom-right-radius: 8px;
      border-bottom-left-radius: 8px;
    }        
    
    #message {
      margin-top: -.5em;
      color: #757575;
      letter-spacing: 1px;
    }
    
        #contBtn {
      position: relative;
      top: 1.5em;
      text-decoration: none;
      background: #8bc34a;
      color: #fff;
      margin: auto;
      padding: .8em 3em;
      -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
      -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
      box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
      border-radius: 25px;
      -webkit-transition: all .4s ease;
    		-moz-transition: all .4s ease;
    		-o-transition: all .4s ease;
    		transition: all .4s ease;
    }
    #contBtn:hover {
      -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
      -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
      box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
      -webkit-transition: all .4s ease;
    		-moz-transition: all .4s ease;
    		-o-transition: all .4s ease;
    		transition: all .4s ease;
    }

</style>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>

<%
String user_name=request.getParameter("user_name");
String passwd=request.getParameter("passwd");
String email=request.getParameter("email");
String user="user";
if(user_name!=null && passwd!=null && email!=null){

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hi","root","bye"); 
Statement st=con.createStatement();

int i=st.executeUpdate("insert into hitable(username,passwd,email,utype)values('"+user_name+"','"+passwd+"','"+email+"','"+user+"')");
out.println("Successfully registerd!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
else{
response.sendRedirect("/car");
}
%>
    <div id='card' class="animated fadeIn">
      <div id='upper-side'>
        <?xml version="1.0" encoding="utf-8"?>
          <!-- Generator: Adobe Illustrator 17.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
          <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
          <svg version="1.1" id="checkmark" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" xml:space="preserve">
            <path d="M131.583,92.152l-0.026-0.041c-0.713-1.118-2.197-1.447-3.316-0.734l-31.782,20.257l-4.74-12.65
    	c-0.483-1.29-1.882-1.958-3.124-1.493l-0.045,0.017c-1.242,0.465-1.857,1.888-1.374,3.178l5.763,15.382
    	c0.131,0.351,0.334,0.65,0.579,0.898c0.028,0.029,0.06,0.052,0.089,0.08c0.08,0.073,0.159,0.147,0.246,0.209
    	c0.071,0.051,0.147,0.091,0.222,0.133c0.058,0.033,0.115,0.069,0.175,0.097c0.081,0.037,0.165,0.063,0.249,0.091
    	c0.065,0.022,0.128,0.047,0.195,0.063c0.079,0.019,0.159,0.026,0.239,0.037c0.074,0.01,0.147,0.024,0.221,0.027
    	c0.097,0.004,0.194-0.006,0.292-0.014c0.055-0.005,0.109-0.003,0.163-0.012c0.323-0.048,0.641-0.16,0.933-0.346l34.305-21.865
    	C131.967,94.755,132.296,93.271,131.583,92.152z" />
            <circle fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="10" cx="109.486" cy="104.353" r="32.53" />
          </svg>
          <h3 id='status'>
          Success
        </h3>
      </div>
      <div id='lower-side'>
        <p id='message'>
          Congratulations, your account has been successfully created.
        </p>
        <a href="#" id="contBtn" onclick="window.location='/car'">Continue</a>
      </div>
    </div>

<!--a href="view.jsp">view records</a>-->
</body>
</html>
