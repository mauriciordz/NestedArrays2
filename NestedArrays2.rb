##  Jueves 9 de Junio del 2016
## Nested Arrays
## HSP y MRM
=begin
  El método debería arrojar el penúltimo elemento de las 20 últimas letras del abecedario; "Y"
  En verdad lo que hace es mover los últimos dos elementos del arreglo abecedario y los coloca en 
  un arreglo nuevo, de 3 elementos. Lo que resulta en un arreglo de tres arreglos, cada uno con 
  los últimos dos elementos abecedario.
=end

=begin
    0 1 2 3 4  
  0 X | X | X
  1 ---------
  2 X | X | X
  3 ---------
  4 X | X | X

=end

def gato

  chip = ["X", "O"].sample
  first = []
  second = []
  i = 0
  5.times { first << chip }
  if first.include?("X")
    4.times do
      second << "O"
    end
  else 
    4.times do
      second << "X"
    end
  end

final = first + second
final.shuffle!

  p final
  (0..4).each do |x|
    (0..4).each do |y|
      if x == 1 || x == 3
        print "--"
      elsif (x == 0 || x == 2 || x == 4) && (y == 1 || y == 3)
        print "|"
      else
        print " " + final[i] + " "
        i += 1
      end
    end
    puts
  end
end

gato




