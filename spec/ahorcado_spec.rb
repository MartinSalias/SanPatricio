require_relative "../lib/ahorcado.rb"

describe "Ahorcado" do

	it "ingreso de una letra incorrecta"  do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.letra "x"
		unahorcado.validarletra.should == false
	end

	it "ingreso de una letra correcta"  do
		unahorcado = Ahorcado.new
		unahorcado.palabrasecreta "patricio"
		unahorcado.letra "t"
		unahorcado.validarletra.should == true
	end

end

