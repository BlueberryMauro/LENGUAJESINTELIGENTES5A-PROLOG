%===============================================
% HECHOS.
% ==============================================

tiene_pelo(perro).
tiene_pelo(gato).

amamanta(perro).
amamanta(gato).

tiene_plumas(aguila).
pone_huevos(aguila).

tiene_escamas(serpiente).
pone_huevos(serpiente).

% -----------------------------------------
% REGLAS
% -----------------------------------------

% Si tiene pelo y amamanta,
% entonces es mamifero.

mamifero(Animal) :-
    tiene_pelo(Animal),
    amamanta(Animal).

% Si tiene plumas y pone huevos,
% entonces es ave

ave(Animal) :-
    tiene_plumas(Animal),
    pone_huevos(Animal).

% Si tiene escamas y pone huevos,
% entonces es reptril

reptil(Animal) :-
    tiene_escamas(Animal),
    pone_huevos(Animal).

% Si es mamifero,
% entonces tiene sangre caliente.

sangre_caliente(Animal) :-
    mamifero(Animal).

% Si es mamifero y tiene pelo,
% entonces es domestico.

domestico(Animal) :-
    mamifero(Animal),
    tiene_pelo(Animal).
