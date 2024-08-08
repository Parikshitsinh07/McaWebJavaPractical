<%-- 
    Document   : user
    Created on : 27-Mar-2024, 10:01:11 pm
    Author     : Maulik Parmar
--%>


<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Information</title>
        <style>
            body {
                font-family: 'Helvetica Neue', Arial, sans-serif;
                background-color: #f8f9fa;
                padding: 20px;
                color: #333; 
            }

            .container {
                width: 50%;
                margin: 0 auto;
                margin-bottom: 100px;
                padding: 30px;
                background-color: #fff;
                border-radius: 8px;
                margin-top: 50px;
            }

            .user-info {
                margin-top: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                border:1px solid lightblue
                   }

            table td, table th {
                padding: 8px;
                
                text-align: left;
            }

            table tr:hover {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <%
                String username = request.getParameter("userName");
                if (username == null || username.isEmpty()) {
            %>
            <jsp:forward page="index.jsp"/>
            <%
            } else {
            %>
            
            
            <%
                 
               Integer count=(Integer)session.getAttribute("count");
               if(count==null)
               {
                    count=1;
               
                }
                else
                {
                count++;
                
                
                }
                
                
                
                    session.setAttribute("count",count);
                %>
            
            

           
            <% out.println("<h1><center>User Information</center></h1>");%>

            <div class="user-info">

                <jsp:useBean id="user" class="com.program7.User" scope="session" />
                <jsp:setProperty name="user" property="name" value="<%= username%>" />
                <%response.setHeader("Custom-Header", "Hello");%>

                <table>
                    <tr>
                        <td>User Name</td>
                        <td><jsp:getProperty name="user" property="name" /></td>
                    </tr>
                    <tr>
                        <td>Request method</td>
                        <td><%= request.getMethod()%></td>
                    </tr>
                    <tr>
                        <td>Session ID</td>
                        <td><%= session.getId()%></td>
                    </tr>
                    <tr>
                        <td>Server time</td>
                        <td>
                            <jsp:element name="div">
                                <jsp:attribute name="id">Server time </jsp:attribute>
                                <jsp:body><%= new java.util.Date()%></jsp:body>
                            </jsp:element>
                        </td>
                    </tr>
                    <tr>
                        <td>Servlet context path </td>
                        <td><%= application.getContextPath()%> </td>
                    </tr>
                    <tr>
                        <td>Servlet Name</td>
                        <td>
                            <%= config.getServletName()%>
                        </td>
                    </tr>
                    <tr>
                        <td>Page URL</td>
                        <td> <%= request.getRequestURL()%></td>
                    </tr>
                    <tr>
                        <td>Accessed time </td>
                        <td><%= count%></td>
                    </tr>
                    <tr>
                        <td>Page Context</td>
                        <td><%= pageContext.getClass().getName()%></td>
                    </tr>
                    <tr>
                        <td>Page</td>
                        <td><%= page.getClass().getName()%></td>
                    </tr>
                </table>
                <center><br><jsp:text>Have a nice day!</jsp:text></center>
                </div>
            <% }%>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>



<%-- 
1. JSP Scripting elements
    <%! %> declaration 
    <% %> scriptlet
    <%= %> expression

2. JSP Directives
    <%@ page ... %> page-dependent attributes
    <%@ include ... %> includes a file 
    <%@ taglib ... %> declares a tag library

3. JSP Implicit Objects
    request : HttpServletRequest
    response : HttpServletResponse
    out : PrintWriter
    session : HttpSession
    application : ServletContext
    config : ServletConfig
    pageContext : JspWriters
    page : synonym for this
    Exception :this

4. JSP Action tags
    <jsp:include>: Includes the content of another JSP page.
    <jsp:useBean>: Instantiates a JavaBean for use in the JSP page.
    <jsp:setProperty>: Sets the properties of a JavaBean.
    <jsp:getProperty>: Retrieves and displays the properties of a JavaBean.
    <jsp:forward>: Forwards the request to another resource.
    <jsp:plugin>: Embeds an applet or plugin in the JSP page.
    <jsp:element>: Dynamically creates an HTML element.
    <jsp:attribute>: Defines attributes for dynamically created elements.
    <jsp:body>: Defines the body content of dynamically created elements.
    <jsp:text>: Adds text content directly to the JSP page.
--%>