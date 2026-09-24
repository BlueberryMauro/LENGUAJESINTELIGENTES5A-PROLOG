/*
# Universidad Autonoma de Aguascalientes

# Departamento: Ciencias de la Computacion

# Carrera: Ingenieria en Computacion Inteligente

# Curso: Sistemas Expertos

# Maestro: Dr. Francisco Javier Lunas Rosas

# Alumno: 

# Semestre: Agosto-Diciembre del 2026
*/

% ==========================================
% Practica #6.  Operadores Relacionales en prolog. 
 
% En Prolog, los operadores relacionales mas utilizados son:

% | Operador | Significado             | Ejemplo  |
% | -------- | ----------------------- | -------- |
% | >        | Mayor que               | 10 > 5   |
% | <        | Menor que               | 10 < 5   |
% | >=       | Mayor o igual           | 10 >= 5  |
% | <=       | Menor o igual           | 10 <= 5  |
% | =:=      | Igualdad numerica       | 10 =:= 5 |
% | =\=      | Diferente numericamente | 10 =\= 5 |
% | **       | Potencia                | 2 ** 3   |

% En esta practica diseñaremos un programa en Prolog que implementa
% el uso de operadores relacionales.
% ==========================================

% ==========================================
% 1. HECHOS.
% ==========================================

% Personas y sus edades.
edad(juan, 25).
edad(maria, 30).
edad(pedro, 18).
edad(ana, 40).

% Callificaciones.

calificacion(juan, 80).
calificacion(maria, 95).
calificacion(pedro, 60).
calificacion(ana, 70).

% ==========================================
% 2. REGLAS.
% ==========================================

% -----------------------------------------------------
% Regla 1: Determinar si una persona es mayor de edad
% Operador relacional: >=
% -----------------------------------------------------
mayor_de_edad(Persona) :-
    edad(Persona, Edad),
    Edad >= 18.

% -----------------------------------------------------
% Regla 2: Determinar si una persona es menor de edad
% Operador relacional: <
% -----------------------------------------------------
menor_de_edad(Persona) :-
    edad(Persona, Edad),
    Edad < 30.

% -----------------------------------------------------
% Regla 3: Determinar si una persona tiene 30 años o mas
% Operador relacional: >=
% -----------------------------------------------------
tiene_30_o_mas(Persona) :-
    edad(Persona, Edad),
    Edad >= 30.

% -----------------------------------------------------
% Regla 4: Determinar si una persona tiene calificacion
% aprobatoria (70 o mas)
% Operador relacional: >=
% -----------------------------------------------------
aprobado(Persona) :-
    calificacion(Persona, Calificacion),
    Calificacion >= 70.

% -----------------------------------------------------
% Regla 5: Determinar si una persona tiene calificacion
% menor a 70
% Operador relacional: <
% -----------------------------------------------------
reprobado(Persona) :-
    calificacion(Persona, Calificacion),
    Calificacion < 70.

% -----------------------------------------------------
% Regla 6: Comparar dos numeros
% Operador relacional: >
% -----------------------------------------------------
mayor_que(A, B) :-
    A > B.

% -----------------------------------------------------
% Regla 7: Comparar dos numeros
% Operador relacional: <
% -----------------------------------------------------
menor_que(A, B) :-
    A < B.
%-----------------------------------------------------
% Regla 8: Comprobar si dos numeros son iguales
% Operador relacional: =:=
%-----------------------------------------------------      
iguales(A, B) :-
    A =:= B.

%-----------------------------------------------------
% Regla 9: Comprobar si dos numeros son diferentes
% Operador relacional: =\=
%-----------------------------------------------------
diferentes(A, B) :-
    A =\= B.

% ==========================================
% 3.CONSULTAS
% ==========================================

% Consultar si Juan es mayor de edad
% ?- mayor_de_edad(juan).
% Resultado esperado: true.

% Consultar quienes son mayores de edad.
% ?- mayor_de_edad(Persona).
% Resultado esperado: Persona = juan ; Persona = maria ; Persona = ana; Persona = pedro.

% Consultar quienes tienen menos de 30 años.
% ?- menor_de_edad(Persona).
% Resultado esperado: Persona = juan ; Persona = pedro.

% Consultar quienes tienen 30 años o mas.
% ?- tiene_30_o_mas(Persona).
% Resultado esperado: Persona = maria ; Persona = ana.

% Consultar quienes aprobaron:
% ?- aprobado(Persona).
% Resultado esperado: Persona = juan; Persona = maria ; Persona = ana.

% Consultar quiienes reprobaron:
% ?- reprobado(Persona).
% Resultado esperado: Persona = pedro.

% Comparar dos numeros:
% ?- mayor(10, 5).
% Resultado esperado: 

% Comparar si dos numeros son iguales:
% ?- iguales(10, 10).
% Resultado esperado: true.

%  Comprobar si dos numeros son diferentes:
% ?- diferentes(10, 5).
% Resultado esperado: true.

% ==========================================
% CONCLUSIONES

% En esta practica diseñamos un programa en Prolog que implementa
% el uso de operadores relacionales.
% ==========================================

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intelligence, Addison Wesley, 1992.
*/