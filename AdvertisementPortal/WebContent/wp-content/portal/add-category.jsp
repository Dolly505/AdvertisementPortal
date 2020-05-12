<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
  <form action="<%= request.getContextPath() %>/controller" method="post">
     <input type="hidden" name="actionCode" value="addCategory">
     Category Name:<input type="text" name="categoryName">
     <input type="submit" value="insert">
  </form>
</body>
</html>
<%@include file="common/footer.jsp" %>