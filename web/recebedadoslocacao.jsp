<%-- 
    Document   : recebedadoslocacao
    Created on : 11 de nov de 2020, 08:42:13
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
          String idcarro = request.getParameter("idcarro");
          out.write(idcarro);
         
        %>

    </body>
</html>
