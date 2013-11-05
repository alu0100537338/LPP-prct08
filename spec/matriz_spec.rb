# Fichero para la realizacion de tests de la clase Matriz,
# cuya hubicacion esta en el fichero matriz.rb en el directorio lib/,
# el cual importamos para trabajar.

require "./lib/matriz.rb"

describe Matriz do

	# Comenzamos definiendo dos matrices de tamaño 3x3
	# de las cuales indicamos el valor de cada una de 
	# sus posiciones para emplearlas enlos tests.

	before :each do
		@a = matriz.new(3,3)
		@a.setData(0,0,1)
		@a.setData(0,1,2)
		@a.setData(0,2,3)
		@a.setData(1,0,4)
		@a.setData(1,1,5)
		@a.setData(1,2,6)
		@a.setData(2,0,7)
		@a.setData(2,1,8)
		@a.setData(2,2,9)

		@b = Matriz.new(3,3)
		@b.setData(0,0,9)
		@b.setData(0,1,8)
		@b.setData(0,2,7)
		@b.setData(1,0,6)
		@b.setData(1,1,5)
		@b.setData(1,2,4)
		@b.setData(2,0,3)
		@b.setData(2,1,2)
		@b.setData(2,2,1)
	end
end
