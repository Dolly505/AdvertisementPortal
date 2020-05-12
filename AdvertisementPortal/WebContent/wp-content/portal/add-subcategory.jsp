<%@page import="java.util.Iterator"%>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.modal.Category" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

  private Dao dao=new Dao();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<form action="<%= request.getContextPath()%>/controller" method="post">
 <input type="hidden" name="actionCode" value="addSubCategory">
  Category:<select name="categoryID">
     <option>--select main category--</option>
     <%  ArrayList<Category>arrayList=dao.fetchSingleColumn();
        Iterator<Category>iterator=arrayList.iterator();
        while(iterator.hasNext()){
        	Category category=iterator.next();
         %> 
        <option value="<%= category.getCateID() %>"><%= category.getCategoryName() %></option>
     <%} %>
  </select>
  Sub-category:<input type="text" name="txtSubCategoryName">
  <input type="submit" value="add subcategory">
</form>
</body>
</html>