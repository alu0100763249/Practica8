Nodo = Struct.new(:value, :next)
     


class Lista
    


    attr_accessor :head
    
    def initialize(cabeza)
        @head = cabeza
       
    end 
    def insertar(x)
        nodo = Nodo.new(x, nil)       
        nodo.next=@head
        @head=nodo
    end 
    
    def insertar_varios(nodos)
        
        nodos.each do |nodoo|
            
        insertar(nodoo)
        
        end
 
    end
        
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
       @head=head.next
       
    end
    
    def to_s
         @head.to_s 
    end
end