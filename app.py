'''
Si vous avez pip : c'est cool
sudo apt install python3-pip

le module sql: 
pip install mysql-connector-python
'''

import mysql.connector
connection = mysql.connector.connect(user='phpmyadmin', password='password', host='localhost', port='3306', database='TeenWolf')
cursor = connection.cursor()
req = "SELECT nom FROM Personnage"
cursor.execute(req)
personnes = cursor.fetchall()


#Choisir le Rang/Id d'un personnage
def choice():
    for i in range(0, len(personnes)):
        print(str(i) + " " + personnes[i][0])

    reponse = input("Choisissez le rang de votre Personnages de TeenWolf : ")

    input("Vous avez choisie : " + (str(reponse) + " " + personnes[reponse][0]) +"")


print(choice())