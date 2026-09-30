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
% Practica 9. Sistema Experto De Animales - Mamiferos. 
 
% En esta practica diseñaremos un programa en Prolog que implementa
% un SISTEMA EXPERTO DE ANIMALES MAMIFEROS.
% ============================================================


% ============================================================
% 1. HECHOS 
% ============================================================

% ------------------------------------------------
% Mamiferos
% ------------------------------------------------

mamifero(perro).
mamifero(gato).
mamifero(vaca).
mamifero(caballo).
mamifero(elefante).
mamifero(delfin).
mamifero(ballena).
mamifero(murcielago).

% ------------------------------------------------
% Animales domesticos
% ------------------------------------------------

domestico(perro).
domestico(gato).
domestico(vaca).
domestico(caballo).

% ------------------------------------------------
% Animales que tienen pelo
% ------------------------------------------------

tiene_pelo(perro).
tiene_pelo(gato).
tiene_pelo(vaca).
tiene_pelo(caballo).
tiene_pelo(elefante).
tiene_pelo(murcielago).

% ------------------------------------------------
% Animales que viven en el agua
% ------------------------------------------------

vive_en_agua(delfin).
vive_en_agua(ballena).

% ------------------------------------------------
% Animales que pueden volar
% ------------------------------------------------

puede_volar(murcielago).

% ------------------------------------------------
% Animales que tienen cuatro patas
% ------------------------------------------------

cuatro_patas(perro).
cuatro_patas(gato).
cuatro_patas(vaca).
cuatro_patas(caballo).
cuatro_patas(elefante).

% ------------------------------------------------
% Animales que son grandes
% ------------------------------------------------

animal_grande(elefante).
animal_grande(ballena).

% ============================================================
% 2. REGLAS
% ============================================================

% -----------------------------------------------
% Regla 1
% Si un animal es mamifero  y tiene pelo
% entonces es un mamifero con pelo
% -----------------------------------------------

mamifero_con_pelo(Animal) :-
    mamifero(Animal),
    tiene_pelo(Animal).

% -----------------------------------------------
% Regla 2
% Si un animal es mamifero  y es domestico
% entonces es un mamifero domestico
% -----------------------------------------------

mamifero_domestico(Animal) :-
    mamifero(Animal),
    domestico(Animal).

% -----------------------------------------------
% Regla 3
% Si un animal es mamifero  y vive en el agua
% entonces es un mamifero acuatico
% -----------------------------------------------

mamifero_acuatico(Animal) :-
    mamifero(Animal),
    vive_en_agua(Animal).

% -----------------------------------------------
% Regla 4
% Si un animal es mamifero  y puede volar
% entonces es un mamifero volador
% -----------------------------------------------

mamifero_volador(Animal) :-
    mamifero(Animal),
    puede_volar(Animal).

% -----------------------------------------------
% Regla 5
% Si un animal es mamifero  y tiene cuatro patas
% entonces es un mamifero terrestre
% -----------------------------------------------

mamifero_terrestre(Animal) :-
    mamifero(Animal),
    cuatro_patas(Animal).

% -----------------------------------------------
% Regla 6
% Si un animal es mamifero  y grande,
% entonces es un mamifero grande
% -----------------------------------------------

mamifero_grande(Animal) :-
    mamifero(Animal),
    animal_grande(Animal).

% -----------------------------------------------
% Regla 7
% Sistema experto para identificar un perro.
% Si el animal es mamifero,
% tiene pelo,
% tiene cuatro patas,
% y es domestico
% entonces puede ser un perro
% -----------------------------------------------

posible_perro(Animal) :-
    mamifero(Animal),
    tiene_pelo(Animal),
    cuatro_patas(Animal),
    domestico(Animal).

% -----------------------------------------------
% Regla 8
% Sistema experto para identificar un animal acuatico.

% Si el animal es mamifero y vive en el agua,
% entonces es un mamifero acuatico
% -----------------------------------------------

es_acuatico(Animal) :-
    mamifero(Animal),
    vive_en_agua(Animal).

% -----------------------------------------------
% Regla 9
% Sistema experto para identificar un mamifero volador.

% Si el animal es mamifero y puede volar,
% entonces es un mamifero volador.
% -----------------------------------------------

es_volador(Animal) :-
    mamifero(Animal),
    puede_volar(Animal).

% ============================================================
% 3. CONSULTAS
% ============================================================

% -----------------------------------------------
% Consulta 1:
% ¿El perro es un mamifero?
%
% ?- mamifero(Perro).
%
% Resultado: Yes.
% -----------------------------------------------

% -----------------------------------------------
% Consulta 2:
% ¿Que animales son mamiferos?
%
% ?- mamifero(Animal).
%
% Prolog responderá:
%
% Animal = perro;
% Animal = caballo;
% Animal = elefante;
% Animal = delfin;
% Animal = ballena ;
% Animal = murcielago;
% -----------------------------------------------

% -----------------------------------------------
% Consulta 3:
% ¿Que animales son domesticos?
%
% ?- mamifero_domestico(Animal).
%
% Resultado:
%
% Animal = perro ;
% Animal = gato;
% Animal = vaca;
% Animal = caballo;
% -----------------------------------------------

% -----------------------------------------------
% Consulta 4:
% ¿Que mamiferos viven en el agua?
%
% ?- mamifero_acuatico(Animal).
%
% Resultado:
%
% Animal = delfin;
% Animal = ballena;
% -----------------------------------------------

% -----------------------------------------------
% Consulta 5: 
% ¿Que mamifero puede volar?
% ?- mamifero_volador(Animal).
%
% Resultado:
%
% Animal = murcielago.
% -----------------------------------------------

% -----------------------------------------------
% Consulta 6: 
% ¿Que mamiferos tienen pelo?
% ?- mamifero_con_pelo(Animal).
%
% Resultado:
%
% Animal = perro.
% Animal = gato.
% Animal = vaca.
% Animal = caballo.
% Animal = elefante.
% Animal = murcielago.
% -----------------------------------------------

% -----------------------------------------------
% Consulta 7: 
% ¿Que mamifero podria ser identificado como perro
% mediante las reglas del sistema experto?
%
% ?- posible_perro(perro).
%
% Resultado:
%
% Yes.
% -----------------------------------------------

% -----------------------------------------------
% Consulta 8: 
% ¿El delfin es un mamifero acuatico?
%
% ?- es_acuatico(delfin).
%
% Resultado:
%
% Yes.
% -----------------------------------------------

% -----------------------------------------------
% Consulta 9: 
% ¿El murcielago es un mamifero volador?
%
% ?- es_volador(murcielago).
%
% Resultado:
% Yes.
% -----------------------------------------------
% ============================================================
% Conclusiones.

% En esta practica diseñamos un programa en Prolog que implementa
% un SISTEMA EXPERTO DE ANIMALES-MAMIFEROS.

% ============================================================

/*
Referencias:
[1] Bratko Ivan, (1992). Prolog Programming for Artificial Intelligence,
    Addison Wesley, 1992.
*/