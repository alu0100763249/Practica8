# encoding: UTF-8
require "spec_helper"
require "menu/lista"
require "menu/dietas"


describe Menu do
  
  it "has a version number" do
    expect(Menu::VERSION).not_to be nil
  end

  context Dietas do
    
    before :each do
        
      @dieta1 = Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)
    
    
    end

    it 'Iniciamos Dieta' do
      expect(@dieta1.to_s).to eq("ALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
    
    it 'Dietas de la Clase Padre' do
      expect(@dieta1.is_a? Dietas).to eq true
    end
    
    it 'No pertenece a la clase hija Edad' do
      expect(@dieta1.is_a? Edad).to eq false
    end
      
    it 'No pertenece a la clase hija Alimentos' do
      expect(@dieta1.is_a? Alimentos).to eq false
    end
    
    it 'No pertenece a Edad' do
      expect(@dieta1.respond_to? "Edad"). to eq false
    end
    
    it 'No pertenece a Alimentos' do
      expect(@dieta1.respond_to? "Alimentos"). to eq false
    end
    
    it 'Comprobamos que pertenece a Dietas' do
      expect(@dieta1.class).to eq(Dietas)
    end
  end
  
  context Edad do
    before :each do
      @dietaed=Edad.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"9 a 13 años")
  
    end
    
    it 'Probando Dieta por Edad' do
      expect(@dietaed.to_s).to eq("9 a 13 años\nALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
    
    it 'Dietas es la clase madre' do
      expect(@dietaed.is_a? Dietas).to eq true
    end
    
    it 'Dietas no es instancia de la clase madre' do
      expect(@dietaed.instance_of? Dietas).to eq false
    end
    
    it 'Clase Edad' do
      expect(@dietaed.class).to eq (Edad)
    end
    
    it 'Clase Madre Dietas' do
      expect(@dietaed.class.superclass).to eq(Dietas)
    end
    
    it 'Pertenece a la clase hija' do
      expect(@dietaed.is_a? Edad).to eq true
    end
    
    it 'No pertenece a la clase Alimentos' do
      expect(@dietaed.is_a? Alimentos).to eq false
    end
    
    it 'No pertenece a Alimentos' do
      expect(@dietaed.respond_to? "Alimentos").to eq false
    end
  end
  #////////
  
  context Alimentos do
    before :each do
      @dietaali=Alimentos.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"leche, huevos, pescado, carne y frutos secos")
  
    end
    
    it 'Probando Dieta por Edad' do
      expect(@dietaali.to_s).to eq("leche, huevos, pescado, carne y frutos secos\nALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
    
    it 'Dietas es la clase madre' do
      expect(@dietaali.is_a? Dietas).to eq true
    end
    
    it 'Dietas no es instancia de la clase madre' do
      expect(@dietaali.instance_of? Dietas).to eq false
    end
    
    it 'Clase Edad' do
      expect(@dietaali.class).to eq (Alimentos)
    end
    
    it 'Clase Madre Dietas' do
      expect(@dietaali.class.superclass).to eq(Dietas)
    end
    
    it 'Pertenece a la clase hija' do
      expect(@dietaali.is_a? Alimentos).to eq true
    end
    
    it 'No pertenece a la clase Edad' do
      expect(@dietaali.is_a? Edad).to eq false
    end
    
    it 'No pertenece a Edad' do
      expect(@dietaali.respond_to? "Edad").to eq false
    end
  end
  
  #Con números
 context Nodo do
    
    before :each do 
      @nodon1=Nodo.new(10,nil,nil)
    end
    
    it 'Existe el valor del nodo' do
      expect(@nodon1.value).to eq(10)
    end 
    
    it 'Next apunta a nil' do
      expect(@nodon1.next).to equal(nil)
    end 
    
    it 'Prev apunta a nil' do
      expect(@nodon1.prev).to equal(nil)
    end 
  end
  
  context Lista do
    
    before :each do 
      
      @lista1 = Lista.new(nil,nil)
    
      
    end
    it 'Existe la cabeza' do
      @lista1.insertar(1)
      expect(@lista1.head.value).to equal(1)
    end 
    
     it 'Existe la cola' do
      @lista1.insertar(1)
      expect(@lista1.tail.value).to equal(1)
    end 
    
    it 'Insertando por la cabeza' do 
      @lista1.insertar(1)
      expect(@lista1.head.value).to equal(1)
    end
      
    it 'Insertando varios por la cabeza' do
      @lista1.insertar_varios([1,2,3,4])
      expect(@lista1.head.value).to equal(4)
    end
      
    it 'Comprobando que se inserta por la cola' do
      @lista1.insertar_varios([1,2,3,4,5])
      expect(@lista1.tail.value).to equal(1)
    end
    
    it 'Comprobando extracción por el inicio' do
      @lista1.insertar_varios([1,2,3,4])
      @lista1.extraer_inicio()
      expect(@lista1.tail.value).to equal(2)
    end
    
    it 'Comprobando extracción por el final' do
      @lista1.insertar_varios([1,2,3,4])
      @lista1.extraer_final()
      expect(@lista1.head.value).to equal(3)
    end
  end
  
  #Con clases Dieta Edad y Alimentos
  
   context Nodo do
    
    before :each do
      @dietaali=Alimentos.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"leche, huevos, pescado, carne y frutos secos")
      @nodo1=Nodo.new(@dietaali,nil,nil)
    end
    
    it 'Existe el valor del nodo' do
      expect(@nodo1.value).to eq(@dietaali)
    end 
    
    it 'Next apunta a nil' do
      expect(@nodo1.next).to equal(nil)
    end 
    
    it 'Prev apunta a nil' do
      expect(@nodo1.prev).to equal(nil)
    end 
  end
  
  context Lista do
    
    before :each do 
      
      @lista1 = Lista.new(nil,nil)
      @dietaed1 = Edad.new("DESAYUNO", "(15%)", ["Leche desnatada", "Cacao instantáneo", "Cereales de desayuno en hojuelas", "Almendras laminadas(10 unidades)"], ["1 vaso", "1 c/sopera", "1 bol pequeño", "2 c/soperas"] ,["200 ml", "10 g", "40 g", "10 g"],288.0,17,21,62,"4 a 8 años")
      @dietaed2 = Edad.new("MEDIA MAÑANA", "(10%)", ["Cerezas", "Galletas bifidus con sésamo"], ["10-12 unidades medianas", "4 unidades"] ,["120 g", "40 g"],255.5,7,24,69,"9 a 13 años")
      @dietaed3 = Edad.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"9 a 13 años")
      @dietaed4 = Edad.new("MERIENDA", "(15%)", ["Galletas de leche con chocolate y yogur", "Flan de vainilla sin huevo"], ["4 unidades", "1 unidad"] ,["46 g", "110 g"],313.6,10,30,60,"4 a 8 años")
      @dietaed5 = Edad.new("CENA", "(25 - 30%)", ["Crema de bubango", "Tortilla campesina con espinacas", "Tomate en dados con atún", "Piña natural o en su jugo picada", "Pan de trigo integral"], ["2 cucharones", "1 cuña grande", "5 a 6 c/soperas", "5 c/soperas", "1 rodaja"] ,["200 g", "150 g", "150 g", "120 g", "20 g"],561.6,19,40,41,"14 a 18 años")
      
      #Para Mixto
      @dietaali = Alimentos.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47,"leche, huevos, pescado, carne y frutos secos")
      @dieta    = Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)

    
    end
    
    it 'Existe la cabeza' do
      @lista1.insertar(@dietaed1)
      expect(@lista1.head.value).to equal(@dietaed1)
    end 
    
     it 'Existe la cola' do
      @lista1.insertar(@dietaed1)
      expect(@lista1.tail.value).to equal(@dietaed1)
    end 
    
    it 'Insertando por la cabeza' do 
      @lista1.insertar(@dietaed1)
      expect(@lista1.head.value).to equal(@dietaed1)
    end
      
    it 'Insertando varios por la cabeza' do
      @lista1.insertar_varios([@dietaed1,@dietaed2,@dietaed3,@dietaed4,@dietaed5])
      expect(@lista1.head.value).to equal(@dietaed5)
    end
      
    it 'Comprobando que se inserta por la cola' do
      @lista1.insertar_varios([@dietaed1,@dietaed2,@dietaed3,@dietaed4,@dietaed5])
      expect(@lista1.tail.value).to equal(@dietaed1)
    end
    
    it 'Comprobando extracción por el inicio' do
      @lista1.insertar_varios([@dietaed1,@dietaed2,@dietaed3,@dietaed4,@dietaed5])
      @lista1.extraer_inicio()
      expect(@lista1.tail.value).to equal(@dietaed2)
    end
    
    it 'Comprobando extracción por el final' do
      @lista1.insertar_varios([@dietaed1,@dietaed2,@dietaed3,@dietaed4,@dietaed5])
      @lista1.extraer_final()
      expect(@lista1.head.value).to equal(@dietaed4)
    end
    
    #Probando Mixto
    
    
     it 'Insertando varios por la cabeza mixto' do
      @lista1.insertar_varios([@dietaed1,@dietaali,@dieta,10,@dietaed5])
      expect(@lista1.head.value).to equal(@dietaed5)
    end
      
    it 'Comprobando que se inserta por la cola mixto' do
      @lista1.insertar_varios([@dietaed1,@dietaali,@dieta,10,@dietaed5])
      expect(@lista1.tail.value).to equal(@dietaed1)
    end
    
    it 'Comprobando extracción por el inicio mixto' do
      @lista1.insertar_varios([@dietaed1,@dietaali,@dieta,10,@dietaed5])
      @lista1.extraer_inicio()
      expect(@lista1.tail.value).to equal(@dietaali)
    end
    
    it 'Comprobando extracción por el final mixto' do
      @lista1.insertar_varios([@dietaed1,@dietaali,@dieta,10,@dietaed5])
      @lista1.extraer_final()
      expect(@lista1.head.value).to equal(10)
    end
    
  end
  
end

