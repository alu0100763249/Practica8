include Enumerable
Nodo = Struct.new(:value, :next, :prev)
     


class Lista
    


    attr_accessor :head, :tail
    
    def initialize(cabeza,cola)
        @head = cabeza
        @tail = cola
        
       
    end 
    
    def insertar(x)
        nodo = Nodo.new(x, nil, nil)   
        if @head == nil && @tail==nil
            nodo.next=@head
            nodo.prev=@tail
            @head=nodo
            @tail=nodo
        else
            nodo.prev=@head
            nodo.next=nil
            @head.next=nodo
            @head=nodo
        end
        
    end 
    
    def insertar_varios(nodos)
        
        nodos.each do |nodoo|
            
        insertar(nodoo)
        
        end
 
    end
        
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
       @tail=tail.next
       
    end
    
    def extraer_final()
        @head=head.prev
    end
    
    def to_s
         @head.to_s 
    end
    
    
    def each
        while @head != @tail
            yield @head.value
            @head=@head.prev
        end
        
       if @head == @tail
           if @head == nil 
            nil 
           else
            yield @tail.value
           end
           
       end
    end
    
    
end