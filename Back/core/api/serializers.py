from rest_framework import serializers
from core.models import *

class ActividadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Actividad
        fields = '__all__'
        
class RolSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rol
        fields = '__all__'
        
class CargoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cargo
        fields = '__all__'
        
class DeporteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Deporte
        fields = '__all__'
    

        
class DiaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dia
        fields = '__all__'
        
class ElementoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Elemento
        fields = '__all__'
        
class EmpleadoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Empleado
        fields = '__all__'
         
class EquipoSerializer(serializers.ModelSerializer):
    iddeporte = DeporteSerializer()
    codempleado = EmpleadoSerializer()
    class Meta:
        model = Equipo
        fields = '__all__'

class TipoespacioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipoespacio
        fields = '__all__'
        
class EspacioPadreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Espacio
        fields = '__all__'
   
class EspacioSerializer(serializers.ModelSerializer):
    esp_codespacio = EspacioPadreSerializer()
    idtipoespacio = TipoespacioSerializer()
    class Meta:
        model = Espacio
        fields = '__all__'
  
class EmpleadoCargoSerializer(serializers.ModelSerializer):
    idcargo = CargoSerializer()
    codempleado = EmpleadoSerializer()
    codespacio = EspacioSerializer()
    class Meta:
        model = EmpleadoCargo
        fields = '__all__'
      
class EspacioDeporteSerializer(serializers.ModelSerializer):
    iddeporte = DeporteSerializer()
    codespacio = EspacioSerializer()
    class Meta:
        model = EspacioDeporte
        fields = '__all__'
        
class EstadoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Estado
        fields = '__all__'
        
class EstudianteSerializer(serializers.ModelSerializer):
    codespacio = EspacioSerializer()
    class Meta:
        model = Estudiante
        fields = '__all__'
        
class HoraSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hora
        fields = '__all__'
        
class InscritopraclibreSerializer(serializers.ModelSerializer):
    codestudiante = EstudianteSerializer()
    codempleado = EmpleadoSerializer()
    class Meta:
        model = Inscritopraclibre
        fields = '__all__'
        
class MarcaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Marca
        fields = '__all__'
        
class MiembroequipoSerializer(serializers.ModelSerializer):
    codestudiante = EstudianteSerializer()
    conseequipo = EquipoSerializer()
    class Meta:
        model = Miembroequipo
        fields = '__all__'
        
class PeriodoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Periodo
        fields = '__all__'
        
class ProgramacionSerializer(serializers.ModelSerializer):
    idperiodo = PeriodoSerializer()
    idactividad = ActividadSerializer()
    iddeporte = DeporteSerializer()
    codespacio = EspacioSerializer()
    iddia = DiaSerializer()
    class Meta:
        model = Programacion
        fields = '__all__'
        
class TipoelementoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipoelemento
        fields = '__all__'

class Deporte_tipoelementoSerializer(serializers.ModelSerializer):
    idtipoelemento = TipoelementoSerializer()
    iddeporte = DeporteSerializer()
    class Meta:
        model = deporte_tipoelemento
        fields = '__all__'
        
class ResponsableSerializer(serializers.ModelSerializer):
    consecprogramacion = ProgramacionSerializer()
    idrol = RolSerializer()
    codempleado = EmpleadoSerializer()
    codestudiante = EstudianteSerializer()
    class Meta:
        model = Responsable
        fields = '__all__'

class AsistenresponsableSerializer(serializers.ModelSerializer):
    class Meta:
        model = Asistenresponsable
        fields = '__all__'

class AsismiembroequipoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Asismiembroequipo
        fields = '__all__'
        
class ElemendeportivoSerializer(serializers.ModelSerializer):
    idestado = EstadoSerializer()
    idtipoelemento = TipoelementoSerializer()
    idmarca = MarcaSerializer()
    codespacio = EspacioSerializer()
    class Meta:
        model = Elemendeportivo
        fields = '__all__'

class ElemendeportivoSerializerSinRef(serializers.ModelSerializer):
    class Meta:
        model = Elemendeportivo
        fields = '__all__'
        
class PrestamoSerializer(serializers.ModelSerializer):
    consecelemento = ElemendeportivoSerializer()
    consecprogramacion = ProgramacionSerializer()
    concecres = AsistenresponsableSerializer()
    consecasisres = AsistenresponsableSerializer()
    class Meta:
        model = Prestamo
        fields = '__all__'

class PrestamoSerializerSinRef(serializers.ModelSerializer):
    class Meta:
        model = Prestamo
        fields = '__all__'