# Departamento: Ciencias de la Computación

# Carrera: Ingeniería en Computación Inteligente

# Curso: Lenguaje Inteligente

# Maestro: Dr. Francisco Javier Luna Rosa

# Alumno: Mauro Lomeli Muñoz

# Semestre: Agosto_Diciembre del 2026
*/

% ====================================================
% Practica 3. Numeros en Prolog.
% En Prolog, los numeros enteros son numeros sin parte decimal.
% por ejemplo: 5, 10, 15 y 20 y los numeros deciamles son numeros
% que tienen parte fraccionaria, es decir, numeros con punto decimal,
% Por ejemplo: 18.5 , 22.3, 25.7 y 38.2.
%
% En esta practica diseñaremos un programa en prolog que implementa
% el uso de numeros enteros y numeros con punto decimal.
% ====================================================

% ----------------------------------------------------
% 1. HECHOS. Los siguientes son atomos en Prolog.
% ----------------------------------------------------

% Numeros enteros.

numero(5).
numero(10).
numero(15).
numero(20).

% Numeros con punto decimal(diferentes temperaturas):

temperatura(18.5).
temperatura(22.3).
temperatura(25.7).
temperatura(30.2).

% ----------------------------------------------------
% 2. REGLAS PARA NUMEROS ENTEROS
% ----------------------------------------------------

% Regla para determina si un numero es mayor que 10.

mayor_que_10(X) :-
    X > 10.

% Regla para determinar si un numeros es menor que 10.

menor_que_10(X) :-
    X < 10.


% Regla para determinar si un numeros es mayor o igual que 10.

mayor_o_igual que_10(X) :-
    X >= 10.

% Regla para determinar si un numero es par.

es_par(X) :-
    X mod 2 -:- 0.

% Regla para determinar si un numero es impar.

es_impar(X) :-
    X mod 2 -:- 1.

% Regla para determinar cual de dos numeros es mayor.

mayor(A, B, A) :-
    A >= B.

mayor(A, B, B) :-
    A > B.

% ----------------------------------------------------
% 3. REGLAS PARA NUMEROS CON PUNTO FINAL
% ----------------------------------------------------


% Determinar si una temperatura es mayor que 25.

temperatura_alta(X) :-
    X > 25.0.

% Determinar si una temperatura es menor que 20.

temperatura_baja(X) :-
    X < 20.0.

% Determinar si una temperatura esta entre 20 y 25.

temperatura_media(X) :-
    x >= 20.0.
    X =< 25.0.

% Convertir grados Celsius a Fahrenheit.

Fahrenheit(c, F) :-
    F is(C * 9 / 5) + 32.

% Calcular el promedio de dos temperaturas.

promedio(A, B, P) :-
    P is (A + B) / 2.

% Determinar cual de dos temperaturas es mayor.

mayor(A, B, A) :-
    A >= B.

mayor(A, B, B) :-
    B > A.

% ----------------------------------------------------
% 4. CONSULTAS PARA NUMEROS ENTEROS
% ----------------------------------------------------

% Consultar si 15 es un numero mayor que 10.
%
% ?- mayor_que_10(15).
% Resultado: yes.

% Consultar si 5 es un numero menor que 10.
%
% ?- menor_que_10(5).
% Resultado: yes.

% Consultar si 10 es igual a 10.
%
% ?- igual_a_10(10).
% Resultado: yes.

% Consultar si 20 es mayor o igual que 10.
%
% ?- mayor_o_igual_10(20).
% Resultado: yes.

% Consultar si 10 es par
%
% ?- es_par(10).
% Resultado: yes.

% Consultar si 15 es impar.
%
% ?- es_impar(15).
% Resultado: yes.

% Consultar cual es mayor entre 8 y 12
%
% ?- mayor(8, 12, X).
% Resultado. X - 12.

% Consultar cuales de los hechos son mayores que 10.
%
% ?- numero(X), mayor_que_10(X).
% Resultado. X - 15, X = 20

% ----------------------------------------------------
% 5. CONSULTAS PARA NUMEROS REALES
% ----------------------------------------------------

% Consultar todas las temperaturas
%
% ?- temperatura(X).
% X = 18.5;
% X = 22.3;
% X = 25.7;;
% X = 30.2.

% Consultar las temperaturas altas de los hechos.
%
% ?- temperatura(X), temperatura_alta(X).
% Resultado:
% X = 25.7 ;
% X = 30.2.

% Consultar si 18.5 es una temperatura baja.
%
% ?- temperatura_baja(18.5).
% Resultado: yes.

% Consultar si 22.3 es una temperatura media.
%
% ?- Fahrenheit(25, f).
% Resultado: F = 77.0

% Convertir 25.0 grados Celsius a Fahrenheit
%
% ?- temperatura_baja(22.3).
% Resultado: yes.

% Cacular el promedio de 20.5 y 25.5
%
% ?- promedio(20.5, 25.5, P).
% Resultado: P = 23.0

% ----------------------------------------------------
% Conclusiones.
%
% En esta practica diseñamos un programa en Prolog que implementa
% el uso de numeros enteros y numeros con punto decimal.
% ----------------------------------------------------


/*
Referencias:

[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intellegence,
    Addison Wesley, 1992.
*/
