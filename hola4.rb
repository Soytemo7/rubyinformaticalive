#metodos dinamicos

class Persona
  # ["saludar","corriendo"] es equivalente a la linea %w[saludar corriendo]
  %w[saludar corriendo].each do |accion|
    define_method(accion) do
      puts "Estoy #{accion} ahora"
    end 
  end
end 

persona = Persona.new
persona.saludar
persona.corriendo

#Eval (ejecuta codigo guardado en un string)

codigo = "puts 'Hola desde eval'"
eval(codigo)

class Calculadora
  def Calculador
    operacion = "100+23"
    eval(operacion)
  end 
end 

calc = Calculadora.new
puts calc.Calculador

# reflexion (inspeccionar y manipular objetos en tiempo de ejecucion)

# method_missing

class Fantasma
  def method_missing(nombre_metodo,*args)
    puts "Intestaste llamar a un metodo #{nombre_metodo} pero no existe"
  end 
end 

fantasma = Fantasma.new
fantasma.saludar
fantasma.saludar("hola",10)

#send

class Secreto 
  private
  def susurrar
    "Soy un metodo privado"
  end 
end 

secreto = Secreto.new
puts secreto.send(:susurrar)

