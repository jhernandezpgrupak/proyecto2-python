from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Task(models.Model):
    title = models.CharField(max_length = 100)
    description = models.TextField(blank = True)
    created = models.DateTimeField(auto_now_add = True) 
    datecompleted = models.DateTimeField(null = True)
    important = models.BooleanField(default = False)
    user = models.ForeignKey(User, on_delete = models.CASCADE)
    
    #Mostrar el titulo de la tarea con el metodo siguiente
    def __str__(self):
        #Retornar lo que deseamos visualizar cuando se utilice el modelo como string
        #Acceder al campo username desde el modelo User (user)
        return self.title + ' by ' + self.user.username