(defrule readfileData (initial-fact)=>
	(open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p3final/in.txt" d "r")
      (open "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p3final/out1.txt" out "w")
)


(defrule assertData (initial-fact)=>
    (bind ?d (readline d))
    (while (neq ?d EOF)
       (assert (information (explode$ ?d)))  
       (bind ?d (readline d)))
    (close d)
)


(defrule calculateGPA (information ?a ?b ?x  ?y ?z)=> 
(bind ?gpa (/ (+ ?b ?x ?y ?z) 4))
(printout out  ?a "    (" ?b" " ?x" " ?y" " ?z ")" " " ?gpa crlf))



(defrule closeOutFile (initial-fact)=>
    (close out)
)

