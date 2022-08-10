var mostrado = false;
var empleados;
var empleado;

function Programaciones() {
    var respuesta

    $.ajax({
        async: false,
        url: "http://127.0.0.1:8000/programacion/",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            respuesta = res
        },
    })

    return respuesta;
}

function ResponsableEmpleado(IDempleado) {
    var respuesta
    $.ajax({
        async: false,
        url: "http://127.0.0.1:8000/responsableDoc/" + IDempleado,
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            respuesta = res
        },
    })
    return respuesta;
}

$.ajax({
    async: false,
    url: "http://127.0.0.1:8000/empleadoCargo/",
    type: 'GET',
    dataType: 'json',
    success: function (res) {
        empleados = res
    },
})

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function mostrarDatos() {
    var codigo = getParameterByName('codigo');
    empleado = empleados[codigo - 1];

    var today = new Date();
    var now = today.toLocaleString();

    var nombre = empleado.codempleado.nomempleado;
    var apellido = empleado.codempleado.apelempleado;
    var sede = empleado.codespacio.nomespacio;

    document.getElementById("fecha-hora").innerHTML = '<b>Fecha actual:</b> ' + now;
    document.getElementById("nombreAuxiliar").innerHTML = '<b>Empleado:</b> ' + nombre + " " + apellido;
    document.getElementById("sedeAuxiliar").innerHTML = '<b>Sede:</b> ' + sede;
}

function añadirListener() {
    var btnAsistDocente = document.getElementById("asistDocenteBoton");
    btnAsistDocente.addEventListener("click", function () {
        if (!mostrado) {
            $("#docenteContainer").show();
            mostrado = true;
        } else {
            $("#miembroEquipoContainer").hide();
            $("#estudianteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#tablaDatosEquipo").hide();
            $("#docenteContainer").show();

            mostrado = true;
        }
    })

    var btnAsistPasante = document.getElementById("asistPasanteBoton");
    btnAsistPasante.addEventListener("click", function () {
        if (!mostrado) {
            $("#estudianteContainer").show();
            mostrado = true;
        } else {
            $("#miembroEquipoContainer").hide();
            $("#docenteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#tablaDatosEquipo").hide();
            $("#estudianteContainer").show();

            mostrado = true;
        }
    })

    var btnAsistEquipo = document.getElementById("asistEquipoBoton");
    btnAsistEquipo.addEventListener("click", function () {
        if (!mostrado) {
            $("#miembroEquipoContainer").show();
            mostrado = true;
        } else {
            $("#docenteContainer").hide();
            $("#estudianteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#tablaDatosEquipo").hide();
            $("#miembroEquipoContainer").show();

            mostrado = true;
        }
    })

    var btnEnviarDocente = document.getElementById("enviarDocente");
    btnEnviarDocente.addEventListener("click", function () {
        var nombreDocente = document.getElementById("nombreDocente");
        var apellidoDocente = document.getElementById("apellidoDocente");

        if (nombreDocente.value == "" || apellidoDocente.value == "") {
            alert("Verifique las casillas");
        } else {
            var i = 0;
            var encontro = false;
            while (i < empleados.length) {
                var empleado = empleados[i];

                if (nombreDocente.value.toLowerCase() == empleado.codempleado.nomempleado.toLowerCase() && apellidoDocente.value.toLowerCase() == empleado.codempleado.apelempleado.toLowerCase()) {
                    encontro = true;
                    if (empleado.idcargo.descargo == "Docente") {
                        asistenteDocente(empleado);
                        break
                    } else {
                        alert("El nombre y apellido digitado no corresponde a un docente");
                        break;
                    }
                }
                i++;
            }
            if (!encontro) {
                alert("El nombre y apellido digitado no corresponde a un empleado");
            }
        }
    })

    var btnEnviarPasante = document.getElementById("enviarEstudiante");
    btnEnviarPasante.addEventListener("click", function () {
        var codigoEstudiante = document.getElementById("nombreEstudiante");

        if (codigoEstudiante.value == "") {
            alert("Verifique las casillas");
        } else {
            var codigo = document.getElementById("nombreEstudiante");
            var estudiante;

            $.ajax({
                async: false,
                url: "http://127.0.0.1:8000/estudiante/" + codigo.value,
                type: 'GET',
                dataType: 'json',
                success: function (res) {
                    estudiante = res
                },
            })

            if (codigoEstudiante.value == estudiante.codestudiante) {
                asistenciaPasante(estudiante);
            } else {
                alert("El codigo digitado no pertenece a ningún estudiante");
            }
        }
    })

    var btnEnviarEquipo = document.getElementById("enviarEquipo");
    btnEnviarEquipo.addEventListener("click", function () {
        var codigoEstudiante = document.getElementById("codigoEstudiante");
        var codigoEquipo = document.getElementById("nombreEquipo");

        if (codigoEstudiante.value == "" || codigoEquipo.value == "") {
            alert("Verifique las casillas");
        } else {
            var miembroEquipo;
            var estudiante;
            var equipos;

            $.ajax({
                async: false,
                url: "http://127.0.0.1:8000/estudiante/" + codigoEstudiante.value,
                type: 'GET',
                dataType: 'json',
                success: function (res) {
                    estudiante = res
                },
            })

            $.ajax({
                async: false,
                url: "http://127.0.0.1:8000/equipo/",
                type: 'GET',
                dataType: 'json',
                success: function (res) {
                    equipos = res
                },
            })

            if (estudiante.codestudiante == "" || codigoEquipo > equipos.length) {
                alert("Los datos son invalidos");
            } else {
                var equipo = equipos[codigoEquipo.value];
                var miembroEquipo;

                $.ajax({
                    async: false,
                    url: "http://127.0.0.1:8000/miembroEquipo/" + estudiante.codestudiante + "/" + equipo.conseequipo,
                    type: 'GET',
                    dataType: 'json',
                    success: function (res) {
                        miembroEquipo = res
                    },
                })

                if (miembroEquipo.length == 0) {
                    alert("El estudiante no pertenece al equipo digitado");
                } else {
                    asistenciaMiembroEquipo(miembroEquipo);
                }
            }
        }
    })
}

