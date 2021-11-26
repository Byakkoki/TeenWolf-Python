'''
Si vous avez pip : C'est good
Sinon installer le :
sudo apt install python3-pip

Puis installer le module SQL
le module sql: 
pip install mysql-connector-python
'''
#Importer le module sql puis se connecter avec
import mysql.connector
connection = mysql.connector.connect(user='phpmyadmin', password='password', host='localhost', port='3306', database='TeenWolf')
cursor = connection.cursor()

#On cherche dans la TABLE Personnage tout les idPersonnage, nom à l'interieur
req = "SELECT idPersonnage, nom FROM Personnage"
cursor.execute(req)
personnes = cursor.fetchall()

#Class qui permet de mettre de la couleurs dans les print
class bcolors:
    replayfalse = '\033[92m' #GREEN + CHOIX PERSONNAGE
    replaytext = '\033[93m' #YELLOW
    reponsetext = '\033[91m' #RED
    colorViolet = '\033[95m' #TEST
    RESET = '\033[0m' #RESET COLOR


#Tableau pour donner les données à l'utilisateur
f = [
    "Nom",
    "Nom Acteur",
    "Description",
    "Age",
    "Race",
    "Chasseur",
    "Meute"
]

#Choisir le Rang/Id d'un personnage
def choice():
    for i in range(0, len(personnes)):
        print(str(i) + " " + personnes[i][1])

    reponse = int(input(bcolors.reponsetext + "Choisissez le rang de votre Personnages de TeenWolf (0 --> 20) : "))

#Récuperer le personnage que l'on a choisie
    print(bcolors.replayfalse + "Vous avez choisie : " + (str((reponse)) + " " + personnes[reponse][1]) +"")

#Récuperation de certaine data (uuid pour certain) pour le personnage : Nom/NomActeur/Age/Decription/Meute etc etc etc
    reqsearch = 'SELECT Personnage.nom, Nomacteur.nomacteur, Personnage.description, Personnage.age, Race.nom, Chasseur.chasseur, Meute.nom FROM Personnage JOIN Nomacteur ON Nomacteur.idNomacteur = Personnage.Nomacteur_idNomacteur JOIN Chasseur ON Chasseur.idChasseur = Personnage.Chasseur_idChasseur JOIN Meute ON Meute.idMeute = Personnage.Meute_idMeute JOIN Race ON Race.idRace = Personnage.Race_idRace WHERE Personnage.idPersonnage = "' + personnes[reponse][0] + '"'
    cursor.execute(reqsearch)
    search = cursor.fetchone()

#Donner les informations du personnage à l'utilisateur
    print(bcolors.colorViolet + "-----------------------------------------")

#Boucle sur le Tableau pour inserer les valeurs trouver graçe a MYSQL
    for p in range(0, len(search)):
        print(str(f[p]) + " : " + str(search[p]))

    print("-----------------------------------------")

#Print qui nous renvoie dans la fonction replay() pour demander à l'utilisateur si il veux continuer de naviguer ou quitter le programme
    print(replay())

#Fonction permettant de demander a l'utilisateur si il veut relancer la fonction choice()
def replay():
    choiceReplay = input(bcolors.replaytext + "Souhaitez vous passez à une autre personne de la saga ? (o/n) " + bcolors.RESET)
    if choiceReplay.lower() == 'o':
        print(choice())
    if choiceReplay.lower() == 'n':
        print(bcolors.replayfalse + "Merci d'avoir utiliser ce Programme !")

#Debut de l'executement du code
print("-----------------------------------------")        
print('Bienvenue à la BDD de TeenWolf !')
print("-----------------------------------------")

print(choice())

