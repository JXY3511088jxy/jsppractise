<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    pageContext.setAttribute("name","gareen");
%>

<%=pageContext.getAttribute("name")%>

<%
    request.setAttribute("name","gareen");
%>

<jsp:forward page="getContext.jsp"/>