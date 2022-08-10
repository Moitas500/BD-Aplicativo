from django.urls import path
from core.api.api import *

urlpatterns = [
    path('actividad/', actividad_api_view, name = 'actividad_api'),
    path('actividad/<str:pk>', actividad_detail_view, name = 'actividad_api'),
    path('rol/', rol_api_view, name = 'rol_api'),
    path('cargo/', cargo_api_view, name = 'cargo_api'),
    path('deporte/', deporte_api_view, name = 'deporte_api'),
    path('deporteTipoElemento/', deporteTipoElemento_api_view, name = 'deporte_tipoelemento_api'),
    path('dia/', dia_api_view, name = 'dia_api'),
    path('dia/<str:pk>', dia_detail_view, name = 'dia_api'),
    path('elemento/', elemento_api_view, name = 'elemento_api'),
    path('empleado/', empleado_api_view, name = 'empleado_api'),
    path('empleado/<str:pk>', empleadoCargo_detail_view, name = 'empleado_api'),
    path('equipo/', equipo_api_view, name = 'equipo_api'),
    path('equipo/<int:pk>', equipo_detail_view, name = 'equipo_api'),
    path('tipoEspacio/', tipoEspacio_api_view, name = 'tipoEspacio_api'),
    path('espacio/', espacio_api_view, name = 'espacio_api'),
    path('empleadoCargo/', empleadoCargo_api_view, name = 'empleadoCargo_api'),
    path('espacioDeporte/', espacioDeporte_api_view, name = 'espacioDeporte_api'),
    path('espacioDeporte/<str:pk>', espacioDeporte_detail_view, name = 'espacioDeporte_api'),
    path('deporteEspacio/<str:pk>', deporteEspacio_detail_view, name = 'espacioDeporte_api'),
    path('estado/', estado_api_view, name = 'estado_api'),
    path('estudiante/', estudiante_api_view, name = 'Estudiante_api'),
    path('estudiante/<str:pk>', estudiante_detail_view, name = 'Estudiante_api'),
    path('hora/', hora_api_view, name = 'hora_api'),
    path('inscritoPraclibre/', inscritoPracLibre_api_view, name = 'inscritoPracLibre_api'),
    path('marca/', marca_api_view, name = 'marca_api'),
    path('miembroEquipo/', miembroEquipo_api_view, name = 'miembroEquipo_api'),
    path('miembroEquipo/<str:Estu>/<str:Equi>', miembroEquipo_detail_view, name = 'miembroEquipo_api'),
    path('periodo/', periodo_api_view, name = 'periodo_api'),
    path('programacion/', programacion_api_view, name = 'programacion_api'),
    path('programacion/<str:pk>', programacion_detail_view, name = 'programacion_api'),
    path('tipoElemento/', tipoElemento_api_view, name = 'tipoElemento_api'),
    path('responsable/', responsable_api_view, name = 'responsable_api'),
    path('responsableDoc/<str:pk>', responsableDoc_detail_view, name = 'responsable_api'),
    path('responsableEst/<str:pk>', responsableEst_detail_view, name = 'responsable_api'),
    path('asistenciaResponsable/', asistenResponsable_api_view, name = 'asisResponsable_api'),
    path('asistenciaMiembro/', asisMiembroEquipo_api_view, name = 'asisMiembro_api'),
    path('elemendeportivo/', elemenDeportivo_api_view, name = 'elemendeportivo_api'),
    path('prestamo/', prestamo_api_view, name = 'prestamo_api'),
]
