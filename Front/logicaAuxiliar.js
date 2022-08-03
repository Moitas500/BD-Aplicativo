var mostrado = false;

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
    $("#docenteContainer").hide();
    $("#estudianteContainer").hide();
    $("#miembroEquipoContainer").hide();
}

init();