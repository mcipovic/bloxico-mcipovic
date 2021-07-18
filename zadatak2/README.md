#Docker i SQL zadatak 

Koristeci docker-compose, podignuti dva kontejnera sledecih karakteristika: 
- Prvi kontejner je PostgreSQL kontejner imenovan kao "project_db_server". Pored "postgres" user-a kome je postavljena sifra "project_pwd" dodati i korisnika "project_user", sa sifrom "project_pass" i sa privilegijama nad praznom bazom "project_db". Izloziti PostgreSQL port na internoj mrezi ta dva kontejnera na portu 5432. PostgreSQL perzistenciju baze obaviti preko volume-a. 

- Drugi kontejner je busybox kontejner imenovan kao "project_client" kome je dodat editor po licnom izboru (vi, nano, emacs...), git i psql klijent. Preko psql klijenta se moze konektovati na "project_db_server" kontejner. Ime i port servera zadati preko env varijabli. Po prvom pokretanju kontejnera dodati u bazu "project_db" tabelu "project_table" koja ima "id" polje tipa integer i "start_date" tipa datetime. Prilikom svakog (pa i na kraju prvog) pokretanja kontejnera, dodajti u tabelu "project_table" jedan red u kome se dodaje tekuci datum kao "start_date", prakticno ostavljajuci u tabeli niz zapisa sa datumima svih pokretanja kontejnera. 
Organizovati strukturu fajlova kako bi se kredencijali mogli cuvati na nekom kodnom repozitorijumu odvojeno od manifesta potrebnih za pokretanje kontejnera. 

Napisati po licnom izboru (shell, make...) skript(e) koje: 
- pokrecu sve. 
- ciste sve resurse od oba kontejnera (ukljucujuci i sve docker resurse) i ostavljaju sistem u stanju kao da kontejneri nisu bili nikad pokretani 

U slucaju nailaska na neku nejasnocu uvesti razumnu pretpostavku i nastaviti sa radom. 

#Rjesenje
Generisao sam oba kontejnera, naveli ste da treba da se koristi busybox ali sam ja koristio mali alpine kontejner gdje sam dodao psql klijent koji je trazen za unos podataka. Dodao sam i dvije skripte jedna koja sve pokrece a druga koja sve brise sa sistema.
