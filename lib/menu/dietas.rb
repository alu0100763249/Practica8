    #Clase Dietas, Crea una clase de menús
    class Dietas
    	
    	#Comparaciones
    	include Comparable
    	#attr_accessor :titulo, :porcentaje, :descripcion, :porcion, :gramos, :vct, :pp, :pg, :ph
        attr_accessor :titulo, :porcentaje, :descripcion, :porcion, :gramos, :vct, :pp, :pg, :ph
        
        #"ALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%"
        def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
            @titulo, @porcentaje, @descripcion, @porcion, @gramos, @vct, @pp, @pg, @ph = titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph
        end
        
        #Obtenemos el conjunto de platos (con sus descripciones, porciones y gramos)
        def nplatos()
		    plat=''
		    i=0
		    while i < @descripcion.size
			    plat=plat + "- #{@descripcion[i]}, #{@porcion[i]}, #{@gramos[i]}\n"
			    i=i+1
		    end
		    return plat
		end
		
		#obtenemos la descripción de un plato
		def desc(n)
		    dplato="#{@descripcion[n]}"
		    return dplato
	    end
	    
		#Obtenemos la ingesta diaria
	    def ingesta_diaria()
		    return @porcentaje
	    end
	    
	    #Obtenemos un plato determinado de la dieta
	    def plato(n)
		    plat="#{@descripcion[n]}, #{@porcion[n]}, #{@gramos[n]}"
		    return plat
	    end
	    
	    #obtenemos el VCT
	    def vacato()
		    vacto="#{@vct} kcal"
		    return vacto
	    end
	    
	    #obtenemos el porcentaje de proteínas de un conjunto de platos
	    def porp()
		    pop="#{@pp}%"
	    	return pop
	    end
	    
	    #obtenemos el porcentaje de grasas de un conjunto de platos
	    def porg()
		    pog="#{@pg}%"
		    return pog
	    end
	    
	    #obtenemos el porcentaje de hidratos de un conjunto de platos
	    def porh()
		    poh="#{@ph}%"
		    return poh
	    end
	    
	    #Obtenemos la salida formateada
	    def to_s()
	
	        "#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
	
	    end
	    
	    #Comparamos menús
	    def <=>(other)
	    	vct<=>other.vct
	    end
	    
	    
	    
    end

	#Clase Dietas Por Edad, Crea una clase de menús clasificados por la edad
	class Edad < Dietas
		#attr_accessor :titulo, :porcentaje, :descripcion, :porcion, :gramos, :vct, :pp, :pg, :ph :grupoed
		attr_accessor :grupoed
		#"ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"9 a 13 años"
		def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph, grupoed)
			super(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
			@grupoed=grupoed
		end
	
		#Obtenemos la salida formateada
		def to_s()
	
			"#{@grupoed}\n#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
	
		end
	
	end
	
	#Clase Dietas, Crea una clase de menús clasificado por el tipo de alimentos
	class Alimentos < Dietas
		#attr_accessor :titulo, :porcentaje, :descripcion, :porcion, :gramos, :vct, :pp, :pg, :ph :grupoali
		attr_accessor :grupoali
		
		#leche, huevos, pescado, carne y frutos secos\nALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%"
		def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph, grupoali)
			super(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
			@grupoali=grupoali
		end
		
		#Obtenemos la salida formateada
		def to_s()
		
			"#{@grupoali}\n#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
		
		end
	
	
	end
