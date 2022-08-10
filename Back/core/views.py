from django.http import HttpResponse
from django.views.generic import View
from core.models import *
from core.util import render_to_pdf

class ListAsistenciaEquiposPdf(View):
    
    def get(self, request, *args, **kwargs):
        equipos = Asismiembroequipo.objects.all()
        data = {
            'miembros' : equipos
        }  
        pdf = render_to_pdf('home/miembros.html', data)
        return HttpResponse(pdf, content_type='application/pdf')
