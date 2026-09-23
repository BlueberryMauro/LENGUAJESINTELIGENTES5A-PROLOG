/*

# Universidad Autonoma de Aguascalientes
# Departamento: Ciencias de la Computación
# Carrera: Ingeniería en Computación Inteligente
# Curso: Lenguaje Inteligente
# Maestro: Dr. Francisco Javier Luna Rosa
# Alumno: Mauro Lomelí Muñoz
# Semestre: Agosto_Diciembre del 2026

*/

% ====================================================
% Practica 1. Comentarios en Prolog.
% En esta practica implementaremos un programa de relaciones familiares
% para demostrar comentarios en Prolog.
% ====================================================

% ----------------------------------------------------
% HECHOS
% ----------------------------------------------------

padre(juan, pedro).
padre(juan, maria).
padre(pedro, carlos).

% madre(Madre, Hijo).
madre(ana, pedro).
madre(ana, maria).
madre(maria, carlos).

% ----------------------------------------------------
% REGLAS
% ----------------------------------------------------

% Una persona es progenitor si es padre o madre.
progenitor(X, Y) :-
    padre(X, Y).

progenitor(X, Y) :-
    madre(X, Y).

% Una persona es abuelo si es progenitor
% de uno de los progenitores de otra persona.
abuelo(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z).

% Dos personas son hermanos si tienen
% al menos un progenitor en comun y son distintas.
hermano(X, Y) :-
    progenitor(P, X),
    progenitor(P, Y),
    X \= Y.

% CONSULTAS DE EJEMPLO

% ?- padre(juan, maria).
% Resultado: true.

% ?- madre(ana, maria).
% Resultado: true.

% ?- progenitor(juan, maria).
% Resultado: true.

% ?- hermano(pedro, maria).
% Resultado: true.

% ====================================================
% Conclusiones.

% En esta practica implementamos un programa en Prolog para representar
% relaciones familiares mediante hechos, reglas y consultas.

% ====================================================
% Referencias.
% Bratko, I. (1992). Prolog Programming for Artificial Intelligence.
% Addison-Wesley.
