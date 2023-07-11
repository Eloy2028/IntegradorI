<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALL VINTAGE-LOGIN</title>
        <%@include file="WEB-INF/JSPF/bootstrap.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <br/>
        <div class="container col-lg-3">
            <form action="nosotros.jsp">
                <div class="form-group text-center">
                    <img src="img/logo.jpg" height="80" width="80"/>
                    <p><strong>Bienvenidos a Sistema de Login</strong></p>
                </div>
                <div class="form-group">
                    <label>Nombres:</label>
                    <input class="form-control" type="text" name="txtnom" placeholder="Ingresar Nombre">
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="txtCorreo" placeholder="example@gmail.com" class="form-control">
                </div>
                <br>
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar">
                <br/>
            </form>
        </div>
        <br/>
        <%@include file="WEB-INF/JSPF/footer.jspf" %>
    </body>
</html>
