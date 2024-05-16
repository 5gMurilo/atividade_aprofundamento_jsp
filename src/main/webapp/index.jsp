<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Média</title>
    <script>
        function validarFormulario() {
            let nota1 = document.getElementById("nota1").value;
            let nota2 = document.getElementById("nota2").value;

            if (isNaN(nota1) || isNaN(nota2)) {
                alert("Por favor, insira valores numéricos.");
                return false;
            }

            nota1 = parseFloat(nota1);
            nota2 = parseFloat(nota2);

            if (nota1 > 5 || nota2 > 5) {
                alert("As notas devem ser menores ou iguais a 5.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h1>Calculadora de Média</h1>
    <form action="${pageContext.request.contextPath}/notaServlet" method="post" onsubmit="return validarFormulario()">
        <label for="nota1">Nota 1:</label>
        <input type="number" id="nota1" name="nota1" required>
        <br>
        <label for="nota2">Nota 2:</label>
        <input type="number" id="nota2" name="nota2" required>
        <br>
        <button type="submit">Calcular</button>
    </form>
</body>
</html>
