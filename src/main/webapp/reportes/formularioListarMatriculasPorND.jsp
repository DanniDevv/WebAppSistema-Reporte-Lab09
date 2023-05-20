<%-- 
    Document   : formularioListarMatriculasPorND
    Created on : 19 may. 2023, 19:14:11
    Author     : dante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
        <style>
            body {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
                background-color: #f8f9fa;
            }
            .card {
                max-width: 800px;
                margin: 0 auto;
                padding: 100px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                background-color: #ffffff;
            }
            @media (max-width: 800px) {
                .card {
                    padding: 50px;
                }
                .form-group {
                    margin-bottom: 30px;
                }
                .form-label {
                    font-size: 18px;
                }
                .form-control {
                    height: 60px;
                    font-size: 16px;
                    padding: 10px;
                }
                .btn-neon {
                    padding: 12px 24px;
                    font-size: 14px;
                }
            }
            .form-group {
                margin-bottom: 60px;
            }
            .form-label {
                font-weight: bold;
                color: #6200ee;
                font-size: 24px;
            }
            .form-control {
                height: 120px;
                font-size: 36px;
                border-radius: 20px;
                border: 2px solid #ced4da;
                padding: 20px;
            }
            .btn-submit {
                text-align: right;
            }
            .btn-neon {
                display: inline-block;
                padding: 24px 48px;
                font-size: 32px;
                font-weight: bold;
                color: #ffffff;
                background-color: #6200ee;
                border: none;
                border-radius: 40px;
                transition: background-color 0.3s;
            }
            .btn-neon:hover {
                background-color: #3700b3;
                color: #ffffff;
            }
        </style>
    </head>
    <body>
        <div class="card">
            <form method="post" action="listadoMatriculasPorND.jsp">
                <input type="hidden" name="accion" value="MOSTRAR">
                <div class="form-group">
                    <label for="nro_doc" class="form-label">Nro. de Documento:</label>
                    <input type="text" class="form-control" id="nro_doc" name="nro_doc" placeholder="Ingrese el Nro. de Documento" required>
                </div>
                <div class="btn-submit">
                    <button type="submit" class="btn btn-neon">Mostrar Reporte</button>
                </div>
            </form>
        </div>
    </body>
</html>



