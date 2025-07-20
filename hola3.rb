def dividir(a,b)
  begin
    resultado = a/b
    puts "El resultado es: #{resultado}"
  rescue ZeroDivisionError => e
    puts "Error no se puede dividir por 0 #{e.message}"
  rescue => e
    puts "Ocurrio un error inesperado #{e.message}"
  ensure 
    puts "Programa finalizado"
  end
  
end 

puts dividir(10,1)
puts dividir(10,0)
puts dividir(10,"Hola")

#excepciones pesonalizadas

class EdadInvalidadError < StandardError
  def registrar_usuario(nombre,edad)
    raise EdadInvalidadError, "La edad no puede ser negativa" if edad < 0
    puts "Usuario #{nombre} registrado con la edad #{edad}"
  rescue EdadInvalidadError => edad
    puts "Error al registrar el usuario #{e.message}"
  end 
end 

edad = EdadInvalidadError.new
edad.registrar_usuario("Carlos",25)
# edad.registrar_usuario("Francisco",-10)

#bloques

# mi_metodo {puts "Hola desde un bloque con llaves"}

# mi_metodo2 do 
#   puts "Este es otro bloque con do"
# end 

# procs (objeto que encapsula un bloque)

mi_proc = Proc.new{
  puts "soy un proc"
}

mi_proc.call

#lambdas (tipo especial de proc, varifica argumentos)

mi_lambda = -> {puts "soy una lambda"}
mi_lambda.call

#ejemplo

def saludar_con_nombre
  puts "Hola"
  yield
  puts "que gusto verte"
end 

saludar_con_nombre do
  puts "Me llamo Manuel"
end 

mi_proc2 = Proc.new do
  puts "Este codigo esta dentro de un proc"
end 
mi_proc2.call

mi_lambda2 = ->(nombre) do
  puts "Hola #{nombre} un gusto conocerte"
  return "fin del del metodo"
end 

mensaje = mi_lambda2.call("Manuel Parra")
puts mensaje
