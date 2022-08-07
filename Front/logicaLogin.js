const API = "http://127.0.0.1:8000/empleado/";
var empleados;

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

        if(inputCodigo.value == ""){
            alert("Por favor complete todos los campos");
        }else{
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
                //Diferenciar si es axuliar o director
                if(empleados[i].idcargo.descargo == "Director Deportivo"){
                    document.location.href = "vistaDirector.html";
                }else{
                    document.location.href = "vistaAuxiliar.html";
                }
            }else{
                alert("El codigo digitado no existe para ningún empleado");
            }
        }
    })
}

function init(){
    añadirListener();
}

init();