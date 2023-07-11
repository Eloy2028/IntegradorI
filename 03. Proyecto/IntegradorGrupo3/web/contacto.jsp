<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALL VINTAGE-CONTACTO</title>
        <%@include file="WEB-INF/JSPF/bootstrap.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <div class="container mb-5">
            <main>
                <div class="pt-4 text-center">
                    <h2>Póngase en contacto</h2>
                    <p class="lead">
                        Para mejorar y saber su opinión sobre nosotros, rellene el formulario por favor.
                    </p>
                </div>

                <div class="contactanos-container">
                    <h4 class="mb-3">Datos</h4>
                    <form class="needs-validation" novalidate="" method="get" action="#">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">Nombres:</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="firstName"
                                    placeholder=""
                                    value=""
                                    required=""
                                    name="nombres"
                                    />
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">Apellidos:</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="lastName"
                                    placeholder=""
                                    value=""
                                    required=""
                                    name="apellidos"
                                    />
                            </div>

                            <div class="col-12">
                                <label for="email" class="form-label">Email:</label>
                                <input
                                    type="email"
                                    class="form-control"
                                    id="email"
                                    placeholder="electronico@compra.com"
                                    name="mail-usuario"
                                    />
                            </div>

                            <div class="col-12">
                                <label for="birthday" class="form-label"
                                       >Fecha de nacimiento</label
                                >
                                <input
                                    type="date"
                                    class="form-control"
                                    name="birthday"
                                    id="birthday"
                                    />
                            </div>

                            <div class="col-md-5 mb-3">
                                <label for="country" class="form-label">G&eacute;nero:</label>
                                <select
                                    class="form-select"
                                    id="country"
                                    required=""
                                    name="gender"
                                    >
                                    <option value="">Seleccione</option>
                                    <option>Masculino</option>
                                    <option>Femenino</option>
                                    <option>No definido</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                        </div>

                        <div class="col-12 mb-5">
                            <label for="mensaje" class="form-label">Mensaje:</label>
                            <textarea
                                name="mensaje"
                                class="form-control"
                                name="mensaje"
                                id="mensaje"
                                cols="30"
                                rows="5"
                                style="resize: none"
                                ></textarea>
                        </div>

                        <button class="w-100 btn btn-danger btn-lg" type="submit">
                            Enviar
                        </button>
                    </form>
                </div>
            </main>
        </div>
        <%@include file="WEB-INF/JSPF/footer.jspf" %>
    </body>
</html>
