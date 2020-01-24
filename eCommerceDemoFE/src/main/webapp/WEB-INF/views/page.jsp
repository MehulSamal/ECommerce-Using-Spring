<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
    <c:set var = "contextRoot" value="${pageContext.request.contextPath}"/>
    <spring:url var="css" value="/resources/css" />
    <spring:url var="js" value="/resources/js" />
    <spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>eCommerce Demo - ${title}</title>
  
  <script>
     window.menu = '${title}';
  </script>

  <!-- Bootstrap core CSS -->
  <link href="${css}/bootstrap.min.css" rel="stylesheet">
  <link href="${css}/bootstrap_theme.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
<div class="wrapper">

<jsp:include page="./shared/header.jsp" /> 

  <!-- Page Content -->
  
  <div class="content">
  <!-- When user click for Home -->
  <c:if test="${userClickHome == true}">
  <jsp:include page="home.jsp"/>
  </c:if>
  
  <!-- When user click for About -->
  <c:if test="${userClickAbout == true}">
  <jsp:include page="about.jsp"/>
  </c:if>
  
  <!-- When user click for Contact -->
  <c:if test="${userClickContact == true}">
  <jsp:include page="contact.jsp"/>
  </c:if>
  
  </div>
  
  
    <jsp:include page="./shared/footer.jsp" /> 
    
  

  <!-- Bootstrap core JavaScript -->
  <script src="${js}/jquery.js"></script>
  <script src="${js}/myapp.js"></script>
  <script src="${js}/bootstrap.bundle.min.js"></script>
  
  
  
  </div>

</body>

</html>
    