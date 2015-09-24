<%@ page language="java" import="java.util.*,org.jasig.cas.client.authentication.AttributePrincipal,org.jasig.cas.client.validation.Assertion,org.jasig.cas.client.util.AbstractCasFilter" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>In Or Out</title>
</head>
 	<%
       Assertion assertion = (Assertion) request.getSession().getAttribute(  
                 AbstractCasFilter.CONST_CAS_ASSERTION);  

       AttributePrincipal principal = assertion.getPrincipal(); 
       String name = principal.getName();
       String code = request.getParameter("code");
       String url = "https://localhost:8443/cas4/oauth2.0/accessToken?client_id=key&client_secret=secret&grant_type=authorization&redirect_uri=http://localhost:9090/casClient&code="+code;
     %>
	<body>I am casClient<br/>
	name:<%=name%><br/>
		<a href="https://localhost:8443/cas4/logout">loginOut</a>
	</body>

	<body>Oauth<br/>
		<a href=<%=url%>>Oauth</a>
	</body>
	
</html>