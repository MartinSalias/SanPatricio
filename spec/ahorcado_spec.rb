require_relative "../lib/ahorcado.rb"

describe "Ahorcado" do

	it "ingreso de una letra incorrecta"  do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.validarletra("x").should == false
	end

	it "ingreso de una letra correcta"  do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.validarletra("t").should == true
	end
	
	it "ver la cantidad de letras de la palabra con guiones" do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.palabraenguiones.should == "_ _ _ _ _ _ _ _"
	end

	it "mostrar las letras que adivinaste en pantalla" do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.validarletra "t"
		unahorcado.palabraconguiones.should == "_ _ T _ _ _ _ _"
	end
end

