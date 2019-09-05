<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/5
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" import="java.util.*"%>
<html>
  <head>
    <title>测试jsp</title>
  </head>
  <body>
  你好 JSP

  <br>
  <!--输出当前时间，相当于在Servlet中使用response.getWriter()进行输出-->
  <%=new Date().toString()%>
  <br>
  <%="hello jsp"%>
  <br>
  <% out.println("hello jsp1");%>

  <%
    List<String> words = new ArrayList<String>();
    words.add("today");
    words.add("is");
    words.add("a");
    words.add("great");
    words.add("day");
  %>

  <table width="200px" align="center" border="5" cellspacing="0" bgcolor="#8a2be2">

    <%for (String word : words) {%>

    <tr>
      <td><%=word%></td>
    </tr>

    <%}%>

  </table>

  <!--通了指令包含页面 -->
  <%@include file="footer.jsp" %>
  <!--通过动作包含-->
  <jsp:include page="footer.jsp">
    <jsp:param  name="year" value="2017" />
  </jsp:include>
  </body>
</html>