function asistenciaMiembroEquipo(miembroEquipo) {
    var nombreEquipo = miembroEquipo[0].codestudiante.nomestudiante;
    var apellidoEquipo = miembroEquipo[0].codestudiante.apelestudiante;
    var sedeEquipo = miembroEquipo[0].codestudiante.codespacio.nomespacio;
    var today = new Date();
    var now = today.toLocaleString();
    var programacion;
    var hora = now.split(',');
    hora = hora[1].split(' ');
    hora = hora[1].split(':');
    var i = 0;

    document.getElementById("thNombreEquipo").textContent = nombreEquipo;
    document.getElementById("thApellidoEquipo").textContent = apellidoEquipo;
    document.getElementById("thSedeEquipo").textContent = sedeEquipo;
    document.getElementById("thFecha3").textContent = now;

    $.ajax({
        async: false,
        url: "http://127.0.0.1:8000/programacion/",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            programacion = res
        },
    })

    while (i < programacion.length) {
        var prog = programacion[i];

        if (prog.iddeporte.iddeporte == miembroEquipo[0].conseequipo.iddeporte.iddeporte) {
            var horaIni = prog.idhora_ini;
            var horaFin = prog.idhora_fin;
            horaIni = horaIni.split(':');
            horaFin = horaFin.split(':');

            if ((parseInt(horaIni[0]) - 1) == parseInt(hora[0])) {
                var diferencia = 60 - parseInt(hora[1]);

                if (diferencia <= 15) {
                    registrarAsistenciaMiembroEquipo(miembroEquipo, prog);
                } else {
                    alert("No se puede registrar la asistencia");
                }
            } else if (parseInt(horaIni[0]) == 9) {
                var diferencia = 60 - parseInt(hora[1]);

                if (diferencia >= 45) {
                    registrarAsistenciaMiembroEquipo(miembroEquipo, prog);
                } else {
                    alert("No se puede registrar la asistencia");
                }
            }

            break;
        }

        i++;
    }

    $("#tablaDatosEquipo").show();
}

