<html>

<body>

<h3>Training Portal</h3>


<!-- read the favourite progamming language cookie -->
<% 
	// the default ... if there are no cookies
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find our favourite cookie
	if(theCookies != null){
		for(Cookie tempCookie : theCookies){
			if("myApp.favouriteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- now show a personalized page .. use the "favLang" varia  -->

	<h4>New Books for <%= favLang %></h4>
	<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	</ul>
	
	<h4>Latest News Reports for <%= favLang %></h4>
	<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	</ul>
	
	<h4>Hot Jobs for <%= favLang %></h4>
	<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	</ul>
	
	<hr>
	<a href="cookies-personalize-form.html">Personalize this page</a>
	
</body>
</html>