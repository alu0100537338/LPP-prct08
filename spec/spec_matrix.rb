require './lib/matrix.rb'

describe Matriz do
	
	# Definimos un objeto de la clase Matriz para operar con el en los tests.
	
	before :each do
		@matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
	end
	
	# Agrupamos en un describe los tests de las operaciones que va a realizar
	# nuestro programa principal matrix.rb.
	
	describe "Pruebas metodos suma, resta, multiplicacion y multiplicacion por un numero" do
	
		# Definimos el test que va a probar nuestro metodo suma, devolviendo el resultado
		# en un string.
	
		it "El metodo suma debe devolver el resultado de sumar dos matrices" do
			mataux = [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
			result = @matrix.suma(mataux)
			result.should eq("[[10, 10, 10], [10, 10, 10], [10, 10, 10]]")
		end
		
		it "El metodo resta deve devolver el resultado de restar dos matrices" do
		
		end
		
		it "El metodo multiplicacion debe devolver el resultado de multiplicar dos matrices entre si" do
		
		end
		
		it "El metodo multin debe devolver el resultado de multiplicar una matriz por un numero" do
		
		end
	end
end

