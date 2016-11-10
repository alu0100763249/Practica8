require "spec_helper"
require "menu/lista"
require "menu/dietas"

describe Menu do
  
  it "has a version number" do
    expect(Menu::VERSION).not_to be nil
  end

  #PROBANDO CON NÚMEROS
  context Nodo do
    
    before :each do 
      @nodon1=Nodo.new(10,nil)
    end
    
    it 'Existe el valor del nodo' do
      expect(@nodon1.value).to eq(10)
    end 
    
    it 'apunta a nil' do
      expect(@nodon1.next).to equal(nil)
    end 
    
  end


  context Lista do
    
    before :each do 
      
      @lista1 = Lista.new(nil)
      @nodon1=Nodo.new(10,nil)
      @nodon2=Nodo.new(4,@nodon1)
      @nodon3=Nodo.new(5,@nodon2)
      @nodon4=Nodo.new(8,@nodon3)
      
    end
    it 'Existe la cabeza' do
      @lista1.insertar(@nodon1)
        expect(@lista1.head.value).to equal(@nodon1)
    end 
    
    it 'Comprueba que inserta el nodo' do 
      @lista1.insertar(@nodon1)
      expect(@lista1.head.value).to equal(@nodon1)
    end
      
    it 'Comprueba que inserta varios nodos' do
      @lista1.insertar_varios([@nodon1,@nodon2,@nodon3,@nodon4])
      expect(@lista1.head.value).to equal(@nodon4)
    end
      
    it 'Extraer nodo del inicio' do
      @lista1.insertar_varios([@nodo1,@nodo2,@nodo3,@nodo4,@nodo5])
      @lista1.extraer_inicio()
      expect(@lista1.head.value).to equal(@nodo4)
    end
  end
  
  #PROBANDO CON MENÚ
  
  context Dietas do
    
    before :each do
        
      @dieta1 = Dietas::Dietas.new("DESAYUNO", "(15%)", ["Leche desnatada", "Cacao instantáneo", "Cereales de desayuno en hojuelas", "Almendras laminadas(10 unidades)"], ["1 vaso", "1 c/sopera", "1 bol pequeño", "2 c/soperas"] ,["200 ml", "10 g", "40 g", "10 g"],288.0,17,21,62)
      @dieta2 = Dietas::Dietas.new("MEDIA MAÑANA", "(10%)", ["Cerezas", "Galletas bifidus con sésamo"], ["10-12 unidades medianas", "4 unidades"] ,["120 g", "40 g"],255.5,7,24,69)
      @dieta3 = Dietas::Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)
      @dieta4 = Dietas::Dietas.new("MERIENDA", "(15%)", ["Galletas de leche con chocolate y yogur", "Flan de vainilla sin huevo"], ["4 unidades", "1 unidad"] ,["46 g", "110 g"],313.6,10,30,60)
      @dieta5 = Dietas::Dietas.new("CENA", "(25 - 30%)", ["Crema de bubango", "Tortilla campesina con espinacas", "Tomate en dados con atún", "Piña natural o en su jugo picada", "Pan de trigo integral"], ["2 cucharones", "1 cuña grande", "5 a 6 c/soperas", "5 c/soperas", "1 rodaja"] ,["200 g", "150 g", "150 g", "120 g", "20 g"],561.6,19,40,41)
    end

    it 'Mostrar Dieta' do
      expect(@dieta3.to_s).to eq("ALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
  end
  
  context Nodo do
    
    before :each do 
      @dieta1 = Dietas::Dietas.new("DESAYUNO", "(15%)", ["Leche desnatada", "Cacao instantáneo", "Cereales de desayuno en hojuelas", "Almendras laminadas(10 unidades)"], ["1 vaso", "1 c/sopera", "1 bol pequeño", "2 c/soperas"] ,["200 ml", "10 g", "40 g", "10 g"],288.0,17,21,62)
      @nodo1=Nodo.new(@dieta1,nil)
    end
    
    it 'Existe el valor del nodo' do
      expect(@nodo1.value).to eq(@dieta1)
    end 
    
    it 'Apunta a nil' do
      expect(@nodo1.next).to equal(nil)
    end 
    
  end
  
  
  
  context Lista do
    
    before :each do 
      
      @dieta1 = Dietas::Dietas.new("DESAYUNO", "(15%)", ["Leche desnatada", "Cacao instantáneo", "Cereales de desayuno en hojuelas", "Almendras laminadas(10 unidades)"], ["1 vaso", "1 c/sopera", "1 bol pequeño", "2 c/soperas"] ,["200 ml", "10 g", "40 g", "10 g"],288.0,17,21,62)
      @dieta2 = Dietas::Dietas.new("MEDIA MAÑANA", "(10%)", ["Cerezas", "Galletas bifidus con sésamo"], ["10-12 unidades medianas", "4 unidades"] ,["120 g", "40 g"],255.5,7,24,69)
      @dieta3 = Dietas::Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)
      @dieta4 = Dietas::Dietas.new("MERIENDA", "(15%)", ["Galletas de leche con chocolate y yogur", "Flan de vainilla sin huevo"], ["4 unidades", "1 unidad"] ,["46 g", "110 g"],313.6,10,30,60)
      @dieta5 = Dietas::Dietas.new("CENA", "(25 - 30%)", ["Crema de bubango", "Tortilla campesina con espinacas", "Tomate en dados con atún", "Piña natural o en su jugo picada", "Pan de trigo integral"], ["2 cucharones", "1 cuña grande", "5 a 6 c/soperas", "5 c/soperas", "1 rodaja"] ,["200 g", "150 g", "150 g", "120 g", "20 g"],561.6,19,40,41)
      @lista1 = Lista.new(nil)
     
      @nodo1=Nodo.new(@dieta1,nil)
      @nodo2=Nodo.new(@dieta2,@nodo1)
      @nodo3=Nodo.new(@dieta3,@nodo2)
      @nodo4=Nodo.new(@dieta4,@nodo3)
      @nodo5=Nodo.new(@dieta5,@nodo4)
      
      
    end
    
    it 'Extraer nodo del inicio' do
      @lista1.insertar_varios([@nodo1,@nodo2,@nodo3,@nodo4,@nodo5])
      @lista1.extraer_inicio()
      expect(@lista1.head.value).to equal(@nodo4)
    end
    
    it 'Comprueba que inserta el nodo' do 
      @lista1.insertar(@nodo1)
      expect(@lista1.head.value).to equal(@nodo1)
    end
      
    it 'Comprueba que inserta verios nodos' do
      @lista1.insertar_varios([@nodo1,@nodo2,@nodo3,@nodo4,@nodo5])
      expect(@lista1.head.value).to equal(@nodo5)
    end
      
    it 'Existe la cabeza' do
      @lista1.insertar(@nodo1)
      expect(@lista1.head.value).to equal(@nodo1)
    end 
  
  end
end
