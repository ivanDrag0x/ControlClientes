<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/e3e078fe8a.js" crossorigin="anonymous"></script> <title>Editar Clientes</title>
    </head>
    <body>
        <!-- Cabecero -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

        <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idcliente=${cliente.idCliente}" method="POST" class="was-validated">

            <!-- Botones de Navegación -->
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"/>
            
            <section id="details"> 
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Cliente</h4>
                                </div>
                                <div class="card-body">
                                    
                                        <div class="form-group">
                                            <label for="nombre" >Nombre</label>
                                            <input type="text" class="form-control" name="nombre" required value="${cliente.nombre}">
                                        </div>
                                        <div class="form-group">
                                            <label for="apellido" >Apellido</label>
                                            <input type="text" class="form-control" name="apellido" required value="${cliente.apellido}" >
                                        </div>
                                        <div class="form-group">
                                            <label for="email" >Email</label>
                                            <input type="email" class="form-control" name="email" required value="${cliente.email}" >
                                        </div>
                                        <div class="form-group">
                                            <label for="telefono" >Telefono</label>
                                            <input type="tel" class="form-control" name="telefono" required value="${cliente.telefono}">
                                        </div>
                                        <div class="form-group">
                                            <label for="saldo" >Saldo</label>
                                            <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any">
                                        </div>

                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>


        <!-- Pie de Pagina -->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    </body>
</html>
