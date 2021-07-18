# Linux zadatak 

Koristeci Posix standardne komande (referenca: https://shellhaters.org/) napisati shell skriptu koja pronalazi sve falove, pocevsi od zadatog direktorijuma pa prolazeci kroz sve poddirektorijume, kojima je naziv u formatu "project_resurs[n]_dev.yaml" (naprimer "project_resurs1_dev.yaml", "project_resurs203_dev.yaml" itsl.) i preimenovati sve takve fajlove u "project_resurs[n]_prod.yaml" (dakle za prethodni primer 
"project_resurs1_prod.yaml" i "project_resurs203_prod.yaml" respektivno). Prilikom rada u posebnoj liniji ispisati nazive svakog originalnog i preimenovanog fajla razdvojenog zarezom (naprimer: "project_resurs3_dev.yaml, project_resusrs3_prod.yaml" itsl.). Voditi racuna da imena mogu sadrzati razmak i lokalizovane znake. 

U slucaju nailaska na neku nejasnocu uvesti razumnu pretpostavku i nastaviti sa radom. 

# Rjesenje
Dodate su dvije skripte rename.sh i rename_revert.sh koja vraca fajlove na staro stanje.
Generisao sam random imena pomocu touch project_resurs{0..345}_dev.yaml komande i napravio dva podfoldera files2 i files3.
