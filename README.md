# Hospital Management System
Sistem de management al unui spital. Sistemul utilizeaza MySQL, Php si Bootstrap

## Preconditii
1. Intalarea XAMPP web server
2. Un editor de cod (eu am folosit VS Code)
3. Orice web browser 

## Limbaje si technologii folosite
1. HTML5/CSS3
2. Bootstrap (An HTML, CSS, and JS library)
3. XAMPP (web server de Apache Friends)
4. Php
5. MySQL (RDBMS ce utilizeaza SQL)

## Pasi pentru a rula proiectul pe masina locala
1. Downloadeaza si instaleaza XAMPP pe masina ta
2. Cloneaza folderul
3. Extrage toate fisierele si muta-le in folderul 'htdocs' fin folderul XAMPP.
4. Porneste Apache and Mysql din interfata de control XAMPP.
5. Deschide un browser si scrie 'localhost/phpmyadmin'
6. In pagina phpmyadmin, creaza o noua baza de date
7. Importa fisierul 'hms.sql' in baza de date pe care abia ce ai creat-o si click ok
8. Deschide un nou tab in browser si scrie'localhost/numeproiect'
9. Ai reusit!
    
### SOFTWARES UTILIZATE
  - XAMPP 
  - VS Code ca editor de text.
  - Google Chrome -> localhost/
  

### Pornire Apache si MySQL in XAMPP:
  Interfata de control XAMPP permite sa pornim si sa oprim manual serverul Apache si baza de date MySQL. In sectiunea "Manage servers".

  
  
## GETTING INTO THE PROJECT:
Proiectul are o pagina principala unde arata totul legat de activitatile unui spital


Pagina CONTACT permite altor useri sa trasnmita feedback sau cerinte in sistemul de gestiune a spitalului
‘Logare’ are 3 module:
1. Modulul Pacient-log/pass = savaalla@test.com/Test@123
2. Modulul Doctor-log/pass = savaolga@test.com/Test@123
3. Modulul Admin-log/pass = admin/admin12345

   ### Modulul Admin:
   
   &nbsp; &nbsp; &nbsp; Adminul poate vizualiza lista tuturor pacientilor, a tuturor doctorilor si programarilor, feedback primit de pe pagina de Contact. De asemenea, adminul poate adauga un doctor sau sterge un doctor.
  &nbsp; &nbsp; &nbsp; Credentiale cont admin:
  &nbsp; &nbsp; &nbsp; `username`: admin, `password`: admin12345

Moculul Admin permite efectuarea umatoarelor operatiuni:

**1. Vizualizare lista pacienti:**

  &nbsp; &nbsp; &nbsp; Adminul poate vizualiza lista tuturor pacientilor inregistrati. Informatiile sunt grupate dupa Nume, prenume, Email ID, Numar contact si parola. Admin poate cauta dupa pacient utilizand numarul de contact al acestuia.
  
**2. Vizualizare lista doctori inregistrati:**

  &nbsp; &nbsp; &nbsp; Adminul poate vizualiza lista tuturor doctorilor inregistrati. Informatiile sunt grupate dupa Nume, Parola, Email, Taxa consultatie. Admin poate cauta un doctor utilizand adresa de email al acestuia.

**3. Vizualizare lista programari:**

  &nbsp; &nbsp; &nbsp; Adminul poate vizualiza lista cu toate programarile. Informatiile sunt grupate dupa Nume, Prenume, Email, Numar contact, nume doctor, data programare, ora programare, taxa consultatie. 
  
**4. Adaugarea unui doctor:**

  &nbsp; &nbsp; &nbsp; Adminul poate adauga un doctor, deoarece doar el are acest privilegiu. Inregistrarea unui doctor are nevoie de urmatoarele date: Nume, Emai ID, Parola si taxa de consultatie.

**5. Vizualizare feedback useri:**

  &nbsp; &nbsp; &nbsp; Adminul poate vizualiza feedback-ul primit in urma serviciilor prestate de catre spital. Informatiile sunt grupate dupa Nume user, Email ID, Numar contact si mesaj.


### Modulul Pacient:

  &nbsp; &nbsp; &nbsp; Acest modul permite pacientilor sa isi creeze cont, sa se programeze pentru o consultatie si sa isi vizualizeze istoricul consultatiilor://neterminat

**1. Programare consulatie:**

  &nbsp; &nbsp; &nbsp; Programarea necesita selectarea unui doctor, unei specialitati, unei date din calendar si unei ore.

**2. Vizualizare istoric consultatii:**

  &nbsp; &nbsp; &nbsp; Poate vizualiza istoricul ce contine: Nume doctor, taxa consultatie, data si ora programare.

### Modulul Doctor:

  &nbsp; &nbsp; &nbsp; Doctorii se pot loga in conturile lor. Crearea unui cont de doctor se face numai de catre admin.


&nbsp; &nbsp; &nbsp; O data ce are creat un cont, doctorul se poate loga cu contul sau, poate vedea programarile si poate cauta dupa un pacient in istoricul programarilor sale,de asemenea poate si adauga un pacient nout


### 1. Anularea unei programari
	
   &nbsp; &nbsp; &nbsp; Pacientii si doctorii pot anula o programare
 
  Daca un pacient sterge o programare (pentru doctorul Valentin de ex), atunci informatia "anulata de catre tine" va fi afisata in coluana "Status curent". 
  
  
  Similar, docotrii pot anula o programare si pacienti vor vedea statusul programarii actualizat in "Anulata de catre doctor".
  
### 2. Stergerea unui doctor de catre Admin

&nbsp; &nbsp; &nbsp; Admin poate sterge un doctor din sistem.



