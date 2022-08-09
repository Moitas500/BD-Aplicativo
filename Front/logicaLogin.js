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

function añadirListener(){
    var btnLogin = document.getElementById("enviarLogin");
    btnLogin.addEventListener("click", function () {
        var inputCodigo = document.getElementById("codigo");

        //Validación del codigo del empleado
        var encontrado = false;
        var i = 0;

        while(i < empleados.length){
            if(empleados[i].codempleado.codempleado == inputCodigo.value){
                encontrado = true;
                break;
            }else{
                i++;
            }
        }

        if(encontrado){
            var formulario = document.getElementById("loginForm");
            debugger
            //Diferenciar si es axuliar o director
            if(empleados[i].idcargo.descargo == "Director Deportivo"){
                empleado = empleados[i];
                formulario.setAttribute('action', 'vistaDirector.html');
            }else if(empleados[i].idcargo.descargo == "Auxiliar"){
                empleado = empleados[i];
                formulario.setAttribute('action', 'vistaAuxiliar.html');
            } else {
                alert("El usuario no tiene permisos para acceder a este modulo");
                formulario.setAttribute('action', 'login.html');
            }
        }
    })
}

function init(){
    añadirListener();
}

init();