function registrarAsistenciaMiembroEquipo(miembroEquipo, programacion) {
    $.ajax({
        async: false,
        url: "http://localhost:8000/asistenciaMiembro/",
        type: 'POST',
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
            "consecprogramacion": programacion.consecprogramacion,
            "conmiembroequipo": programacion.consecprogramacion + 1,
            "conseequipo": miembroEquipo[0].conseequipo.conseequipo,
            "itemmiembro": miembroEquipo[0].itemmiembro,
        }),
        success: function () {
            alert("Asistencia registrada con exito")
        },
    })
}

function registrarAsistenciaDocente(responable) {
    $.ajax({
        async: false,
        url: "http://localhost:8000/asistenciaResponsable/",
        type: 'POST',
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
            "consecprogramacion": responable.consecprogramacion.consecprogramacion,
            "concecres": responable.concecres,
            "consecasisres": responable.consecprogramacion.consecprogramacion,
        }),
        success: function () {
            alert("Asistencia registrada con exito")
        },
    })
}

function asistenteDocente(empleado) {
    var nombreDocente = empleado.codempleado.nomempleado;
    var apellidoDocente = empleado.codempleado.apelempleado;
    var sedeDocente = empleado.codespacio.nomespacio;
    var today = new Date();
    var now = today.toLocaleString();
    var hora = now.split(',');
    hora = hora[1].split(' ');
    hora = hora[1].split(':');
    var responsable;

    document.getElementById("thNombreDocente").textContent = nombreDocente;
    document.getElementById("thApellidoDocente").textContent = apellidoDocente;
    document.getElementById("thSedeDocente").textContent = sedeDocente;
    document.getElementById("thFecha").textContent = now;

    responsable = ResponsableEmpleado(empleado.codempleado.codempleado)
    bandera = false;
    responsable.forEach(res => {
        debugger
        console.log(res)
        var horaIni = res.consecprogramacion.idhora_ini;
        var horaFin = res.consecprogramacion.idhora_fin;
        horaIni = horaIni.split(':');
        horaFin = horaFin.split(':');

        // if ((parseInt(horaIni[0])) <= parseInt(hora[0]) && (parseInt(horaFin[0])) >= parseInt(hora[0])) {
        if ((parseInt(horaIni[0])) <= 11 && (parseInt(horaFin[0])) >= 11) {
            registrarAsistenciaDocente(res)
            bandera = true
            $("#tablaDatosDocente").show();
            // Comentariar
            
        }
    });

    if (!bandera) {
        alert("No se puede realizar el procedimiento");
    }
}

function asistenciaPasante(estudiante) {
    var nombre = estudiante.nomestudiante;
    var apellido = estudiante.apelestudiante;
    var sede = estudiante.codespacio.nomespacio;
    var today = new Date();
    var now = today.toLocaleString();
    var programacion;
    var hora = now.split(',');
    var responsable;
    hora = hora[1].split(' ');

    document.getElementById("thNombreEstudiante").textContent = nombre;
    document.getElementById("thApellidoEstudiante").textContent = apellido;
    document.getElementById("thSedeEstudiante").textContent = sede;
    document.getElementById("thFecha2").textContent = now;

    responsable = ResponsableEmpleado(empleado.codempleado.codempleado)

    $.ajax({
        async: false,
        url: "http://127.0.0.1:8000/programacion/",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            programacion = res
        },
    })

    responsable.forEach(res => {
        console.log(res)
        var horaIni = res.consecprogramacion.idhora_ini;
        var horaFin = res.consecprogramacion.idhora_fin;

        if ((parseInt(horaIni[0])) == parseInt(hora[0])) {
            var diferencia = 60 - parseInt(hora[1]);

            if (diferencia <= 15) {
                //Aqui devuelve todo
            } else {
                alert("No se puede realizar el procedimiento");
            }
        } else if (parseInt(horaIni[0]) == 9) {
            var diferencia = 60 - parseInt(hora[1]);

            if (diferencia >= 45) {
                //Aqui devuelve todo
            } else {
                alert("No se puede realizar el procedimiento");
            }
        }
    });

    $("#tablaDatosEstudiante").show();
}

function init() {
    añadirListener();
    mostrarDatos();
    $("#docenteContainer").hide();
    $("#estudianteContainer").hide();
    $("#miembroEquipoContainer").hide();
    $("#tablaDatosDocente").hide();
    $("#tablaDatosEstudiante").hide();
    $("#tablaDatosEquipo").hide();
}

init();