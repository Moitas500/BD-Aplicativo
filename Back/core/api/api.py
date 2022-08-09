from urllib import request
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from core.models import *
from core.api.serializers import *

@api_view(['GET', 'POST'])
def actividad_api_view(request):
    if request.method == 'GET':
        actividad = Actividad.objects.all()
        actividad_serializer = ActividadSerializer(actividad, many = True)
        return Response(actividad_serializer.data)
    
    elif request.method == 'POST':
        actividad_serializer = ActividadSerializer(data=request.data)
        if actividad_serializer.is_valid():
            actividad_serializer.save()
            return Response(actividad_serializer.data)
        return Response(actividad_serializer.errors)
    
@api_view(['GET'])
def actividad_detail_view(request, pk=None):
    if request.method == 'GET':
        actividad = Actividad.objects.filter(idactividad = pk).first()
        actividad_serializer = ActividadSerializer(actividad)
        return Response(actividad_serializer.data)
        
@api_view(['GET', 'POST'])
def asisMiembroEquipo_api_view(request):
    if request.method == 'GET':
        asismiembro = Asismiembroequipo.objects.all()
        asismiembro_serializer = AsismiembroequipoSerializer(asismiembro, many = True)
        return Response(asismiembro_serializer.data)
        
@api_view(['GET', 'POST'])
def asistenResponsable_api_view(request):
    if request.method == 'GET':
        asistenresponsable = Asistenresponsable.objects.all()
        asistenresponsable_serializer = AsistenresponsableSerializer(asistenresponsable, many = True)
        return Response(asistenresponsable_serializer.data)
        
@api_view(['GET', 'POST'])
def cargo_api_view(request):
    if request.method == 'GET':
        cargo = Deporte.objects.all()
        cargo_serializer = CargoSerializer(cargo, many = True)
        return Response(cargo_serializer.data)
        
@api_view(['GET', 'POST'])
def deporte_api_view(request):
    if request.method == 'GET':
        deporte = Deporte.objects.all()
        deporte_serializer = DeporteSerializer(deporte, many = True)
        return Response(deporte_serializer.data)
        
@api_view(['GET', 'POST'])
def deporteTipoElemento_api_view(request):
    if request.method == 'GET':
        deporteTipoelemento = Dia.objects.all()
        deporteTipoelemento_serializer = DiaSerializer(deporteTipoelemento, many = True)
        return Response(deporteTipoelemento_serializer.data)
        
@api_view(['GET', 'POST'])
def dia_api_view(request):
    if request.method == 'GET':
        dia = Dia.objects.all()
        dia_serializer = DiaSerializer(dia, many = True)
        return Response(dia_serializer.data)
    
@api_view(['GET'])
def dia_detail_view(request, pk=None):
    if request.method == 'GET':
        dia = Dia.objects.filter(iddia = pk).first()
        dia_serializer = DiaSerializer(dia)
        return Response(dia_serializer.data)
        
@api_view(['GET', 'POST'])
def elemenDeportivo_api_view(request):
    if request.method == 'GET':
        elemendeportivo = Elemendeportivo.objects.all()
        elemendeportivo_serializer = ElemendeportivoSerializer(elemendeportivo, many = True)
        return Response(elemendeportivo_serializer.data)
        
@api_view(['GET', 'POST'])
def elemento_api_view(request):
    if request.method == 'GET':
        elemento = Elemento.objects.all()
        elemento_serializer = EmpleadoSerializer(elemento, many = True)
        return Response(elemento_serializer.data)
        
@api_view(['GET', 'POST'])
def empleado_api_view(request):
    if request.method == 'GET':
        empleado = Empleado.objects.all()
        empleado_serializer = EmpleadoSerializer(empleado, many = True)
        return Response(empleado_serializer.data)
        
@api_view(['GET', 'POST'])
def empleadoCargo_api_view(request):
    if request.method == 'GET':
        empleadoCargo = EmpleadoCargo.objects.all()
        empleadoCargo_serializer = EmpleadoCargoSerializer(empleadoCargo, many = True)
        return Response(empleadoCargo_serializer.data)
    
@api_view(['GET'])
def empleadoCargo_detail_view(request, pk=None):
    if request.method == 'GET':
        empleadoCargo = EmpleadoCargo.objects.filter(codempleado = pk).order_by('fechacargo').first()
        empleadoCargo_serializer = EmpleadoCargoSerializer(empleadoCargo)
        return Response(empleadoCargo_serializer.data)
        
@api_view(['GET', 'POST'])
def equipo_api_view(request):
    if request.method == 'GET':
        equipo = Equipo.objects.all()
        equipo_serializer = EquipoSerializer(equipo, many = True)
        return Response(equipo_serializer.data)
        
@api_view(['GET'])
def equipo_detail_view(request, pk=None):
    if request.method == 'GET':
        equipo = Equipo.objects.filter(conseequipo = pk).first()
        equipo_serializer = EquipoSerializer(equipo)
        return Response(equipo_serializer.data)
    
@api_view(['GET', 'POST'])
def espacio_api_view(request):
    if request.method == 'GET':
        espacio = Espacio.objects.all()
        espacio_serializer = EspacioSerializer(espacio, many = True)
        return Response(espacio_serializer.data)
        
