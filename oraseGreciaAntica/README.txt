Problema se rezolva pe sablonul de rezolvare genetica al problemei celor N-Regine de la Nisioi boy.

Modificari:

1. In f_obiectiv trebuie modificat modul in care se calculeaza valoarea unui cromozom. In problema reginelor verificam daca doua regine concurente din cromozom sunt pe aceeasi diagonala. Aici trebuie sa verificam daca fiecare doi lorzi concurenti din cromozom au o relatie de conflict in matricea conflictuala sau nu. In cazul in care nu au conflict valoarea cromozomului creste.

2. In GA_oraseGrecia am initializat o matrice simetrica binara cu probabilitatea conflictuala intre doua orase de 50%. Asta ar putea fi hardcodata intr-un .txt, dar am vrut sa fie randomizata. Dupa initializare matricea este printata pentru o mai buna vizualizare a relatiilor intre orase.

3. Pentru ca aceasta matrice conflictuala este un element aditional sablonului initial necesar in f_obiectiv, va trebui sa 'caram' aceasta matrice in toate functiile ce apeleaza f_obiectiv ca parametru de intrare. Adica in gen_pop, crossover_pop si mutatie_pop.

4. Pentru ca modul de calcul al valorii cromozomului a fost schimbat, trebuie schimbata si afisarea rezultatelor. Am lasat comentate liniile vechi.