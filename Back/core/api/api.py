from rest_framework.response import Response
from rest_framework.views import APIView
from core.models import *
from core.api.serializers import *

class ActividadAPIView(APIView):
    def get(self, request):
        actividad = Actividad.objects.all()
        actividad_serializer = ActividadSerializer(actividad, many = True)
        return Response(actividad_serializer.data)
        
class AsismiembroequipoAPIView(APIView):
    def get(self, request):
        asismiembro = Asismiembroequipo.objects.all()
        asismiembro_serializer = AsismiembroequipoSerializer(asismiembro, many = True)
        return Response(asismiembro_serializer.data)
        
class AsistenresponsableAPIView(APIView):
    def get(self, request):
        asistenresponsable = Asistenresponsable.objects.all()
        asistenresponsable_serializer = AsistenresponsableSerializer(asistenresponsable, many = True)
        return Response(asistenresponsable_serializer.data)
        
class CargoAPIView(APIView):
    def get(self, request):
        cargo = Deporte.objects.all()
        cargo_serializer = CargoSerializer(cargo, many = True)
        return Response(cargo_serializer.data)
        
class DeporteAPIView(APIView):
    def get(self, request):
        deporte = Deporte.objects.all()
        deporte_serializer = DeporteSerializer(deporte, many = True)
        return Response(deporte_serializer.data)
        
class DeporteTipoelementoAPIView(APIView):
    def get(self, request):
        deporteTipoelemento = Dia.objects.all()
        deporteTipoelemento_serializer = DiaSerializer(deporteTipoelemento, many = True)
        return Response(deporteTipoelemento_serializer.data)
        
class DiaAPIView(APIView):
    def get(self, request):
        dia = Dia.objects.all()
        dia_serializer = DiaSerializer(dia, many = True)
        return Response(dia_serializer.data)
        
class ElemendeportivoAPIView(APIView):
    def get(self, request):
        elemendeportivo = Elemendeportivo.objects.all()
        elemendeportivo_serializer = ElemendeportivoSerializer(elemendeportivo, many = True)
        return Response(elemendeportivo_serializer.data)
        
class ElementoAPIView(APIView):
    def get(self, request):
        elemento = Elemento.objects.all()
        elemento_serializer = EmpleadoSerializer(elemento, many = True)
        return Response(elemento_serializer.data)
        
class EmpleadoAPIView(APIView):
    def get(self, request):
        empleado = Empleado.objects.all()
        empleado_serializer = EmpleadoSerializer(empleado, many = True)
        return Response(empleado_serializer.data)
        
class EmpleadoCargoAPIView(APIView):
    def get(self, request):
        empleadoCargo = EmpleadoCargo.objects.all()
        empleadoCargo_serializer = EmpleadoCargoSerializer(empleadoCargo, many = True)
        return Response(empleadoCargo_serializer.data)
        
class EquipoAPIView(APIView):
    def get(self, request):
        equipo = Equipo.objects.all()
        equipo_serializer = EquipoSerializer(equipo, many = True)
        return Response(equipo_serializer.data)
        
class EspacioAPIView(APIView):
    def get(self, request):
        espacio = Espacio.objects.all()
        espacio_serializer = EspacioSerializer(espacio, many = True)
        return Response(espacio_serializer.data)
        
class EspacioDeporteAPIView(APIView):
    def get(self, request):
        espacioDeporte = EspacioDeporte.objects.all()
        espacioDeporte_serializer = EspacioDeporteSerializer(espacioDeporte, many = True)
        return Response(espacioDeporte_serializer.data)
        
class EstadoAPIView(APIView):
    def get(self, request):
        estado = Estado.objects.all()
        estado_serializer = EstadoSerializer(estado, many = True)
        return Response(estado_serializer.data)
        
class EstudianteAPIView(APIView):
    def get(self, request):
        estudiante = Estudiante.objects.all()
        estudiante_serializer = EstudianteSerializer(estudiante, many = True)
        return Response(estudiante_serializer.data)
        
class HoraAPIView(APIView):
    def get(self, request):
        hora = Hora.objects.all()
        hora_serializer = HoraSerializer(hora, many = True)
        return Response(hora_serializer.data)
        
class InscritopraclibreAPIView(APIView):
    def get(self, request):
        inscritopraclibre = Inscritopraclibre.objects.all()
        inscritopraclibre_serializer = InscritopraclibreSerializer(inscritopraclibre, many = True)
        return Response(inscritopraclibre_serializer.data)
        
class MarcaAPIView(APIView):
    def get(self, request):
        marca = Marca.objects.all()
        marca_serializer = MarcaSerializer(marca, many = True)
        return Response(marca_serializer.data)
        
class MiembroequipoAPIView(APIView):
    def get(self, request):
        miembroequipo = Miembroequipo.objects.all()
        miembroequipo_serializer = MiembroequipoSerializer(miembroequipo, many = True)
        return Response(miembroequipo_serializer.data)
        
class PeriodoAPIView(APIView):
    def get(self, request):
        periodo = Periodo.objects.all()
        periodo_serializer = PeriodoSerializer(periodo, many = True)
        return Response(periodo_serializer.data)
        
class PrestamoAPIView(APIView):
    def get(self, request):
        prestamo = Prestamo.objects.all()
        prestamo_serializer = PrestamoSerializer(prestamo, many = True)
        return Response(prestamo_serializer.data)
        
class ProgramacionAPIView(APIView):
    def get(self, request):
        programacion = Programacion.objects.all()
        programacion_serializer = ProgramacionSerializer(programacion, many = True)
        return Response(programacion_serializer.data)
        
class ResponsableAPIView(APIView):
    def get(self, request):
        responsable = Responsable.objects.all()
        responsable_serializer = ResponsableSerializer(responsable, many = True)
        return Response(responsable_serializer.data)
        
class RolAPIView(APIView):
    def get(self, request):
        rol = Rol.objects.all()
        rol_serializer = RolSerializer(rol, many = True)
        return Response(rol_serializer.data)
        
class TipoelementoAPIView(APIView):
    def get(self, request):
        tipoelemento = Tipoelemento.objects.all()
        tipoelemento_serializer = TipoelementoSerializer(tipoelemento, many = True)
        return Response(tipoelemento_serializer.data)
        
class TipoespacioAPIView(APIView):
    def get(self, request):
        tipoespacio = Tipoespacio.objects.all()
        tipoespacio_serializer = TipoespacioSerializer(tipoespacio, many = True)
        return Response(tipoespacio_serializer.data)