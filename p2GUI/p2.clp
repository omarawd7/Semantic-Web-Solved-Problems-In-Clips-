
(deffacts data
(Egypt red white black )
(UnitedStates red white blue )
(Belgium black yellow red)
(Sweden yellow blue )
(Italy green white red)
(Ireland green white orange)
(Greece blue white)
)

(defrule Egypt
   (color ?c) (or (Egypt ?c ?x ?y ) (Egypt ?x ?c ?y ) (Egypt ?x ?y ?c ) )
   =>
   (printout t "Egypt" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Egypt" crlf)
(close out)
   )
(defrule UnitedStates
   (color ?c) (or (UnitedStates ?c ?x ?y ) (UnitedStates ?x ?c ?y ) (UnitedStates ?x ?y ?c ) )
   =>
   (printout t "UnitedStates" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
      (printout out "UnitedStates" crlf)
(close out)

      )
(defrule Belgium
   (color ?c) (or (Belgium ?c ?x ?y ) (Belgium ?x ?c ?y ) (Belgium ?x ?y ?c ) )
   =>
   (printout t "Belgium" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Belgium" crlf)
(close out)

   )
(defrule Sweden
   (color ?c1) (or (Sweden ?c1 ?x  ) (Sweden ?x ?c1  )  )
   =>
   (printout t "Sweden" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Sweden" crlf)
(close out)

   )
(defrule Greece
   (color ?c) (or (Greece ?c ?x  ) (Greece ?x ?c  )  )
   =>
   (printout t "Greece" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Greece" crlf)
(close out)
)
(defrule Italy
   (color ?c) (or (Italy ?c ?x ?y ) (Italy ?x ?c ?y ) (Italy ?x ?y ?c ) )
   =>
   (printout t "Italy" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Italy" crlf)
(close out)
)
(defrule Ireland
   (color ?c) (or (Ireland ?c ?x ?y ) (Ireland ?x ?c ?y ) (Ireland ?x ?y ?c ) )
   =>
   (printout t "Ireland" crlf)
(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt" out "a")
   (printout out "Ireland" crlf)
(close out)
)


