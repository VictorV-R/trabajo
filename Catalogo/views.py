from django.shortcuts import render

from django.http import HttpResponse
from django.template import Template, Context
from django.template.loader import get_template
from .models import Cosmetico,Usuario,Empresa
from .forms import UsuarioForm
from django.contrib import messages
 
import datetime

#Primera vista

def principal(request):
	fecha_actual = datetime.datetime.now()
	buscar = request.POST.get('textNombre',False)
	if buscar:
		nom = request.POST['textNombre']
		cosmeticos = Cosmetico.objects.filter(nombre__contains=nom)
	else:
		cosmeticos = Cosmetico.objects.all()
	form = UsuarioForm(request.POST or None)
	if form.is_valid():
		form.save()   	 
		messages.success(request, 'Usuario insertado correctamente.')
		form = UsuarioForm()
	else:
		if  request.POST:
			messages.error(request, 'Error al insertar usuario. Revise los datos.')
	return render(request, "index.html",{"fecha":fecha_actual,"cosmeticos":cosmeticos, 'form': form})

def detalle(request, codigo):
	cosmetico = Cosmetico.objects.get(codigo_cosmetico=codigo)
	return render(request, "detalle.html",{"cosmetico":cosmetico})
    
def consulta(request):
	empresas = Empresa.objects.raw("SELECT * FROM `empresa` WHERE 1;")
	return render(request, "empresas.html",{"empresas":empresas})
    

