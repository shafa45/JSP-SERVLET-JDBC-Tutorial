<html>
<head><title>Confirmation</title></head>
<%

	// read form data
	String favLang = request.getParameter("favouriteLanguage");
	
	// create the cookie
	
	Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);
	
	// set the life span ... total number of seconds
	theCookie.setMaxAge(365*24*60*60) ; // for one year
	
	// send cookie to browser
	response.addCookie(theCookie);
%>
<body>



	Thanks! We set your favourite Language to: ${param.favouriteLanguage};
	
	<br><br>
	
	<a href="cookies-homepage.jsp">Return to homepage</a>

</body>
</html>