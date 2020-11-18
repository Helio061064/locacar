<%-- 
    Document   : recebeDadosCliente
    Created on : 16 de nov de 2020, 08:43:21
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
        <h1>LOCACAR</h1>
        <%
          //recebe os valores da tela HTML  
          String cpf = request.getParameter("cpfcliente");
          String nome = request.getParameter("nome");
          String email = request.getParameter("email");
          String numerocartao = request.getParameter("numerocartao");
          
          //instancia o cliente
          Cliente cliente = new Cliente();
          cliente.setCpfcliente(cpf);
          cliente.setNome(nome);
          cliente.setEmail(email);
          cliente.setNumeroCartao(numerocartao);
          
          if(cliente.salvar()){
              out.write("Cliente salvo com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar cliente");
          }
          
        %>
        <hr />
        <a href="consultacliente.jsp">Consulta clientes</a>
    </body>
</html>
