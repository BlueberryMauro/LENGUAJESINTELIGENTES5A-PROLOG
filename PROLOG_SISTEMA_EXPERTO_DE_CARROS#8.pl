/* 
# Universidad Autonoma de Aguascalientes 
 
# Departamento: Ciencias de la Computacion 
 
# Carrera: Ingenieria en Computacion Inteligente 
 
# Curso: Sistemas Expertos 
 
# Maestro: Dr. Francisco Javier Lunas Rosas 
 
# Alumno: 
 
# Semestre: Agosto-Diciembre del 2026 
*/ 
 
% ============================================================
% Practica 8. Sistema Experto De Carros. 
 
% En esta practica diseñaremos un programa en Prolog que implementa
% un SISTEMA EXPERTO DE CARROS.
% ============================================================


% ============================================================
% 1. HECHOS 
% ============================================================

% ---------MARCA-----------
marca(toyota, corolla).
marca(ford, mustang).
marca(honda, civic).
marca(chevrolet, camaro).
marca(jeep, wrangler).

% ---------Tipo de combustible-----------
combustible(corolla, gasolina).
combustible(mustang, gasolina).
combustible(civic, gasolina).
combustible(camaro, gasolina).
combustible(wrangler, gasolina).

% ---------Numero de puertas-----------
puertas(corolla, 4).
puertas(mustang, 2).
puertas(civic, 4).
puertas(camaro, 2).
puertas(wrangler, 4).

% ---------Tipo de carro-----------
tipo(corolla, sedan).
tipo(mustang, deportivo).
tipo(civic, sedan).
tipo(camaro, deportivo).
tipo(wrangler, todoterreno).

% ---------Transmision-----------
transmision(corolla, automatica).
transmision(mustang, manual).
transmision(civic, automatica).
transmision(camaro, manual).
transmision(wrangler, manual).

% ---------Potencia maxima-----------
potencia(corolla, media).
potencia(mustang, alta).
potencia(civic, media).
potencia(camaro, alta).
potencia(wrangler, alta).

% ============================================================
% 2. REGLAS
% ============================================================

% Un carro es familiar si tiene 4 puertas y es tipo sedan.

carro_familiar(Carro) :-
    puertas(Carro, 4),
    tipo(Carro, sedan).

% Un carro es deportivo si tiene 2 puertas, es tipo deportivo
% y tiene potencia alta.

carro_deportivo(Carro) :-
    puertas(Carro, 2),
    tipo(Carro, deportivo),
    potencia(Carro, alta).

% Un carro es todoterreno si su tipo es todoterreno.

carro_todoterreno(Carro) :-
    tipo(Carro, todoterreno).

% Un carro es potente si tiene potencia alta.
carro_potente(Carro) :-
    potencia(Carro, alta).

% Un carro es automático si tiene transmisión automática.

carro_automatico(Carro) :-
    transmision(Carro, automatica).

% Un carro es manual si tiene transmisión manual.

carro_manual(Carro) :-
    transmision(Carro, manual).

% Un carro es recomendable para la familia si es familiar y automático.
recomendado_familia(Carro) :-

    carro_familiar(Carro),
    carro_automatico(Carro).

% Un carro es recomendable para deporte si es deportivo y potente.

recomendado_deporte(Carro) :-
    carro_deportivo(Carro),
    carro_potente(Carro).

% ============================================================
% 3. CONSULTAS
% ============================================================

% Consulta 1:
% ¿Que carros son familiares?
% ?- carro_familiar(Carro).

% Consulta 2:
% ¿Que carros son deportivos?
% ?- carro_deportivo(Carro).

% Consulta 3:
% ¿Que carros son todoterreno?
% ?- carro_todoterreno(Carro).

% Consulta 4:
% ¿Que carros tienen transmision automatica?
% ?- carro_automatico(Carro).

% Consulta 5: 
% ¿Que carros son recomendados para una familia?
% ?- recomendado_familia(Carro).

% Consulta 6:
% ¿Que carros son recomendados para el deporte?
% ?- recomendado_deporte(Carro).

% ============================================================
% Conclusiones.

% En esta practica diseñamos un programa en Prolog que implementa
% un SISTEMA EXPERTO DE CARROS.

% ============================================================

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intelligence,
    Addison Wesley, 1992.
*/