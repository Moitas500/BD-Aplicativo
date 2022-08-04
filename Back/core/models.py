# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Actividad(models.Model):
    idactividad = models.CharField(primary_key=True, max_length=2)
    descactividad = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'actividad'


class Asismiembroequipo(models.Model):
    consecprogramacion = models.OneToOneField('Programacion', models.DO_NOTHING, db_column='consecprogramacion', primary_key=True)
    conmiembroequipo = models.IntegerField()
    conseequipo = models.ForeignKey('Miembroequipo', models.DO_NOTHING, db_column='conseequipo', related_name='conseequipo_article_set')
    itemmiembro = models.ForeignKey('Miembroequipo', models.DO_NOTHING, db_column='itemmiembro', related_name='itemmiembro_article_set')

    class Meta:
        managed = False
        db_table = 'asismiembroequipo'
        unique_together = (('consecprogramacion', 'conmiembroequipo'),)


class Asistenresponsable(models.Model):
    consecprogramacion = models.OneToOneField('Responsable', models.DO_NOTHING, db_column='consecprogramacion', primary_key=True, related_name='consecprogramacion_article_set')
    concecres = models.ForeignKey('Responsable', models.DO_NOTHING, db_column='concecres', related_name='concecres_article_set')
    consecasisres = models.IntegerField()
    fechaasisres = models.DateField()
    horaasisres = models.DateField()

    class Meta:
        managed = False
        db_table = 'asistenresponsable'
        unique_together = (('consecprogramacion', 'concecres', 'consecasisres'),)


class Cargo(models.Model):
    idcargo = models.CharField(primary_key=True, max_length=2)
    descargo = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'cargo'


class Deporte(models.Model):
    iddeporte = models.CharField(primary_key=True, max_length=2)
    nomdeporte = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'deporte'


class deporte_tipoelemento(models.Model):
    idtipoelemento = models.OneToOneField('Tipoelemento', models.DO_NOTHING, db_column='idtipoelemento', primary_key=True)
    iddeporte = models.ForeignKey(Deporte, models.DO_NOTHING, db_column='iddeporte')

    class Meta:
        managed = False
        db_table = 'deporte_tipoelemento'
        unique_together = (('idtipoelemento', 'iddeporte'),)


class Dia(models.Model):
    iddia = models.CharField(primary_key=True, max_length=1)
    nomdia = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'dia'


class Elemendeportivo(models.Model):
    consecelemento = models.IntegerField(primary_key=True)
    idestado = models.ForeignKey('Estado', models.DO_NOTHING, db_column='idestado')
    idtipoelemento = models.ForeignKey('Tipoelemento', models.DO_NOTHING, db_column='idtipoelemento')
    idmarca = models.ForeignKey('Marca', models.DO_NOTHING, db_column='idmarca')
    codespacio = models.ForeignKey('Espacio', models.DO_NOTHING, db_column='codespacio')
    fecharegistro = models.DateField()

    class Meta:
        managed = False
        db_table = 'elemendeportivo'


class Elemento(models.Model):
    consecelemento = models.IntegerField(primary_key=True)
    idestado = models.CharField(max_length=2)
    idtipoelemento = models.CharField(max_length=2)
    idmarca = models.CharField(max_length=2)
    codespacio = models.CharField(max_length=2)
    fecharegistro = models.DateField()

    class Meta:
        managed = False
        db_table = 'elemento'


class Empleado(models.Model):
    codempleado = models.CharField(primary_key=True, max_length=4)
    nomempleado = models.CharField(max_length=20)
    apelempleado = models.CharField(max_length=20)
    fecharegistro = models.DateField()
    correoud = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'empleado'


class EmpleadoCargo(models.Model):
    consec = models.IntegerField(primary_key=True)
    idcargo = models.ForeignKey(Cargo, models.DO_NOTHING, db_column='idcargo')
    codempleado = models.ForeignKey(Empleado, models.DO_NOTHING, db_column='codempleado')
    codespacio = models.ForeignKey('Espacio', models.DO_NOTHING, db_column='codespacio')
    fechacargo = models.DateField()
    fechafinalcar = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'empleado_cargo'


class Equipo(models.Model):
    conseequipo = models.IntegerField(primary_key=True)
    iddeporte = models.ForeignKey(Deporte, models.DO_NOTHING, db_column='iddeporte')
    codempleado = models.ForeignKey(Empleado, models.DO_NOTHING, db_column='codempleado')
    fecharesol = models.DateField()

    class Meta:
        managed = False
        db_table = 'equipo'


class Espacio(models.Model):
    codespacio = models.CharField(primary_key=True, max_length=2)
    esp_codespacio = models.ForeignKey('self', models.DO_NOTHING, db_column='esp_codespacio', blank=True, null=True)
    idtipoespacio = models.ForeignKey('Tipoespacio', models.DO_NOTHING, db_column='idtipoespacio')
    nomespacio = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'espacio'


class EspacioDeporte(models.Model):
    iddeporte = models.OneToOneField(Deporte, models.DO_NOTHING, db_column='iddeporte', primary_key=True)
    codespacio = models.ForeignKey(Espacio, models.DO_NOTHING, db_column='codespacio')

    class Meta:
        managed = False
        db_table = 'espacio___deporte'
        unique_together = (('iddeporte', 'codespacio'),)


