    class Dietas
        attr_accessor :titulo, :porcentaje, :descripcion, :porcion, :gramos, :vct, :pp, :pg, :ph
        
        def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
            @titulo, @porcentaje, @descripcion, @porcion, @gramos, @vct, @pp, @pg, @ph = titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph
        end
        
        
        def nplatos()#Obtenemos el conjunto de platos (con sus descripciones, porciones y gramos)
		    plat=''
		    i=0
		    while i < @descripcion.size
			    plat=plat + "- #{@descripcion[i]}, #{@porcion[i]}, #{@gramos[i]}\n"
			    i=i+1
		    end
		    return plat
		end
		
		
		def desc(n)#obtenemos la descripción de un plato
		    dplato="#{@descripcion[n]}"
		    return dplato
	    end
	    
	
	    def ingesta_diaria()#Obtenemos la ingesta diaria
		    return @porcentaje
	    end
	    
	    def plato(n)#Obtenemos un plato determinado de la dieta
		    plat="#{@descripcion[n]}, #{@porcion[n]}, #{@gramos[n]}"
		    return plat
	    end
	    
	    def vacato()#obtenemos el VCT
		    vacto="#{@vct} kcal"
		    return vacto
	    end
	    
	    def porp()#obtenemos el porcentaje de proteínas de un conjunto de platos
		    pop="#{@pp}%"
	    	return pop
	    end
	    
	    def porg()#obtenemos el porcentaje de grasas de un conjunto de platos
		    pog="#{@pg}%"
		    return pog
	    end
	    
	    def porh()#obtenemos el porcentaje de hidratos de un conjunto de platos
		    poh="#{@ph}%"
		    return poh
	    end
	    
	    def to_s()#Obtenemos la salida formateada
	
	        "#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
	
	    end
	    
	    
    end


	class Edad < Dietas
	
		attr_accessor :grupoed
	
		def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph, grupoed)
			super(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
			@grupoed=grupoed
		end
	
		def to_s()#Obtenemos la salida formateada
	
			"#{@grupoed}\n#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
	
		end
	
	end

	class Alimentos < Dietas
		
		attr_accessor :grupoali
		
		def initialize(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph, grupoali)
			super(titulo, porcentaje, descripcion, porcion, gramos, vct, pp, pg, ph)
			@grupoali=grupoali
		end
		
		def to_s()#Obtenemos la salida formateada
		
			"#{@grupoali}\n#{@titulo}  #{ingesta_diaria()}\n#{nplatos()}V.C.T | %    #{vacato()} | #{porp()} - #{porg()} - #{porh()}"
		
		end
	
	
	end
