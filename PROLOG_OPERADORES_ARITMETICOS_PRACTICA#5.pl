/*
# Universidad Autonoma de Aguascalientes

# Departamento: Ciencias de la Computacion

# Carrera: Ingenieria en Computacion Inteligente

# Curso: Sistemas Expertos

# Maestro: Dr. Francisco Javier Lunas Rosas

# Alumno: 

# Semestre: Agosto-Diciembre del 2026
*/

% ==========================================================
% Practica #5.  Operadores Artimeticos en Prolog. 
 
% En Prolog, los operadores aritmeticos son simbolos o palabras que
% permiten realizar calculos matematicos con numeros.

% Por ejemplo, podemos hacer sumas, restas, multiplicaciones y divisiones,
% potencias y obtener residuos.

% En esta practica diseñaremos un programa en Prolog que implementa
% el uso de operadores aritmeticos.
% ========================================================== 

% Operadores aritmeticos
% | Operador | Operación       | Ejemplo  | Resultado |
% | -------- | --------------- | -------- | --------- |
% | +        | Suma            | 10 + 5   | 15        |
% | -        | Resta           | 10 - 5   | 5         | 
% | *        | Multiplicación  | 10 * 5   | 50        | 
% | /        | División        | 10 / 5   | 2.0       |
% | //       | Division entera | 10 // 3  | 3         |
% | mod      | Residuo         | 10 mod 3 | 1         |
% | **       | Potencia        | 2 ** 3   | 8         |

% ========================================
% HECHOS.
% ========================================

numero(10).
numero(5).

% ========================================
% REGLAS.
% ========================================

% Suma.
suma(A, B, Resultado) :-
    Resultado is A + B.

% Resta.
resta(A, B, Resultado) :-
    Resultado is A - B.

% Multiplicacion.
multiplicacion(A, B, Resultado) :-
    Resultado is A * B.

% Division.
division(A, B, Resultado) :-
    Resultado is A / B.

% Division entera.
division_entera(A, B, Resultado) :-
    Resultado is A // B.

% Residuo.
residuo(A, B, Resultado) :-
    Resultado is A mod B.

% Potencia.
potencia(A, B, Resultado) :-
    Resultado is A ** B.

% =========================================
% CONSULTAS.
% ========================================

% ?- suma(10, 5, Resultado).
% Resultado = 15.

% ?- resta(10, 5, Resultado).
% Resultado = 5.

% ?- multiplicacion(10, 5, Resultado).
% Resultado = 50.

% ?- division(10, 5, Resultado).
% Resultado = 2.

% ?- division_entera(10, 3, Resultado).
% Resultado = 3.

% ?- residuo(10, 3, Resultado).
% Resultado = 1.

% ?- potencia(2, 3, Resultado).
% Resultado = 8.

% =========================================
% Conclusiones.

% En esta practica diseñamos un programa que implementa el 
% uso de operadores aritmeticos en Prolog.

% ==========================================

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intelligence, Addison Wesley, 1992.
*/