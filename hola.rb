# sudo apt-get update
# sudo apt update
# IRB

puts "Hola mundo con ruby"

#Variable global
$edad = 100
puts $edad

#variable de objeto

class Persona
    def initialize
        @edad = 30        
    end

    def mostrar_edad
        puts @edad
    end
end

juanito = Persona.new
juanito.mostrar_edad


#Variable de clase

class Persona2
    @@total = 0

    def initialize
        @@total = @@total + 1
    end

    def self.mostrar_total
        puts @@total
    end    
end

persona1 = Persona2.new
Persona2.mostrar_total

#tipos de datos

edad = 25
puts edad

nombre = "Manuel"
puts nombre

valor = true
puts valor

#tipo de dato simbolo
color = :azul
puts color

#entrada
puts "Escribe tu nombre"
nombreentrada = gets
puts "Tu nombre es: "+nombreentrada

edad2 = 20

if edad2 > 18
    puts "Eres mayor de edad"
elsif edad >50
    puts "Eres anciano"
else
    puts "Eres menor de edad"
end

# unless a menos que, un if al reves

llueve = false

unless llueve
    puts "Sal a pasear"
end

dia = "lunes"

case dia
when "lunes"
    puts "Es el inicio de la semana"
when "viernes"
    puts "Debemos celebrar el viernes"
else
    puts "Es otro dia cualquiera"
end

contador = 0
while contador < 10
    puts "Ejecutando apliacion",contador+1
    contador = contador + 1
end

contador2 = 0
until contador2 == 5
    puts contador2
    contador2 = contador2 +1
end 

for numero in 1..10
    puts numero
end 

nombres = ["Manuel","Pedro","Juan"]
puts nombres[0]

nombres.each do |nombre3|
    puts nombre3
end

#modificadores

puts "solo muestrame si es verdad" if true
puts "solo muestrame si es verdad" unless true

#arrays

compras = ["pan","leche","queso"]
puts compras

numeros = [10,20,30]

nuevos_numeros = numeros.map do |n|
    n*2  
end

puts numeros
puts nuevos_numeros

nueva_lista = numeros.select do |n|
  n>=20
end

puts nueva_lista

arabigos = [1,2,3]

unsolovalor = arabigos.reduce(0) do |sumado,n|
    sumado + n
end 
puts unsolovalor

#hashes.- diccionarios

personahash = {"Nombre"=>"Juan","Edad"=>34,"Ciudad"=>"Mexico"}
puts personahash

puts personahash["nombre"]

personahash.each do |clave,valor|
    puts "#{clave} : #{valor}"
end 

#yields o bloques

def saludar
    puts "hola"
    yield 
    puts "adios"
end

saludar do
    puts "Este es un bloque de codigo"
end

# &block 


def ejecutar_bloque(&block)
    puts "hola 2"
    block.call
    puts "adios 2"
end 

ejecutar_bloque do
    puts "Bloque ejecutado"
end 
