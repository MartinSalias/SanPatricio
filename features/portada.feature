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


Scenario: Ver los resultados del ingreso de letras en la misma pagina
	Given Voy a la portada
	And la palabra secreta es "patricio"
	When ingreso "a"
	Then Tiene que mostrar "letra correcta" en la misma pagina

Scenario: visualizar _ _ _ _  con la cantidad de letras de la palabra
	Given Voy a la portada
	And la palabra secreta es "patricio"
	Then Se tiene que ver "_ _ _ _ _ _ _ _"

Scenario: visualizar _ x _ _  con la letras valida que ingrese
	Given Voy a la portada
	When ingreso "a"
	And la palabra secreta es "patricio"
	Then Se tiene que ver "_ A _ _ _ _ _ _"  
