"""hermesConsultoria5 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('index/', views.index),
    path('login/', views.login),
    path('loginEntrar/', views.loginEntrar),
    path('', views.entrar),
    path('entrar/', views.entrar),
    path('cadastroCliente/', views.cadastroCliente),
    path('listCliente/', views.listCliente),
    path('insertCliente/', views.insertCliente),
    path('cadastroUser/', views.cadastroUser),
    path('insertUser/', views.insertUser),
    path('listUser/', views.listUser),
    path('cadastroCountry/', views.cadastroCountry),
    path('insertCountry/', views.insertCountry),
    path('listCountry/', views.listCountry),
    path('cadastroCity/', views.cadastroCity),
    path('insertCity/', views.insertCity),
    path('listCity/', views.listCity),
    path('cadastroTotal/', views.cadastroTotal),
    path('insertTotal/', views.insertTotal),
    path('listTotal/', views.listTotal),
]
