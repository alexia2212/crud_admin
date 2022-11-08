<%@ page import="com.example.reporteincidenciasadmin.beans.BUsuarios" %><%--
  Created by IntelliJ IDEA.
  User: USUARIO
  Date: 1/11/2022
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="lista" scope="request" type="java.util.ArrayList<com.example.reporteincidenciasadmin.beans.BUsuarios>"/>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Lista de empleados</h1>
    <a href="<%=request.getContextPath()%>/JobServlet" class="btn btn-secondary">Ir a lista de Trabajos</a>
    <table class="table">
        <thead>
        <tr>
            <th>nombre</th>
            <th>apellido</th>
        </tr>
        </thead>
        <tbody>
        <% int i = 1;
            for (BUsuarios employee : lista) { %>
        <tr>
            <td><%=employee.
                    getNombre()%>
            </td>
            <td><%=employee.getApellido()%>
        </tr>
        <% i++;
        }

        %>
        </tbody>
    </table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>
