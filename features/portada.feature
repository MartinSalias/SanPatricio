Feature: Juego el ahorcado

Scenario: Titulo de la portada
	Given Voy a la portada
	Then  Tiene que decir "Ahorcado 5.0"

Scenario: Probar una letra incorrecta
	Given Voy a la portada
	And la palabra secreta es "patricio"
	When ingreso "x"
	Then Tiene que decir "No esta"

Scenario: Probar una letra valida
	Given Voy a la portada
	And la palabra secreta es "patricio"
	When ingreso "a"
	Then Tiene que decir "letra correcta"

Scenario: Probar una letra valida Mayuscula
	Given Voy a la portada
	And la palabra secreta es "patricio"
	When ingreso "A"
	Then Tiene que decir "letra correcta"

Scenario: Ver la cantidad de letras de la palabra
	Given Voy a la portada
	And la palabra secreta es "patricio"
	When ingreso "r"
	Then Tiene que mostrar "letra correcta, la palabra tiene 8 caracteres"