class Estado(models.Model):
    idestado = models.CharField(primary_key=True, max_length=2)
    descestado = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'estado'


class Estudiante(models.Model):
    codestudiante = models.CharField(primary_key=True, max_length=12)
    codespacio = models.ForeignKey(Espacio, models.DO_NOTHING, db_column='codespacio')
    nomestudiante = models.CharField(max_length=30)
    apelestudiante = models.CharField(max_length=30)
    fecharegestudiante = models.DateField()
    correoudestudiante = models.CharField(max_length=30)
    fechanacestudiante = models.DateField()

    class Meta:
        managed = False
        db_table = 'estudiante'


class Hora(models.Model):
    idhora = models.CharField(primary_key=True, max_length=5)

    class Meta:
        managed = False
        db_table = 'hora'


class Inscritopraclibre(models.Model):
    consecprogramacion = models.OneToOneField('Programacion', models.DO_NOTHING, db_column='consecprogramacion', primary_key=True)
    consecpract = models.IntegerField()
    codestudiante = models.ForeignKey(Estudiante, models.DO_NOTHING, db_column='codestudiante', blank=True, null=True)
    codempleado = models.ForeignKey(Empleado, models.DO_NOTHING, db_column='codempleado', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'inscritopraclibre'
        unique_together = (('consecprogramacion', 'consecpract'),)


class Marca(models.Model):
    idmarca = models.CharField(primary_key=True, max_length=3)
    nommarca = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'marca'


class Miembroequipo(models.Model):
    conseequipo = models.OneToOneField(Equipo, models.DO_NOTHING, db_column='conseequipo', primary_key=True)
    itemmiembro = models.IntegerField()
    codestudiante = models.ForeignKey(Estudiante, models.DO_NOTHING, db_column='codestudiante')

    class Meta:
        managed = False
        db_table = 'miembroequipo'
        unique_together = (('conseequipo', 'itemmiembro'),)


class Periodo(models.Model):
    idperiodo = models.CharField(primary_key=True, max_length=5)

    class Meta:
        managed = False
        db_table = 'periodo'


class Prestamo(models.Model):
    consecprestamo = models.IntegerField(primary_key=True)
    consecelemento = models.ForeignKey(Elemendeportivo, models.DO_NOTHING, db_column='consecelemento', related_name='consecelemento_article_set')
    consecprogramacion = models.ForeignKey(Asistenresponsable, models.DO_NOTHING, db_column='consecprogramacion', related_name='consecprogramacion_article_set')
    concecres = models.ForeignKey(Asistenresponsable, models.DO_NOTHING, db_column='concecres', related_name='concecres_article_set')
    consecasisres = models.ForeignKey(Asistenresponsable, models.DO_NOTHING, db_column='consecasisres', related_name='consecasisres_article_set')

    class Meta:
        managed = False
        db_table = 'prestamo'


class Programacion(models.Model):
    consecprogramacion = models.IntegerField(primary_key=True)
    idperiodo = models.ForeignKey(Periodo, models.DO_NOTHING, db_column='idperiodo', related_name='idperiodo_article_set')
    idactividad = models.ForeignKey(Actividad, models.DO_NOTHING, db_column='idactividad', related_name='idactividad_article_set')
    iddeporte = models.ForeignKey(Deporte, models.DO_NOTHING, db_column='iddeporte', related_name='iddeporte_article_set')
    codespacio = models.ForeignKey(Espacio, models.DO_NOTHING, db_column='codespacio', related_name='codespacio_article_set')
    iddia = models.ForeignKey(Dia, models.DO_NOTHING, db_column='iddia', related_name='iddia_article_set')
    idhora_fin = models.ForeignKey(Hora, models.DO_NOTHING, db_column='idhora_fin', related_name='idhora_fin_article_set')
    idhora_ini = models.ForeignKey(Hora, models.DO_NOTHING, db_column='idhora_ini', related_name='idhora_ini_article_set')
    cupo = models.IntegerField()
    inscritos = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'programacion'


class Responsable(models.Model):
    consecprogramacion = models.OneToOneField(Programacion, models.DO_NOTHING, db_column='consecprogramacion', primary_key=True)
    concecres = models.IntegerField()
    idrol = models.ForeignKey('Rol', models.DO_NOTHING, db_column='idrol', blank=True, null=True)
    codempleado = models.ForeignKey(Empleado, models.DO_NOTHING, db_column='codempleado')
    codestudiante = models.ForeignKey(Estudiante, models.DO_NOTHING, db_column='codestudiante', blank=True, null=True)
    fechaini = models.DateField()
    fechafin = models.DateField()

    class Meta:
        managed = False
        db_table = 'responsable'
        unique_together = (('consecprogramacion', 'concecres'),)


class Rol(models.Model):
    idrol = models.CharField(primary_key=True, max_length=1)
    descrol = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'rol'


class Tipoelemento(models.Model):
    idtipoelemento = models.CharField(primary_key=True, max_length=2)
    desctipoelemento = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'tipoelemento'


class Tipoespacio(models.Model):
    idtipoespacio = models.CharField(primary_key=True, max_length=2)
    desctipoespacio = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'tipoespacio'
