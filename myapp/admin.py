from django.contrib import admin
from .models import Task #Importar desde la carpeta models con el .
# Register your models here.

#Se crea una clase para mostrar datos (solo visibles) para el modelo de tareas.
class TaskAdministrator(admin.ModelAdmin):
    readonly_fields = ("created",)#Es una coleccion por eso lleva coma

admin.site.register(Task, TaskAdministrator) 
#Registrar en el panel de administracion de django el nuevo modelo para poder organizarlo
#Pasar la clase para visualizar los campos (created)

