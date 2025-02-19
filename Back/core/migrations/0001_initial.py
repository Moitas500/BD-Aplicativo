# Generated by Django 3.2 on 2022-08-04 03:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Actividad',
            fields=[
                ('idactividad', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('descactividad', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'actividad',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cargo',
            fields=[
                ('idcargo', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('descargo', models.CharField(max_length=25)),
            ],
            options={
                'db_table': 'cargo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Deporte',
            fields=[
                ('iddeporte', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('nomdeporte', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'deporte',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Dia',
            fields=[
                ('iddia', models.CharField(max_length=1, primary_key=True, serialize=False)),
                ('nomdia', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'dia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Elemendeportivo',
            fields=[
                ('consecelemento', models.IntegerField(primary_key=True, serialize=False)),
                ('fecharegistro', models.DateField()),
            ],
            options={
                'db_table': 'elemendeportivo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Elemento',
            fields=[
                ('consecelemento', models.IntegerField(primary_key=True, serialize=False)),
                ('idestado', models.CharField(max_length=2)),
                ('idtipoelemento', models.CharField(max_length=2)),
                ('idmarca', models.CharField(max_length=2)),
                ('codespacio', models.CharField(max_length=2)),
                ('fecharegistro', models.DateField()),
            ],
            options={
                'db_table': 'elemento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Empleado',
            fields=[
                ('codempleado', models.CharField(max_length=4, primary_key=True, serialize=False)),
                ('nomempleado', models.CharField(max_length=20)),
                ('apelempleado', models.CharField(max_length=20)),
                ('fecharegistro', models.DateField()),
                ('correoud', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'empleado',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='EmpleadoCargo',
            fields=[
                ('consec', models.IntegerField(primary_key=True, serialize=False)),
                ('fechacargo', models.DateField()),
                ('fechafinalcar', models.DateField(blank=True, null=True)),
            ],
            options={
                'db_table': 'empleado_cargo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Equipo',
            fields=[
                ('conseequipo', models.IntegerField(primary_key=True, serialize=False)),
                ('fecharesol', models.DateField()),
            ],
            options={
                'db_table': 'equipo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Espacio',
            fields=[
                ('codespacio', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('nomespacio', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'espacio',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Estado',
            fields=[
                ('idestado', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('descestado', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'estado',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Estudiante',
            fields=[
                ('codestudiante', models.CharField(max_length=12, primary_key=True, serialize=False)),
                ('nomestudiante', models.CharField(max_length=30)),
                ('apelestudiante', models.CharField(max_length=30)),
                ('fecharegestudiante', models.DateField()),
                ('correoudestudiante', models.CharField(max_length=30)),
                ('fechanacestudiante', models.DateField()),
            ],
            options={
                'db_table': 'estudiante',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Hora',
            fields=[
                ('idhora', models.CharField(max_length=5, primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'hora',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Marca',
            fields=[
                ('idmarca', models.CharField(max_length=3, primary_key=True, serialize=False)),
                ('nommarca', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'marca',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Periodo',
            fields=[
                ('idperiodo', models.CharField(max_length=5, primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'periodo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Prestamo',
            fields=[
                ('consecprestamo', models.IntegerField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'prestamo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Programacion',
            fields=[
                ('consecprogramacion', models.IntegerField(primary_key=True, serialize=False)),
                ('cupo', models.IntegerField()),
                ('inscritos', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'programacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Rol',
            fields=[
                ('idrol', models.CharField(max_length=1, primary_key=True, serialize=False)),
                ('descrol', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'rol',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tipoelemento',
            fields=[
                ('idtipoelemento', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('desctipoelemento', models.CharField(max_length=40)),
            ],
            options={
                'db_table': 'tipoelemento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tipoespacio',
            fields=[
                ('idtipoespacio', models.CharField(max_length=2, primary_key=True, serialize=False)),
                ('desctipoespacio', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'tipoespacio',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Asismiembroequipo',
            fields=[
                ('consecprogramacion', models.OneToOneField(db_column='consecprogramacion', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.programacion')),
                ('conmiembroequipo', models.IntegerField()),
            ],
            options={
                'db_table': 'asismiembroequipo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='deporte_tipoelemento',
            fields=[
                ('idtipoelemento', models.OneToOneField(db_column='idtipoelemento', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.tipoelemento')),
            ],
            options={
                'db_table': 'deporte_tipoelemento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='EspacioDeporte',
            fields=[
                ('iddeporte', models.OneToOneField(db_column='iddeporte', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.deporte')),
            ],
            options={
                'db_table': 'espacio___deporte',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Inscritopraclibre',
            fields=[
                ('consecprogramacion', models.OneToOneField(db_column='consecprogramacion', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.programacion')),
                ('consecpract', models.IntegerField()),
            ],
            options={
                'db_table': 'inscritopraclibre',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Miembroequipo',
            fields=[
                ('conseequipo', models.OneToOneField(db_column='conseequipo', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.equipo')),
                ('itemmiembro', models.IntegerField()),
            ],
            options={
                'db_table': 'miembroequipo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Responsable',
            fields=[
                ('consecprogramacion', models.OneToOneField(db_column='consecprogramacion', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='core.programacion')),
                ('concecres', models.IntegerField()),
                ('fechaini', models.DateField()),
                ('fechafin', models.DateField()),
            ],
            options={
                'db_table': 'responsable',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Asistenresponsable',
            fields=[
                ('consecprogramacion', models.OneToOneField(db_column='consecprogramacion', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, related_name='consecprogramacion_article_set', serialize=False, to='core.responsable')),
                ('consecasisres', models.IntegerField()),
                ('fechaasisres', models.DateField()),
                ('horaasisres', models.DateField()),
            ],
            options={
                'db_table': 'asistenresponsable',
                'managed': False,
            },
        ),
    ]
