# gemas (codigo de otros programadores que comparten) rubygems (oficial)
# gem install (isntalar una gema)
# bundler (organizador de gemas)


# gem install pry
# gem install bundler
# bundle install (instala todas las gemas de Gemfile)
 
require 'bundler/setup'
require 'pry'
require 'faker'

puts Faker::Name.name
binding.pry

#escribir exit para salir de pry en la ejecuacion