@api_view(['GET', 'POST'])
def espacioDeporte_api_view(request):
    if request.method == 'GET':
        espacioDeporte = EspacioDeporte.objects.all()
        espacioDeporte_serializer = EspacioDeporteSerializer(espacioDeporte, many = True)
        return Response(espacioDeporte_serializer.data)
    
@api_view(['GET'])
def espacioDeporte_detail_view(request, pk=None):
    if request.method == 'GET':
        espacioDeporte = EspacioDeporte.objects.filter(codespacio = pk).first()
        espacioDeporte_serializer = EspacioDeporteSerializer(espacioDeporte)
        return Response(espacioDeporte_serializer.data)
    
@api_view(['GET'])
def deporteEspacio_detail_view(request, pk=None):
    if request.method == 'GET':
        espacioDeporte = EspacioDeporte.objects.filter(iddeporte = pk)
        espacioDeporte_serializer = EspacioDeporteSerializer(espacioDeporte)
        return Response(espacioDeporte_serializer.data)
        
@api_view(['GET', 'POST'])
def estado_api_view(request):
    if request.method == 'GET':
        estado = Estado.objects.all()
        estado_serializer = EstadoSerializer(estado, many = True)
        return Response(estado_serializer.data)
        
@api_view(['GET', 'POST'])
def estudiante_api_view(request):
    if request.method == 'GET':
        estudiante = Estudiante.objects.all()
        estudiante_serializer = EstudianteSerializer(estudiante, many = True)
        return Response(estudiante_serializer.data)
    
@api_view(['GET'])
def estudiante_detail_view(request, pk=None):
    if request.method == 'GET':
        estudiante = Estudiante.objects.filter(codestudiante = pk).first()
        estudiante_serializer = EstudianteSerializer(estudiante)
        return Response(estudiante_serializer.data)
        
@api_view(['GET', 'POST']) 
def hora_api_view(request):
    if request.method == 'GET':
        hora = Hora.objects.all().order_by('idhora')
        hora_serializer = HoraSerializer(hora, many = True)
        return Response(hora_serializer.data)
        
@api_view(['GET', 'POST'])
def inscritoPracLibre_api_view(request):
    if request.method == 'GET':
        inscritopraclibre = Inscritopraclibre.objects.all()
        inscritopraclibre_serializer = InscritopraclibreSerializer(inscritopraclibre, many = True)
        return Response(inscritopraclibre_serializer.data)
        
@api_view(['GET', 'POST'])
def marca_api_view(request):
    if request.method == 'GET':
        marca = Marca.objects.all()
        marca_serializer = MarcaSerializer(marca, many = True)
        return Response(marca_serializer.data)
        
@api_view(['GET', 'POST'])
def miembroEquipo_api_view(request):
    if request.method == 'GET':
        miembroequipo = Miembroequipo.objects.all()
        miembroequipo_serializer = MiembroequipoSerializer(miembroequipo, many = True)
        return Response(miembroequipo_serializer.data)
    
@api_view(['GET'])
def miembroEquipo_detail_view(request, Estu=None,  Equi=None):
    if request.method == 'GET':
        estudiante = Estudiante.objects.get(codestudiante=Estu)
        equipo = Equipo.objects.get(conseequipo=Equi)

        miembroEquipo = Miembroequipo.objects.filter(codestudiante=estudiante, conseequipo=equipo)
        miembroEquipo_serializer = MiembroequipoSerializer(miembroEquipo, many = True)
        return Response(miembroEquipo_serializer.data)
    
@api_view(['GET', 'POST'])
def periodo_api_view(request):
    if request.method == 'GET':
        periodo = Periodo.objects.all()
        periodo_serializer = PeriodoSerializer(periodo, many = True)
        return Response(periodo_serializer.data)
        
@api_view(['GET', 'POST'])
def prestamo_api_view(request):
    if request.method == 'GET':
        prestamo = Prestamo.objects.all()
        prestamo_serializer = PrestamoSerializer(prestamo, many = True)
        return Response(prestamo_serializer.data)
        
@api_view(['GET', 'POST'])
def programacion_api_view(request):
    if request.method == 'GET':
        programacion = Programacion.objects.all()
        programacion_serializer = ProgramacionSerializer(programacion, many = True)
        return Response(programacion_serializer.data)
        
@api_view(['GET', 'POST'])
def responsable_api_view(request):
    if request.method == 'GET':
        responsable = Responsable.objects.all()
        responsable_serializer = ResponsableSerializer(responsable, many = True)
        return Response(responsable_serializer.data)
        
@api_view(['GET', 'POST'])
def rol_api_view(request):
    if request.method == 'GET':
        rol = Rol.objects.all()
        rol_serializer = RolSerializer(rol, many = True)
        return Response(rol_serializer.data)
        
@api_view(['GET', 'POST'])
def tipoElemento_api_view(request):
    if request.method == 'GET':
        tipoelemento = Tipoelemento.objects.all()
        tipoelemento_serializer = TipoelementoSerializer(tipoelemento, many = True)
        return Response(tipoelemento_serializer.data)
        
@api_view(['GET', 'POST'])
def tipoEspacio_api_view(request):
    if request.method == 'GET':
        tipoespacio = Tipoespacio.objects.all()
        tipoespacio_serializer = TipoespacioSerializer(tipoespacio, many = True)
        return Response(tipoespacio_serializer.data)