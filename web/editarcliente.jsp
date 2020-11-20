<%-- 
    Document   : editarcliente
    Created on : 16 de nov de 2020, 10:11:09
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
        <h1>Editar Cliente</h1>
        <hr />
        <%
          String idcliente = request.getParameter("idcliente");
          Cliente clie = new Cliente();
          if (idcliente != null){
              clie = clie.consultar(Integer.parseInt(idcliente));
          }    
        %>
        <form action="recebeeditacliente.jsp" method="POST">
            <label> Id Cliente </label>
            <input type="text" name="idcliente" 
                   readonly="true"
                   value="<%out.write(""+clie.getCpfcliente());%>"/>
            <br />
            <label>Cpf Cliente</label>
            <input type="text" name="cpfcliente" 
                   value="<%out.write(clie.getCpfcliente());%>" />
            <br />
            <label>Nome</label>
            <input type="text" name="nome" 
                   value="<%out.write(clie.getNome());%>" />
            <br />
            <label>Email</label>
            <input type="text" name="email" 
                   value="<%out.write(clie.getEmail());%>" />
            
            <br />
            <label>Numero Cartao</label>
            <input type="text" name="numerocartao" 
                   value="<%out.write(clie.getNumeroCartao());%>" />
            
            
            <hr />
            <input type="submit" value="Alterar" />
        </form>
    </body>
</html>
