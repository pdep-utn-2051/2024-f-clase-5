module Library where
import PdePreludat


doble :: Number -> Number
doble numero = numero + numero

snd2 (_,y,_) = y
fst1(x,_,_) = x
trd3(_,_,z)= z

aplicar (fcn1,fcn2) elemento =(fcn1 elemento,fcn2 elemento)
cuentaBizarra (x,y) | x > y = x+y
                    | abs (y - x) >= 10 = y - x
                    | otherwise = x * y

vacia [] = True
vacia  lista = False       
tieneDosElementos [_,_] = True
tieneAlMenosDosElementos (x:(y:xs)) = True
tieneAlMenosDosElementos [_] = False
tieneAlMenosDosElementos [] =False            

data Figura = Triangulo {base::Number, altura::Number} 
            | Rectangulo {base::Number, altura::Number}
            | Circulo {radio::Number}

area (Triangulo x y) = x * y /2
area (Rectangulo x y) = x * y
area (Circulo r) = r * r * pi
-- ¿Cuáles son los primeros 4 caracteres de “hola mundo”?
-- take 4 "holaMundo"
-- ¿Es el 7 un numero par?
-- even 7
impar =not.even
-- ¿La longitud de “hola mundo” es mayor al numero 4?
longitudMayor = (>4).length
-- ¿La longitud de ”hola mundo” es par?
longitudPar = even.length
-- ¿Cuál es el número mas alto entre 4, 7 y la longitud de “hola mundo”?
comparar x y  = ((max x ). max y)
funcion x y= comparar x y  (length "holaMundo")
fcn x y = ((comparar x y ).length )
-- currificación y delegación
