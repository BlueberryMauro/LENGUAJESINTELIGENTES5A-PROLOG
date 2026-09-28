/* 
# Universidad Autonoma de Aguascalientes 
 
# Departamento: Ciencias de la Computacion 
 
# Carrera: Ingenieria en Computacion Inteligente 
 
# Curso: Sistemas Expertos 
 
# Maestro: Dr. Francisco Javier Lunas Rosas 
 
# Alumno: Mauro Lomeli Muñoz
 
# Semestre: Agosto-Diciembre del 2026 
*/ 
 
% =======================================================================
% Practica 7. Operadores Logicos en Prolog. 
 
% En Prolog, los operadores logicos permiten combinar condiciones. Los mas utilizados son:

%       , → AND(Y): ambas condiciiones deben cumplirse.
%       ; → OR (O): al menos una condicion debe cumplirse.
%       \+ → NOT(NO): la condicion no debe cumplirse.
%       -> → IF(SI): permite establecer una condicion.

% En esta practica dise;aremos un programa de Prolog que implementara el uso de operadores logicos.
 
% =======================================================================


% =======================================================================
% 1. HECHOS 
% =======================================================================
 
% Personas y sus edades
edad(juan, 25).
edad(maria, 17).
edad(pedro, 30).
edad(ana, 20).

% Personas que tienen credencial
credencial(juan).
credencial(pedro).
credencial(ana).

% Personas que tienen permiso
permiso(juan).
permiso(maria).

% =======================================================================
% 2. REGLAS 
% ======================================================================= 
 
% -----------------------------------------------------------------------

% Operador AND (,)
% Una persona puede entrar si:
% tiene credencial y tiene permiso.

% -----------------------------------------------------------------------

puede_entrar(Persona) :-
    credencial(Persona),
    permiso(Persona).


% -----------------------------------------------------------------------

% Operador OR (;)
% Una persona puede participar si:
% tiene credencial O tiene permiso.

% -----------------------------------------------------------------------

puede_participar(Persona) :-
    credencial(Persona);
    permiso(Persona).


% -----------------------------------------------------------------------

% Operador NOT (\+)
% Una persona no tiene permiso si NO se cumple
% que tiene permiso.

% -----------------------------------------------------------------------

sin_permiso(Persona) :-
    \+ permiso(Persona).

% -----------------------------------------------------------------------

% Combinacion de operadores logicos
% Una persona puede acceder si:
% tiene credencial y (tiene permiso O es mayor de edad).

% -----------------------------------------------------------------------

puede_acceder(Persona) :-
    credencial(Persona),
    (permiso(Persona) ; mayor_de_edad(Persona)).

% -----------------------------------------------------------------------

% Regla para determinar si un apersona es mayor de edad.

% -----------------------------------------------------------------------

mayor_de_edad(Persona) :-
    edad(Persona, Edad),
    Edad >= 18.




% =======================================================================
% 3. CONSULTAS 
% ======================================================================= 

% -----------------------------------------------------------------------

% Consulta 1: AND
% ¿Juan tiene credencial Y permiso?

% ?- credencial(juan), permiso(juan).
% Resultado: True

% -----------------------------------------------------------------------

% -----------------------------------------------------------------------

% Consulta 2: OR
% ¿Maria tiene credencial O permiso?

% ?- credencial(maria); permiso(maria).
% Resultado: True

% -----------------------------------------------------------------------

% -----------------------------------------------------------------------

% Consulta 3: NOT
% ¿Pedro No tiene permiso?

% ?- sin_permiso(pedro)
% Resultado: True

% -----------------------------------------------------------------------

% -----------------------------------------------------------------------

% Consulta 4: A
% ¿Quienes pueden entrar?

% ?- puede_entrar(Persona).
% Resultado: juan.

% -----------------------------------------------------------------------

% =======================================================================
% Conclusiones.

% En esta practica diseñamos un programa en Prolog que implementa
% el uso de operadores logicos.

% =======================================================================

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intelligence,
    Addison Wesley, 1992.
*/