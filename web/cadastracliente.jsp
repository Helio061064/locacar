<%-- 
    Document   : cadastracliente
    Created on : 16 de nov de 2020, 08:10:35
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOCACAR</title>
    </head>
    <body>
        <h1>Cadastro Cliente</h1>
        <hr />
        <form action="recebeDadosCliente.jsp" method="POST">
            <label>Informe o cpf cliente</label>
            <input type="text" name="cpfcliente" /> 
            
            <br />
            <label>Informe o nome</label>
            <input type="text" name="nome" />
            
            <br />
            <label>Informe o email</label>
            <input type="text" name="email" />
            
            <br />
            <label>Informe o numero cartão</label>
            <input type="text" name="numerocartao" />
            
            <hr />
            <input type="submit" value="Salvar" />
        </form>
    </body>
</html>