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
            //Todas las consultas
        }
    })

    var btnEnviarPasante = document.getElementById("enviarEstudiante");
    btnEnviarPasante.addEventListener("click", function () {
        var nombreEstudiante = document.getElementById("nombreEstudiante");

        if(nombreEstudiante.value == ""){
            alert("Verifique las casillas");
        }else{
            //Consultas
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

function init(){
    añadirListener();
    mostrarDatos();
    $("#docenteContainer").hide();
    $("#estudianteContainer").hide();
    $("#miembroEquipoContainer").hide();
}

init();