# TeenWolf-Python
BDD of Teen Wolf which is linked with Python to do research on the characters of the saga

# Want To Use This Programm ?

Put the TeenWolf.sql in your PHPMyAdmin and then change the connexion MySQL :

(user='phpmyadmin', password='password', host='localhost', port='3306', database='TeenWolf')

Once this is done you will only have to run the program and retrieve the data of the characters of the saga

HAVE FUN :)


SELECT Personnage.nom, Nomacteur.nomacteur, Personnage.description, Personnage.age, Race.nom, Chasseur.chasseur, Meute.nom FROM Personnage
JOIN Nomacteur
ON Nomacteur.idNomacteur = Personnage.Nomacteur_idNomacteur
JOIN Chasseur
ON Chasseur.idChasseur = Personnage.Chasseur_idChasseur
JOIN Meute
ON Meute.idMeute = Personnage.Meute_idMeute
JOIN Race
ON Race.idRace = Personnage.Race_idRace
WHERE Personnage.idPersonnage = ""