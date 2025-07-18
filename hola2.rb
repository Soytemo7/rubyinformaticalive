class Persona
  def initialize(nombre)
    @nombre = nombre
  end 

  def saludar
    puts "Hola soy: #{@nombre}"
  end 

  private
  def secreto
    "Soy un metodo secreto"
  end 

  protected 
  def mostrar_nombre
    puts @nombre
  end 

  public 
  def llamando_secreto
    puts "hola"+secreto
  end 
end 

persona1 = Persona.new("Manuel")
persona1.saludar
persona1.llamando_secreto

persona2 = Persona.new("Cuauhtemoc")
persona2.saludar

class Animal
  def initialize(nombre)
    @nombre = nombre
  end 

  def hablar
    puts "Soy : #{@nombre}"
  end 
end 

class Perro < Animal
  def ladrar
    puts "ladrando"
  end 
end 

perro = Perro.new("Max")
perro.ladrar
perro.hablar

#modulos

module Habilidades
  def correr
    puts "Estoy corriendo"
  end 
end 

class Gente
  include Habilidades

  def initialize(nombre)
    @nombre = nombre
  end 
end 

gente1 = Gente.new("Manuel")
gente1.correr

class Gente2
  attr_reader:nombre
  attr_writer:edad
  attr_accessor:pais

  # es lo mismo que abajo
  # def leer
  #   @nombre
  # end 

  # def asignar_edad(edad)
  #   @edad = edad
  # end 

  def initialize(nombre,edad,pais)
    @nombre = nombre
    @edad = edad
    @pais = pais
  end 

  def edad
    "Edad actual: #{@edad}"
  end 
end 

gente3 = Gente2.new("Manuel",30,"Mexico")

puts gente3.nombre
puts gente3.edad
puts gente3.pais
gente3.pais = "Jamaica"
puts gente3.pais