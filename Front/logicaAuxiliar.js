var mostrado = false;
var empleados;
var empleado;

$.ajax({
    async: false,
    url: "http://127.0.0.1:8000/empleadoCargo/",
    type: 'GET',
    dataType: 'json',
    success: function (res) {
        empleados = res
    },
})

/**
 * @param String name
 * @return String
 */
 function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function mostrarDatos(){
    var codigo = getParameterByName('codigo');
    empleado = empleados[codigo-1];

    var today = new Date();
    var now = today.toLocaleString();

    var nombre = empleado.codempleado.nomempleado;
    var apellido = empleado.codempleado.apelempleado;
    var sede =  empleado.codespacio.nomespacio;

    document.getElementById("fecha-hora").textContent = now;
    document.getElementById("nombreAuxiliar").textContent = nombre + " " +apellido;
    document.getElementById("sedeAuxiliar").textContent = sede;

    console.log(empleados);
}

function añadirListener(){
    var btnAsistDocente = document.getElementById("asistDocenteBoton");
    btnAsistDocente.addEventListener("click", function () {
        if(!mostrado){
            $("#docenteContainer").show();
            mostrado = true;
        }else{
            $("#miembroEquipoContainer").hide();
            $("#estudianteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#docenteContainer").show();

            mostrado = true;
        }
    })

    var btnAsistPasante = document.getElementById("asistPasanteBoton");
    btnAsistPasante.addEventListener("click", function () {
        if(!mostrado){
            $("#estudianteContainer").show();
            mostrado = true;
        }else{
            $("#miembroEquipoContainer").hide();
            $("#docenteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#estudianteContainer").show();

            mostrado = true;
        }
    })

    var btnAsistEquipo = document.getElementById("asistEquipoBoton");
    btnAsistEquipo.addEventListener("click", function () {
        if(!mostrado){
            $("#miembroEquipoContainer").show();
            mostrado = true;
        }else{
            $("#docenteContainer").hide();
            $("#estudianteContainer").hide();
            $("#tablaDatosDocente").hide();
            $("#tablaDatosEstudiante").hide();
            $("#miembroEquipoContainer").show();

            mostrado = true;
        }
    })
    
    var btnEnviarDocente = document.getElementById("enviarDocente");
    btnEnviarDocente.addEventListener("click", function () {
        var nombreDocente = document.getElementById("nombreDocente");
        var apellidoDocente = document.getElementById("apellidoDocente");

        if(nombreDocente.value == "" || apellidoDocente.value == ""){
            alert("Verifique las casillas");
        }else{
            var i = 0;
            while(i < empleados.length){
                var empleado = empleados[i];

                if(nombreDocente.value == empleado.codempleado.nomempleado && apellidoDocente.value == empleado.codempleado.apelempleado){
                    if(empleado.idcargo.descargo == "Docente"){ 
                        asistenteDocente(empleado);
                    }else{
                        alert("El nombre y apellido digitado no corresponde a un docente");
                        break;
                    }
                }
                i++;
            }
        }
    })

    var btnEnviarPasante = document.getElementById("enviarEstudiante");
    btnEnviarPasante.addEventListener("click", function () {
        var codigoEstudiante = document.getElementById("nombreEstudiante");

        if(codigoEstudiante.value == ""){
            alert("Verifique las casillas");
        }else{
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

            if(codigoEstudiante.value == estudiante.codestudiante){
                asistenciaPasante(estudiante);
            }else{
                alert("El codigo digitado no pertenece a ningún estudiante");
            }   
        }
    })

    var btnEnviarEquipo = document.getElementById("enviarEquipo");
    btnEnviarEquipo.addEventListener("click", function () {
        var codigoEstudiante = document.getElementById("codigoEstudiante");
        var nombreEquipo = document.getElementById("nombreEquipo");

        if(codigoEstudiante.value == "" || nombreEquipo.value == ""){
            alert("Verifique las casillas");
        }else{
            //Consultas
        }
    })
}

function asistenteDocente(empleado){
    var nombreDocente  = empleado.codempleado.nomempleado;
    var apellidoDocente = empleado.codempleado.apelempleado;
    var sedeDocente = empleado.codespacio.nomespacio;
    var today = new Date();
    var now = today.toLocaleString();
    var programacion;

    document.getElementById("thNombreDocente").textContent = nombreDocente;
    document.getElementById("thApellidoDocente").textContent = apellidoDocente;
    document.getElementById("thSedeDocente").textContent = sedeDocente;
    document.getElementById("thFecha").textContent = now;

    $.ajax({
        async: false,
        url: "http://127.0.0.1:8000/programacion/",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            programacion = res
        },
    })

    console.log(programacion);

    $("#tablaDatosDocente").show();
}

function asistenciaPasante(estudiante){
    var nombre = estudiante.nomestudiante;
    var apellido = estudiante.apelestudiante;
    var sede = estudiante.codespacio.nomespacio;
    var today = new Date();
    var now = today.toLocaleString();

    document.getElementById("thNombreEstudiante").textContent = nombre;
    document.getElementById("thApellidoEstudiante").textContent = apellido;
    document.getElementById("thSedeEstudiante").textContent = sede;
    document.getElementById("thFecha2").textContent = now;

    $("#tablaDatosEstudiante").show();
}

function init(){
    añadirListener();
    mostrarDatos();
    $("#docenteContainer").hide();
    $("#estudianteContainer").hide();
    $("#miembroEquipoContainer").hide();
    $("#tablaDatosDocente").hide();
    $("#tablaDatosEstudiante").hide();
}

init();