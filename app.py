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

#Récuperer le personnage que l'on a choisie
    input("Vous avez choisie : " + ((reponse) + " " + personnes[reponse][0]) +"")

"""
Donner les informations à l'utilisateur par rapport au choix d'avant :
Nom, Nom acteur, Age, Description etc
"""



#Demander si il veut continuer de parcourir les données / Arreter le programme

"""
def replay():
    playAgain = input("Souhaitez vous continuer a lire la DATA ? (o/n) ")
    if playAgain.lower() == 'o':
        return True
    if playAgain.lower() == 'n':
        return False

    if replay() == False:
        print("Tu est pas gentil l'ami")
    else:
        print("Tu est une gentil personne l'ami")
"""

print(choice())