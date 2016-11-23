
#Nodo de la lista, unidad
Nodo = Struct.new(:value, :next, :prev)
     

#Clase Lista, crea una lista
class Lista
    
    #Enumeraciones
    include Enumerable
    
    #attr_accessor :cabeza, :tail
    attr_accessor :head, :tail
    
    #Lista.new(nil,nil)
    def initialize(cabeza,cola)
        @head = cabeza
        @tail = cola
        
       
    end 
    
    #Insertamos un elemento en la lista
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
    
    #Insertamos varios elementos en la lista
    def insertar_varios(nodos)
        
        nodos.each do |nodoo|
            
        insertar(nodoo)
        
        end
 
    end
        
    
    #eliminar el nodo y cambiar los valores al nodo anterior 
    def extraer_inicio()
       @tail=tail.next
       
    end
    #extraemos por el final
    def extraer_final()
        @head=head.prev
    end
    
    #Muestra
    def to_s
         @head.to_s 
    end
    
    #Para funcionar Enumerable con menús
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