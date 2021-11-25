'''
Si vous avez pip : c'est cool
sudo apt install python3-pip

le module sql: 
pip install mysql-connector-python
'''

import mysql.connector
connection = mysql.connector.connect(user='phpmyadmin', password='password', host='localhost', port='3306', database='TeenWolf')
cursor = connection.cursor()
req = "SELECT idPersonnage, nom FROM Personnage"
cursor.execute(req)
personnes = cursor.fetchall()

class bcolors:
    replayfalse = '\033[92m' #GREEN + CHOIX PERSONNAGE
    replaytext = '\033[93m' #YELLOW
    reponsetext = '\033[91m' #RED
    RESET = '\033[0m' #RESET COLOR

#Choisir le Rang/Id d'un personnage
def choice():
    for i in range(0, len(personnes)):
        print(str(i) + " " + personnes[i][1])

    reponse = int(input(bcolors.reponsetext + "Choisissez le rang de votre Personnages de TeenWolf (0 --> 13) : "))

#Récuperer le personnage que l'on a choisie
    print(bcolors.replayfalse + "Vous avez choisie : " + (str((reponse)) + " " + personnes[reponse][1]) +"")

#Récuperation de certaine data (uuid pour certain) pour le personnage : Nom/NomActeur/Age/Decription/Meute etc etc etc
    reqsearch = 'SELECT * FROM Personnage WHERE idPersonnage = "' + personnes[reponse][0] + '"'
    cursor.execute(reqsearch)
    search = cursor.fetchall()

#Donner les informations du personnage à l'utilisateur
    print(bcolors.replayfalse + "-----------------------------------------")
    print(bcolors.RESET + str((search)))


def replay():
    choiceReplay = input(bcolors.replaytext + "Souhaitez vous passez à une autre personne de la saga ? (o/n) " + bcolors.RESET)
    if choiceReplay.lower() == 'o':
        playerReplay = True
    if choiceReplay.lower() == 'n':
        playerReplay = False

if __name__ == "__main__":
    print('Bienvenue à la BDD de TeenWolf !')
    print(choice())
    print(replay())
    if replay == False:
        print(bcolors.replayfalse + "Merci d'avoir utiliser le programme !")
    else:
        player=choice()