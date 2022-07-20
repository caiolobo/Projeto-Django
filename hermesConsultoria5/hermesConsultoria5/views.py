import mysql.connector
from django.http import HttpResponse
from django.shortcuts import render

from .connection.connection import returnConnection

def entrar(request):
    return render(request, 'entrar.html')

def login(request):

    return render(request, 'login.html')

def loginEntrar(request):

    emailDigitado = request.POST['email']
    senhaDigitada = request.POST['senha']

    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT * FROM usuario")
    resultadoUser = cursor.fetchall()

    encontrado = False
    for item in resultadoUser:
        if emailDigitado == item[2] and senhaDigitada == item[3]:
            encontrado = True
    if (encontrado == False):
        context = {}
        context['loginInvalido'] = True
        return render(request, 'login.html', context)
    return render(request, 'index.html')

def index(request):
    return render(request, 'index.html')

def cadastroCliente(request):
    return render(request, 'cadastroCliente.html')

def insertCliente(request):
    nome_cliente = request.POST['nome']
    cpf_cliente = request.POST['cpf']
    ano_nascimento = request.POST['anoNascimento']

    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()

    cursor.execute("INSERT INTO cliente (nome_cliente, cpf_cliente, ano_nascimento) VALUES('"+ nome_cliente +"','" + cpf_cliente +"','"+ ano_nascimento + "');")
    mydbLocalhost.commit()

    return listCliente(request)

def listCliente(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT nome_cliente, cpf_cliente, ano_nascimento FROM cliente")
    resultado = cursor.fetchall()
    content = {}
    content['resultado'] = resultado

    return render(request, 'listCliente.html', content)

def cadastroUser(request):
    return render(request, 'cadastroUser.html')

def insertUser(request):
    nome_usuario = request.POST['nome_usuario']
    email = request.POST['email']
    senha = request.POST['senha']

    mydbLocalhost = returnConnection()
    cursor = mydbLocalhost.cursor()
    cursor.execute("INSERT INTO usuario (nome_usuario, email, senha) VALUES('"+ nome_usuario +"','" + email +"', '"+ senha +"');")
    mydbLocalhost.commit()
    return listUser(request)

def listUser(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT nome_usuario,email FROM usuario")
    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado
    return render(request, 'listUser.html', content)

def cadastroCountry(request):
    return render(request, 'cadastroCountry.html')

def insertCountry(request):
    nome_country = request.POST['nome_country']

    mydbLocalhost = returnConnection()
    cursor = mydbLocalhost.cursor()
    cursor.execute("INSERT INTO country (nome_country) VALUES('" + nome_country + "');")
    mydbLocalhost.commit()

    return listCountry(request)

def listCountry(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT nome_country FROM country ORDER BY nome_country ASC")
    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado
    return render(request, 'listCountry.html', content)

def cadastroCity(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT id_country, nome_country FROM country")
    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado

    return render(request, 'cadastroCity.html', content)

def insertCity(request):
    nome_city = request.POST['nome_city']
    country = request.POST['country']

    mydbLocalhost = returnConnection()
    cursor = mydbLocalhost.cursor()

    cursor.execute("INSERT INTO city (nome_city, country) VALUES('" + nome_city + "', '"+ country + "');")

    mydbLocalhost.commit()
    return listCity(request)

def listCity(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT * FROM city")

    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado

    return render(request, 'listCity.html', content)

def cadastroTotal(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT id_usuario, nome_usuario FROM usuario")
    resultado_usuario = cursor.fetchall()

    content = {}
    content['resultado_usuario'] = resultado_usuario

    cursor.execute("SELECT id_cliente, nome_cliente FROM cliente")
    resultado_cliente = cursor.fetchall()

    content['resultado_cliente'] = resultado_cliente

    cursor.execute("SELECT id_country, nome_country FROM country")
    resultado_country = cursor.fetchall()

    content['resultado_country'] = resultado_country

    cursor.execute("SELECT id_city, nome_city FROM city")
    resultado_city = cursor.fetchall()

    content['resultado_city'] = resultado_city

    return render(request, 'cadastroTotal.html', content)

def insertTotal(request):

    id_usuario = request.POST['usuario']
    id_cliente = request.POST['cliente']
    id_country = request.POST['country']
    id_city = request.POST['city']

    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("INSERT INTO total (id_usuario, id_cliente, id_country, id_city) VALUES('"+ id_usuario +"','"+ id_cliente +"','"+ id_country +"','"+ id_city +"')")
    mydbLocalhost.commit()

    return listTotal(request)

def listTotal(request):
    mydbLocalhost = returnConnection()

    cursor = mydbLocalhost.cursor()
    cursor.execute("SELECT Usuário, Cliente, País, Cidade FROM vw_total;")
    total = cursor.fetchall()
    content = {}
    content['total'] = total

    return render(request, 'listTotal.html', content)






