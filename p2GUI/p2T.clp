(deffacts data
(Egypt red white black )
(UnitedStates red white blue )
(Belgium black yellow red)
(Sweden yellow blue )
(Italy green white red)
(Ireland green white orange)
(Greece blue white)
)
(defrule reading-input
   =>
   (printout t "Enter the color : " )
   (assert (color(read))) )
(defrule Egypt
   (color ?c) (or (Egypt ?c ?x ?y ) (Egypt ?x ?c ?y ) (Egypt ?x ?y ?c ) )
   =>
   (printout t "Egypt" crlf))
(defrule UnitedStates
   (color ?c) (or (UnitedStates ?c ?x ?y ) (UnitedStates ?x ?c ?y ) (UnitedStates ?x ?y ?c ) )
   =>
   (printout t "UnitedStates" crlf))
(defrule Belgium
   (color ?c) (or (Belgium ?c ?x ?y ) (Belgium ?x ?c ?y ) (Belgium ?x ?y ?c ) )
   =>
   (printout t "Belgium" crlf))
(defrule Sweden
   (color ?c1) (or (Sweden ?c1 ?x  ) (Sweden ?x ?c1  )  )
   =>
   (printout t "Sweden" crlf))
(defrule Greece
   (color ?c) (or (Greece ?c ?x  ) (Greece ?x ?c  )  )
   =>
   (printout t "Greece" crlf))
(defrule Italy
   (color ?c) (or (Italy ?c ?x ?y ) (Italy ?x ?c ?y ) (Italy ?x ?y ?c ) )
   =>
   (printout t "Italy" crlf))
(defrule Ireland
   (color ?c) (or (Ireland ?c ?x ?y ) (Ireland ?x ?c ?y ) (Ireland ?x ?y ?c ) )
   =>
   (printout t "Ireland" crlf))

   (defrule reading-input
      =>
      (printout t "Enter the color : " )
      (assert (color(read))) )