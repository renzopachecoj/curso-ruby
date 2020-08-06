#comentario
=begin
    comentario
=end

puts "Hello, World!"
#print " Hello, World!"

variables_largas = "vars" #nombrar variables con subguion
Pi = 3.14 #nombrar constantes con primera letra mayuscula
numero = 10
numero = numero.to_f

puts numero
#puts numero.methods
print("Nombre: " ) #usar print para prompt de una linea con get
nombre = gets
nombre = nombre.strip #remover whitespace
puts "Su nombre es #{nombre}"
cadena = 'somethingsomething'
cadena2 = " somethingmore"
puts "Cadenas: #{cadena}#{cadena2}"

x = 4
y = 5
z = 10
puts "X=#{x}, Y=#{y}"
puts "Suma: #{x+y}"
puts "Resta: #{x-y}"
puts "Multiplicacion: #{x*y}"
puts "Division: #{x/y}"
puts "Potenciacion: #{x**y}"
puts "Modulo: #{x%y}"
#Jerarquia de operaciones: ** -> */% -> +-

puts "eql x, y ?: #{x.eql?(y)}" #mismo tipo y valor
puts "equal x, y ?: #{x.equal?(y)}" #compara id de objetos
puts "x<y && z>y || z>x?: #{x<y && z>y || z>x}" #comparaciones
#puts "x<y and z>y or z>x?: #{x<y and z>y or z>x}"

if x<y
    puts "x<y"
else 
    puts "x>y"
end

arreglo = %w[1 2 3 4 L R] #arreglos de cualquier tipo
arreglo << "C"
puts arreglo
arreglo2 = [1, 2, 3, 4, 5]
puts arreglo2
puts arreglo.first
puts arreglo.last
puts (1..10).to_a #inclusivo
puts (1...10).to_a #no inclusivo

puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

class Customer
    #getter y setter
    attr_accessor :x
    attr_accessor :y
    def initialize(id, name ,telf)
        @cust_id = id 
        @cust_name = name 
        @cust_telf = telf
    end
    def show_details()
        puts "#@cust_id #@cust_name #@cust_telf"
    end
    #metodo getter
    def name
        @name
    end
    #metodo setter
    def name=(name)
        @cust_name = website
    end
end
cust1 = Customer.new("1", "John", "0968233602")
cust1.show_details()

def fun_splat(*args) #splats para parametros indefinidos, doble splat para hash
    puts args
    puts args.inspect
end
def fun_mandatory(mandatory:) #indica un parametro mandatorio
    puts mandatory
end
def fun_default(default: "default") #devuelve un valor por defecto si no se incluye el parametro
    puts default
end
fun_splat(1,2,3)
#fun_mandatory()
fun_default()

#sobrecarga de metodos
class Array
    def imprimir
        puts "hola mundo"
    end
end

arr = [1,2,3]
arr.each do |elemento| #recorrer array
    puts elemento
end
arr.imprimir



