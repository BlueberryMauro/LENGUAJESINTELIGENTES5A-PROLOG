# Departamento: Ciencias de la Computación

# Carrera: Ingeniería en Computación Inteligente

# Curso: Lenguaje Inteligente

# Maestro: Dr. Francisco Javier Luna Rosa

# Alumno: Mauro Lomeli Muñoz

# Semestre: Agosto_Diciembre del 2026
*/

% ====================================================
% Pracitca 2. Atomos en Prolog.
% En Prolog. Un atomo es un valor que representa un nombre o
% una constantes. Los atomonos normalmente comienzan con minuscula
%
% En esta practica implementaremos un programa en Prolog para demostrar
% la declaracion de atomos.
% ====================================================

% ----------------------------------------------------
% HECHOS. Los siguientes son atomos en Prolog.
% ----------------------------------------------------

% ----------------------------------------------------
% Los siguientes son atomos
% ----------------------------------------------------

persona(juan),
persona(maria),
persona(pedro).

color(rojo),
color(azul),
color(verde).

animal(perro),
animal(gato),
animal(caballo).

pais(mexico),
pais(espana),
pais(francia).

% ----------------------------------------------------
% REGLAS
% ----------------------------------------------------

% Regla 1.
% X es una persona si existe el hecho persona(X).

es_persona(X) :-
    persona(X).

% Regla 2.
% X es un color si aexiste el hecho color(X).

es_color(X) :-
    color(X).

% Regla 3.
% X es un animal si existe el hecho animal(X).

es_animal(X) :-
    animal(X).

% Regla 4.
% X es un pais si existe el hecho pais(X).

es_pais(X) :-
    pais(X).


% Regla 5.
% X es un atomo si persona, color, animal o pais.

es_elemento(X) :-
    persona(X).

es_elemento(X) :-
    color(X).

es_elemento(X) :-
    animal(X).

es_elemento(X) :-
    pais(X).

% ----------------------------------------------------
% CONSULTAS
% ----------------------------------------------------

% ?- atom(juan).
% Resultado: yes.

% ?- atom(rojo).
% Resultado: yes.

% ?- atom(perro).
% Resultado: yes.

% ?- atom(mexico).
% Resultado: yes.

% ----------------------------------------------------
% Los numeros son atomos?
% ----------------------------------------------------

% ?- atom(25).
% Resultado: no.

% ----------------------------------------------------
% Las variables son atomos?
% ----------------------------------------------------

% ?- atom(X).
% Resultado: no.

% ----------------------------------------------------
% Podemos obtener los valores almacenados
% ----------------------------------------------------

% ?- Persona(X).
% Resultado: X = juan ; X = maria ; X = pedro.

% ?- es_persona(juan):
% Resultado: yes.

% ?- es_persona(X).
% Resultado: X = juan ; X = maria ; X = pedro.

% ?- Animal(X).
% Resultado: X = perro ; X = gato ; X = caballo.

% ?- es_animal(juan):
% Resultado: yes.

% ?- es_animal(X).
% Resultado: X = perro ; X = gato ; X = caballo.

% ?- Color(X).
% Resultado: X = rojo ; X = azul ; X = verde.

% ?- es_color(juan):
% Resultado: yes.

% ?- es_color(X).
% Resultado: X = rojo ; X = azul ; X = verde.

% ?- Pais(X).
% Resultado: X = mexico ; X = espana ; X = francia.

% ?- es_pais(juan):
% Resultado: yes.

% ?- es_pais(X).
% Resultado: X = mexico ; X = espana ; X = francia.

% ?- es_elemento(X).
% Resultado:
% X=juan ; X=maria ; X=pedro;
% X=perro ; X=gato ; X=caballo;
% X=rojo ; X=azul ; X=verde;
% X=mexico ; X=espana ; X=francia.

% ----------------------------------------------------
% Conclusiones.
%
% En esta practica implementamos un programa en Prolog para demostrar
% la declaracion de atomos.
% ----------------------------------------------------

/*
Referencias:

[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intellegence,
    Addison Wesley, 1992.
*/