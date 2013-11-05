class Matriz
  # Atributos de la instancia (objeto)
  # '@rows': numero de filas
  # '@cols': numero de columnas
  # '@data': datos de la matriz (en un array unidimensional)

  # Para la mejora de la abstraccion de la clase, se establece que los atributos
  # @rows y @cols solo podran ser consultados desde el exterior, no modificados

  # @data no sera accesible desde el exterior

  attr_reader :rows, :cols

  # Creacion de una Matriz con 'rows' filas y 'cols' columnas
  # Se inicializa el array @data
  def initialize(rows,cols)
    @rows, @cols = rows, cols
    @data = Array.new(@rows * @cols)
  end

  # Para trabajar con matrices se utilizan dos índices (i y j)
  # Como los datos se encuentran en el array unidimensional @data
  # es necesario establecer una conversion
  def conver(i,j)
    (i * @cols) + j
  end

  # Devuelve el dato de la matriz en la posicion [i][j]
  def getData(i,j)
    @data[conver(i,j)]
  end

  # Establece el dato de la matriz en la posicion [i][j]  
  def setData(i,j,value)
    @data[conver(i,j)] = value
  end
end