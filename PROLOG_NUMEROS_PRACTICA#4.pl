# Departamento: Ciencias de la Computación

# Carrera: Ingeniería en Computación Inteligente

# Curso: Lenguaje Inteligente

# Maestro: Dr. Francisco Javier Luna Rosa

# Alumno: Mauro Lomeli Muñoz

# Semestre: Agosto_Diciembre del 2026

*/

% =============================================================================
% Práctica #4. Variables en Prolog
%
% En Prolog una variable comienza con una letra mayúscula
%
% Regla sencilla para recordar: en Prolog, normalmente minúscula = átomo
% y mayúscula = variable
%
% En esta práctica diseñaremos un programa en Prolog que implementa el uso
% de variables, para definir relaciones familiares
% =============================================================================

% ----------------------------------------------------
% Hechos
% ----------------------------------------------------

% Relación padre

parent(tom, bob).
parent(pam, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

% Definimos el sexo

female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).

% ----------------------------------------------------
% Reglas
% ----------------------------------------------------

% Regla 1. offspring
offspring(X, Y) :-
parent(Y, X).

% Regla 2. mother
mother(X, Y) :-
parent(X, Y),
female(X).

% Regla 3. father
father(X, Y) :-
parent(X, Y),
male(X).

% Regla 4. grandparent
grandparent(X, Y) :-
parent(X, Z),
parent(Z, Y).

% Regla 5. sister
sister(X, Y) :-
parent(Z, X),
parent(Z, Y),
female(X),
X = Y.

% Regla 6. hermano
brother(X, Y) :-
parent(Z, X),
parent(Z, Y),
male(X),
X = Y.

% Regla 7. predecesor
predecessor(X, Y) :-
parent(X, Y).

predecessor(X, Y) :-
parent(X, Z),
predecessor(Z, Y).

% ----------------------------------------------------
% Consultas
% ----------------------------------------------------

% Consultar si Liz es descendiente de Tom
% ?- offspring(liz, tom).
% Resultado: yes.

% Consultar si Pam es madre de Bob
% ?- mother(pam, bob).
% Resultado: yes.

% Consultar si Tom es padre de Liz
% ?- father(tom, liz).
% Resultado: yes.

% Consultar si Tom es abuelo de Ann
% ?- grandparent(tom, ann).
% Resultado: yes.

% Consultar si Liz es hermana de Bob
% ?- sister(liz, bob).
% Resultado: yes.

% Consultar si Bob es hermano de Liz
% ?- brother(bob, liz).
% Resultado: yes.

% Consultar si Tom es predecesor de Jim
% ?- predecessor(tom, jim).
% Resultado: yes.

% ----------------------------------------------------
% Conclusiones.
%
% En esta práctica se diseñó un programa en Prolog que implementa
% el uso de variables para representar relaciones familiares.
% ----------------------------------------------------

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Inteligence,
Addison Wesley, 1992.
*/
