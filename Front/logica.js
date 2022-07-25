var mostrado = false;  

function consultarSedes(){
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(this.responseText));
        }
    };
    
    xhttp.open("GET", "http://localhost:8081/leerSedes", true);
    xhttp.setRequestHeader("Content-type", "application/json");
}

function consultarCargos(){
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(this.responseText));
        }
    };
    
    xhttp.open("GET", "http://localhost:8081/leerCargos", true);
    xhttp.setRequestHeader("Content-type", "application/json");
}
function consultarPersonas(personas){
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(this.responseText));
        }
    };
    
    xhttp.open("GET", "http://localhost:8081/personas/"+personas, true);
    xhttp.setRequestHeader("Content-type", "application/json");
    return xhttp.responseText;
   
}
function consultarPersonal(personal){
    
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(this.responseText));
        }
    };
    
    xhttp.open("GET", "http://localhost:8081/personal/"+personal, true);
    xhttp.setRequestHeader("Content-type", "application/json");
    return xhttp.responseText;
   
}
function IngresarPersonas(idPersona, nombre, apellido){
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(this.responseText));
        }
    };
    
    xhttp.open("POST", "http://localhost:8081/personas/", true);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send('{"idpersona": "'+idPersona+'", "nombres": "'+nombre+'", "apellidos": "'+apellido+'"}');
    return xhttp.responseText;
   
}

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
    var idbtn= document.getElementById("IDBoton");

    idbtn.addEventListener("click", function(){
        var idPersona= document.getElementById("IDpersona");
        var idPersonal= document.getElementById("IDempleado");
        var response= consultarPersonas(idPersona);
        var response2= consultarPersonal(idPersonal);
        console.log(response); 
        if(response=="" && response2==""){
            document.getElementById("nombreCrear").disabled = false;
            document.getElementById("apellidoCrear").disabled = false;
            document.getElementById("rolCrear").disabled = false;
            document.getElementById("sedeCrear").disabled = false;
        }  
    }
    )
    var btnEnviarCrear = document.getElementById("enviarCrear");

    btnEnviarCrear.addEventListener("click", function(){
        var idPersona=document.getElementById("IDpersona");
        var idPersonal=document.getElementById("IDempleado");
        var nombre = document.getElementById("nombreCrear");
        var apellido=  document.getElementById("apellidoCrear");
        var rol = document.getElementById("rolCrear");
        var sede = document.getElementById("sedeCrear");
        
        console.log(IngresarPersonas(idPersona, nombre, apellido));


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