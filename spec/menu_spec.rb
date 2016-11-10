require "spec_helper"
require "menu/lista"

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
end
