<%-- 
    Document   : excluircliente
    Created on : 16 de nov de 2020, 10:12:27
    Author     : entra21
--%>

<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>LOCACAR</title>
    </head>
    <body>
        <h1>Excluir Cliente</h1>
        <hr />
        <%
          String idcliente = request.getParameter("cpfcliente");
          Cliente c = new Cliente();
          if (idcliente != null){
              c = c.consultar(Integer.parseInt(idcliente));
              if (c.excluir()){
                  out.write("Cliente excluido com sucesso");
              }
              else
              {
                  out.write("Problemas ao excluir cliente");
              }
          }    
        %>
        <hr />
        <a href="consultacliente.jsp">Consulta clientes</a>
        
    </body>
</html>
