var mostrado = true;

function listarPersonal() {
    $.ajax({
        url: "http://localhost:8081/personal",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            let data = '';
            for (let index = 0; index < res.length; index++) {
                const empleado = res[index];

                if (empleado.jefeidpersonal != null) {
                    data += `
                    <tr>
                        <td>${index + 1}</td>
                        <td>${empleado.idpersonal}</td>
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
                        <td>${index + 1}</td>
                        <td>${empleado.idpersonal}</td>
                        <td>${empleado.idpersona.nombres}</td>
                        <td>${empleado.idpersona.apellidos}</td>
                        <td>${empleado.idcargo.tipocargo}</td>
                        <td>${empleado.idsede.nombre}</td>
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
        url: 'http://localhost:8081/leerSedes',
        dataType: 'json',
        success: function (res) {
            var opciones = "<option selected disabled value='0'>Elija el rol del empleado</option>";
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
        url: 'http://localhost:8081/leerCargos',
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

function consultarPersonas(idPersona) {
    var respuesta
    if (idPersona == "") {
        idPersona = "-1";
    }
    $.ajax({
        async: false,
        url: "http://localhost:8081/personas/" + idPersona,
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
        url: "http://localhost:8081/personal/" + idPersonal,
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            let data = '';
            console.log("-->", res)
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
        url: "http://localhost:8081/personas",
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
function IngresarPersonal(idPersonal, idPersona, cargo, sede) {
    $.ajax({
        async: false,
        url: "http://localhost:8081/personal",
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
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

function ActualizarPersona(idPersona, nombre, apellido) {
    $.ajax({
        async: false,
        url: "http://localhost:8081/personas",
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

function ActualizarPersonal(idPersonal, idPersona, cargo, sede) {
    $.ajax({
        async: false,
        url: "http://localhost:8081/personal",
        type: 'PUT',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: JSON.stringify({
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

function añadirListener() {
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
        var response = consultarPersonas(idPersona.value);
        var response2 = consultarPersonal(idPersonal.value);
        console.log(response);
        if (response == undefined && response2 == undefined) {
            document.getElementById("nombreCrear").disabled = false;
            document.getElementById("apellidoCrear").disabled = false;
            document.getElementById("rolCrear").disabled = false;
            document.getElementById("sedeCrear").disabled = false;
        } else {
            document.getElementById("nombreCrear").disabled = true;
            document.getElementById("apellidoCrear").disabled = true;
            document.getElementById("rolCrear").disabled = true;
            document.getElementById("sedeCrear").disabled = true;
        }
    })

    var idactuzalizarbtn = document.getElementById("IDBotonActualizar");

    idactuzalizarbtn.addEventListener("click", function () {
        var idPersona = document.getElementById("IDpersonaActualizar");
        var idPersonal = document.getElementById("IDempleadoActualizar");
        var response = consultarPersonas(idPersona.value);
        var response2 = consultarPersonal(idPersonal.value);
        console.log(response, response2);
        if (response != undefined && response2 != undefined) {
            var nombre = document.getElementById("nombreActualizar");
            var apellido = document.getElementById("apellidoActualizar");
            var rol = document.getElementById("rolActualizar");
            var sede = document.getElementById("sedeActualizar");
            idPersona.disabled = true;
            idPersonal.disabled = true;
            nombre.disabled = false;
            apellido.disabled = false;
            rol.disabled = false;
            sede.disabled = false;

            var response = consultarPersonal(idPersonal.value);
            nombre.value = response.idpersona.nombres;
            apellido.value = response.idpersona.apellidos;
            rol.value = response.idcargo.idcargo;
            sede.value = response.idsede.idsede;


        } else {
            document.getElementById("nombreActualizar").disabled = true;
            document.getElementById("apellidoActualizar").disabled = true;
            document.getElementById("rolActualizar").disabled = true;
            document.getElementById("sedeActualizar").disabled = true;
        }
    })

    var btnEnviarCrear = document.getElementById("enviarCrear");

    btnEnviarCrear.addEventListener("click", function () {
        var idPersona = document.getElementById("IDpersona");
        var idPersonal = document.getElementById("IDempleado");
        var nombre = document.getElementById("nombreCrear");
        var apellido = document.getElementById("apellidoCrear");
        var rol = document.getElementById("rolCrear");
        var sede = document.getElementById("sedeCrear");
        IngresarPersonas(idPersona.value, nombre.value, apellido.value);
        IngresarPersonal(idPersonal.value, idPersona.value, rol.value, sede.value);


        if (rol.value == "0" || sede.value == "0") {
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        } else {
            //Aqui iria todo el codigo para crear empleado
        }
    }, false);

    var btnEnviarActualizar = document.getElementById("enviarActualizar");

    btnEnviarActualizar.addEventListener("click", function () {
        var idPersona = document.getElementById("IDpersonaActualizar");
        var idPersonal = document.getElementById("IDempleadoActualizar");
        var nombre = document.getElementById("nombreActualizar");
        var apellido = document.getElementById("apellidoActualizar");
        var rol = document.getElementById("rolActualizar");
        var sede = document.getElementById("sedeActualizar");
        ActualizarPersona(idPersona.value, nombre.value, apellido.value);
        ActualizarPersonal(idPersonal.value, idPersona.value, rol.value, sede.value);

        if (rol.value == "0" || sede.value == "0") {
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        } else {
            //Aqui iria todo el codigo para crear empleado
        }
    });
}

function init() {
    añadirListener();
    consultarSedes();
    consultarCargos();
    $("#crearContainer").hide();
    $("#actualizarContainer").hide();
    listarPersonal();
    $("#verContainer").show();
}

init();