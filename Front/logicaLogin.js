function añadirListener(){
    var btnLogin = document.getElementById("enviarLogin");
    btnLogin.addEventListener("click", function () {
        var inputCodigo = document.getElementById("codigo");
        if(inputCodigo.value == ""){
            alert("Por favor complete todos los campos");
        }else{
            //Validación del codigo del empleado
                //Diferenciar si es axuliar o director
            document.location.href = "vistaAuxiliar.html";
            //document.location.href = "vistaDirector.html";
        }
    })
}

function init(){
    añadirListener();
}

init();