# encoding: utf-8

require 'indice'
require 'spec_helper'

describe Quiz do
    before :each do
       quiz = Quiz.new("Cuestionario LPP") do
            question '¿Cuantos argumentos de tipo bloque se le pueden pasar a un metodo?',
            wrong: '4',
            right: '1',
            wrong: '2'
        
            question '¿Ruby es un lenguaje interpretado?',
            wrong: 'Si',
            right: 'No'
        
    end
    
    
end