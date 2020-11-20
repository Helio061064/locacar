<%-- 
    Document   : consultacliente
    Created on : 16 de nov de 2020, 08:39:37
    Author     : entra21
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>LOCACAR</title>
    </head>
    <body>
        <h1>Consulta Cliente</h1>
        <hr />
        <%
          Cliente cliente = new Cliente();
          List<Cliente> clientes = cliente.consultar();
        %>
        <table>
            <thead>
              <th>cpfcliente</th>            
              <th>Nome</th>
              <th>Email</th>
              <th>Numerocartao</th>
              <th> Ações </th>
            </thead>
            <tbody>
                <% for(Cliente c : clientes) {%>
                   <tr>      
                        <td><% out.write(c.getCpfcliente()); %></td>
                        <td><% out.write(c.getNome()); %></td>
                        <td><% out.write(c.getEmail()); %></td>
                        <td><% out.write(c.getNumeroCartao()); %></td>
  
                        <td><%out.write("<a href=editarcliente.jsp?cpfcliente="+c.getCpfcliente()+">Editar</a>");%></td>                          
              
                        <td><%out.write("<a href=excluircliente.jsp?cpfcliente="+c.getCpfcliente()+">Excluir</a>");%></td>
                    </tr>   
                <%}%>
            </tbody>
        </table>
    </body>
</html>