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

    document.getElementById("fecha-hora").innerHTML = '<b>Fecha actual:</b> ' + now;
    document.getElementById("nombreDirector").innerHTML = '<b>Empleado:</b> ' + nombre + " " +apellido;
    document.getElementById("sedeDirector").innerHTML = '<b>Sede:</b> ' + sede;

    console.log(empleados);
}

function init(){
    mostrarDatos();
}

init();