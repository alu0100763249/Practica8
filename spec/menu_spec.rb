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
        
      @dieta1 = Dietas::Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)
      #@dieta2 = Dietas.new()
      #@dieta3 = Dietas.new()
      #@dieta4 = Dietas.new()
      #@dieta5 = Dietas.new()
    end

    it 'Mostrar Dieta' do
      expect(@dieta1.to_s).to eq("ALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
  end
  
  
end
