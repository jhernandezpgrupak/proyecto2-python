#from django.forms import ModelForm
from django import forms
from .models import Task

#Crear clase de task
class TaskForm(forms.ModelForm):
    class Meta:
        #Modelo que se utilizara
        model = Task
        #Campos que se utilizaran
        fields = ['title','description','important']
        widgets = {
            'title': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Write a title'}),
            'description': forms.Textarea(attrs={'class':'form-control', 'placeholder':'Write a description'})
        }