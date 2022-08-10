var mostrado = true;

function listarPersonal() {
    $.ajax({
        url: "http://localhost:8000/personal",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            let data = '';
            for (let index = 0; index < res.length; index++) {
                const empleado = res[index];

                if (empleado.jefeidpersonal != null) {
                    data += `
                    <tr>
                        <td align="center">${index + 1}</td>
                        <td align="center">${empleado.idpersonal}</td>
                        <td>${empleado.idpersona.nombres}</td>
                        <td>${empleado.idpersona.apellidos}</td>
                        <td>${empleado.idcargo.tipocargo}</td>
                        <td>${empleado.idsede.nombre}</td>
                        <td>${empleado.jefeidpersonal.idpersona.nombres +
                        " " + empleado.jefeidpersonal.idpersona.apellidos}</td>
                    </tr>
                    `
                } else {
                    data += `
                    <tr>
                        <td align="center"  >${index + 1}</td>
                        <td align="center">${empleado.idpersonal}</td>
                        <td>${empleado.idpersona.nombres}</td>
                        <td>${empleado.idpersona.apellidos}</td>
                        <td>${empleado.idcargo.tipocargo}</td>
                        <td>${empleado.idsede.nombre}</td>
                        <td> </td>
                    </tr>
                    `
                }
            }
            $('#datosEmpleados').html(data);
        }
    })
}

function consultarSedes() {
    $.ajax({
        type: 'get',
        url: 'http://localhost:8000/leerSedes',
        dataType: 'json',
        success: function (res) {
            var opciones = "<option selected disabled value='0'>Elija la sede donde operara el empleado</option>";
            res.forEach(sede => {
                opciones += '<option value="' + sede.idsede + '">' + sede.nombre + '</option>';
            });
            $("#sedeCrear").html(opciones);
            $("#sedeActualizar").html(opciones);
        }
    });
}

function consultarCargos() {
    $.ajax({
        type: 'get',
        url: 'http://localhost:8000/leerCargos',
        dataType: 'json',
        success: function (res) {
            var opciones = "<option selected disabled value='0'>Elija el rol del empleado</option>";
            res.forEach(cargo => {
                opciones += '<option value="' + cargo.idcargo + '">' + cargo.tipocargo + '</option>';
            });
            $("#rolCrear").html(opciones);
            $("#rolActualizar").html(opciones);
        }
    });
}

function consultarJefes() {
    $.ajax({
        type: 'get',
        url: 'http://localhost:8000/personal',
        dataType: 'json',
        success: function (res) {
            var opciones = "<option selected disabled value='0'>Elija el jefe corresponiente</option>";
            res.forEach(personal => {
                opciones += '<option value="' + personal.idpersonal + '">' + personal.idpersona.nombres + ' ' + personal.idpersona.apellidos + ' - ' + personal.idcargo.tipocargo + '</option>';
            });
            $("#jefeCrear").html(opciones);
            $("#jefeActualizar").html(opciones);
        }
    });
}

