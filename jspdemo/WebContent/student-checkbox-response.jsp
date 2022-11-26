<html>

<head><title>Student Confirmation Title</title></head>

<body>
The student is confirmed: ${param.firstName} ${param.lastName}

<br><br>


<!-- display list of "favoriteLanguage" -->
<ul>
	<%
		String []langs = request.getParameterValues("favouritelanguage");
		for(String tempLang: langs){
			out.println("<li>"+ tempLang + "</li>");
		}
	%>
</ul>

<br><br>


</body>
</html>


<html>