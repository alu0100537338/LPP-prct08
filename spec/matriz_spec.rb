# Fichero para la realizacion de tests de la clase Matriz,
# cuya hubicacion esta en el fichero matriz.rb en el directorio lib/,
# el cual importamos para trabajar.

require "./lib/matriz.rb"

describe Matriz do

	# Comenzamos definiendo dos matrices de tamaño 3x3
	# de las cuales indicamos el valor de cada una de 
	# sus posiciones para emplearlas enlos tests.

	before :each do
		@a = Matriz.new(3,3)
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
	
	# Hacemos la comprobacion de que se ha creado la matriz
	# con un numero especifico de filas y columnas.
	
	describe "Se crea una matriz con 3 filas y 3 columnas" do
	
		it "Existe el atributo filas y su valor es 3" do
			@a.rows.should eq(3)
		end

		it "Existe el atributo columnas y su valor es 3" do
			@a.cols.should eq(3)
		end
	end
	
	# Agrupacion para comprobar la efectividad del metodo definido
	# para el operador +, quien realizara la suma de dos matrices cuadradas.
	
	describe "Suma de dos matrices" do
	
		it "Debe ser posible sumar dos matrices del mismo tamano" do
			c = @a + @b
			c.getData(0,0).should eq(10)
			c.getData(0,1).should eq(10)
			c.getData(0,2).should eq(10)
			c.getData(1,0).should eq(10)
			c.getData(1,1).should eq(10)
			c.getData(1,2).should eq(10)
			c.getData(2,0).should eq(10)
			c.getData(2,1).should eq(10)
			c.getData(2,2).should eq(10)
		end
		
		# Comprobamos el tamaño de la matriz resultado tras la operacion.

		it "La matriz resultante debe tener el mismo tamano" do
			c = @a + @b
			c.rows.should eq(3)
			c.cols.should eq(3)
		end
		
		# Comprobamos que salte un error al intentar hacer una operacion de
		# matrices no cuadradas.

		it "La suma de matrices de distinto tamano no es posible" do
			c = Matriz.new(2,2)
			c.setData(0,0,1)
			c.setData(0,1,2)
			c.setData(1,0,3)
			c.setData(1,1,4)
			expect {@a + c}.to raise_error(ArgumentError)
		end
	end
	
	# Agrupacion para comprobar la efectividad del metodo definido
	# para el operador -, quien realizara la resta de dos matrices cuadradas. 
	
	describe "Resta de dos matrices" do
	
		it "Debe ser posible restar dos matrices del mismo tamano" do
			c = @a - @b
			c.getData(0,0).should eq(-8)
			c.getData(0,1).should eq(-6)
			c.getData(0,2).should eq(-4)
			c.getData(1,0).should eq(-2)
			c.getData(1,1).should eq(0)
			c.getData(1,2).should eq(2)
			c.getData(2,0).should eq(4)
			c.getData(2,1).should eq(6)
			c.getData(2,2).should eq(8)
		end
		
		# Comprobamos el tamaño de la matriz resultado tras la operacion.

		it "La matriz resultante debe tener el mismo tamano" do
			c = @a - @b
			c.rows.should eq(3)
			c.cols.should eq(3)
		end
		
		# Comprobamos que salte un error al intentar hacer una operacion de
		# matrices no cuadradas.

		it "La resta de matrices de distinto tamano no es posible" do
			c = Matriz.new(2,2)
			c.setData(0,0,1)
			c.setData(0,1,2)
			c.setData(1,0,3)
			c.setData(1,1,4)
			expect {@a - c}.to raise_error(ArgumentError)
		end
	end
	
	# Agrupacion para comprobar la efectividad del metodo definido
	# para el operador *, quien realizara la multiplicacion de dos matrices cuadradas.
	
	describe "Multiplicacion de matrices" do
		it "Debe ser posible si el numero de columnas de la primera matriz coincide con el numero de filas de la segunda matriz" do
			c = @a * @b
			c.getData(0,0).should eq(30)
			c.getData(0,1).should eq(24)
			c.getData(0,2).should eq(18)
			c.getData(1,0).should eq(84)
			c.getData(1,1).should eq(69)
			c.getData(1,2).should eq(54)
			c.getData(2,0).should eq(138)
			c.getData(2,1).should eq(114)
			c.getData(2,2).should eq(90)
		end
		
		# Comprobamos el tamaño de la matriz resultado tras la operacion.

		it "La matriz resultante de la multiplicacion debe tener el numero de filas de la primera matriz y el numero de columnas de la segunda matriz" do
			c = @a * @b
			c.rows.should eq(3)
			c.cols.should eq(3)
		end
		
		# Comprobamos que salte un error al intentar hacer una operacion de
		# matrices no cuadradas.

		it "Dos matrices cuyas columnas y filas no coincidan no se pueden multiplicar" do
			c = Matriz.new(2,2)
			c.setData(0,0,1)
			c.setData(0,1,2)
			c.setData(1,0,3)
			c.setData(1,1,4)
			expect {@a * c}.to raise_error(ArgumentError)
		end
	end
	
	describe "Multiplicacion de una matriz por un escalar" do
		it "Se puede multiplicar una matriz por un escalar" do
			c = @a.x(2)
			c.getData(0,0).should eq(2)
			c.getData(0,1).should eq(4)
			c.getData(0,2).should eq(6)
			c.getData(1,0).should eq(8)
			c.getData(1,1).should eq(10)
			c.getData(1,2).should eq(12)
			c.getData(2,0).should eq(14)
			c.getData(2,1).should eq(16)
			c.getData(2,2).should eq(18)	
		end

		it "El tamano de la matriz debe ser el mismo despues de la multiplicacion" do
			c = @a.x(2)
			c.rows.should eq(@a.rows)
			c.cols.should eq(@a.cols)
		end
	end
end
