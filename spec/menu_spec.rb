require "spec_helper"
require "menu/lista"
require "menu/dietas"


describe Menu do
  
  it "has a version number" do
    expect(Menu::VERSION).not_to be nil
  end

  context Dietas do
    
    before :each do
        
      @dieta1 = Dietas::Dietas.new("ALMUERZO", "(30 - 35%)", ["Macarrones con salsa de tomate y queso parmesano", "Escalope de ternera", "Ensalada básica con zanahoria rallada", "Mandarina", "Pan de trigo integral"], ["1 1/2 cucharón", "1 bistec mediano", "1 guarnición", "1 grande", "1 rodaja"] ,["200 g", "100 g", "120 g", "180 g", "20 g"],785.9,19,34,47)
    
    
    end

    it 'Iniciamos Dieta' do
      expect(@dieta1.to_s).to eq("ALMUERZO  (30 - 35%)\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, 1 guarnición, 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\nV.C.T | %    785.9 kcal | 19% - 34% - 47%")
    end
    
    it 'Dietas de la Clase Padre' do
      expect(@dieta1.is_a? Dietas::Dietas).to eq true
    end
    
    it 'No pertenece a la clase hija Edad' do
      expect(@dieta1.is_a? Dietas::Edad).to eq false
    end
      
    it 'No pertenece a la clase hija Alimentos' do
      expect(@dieta1.is_a? Dietas::Alimentos).to eq false
    end
    
    it 'No pertenece a Edad' do
      expect(@dieta1.respond_to? "Edad"). to eq false
    end
    
    it 'No pertenece a Alimentos' do
      expect(@dieta1.respond_to? "Alimentos"). to eq false
    end
    
    it 'Comprobamos que pertenece a Dietas' do
      expect(@dieta1.class).to eq(Dietas::Dietas)
    end
  end

end


  






 