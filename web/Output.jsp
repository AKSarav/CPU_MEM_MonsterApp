<%-- 
    Document   : Output
    Created on : 20 Oct, 2018, 3:19:47 PM
    Author     : aksarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Monster Result/Output Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <section>
            
                <% 
                   String Message = "";
                   String MN = request.getParameter("MN"); 
                   if ( MN.equalsIgnoreCase("MM"))
                   {
                       Message = "Memory Eating Monster - Thread has been invoked\n Based on your Application Server -XMX value (Max Heap Memory), Sooner or Later The Out of Memory error might occur\n Please go ahead and check your logs \n Happy Debugging";
                   }
                   else if ( MN.equalsIgnoreCase("CM"))
                   {
                       Message = "CPU Eating Monster - Thread has been invoked \n Though it will not lead to any quick downtime. It would cause Performance Degrade.\n Happy Debugging !";
                   }
                %>
                
            
                <h3><%= Message %></h3>
        </section>
    </body>
</html>
