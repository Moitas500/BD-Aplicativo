var mostrado = false;  

function añadirListener(){
    var btnCrear = document.getElementById("crearBoton");

    btnCrear.addEventListener("click", function(){
        if(!mostrado){
            $("#crearContainer").show(); 
            mostrado = true;
        }else{
            $("#actualizarContainer").hide();
            $("#borrarContainer").hide();
            $("#verContainer").hide();

            $("#crearContainer").show(); 
            mostrado = true;
        }
    });

    var btnEditar = document.getElementById("editarBoton");

    btnEditar.addEventListener("click", function(){
        if(!mostrado){
            $("#actualizarContainer").show(); 
            mostrado = true;
        }else{
            $("#crearContainer").hide();
            $("#borrarContainer").hide();
            $("#verContainer").hide();

            $("#actualizarContainer").show(); 
            mostrado = true;
        }
    });

    var btnBorrar = document.getElementById("borrarBoton");

    btnBorrar.addEventListener("click", function(){
        if(!mostrado){
            $("#borrarContainer").show(); 
            mostrado = true;
        }else{
            $("#actualizarContainer").hide();
            $("#crearContainer").hide();
            $("#verContainer").hide();

            $("#borrarContainer").show(); 
            mostrado = true;
        }
    });

    var btnVer = document.getElementById("verBoton");

    btnVer.addEventListener("click", function(){
        if(!mostrado){
            $("#verContainer").show();
            mostrado = true;
        }else{
            $("#borrarContainer").hide(); 
            $("#crearContainer").hide(); 
            $("#actualizarContainer").hide();

            $("#verContainer").show();
        }
    });

    var btnEnviarCrear = document.getElementById("enviarCrear");

    btnEnviarCrear.addEventListener("click", function(){
        var rol = document.getElementById("rolCrear");
        var sede = document.getElementById("sedeCrear");

        if(rol.value == "0" || sede.value == "0"){
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        }else{
            //Aqui iria todo el codigo para crear empleado
        }
    });

    var btnEnviarActualizar = document.getElementById("enviarActualizar");

    btnEnviarActualizar.addEventListener("click", function(){
        var rol = document.getElementById("rolActualizar");
        var sede = document.getElementById("sedeActualizar");

        if(rol.value == "0" || sede.value == "0"){
            alert("Seleccione un rol y sede para el empleado para poder continuar");
        }else{
            //Aqui iria todo el codigo para crear empleado
        }
    });
}

function init(){
    añadirListener();
    $("#crearContainer").hide();
    $("#actualizarContainer").hide();
    $("#borrarContainer").hide();
    $("#verContainer").hide();
}

init();