function consultarPersonas(idPersona) {
    var respuesta
    if (idPersona == "") {
        idPersona = "-1";
    }
    $.ajax({
        async: false,
        url: "http://localhost:8000/personas/" + idPersona,
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            respuesta = res
        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
    return respuesta;
}

function consultarPersonal(idPersonal) {
    var respuesta
    if (idPersonal == "") {
        idPersonal = "-1";
    }
    $.ajax({
        async: false,
        url: "http://localhost:8000/personal/" + idPersonal,
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            respuesta = res
        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
    return respuesta;
}

function IngresarPersonas(idPersona, nombre, apellido) {
    $.ajax({
        async: false,
        url: "http://localhost:8000/personas",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
            "idpersona": parseInt(idPersona),
            "nombres": nombre,
            "apellidos": apellido
        }),
        success: function () {
            console.log("enviado")
        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
}

function IngresarPersonal(idPersonal, idPersona, cargo, sede, idjefe) {
    var datos;
    if (idjefe == 0) {
        datos = JSON.stringify({
            "idpersonal": idPersonal,
            "idpersona": {
                "idpersona": parseInt(idPersona)
            },
            "idcargo": {
                "idcargo": cargo
            },
            "idsede": {
                "idsede": sede
            }
        });
    } else {
        datos = JSON.stringify({
            "idpersonal": idPersonal,
            "idpersona": {
                "idpersona": parseInt(idPersona)
            },
            "idcargo": {
                "idcargo": cargo
            },
            "idsede": {
                "idsede": sede
            },
            "jefeidpersonal": {
                "idpersonal": idjefe
            }
        });
    }
    $.ajax({
        async: false,
        url: "http://localhost:8000/personal",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: datos,
        success: function () {
            console.log("enviado")

        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
}

function ActualizarPersona(idPersona, nombre, apellido) {
    $.ajax({
        async: false,
        url: "http://localhost:8000/personas",
        type: 'PUT',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
            "idpersona": parseInt(idPersona),
            "nombres": nombre,
            "apellidos": apellido
        }),
        success: function () {
            console.log("enviado")
        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
}

function ActualizarPersonal(idPersonal, idPersona, cargo, sede, idjefe) {
    var datos;
    if (idjefe == 0) {
        datos = JSON.stringify({
            "idpersonal": idPersonal,
            "idpersona": {
                "idpersona": parseInt(idPersona)
            },
            "idcargo": {
                "idcargo": cargo
            },
            "idsede": {
                "idsede": sede
            }
        });
    } else {
        datos = JSON.stringify({
            "idpersonal": idPersonal,
            "idpersona": {
                "idpersona": parseInt(idPersona)
            },
            "idcargo": {
                "idcargo": cargo
            },
            "idsede": {
                "idsede": sede
            },
            "jefeidpersonal": {
                "idpersonal": idjefe
            }
        });
    }
    $.ajax({
        async: false,
        url: "http://localhost:8000/personal",
        type: 'PUT',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: datos,
        success: function () {
            console.log("enviado")
        },
        // Esto sirve cuando no lo encuentra pero pues no sé si cambiar el alert por otra cosa UwU
        // error : function(xhr, status) {
        //     alert('Disculpe, existió un problema');
        // },
    })
}

function desactivarCampos() {
    document.getElementById("nombreCrear").disabled = true;
    document.getElementById("apellidoCrear").disabled = true;
    document.getElementById("rolCrear").disabled = true;
    document.getElementById("sedeCrear").disabled = true;
    document.getElementById("jefeCrear").disabled = true;

    document.getElementById("nombreActualizar").disabled = true;
    document.getElementById("apellidoActualizar").disabled = true;
    document.getElementById("rolActualizar").disabled = true;
    document.getElementById("sedeActualizar").disabled = true;
    document.getElementById("jefeActualizar").disabled = true;
}

function agregarListener() {
    var btnCrear = document.getElementById("crearBoton");
    btnCrear.addEventListener("click", function () {
        if (!mostrado) {
            $("#crearContainer").show();
            mostrado = true;
        } else {
            $("#actualizarContainer").hide();
            $("#verContainer").hide();
            $("#crearContainer").show();
            mostrado = true;
        }
        desactivarCampos();
    });

    var btnEditar = document.getElementById("editarBoton");
    btnEditar.addEventListener("click", function () {
        if (!mostrado) {
            $("#actualizarContainer").show();
            mostrado = true;
        } else {
            $("#crearContainer").hide();
            $("#verContainer").hide();
            $("#actualizarContainer").show();
            mostrado = true;
        }
        desactivarCampos();
    });

    var btnVer = document.getElementById("verBoton");
    btnVer.addEventListener("click", function () {
        if (!mostrado) {
            $("#verContainer").show();
            mostrado = true;
        } else {
            $("#crearContainer").hide();
            $("#actualizarContainer").hide();
            $("#verContainer").show();
        }
        listarPersonal();
    });

    var idbtn = document.getElementById("IDBoton");
    idbtn.addEventListener("click", function () {
        var idPersona = document.getElementById("IDpersona");
        var idPersonal = document.getElementById("IDempleado");

        if (idPersona.value == "" || idPersonal.value == "") {
            alert("Por favor digite el id de la persona y el id que se asignara como empleado")
        } else {
            var response = consultarPersonas(idPersona.value);
            var response2 = consultarPersonal(idPersonal.value);
            if (response2 != undefined) {
                alert("Ya existe un empleado con este id");
                idPersonal.focus();
                idPersonal.value = "";
            } else if (response != undefined) {
                var nombre = document.getElementById("nombreCrear");
                var apellido = document.getElementById("apellidoCrear");
                var rol = document.getElementById("rolCrear");
                var sede = document.getElementById("sedeCrear");
                var jefe = document.getElementById("jefeCrear");

                nombre.value = response.nombres;
                apellido.value = response.apellidos;
                rol.disabled = false;
                sede.disabled = false;
                jefe.disabled = false;
            } else if (response == undefined) {
                document.getElementById("nombreCrear").disabled = false;
                document.getElementById("apellidoCrear").disabled = false;
                document.getElementById("rolCrear").disabled = false;
                document.getElementById("sedeCrear").disabled = false;
                document.getElementById("jefeCrear").disabled = false;
            }
        }
    })

    var idactuzalizarbtn = document.getElementById("IDBotonActualizar");
    idactuzalizarbtn.addEventListener("click", function () {
        var idPersona = document.getElementById("IDpersonaActualizar");
        var idPersonal = document.getElementById("IDempleadoActualizar");
        if (idPersona.value == "" || idPersonal.value == "") {
            alert("Por favor digite el id de la persona y el id que se asignara como empleado")
        } else {
            var response = consultarPersonas(idPersona.value);
            var response2 = consultarPersonal(idPersonal.value);
            console.log(response, response2)

            if (response == undefined) {
                alert("El id de la persona ingresado no existe, corríjalo");
                idPersona.focus();
                idPersona.value = "";
            } else if (response2 == undefined) {
                alert("El id del empleado ingresado no existe, corríjalo");
                idPersonal.focus();
                idPersonal.value = "";
            } else if (response.idpersona == response2.idpersona.idpersona) {
                var nombre = document.getElementById("nombreActualizar");
                var apellido = document.getElementById("apellidoActualizar");
                var rol = document.getElementById("rolActualizar");
                var sede = document.getElementById("sedeActualizar");
                var jefe = document.getElementById("jefeActualizar");

                idPersona.disabled = true;
                idPersonal.disabled = true;
                nombre.disabled = false;
                apellido.disabled = false;
                rol.disabled = false;
                sede.disabled = false;
                jefe.disabled = false;

                nombre.value = response2.idpersona.nombres;
                apellido.value = response2.idpersona.apellidos;
                rol.value = response2.idcargo.idcargo;
                sede.value = response2.idsede.idsede;
                if (response2.jefeidpersonal != null) {
                    jefe.value = response2.jefeidpersonal.idpersonal;
                }
                $(" option[value='" + idPersonal.value + "']").remove();
            } else {
                alert("El id del empleado ingresado no existe no corresponde a la persona solicitada, corríjalo");
                idPersona.focus();
            }
        }
    })

    var btnEnviarCrear = document.getElementById("enviarCrear");
    btnEnviarCrear.addEventListener("click", function () {
        var rol = document.getElementById("rolCrear");
        var sede = document.getElementById("sedeCrear");

        if (rol.value == "0" || sede.value == "0") {
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        } else {
            var idPersona = document.getElementById("IDpersona");
            var idPersonal = document.getElementById("IDempleado");
            var nombre = document.getElementById("nombreCrear");
            var apellido = document.getElementById("apellidoCrear");
            var jefe = document.getElementById("jefeCrear");
            IngresarPersonas(idPersona.value, nombre.value, apellido.value);
            IngresarPersonal(idPersonal.value, idPersona.value, rol.value, sede.value, jefe.value);
        }
    }, false);

    var btnEnviarActualizar = document.getElementById("enviarActualizar");
    btnEnviarActualizar.addEventListener("click", function () {
        var rol = document.getElementById("rolActualizar");
        var sede = document.getElementById("sedeActualizar");

        if (rol.value == "0" || sede.value == "0") {
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        } else {
            var idPersona = document.getElementById("IDpersonaActualizar");
            var idPersonal = document.getElementById("IDempleadoActualizar");
            var nombre = document.getElementById("nombreActualizar");
            var apellido = document.getElementById("apellidoActualizar");
            var jefe = document.getElementById("jefeActualizar");
            ActualizarPersona(idPersona.value, nombre.value, apellido.value);
            ActualizarPersonal(idPersonal.value, idPersona.value, rol.value, sede.value, jefe.value);
        }
    });

    var cancelarCrearbtn = document.getElementById("cancelarCrear");
    cancelarCrearbtn.addEventListener("click", function () {
        document.getElementById("IDpersona").disabled = false;
        document.getElementById("IDpersonaActualizar").disabled = false;
        document.getElementById("IDempleado").disabled = false;
        document.getElementById("IDempleadoActualizar").disabled = false;

        desactivarCampos();
    });

    var cancelarActualizarbtn = document.getElementById("cancelarActualizar");
    cancelarActualizarbtn.addEventListener("click", function () {
        document.getElementById("IDpersona").disabled = false;
        document.getElementById("IDpersonaActualizar").disabled = false;
        document.getElementById("IDempleado").disabled = false;
        document.getElementById("IDempleadoActualizar").disabled = false;

        desactivarCampos();
    });

}

function init() {
    agregarListener();
    consultarSedes();
    consultarCargos();
    consultarJefes();
    $("#crearContainer").hide();
    $("#actualizarContainer").hide();
    listarPersonal();
    $("#verContainer").show();
}

init();