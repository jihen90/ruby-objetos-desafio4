module Habilidades

    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion

    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end

    module Omnivoro
        def comer
            'Puedo comer carne y plantas!'
        end
end

## Creación de Superclase Animal

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

# Ave < Animal y subclases de Ave

class Ave < Animal
end

class Pinguino < Ave
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador, Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Omnivoro
end

# Mamifero < Animal y subclases de Mamifero

class Mamifero < Animal
end

class Perro < Mamifero
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

# Insecto < Animal y subclases de Insecto

class Insecto < Animal
end

class Mosca < Insecto
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Omnivoro
end

class Mariposa < Insecto
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador, Habilidades:: Caminante, Alimentacion:: Herbivoro
end

 


