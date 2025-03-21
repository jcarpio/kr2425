  
   Programming in Logic
   
   
   Lógica de Primer orden
   
   ir(Lugar).
     es verdad cuando me desplazo a un Lugar.
	 
	 
   ir(playa).
   ir(bosque).
   
   tengo(Cosa).
     es cierto si dispongo de un Cosa
	 
   tengo(coche).
   tengo(casa).
   
   
   clima(Clima).
     es cierto si el clima del dia es Clima.
	 
	 
   clima(soleado).
   clima(lluviso).  


   ama(Amador, Amado)
     es cierto si la persona Amador ama a la persona Amado.
	 
	 
   ama(lucia, david).
   
   
   equipo(Persona1, Persona2, Persona3, Persona4, Persona5).
     es cierto si Persona1, Persona2, Persona3, Persona4, Persona5 
	 pertenecen al mismo equipo.
   
   equipo(juan, pedro, luis, maria, luisa, lucia).
   
   
   
   clima(soleado) /\ tengo(coche) -> ir(playa)
   
   a -> b
   
   b :- a.
   
   a /\ b -> c.
   
   c:- a, b.
   
   
   ir(playa):- clima(soleado), tengo(coche).
   
   
   Listas
   
   Principio de Inducción

   Queremos demostrar que algo es verdad para 
   todos los elementos de un conjunto S.

   El conjuno S tiene que ser ordenable.

   Ejemplo: Los números naturales (1, 2, 3, 4, 5, ....)
   
   n0 = 1
   
   2 < 3, 3 < 8, 5 > 1
   
   1 < 2 < 3 < 4 ......
   
   Listas [_,_] < [_,_,_] < [_,_,_,_]
   
   n0 = []
   
   Quiero saber si el programa P es cierto para
   todos los elementos del conjunto S
   
   1) P(n0) es cierto.
   2) Para to n > n0, P(n-1) -> P(n)
   
   
   1) natural(1) es cierto.
   2) n > 1, natural(n-1) -> natural(n).
      natural(N):- N > 1, N2 is N-1, natural(N2).
      
   
   5 -> 4 -> 3 -> 2 -> 1
   Si!  Si!  Si! Si! Si!   
   
   
   natural(1).
   
   
   
   Teorema T,
   
   Sea x < 1,  x pertenece Naturales, x impar, ¿x = 2.5?  ...    .
   
   
   Teorema S,
   
   Sea x > 10, x pertenece Reales, x par, ... .
 
       
   
 
   
   
   
   
