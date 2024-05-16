<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Resultado da Média</title>
    </head>
    <body>
        <h1>Resultado da Média</h1>

        <p>Nota 1: <%= request.getAttribute("nota1") %></p>
        <p>Nota 2: <%= request.getAttribute("nota2") %></p>
        <b>Média: <%= request.getAttribute("media") %></b>

        <a href="index.jsp">Calcular Novamente</a>
    </body>
</html>