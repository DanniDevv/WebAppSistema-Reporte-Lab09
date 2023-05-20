<%-- 
    Document   : formularioListarAlumnosPorSexo
    Created on : 19 may. 2023, 18:03:14
    Author     : dante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario</title>
  <link rel="stylesheet" href="../webjars/bootstrap/5.2.3/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f3f7f9;
    }
    .container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    .card {
      max-width: 400px;
      margin: 0 auto;
      padding: 40px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      background-color: #ffffff;
    }
    .form-group {
      margin-bottom: 30px;
    }
    .form-label {
      font-size: 18px;
      font-weight: 700;
      margin-bottom: 10px;
      color: #333333;
    }
    .form-control {
      height: 50px;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ced4da;
      border-radius: 4px;
    }
    .btn-submit {
      text-align: right;
    }
    .btn-primary {
      background-color: #1a91da;
      border-color: #1a91da;
      font-size: 18px;
      font-weight: 700;
      padding: 12px 30px;
      letter-spacing: 1px;
      transition: background-color 0.3s ease-in-out;
    }
    .btn-primary:hover {
      background-color: #156b99;
      border-color: #156b99;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="card">
      <form method="post" action="listadoAlumnosPorSexo.jsp">
        <input type="hidden" name="accion" value="MOSTRAR">
        <div class="form-group">
          <label for="sexo" class="form-label">Seleccione Sexo</label>
          <select name="sexo" id="sexo" class="form-control">
            <option value="F">Femenino</option>
            <option value="M">Masculino</option>
          </select>
        </div>
        <div class="btn-submit">
          <button type="submit" class="btn btn-primary">Mostrar Reporte</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>



