Feature: Juego el ahorcado

Scenario: Titulo de la portada
	Given Voy a la portada
	Then  Tiene que decir "Ahorcado 5.0"

Scenario: Ingresar letra
	Given Voy a la portada
	Then  Tiene que ingresar una "letra"


