import mysql.connector

def returnConnection():
    mydbLocalhost = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="hermes_consultoria"
    )
    return mydbLocalhost;