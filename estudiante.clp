; Definimos el template para crear los estudiantes
(deftemplate Estudiante
	(slot nombres
		(type STRING)
		(default ?DERIVE)
	)
	(slot apellidos
		(type STRING)
		(default ?DERIVE)
	)
	(slot grado
		(type STRING)
		(default ?DERIVE)
	)
	(slot paralelo
		(type STRING)
		(default ?DERIVE)
	)
	(slot estado
		(type SYMBOL)
		(default sin_evaluar)
		(allowed-symbols sin_evaluar evaluado)
	)
)

; Definimos el template que guardara el resultado individual de cada subtest y el resultado global
(deftemplate Resultado
	(slot nombre
		(type STRING)
		(default ?DERIVE)
	)
    (slot puntajecb
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot puntajepv
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot puntajeF
		(type NUMBER)
		(default ?DERIVE)
	)
)

; Definimos el template para almacenar las respuestas del subtest conceptos basicos
(deftemplate CB "Permite almacenar las respuestas al subtest de conceptos basicos"
	(slot cb1
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb2
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb3
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb4
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb5
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb6
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb7
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb8
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb9
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot cb10
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb11
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb12
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb13
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb14
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb15
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb16
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb17
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb18
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb19
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb20
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb21
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb22
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb23
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot cb24
		(type NUMBER)
		(default ?DERIVE)
	)
)

; Definimos el template para almacenar las respuestas del subtest percepcion visual
(deftemplate PV "Permite almacenar las respuestas al subtest de percepcion visual"
	(slot pv1
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv2
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv3
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv4
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv5
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv6
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv7
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv8
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv9
		(type NUMBER)
		(default ?DERIVE)
	)
    (slot pv10
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv11
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv12
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv13
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv14
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv15
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv16
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv17
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv18
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv19
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot pv20
		(type NUMBER)
		(default ?DERIVE)
	)
)

; Definimos una funcion sencilla para obtener el porcentaje de ambos subtest

(deffunction f(?n1 ?n2)
	(bind ?res (/ (* (+ ?n1 ?n2) 100) 40)
	)
)
	
; Definimos la regla que utilizaremos
(defrule Reglas
	?es <- (Estudiante (nombres ?nom)(apellidos ?ape)(grado ?gra)(paralelo ?par)(estado ?esta))
		(and
			(test (eq ?esta sin_evaluar))
		)
	(CB
		(cb1 ?a)
		(cb2 ?b)
		(cb3 ?c)
		(cb4 ?d)
		(cb5 ?e)
		(cb6 ?f)
		(cb7 ?g)
		(cb8 ?h)
		(cb9 ?i)
		(cb10 ?j)
		(cb11 ?k)
		(cb12 ?l)
		(cb13 ?m)
		(cb14 ?n)
		(cb15 ?o)
		(cb16 ?p)
		(cb17 ?q)
		(cb18 ?r)
		(cb19 ?s)
		(cb20 ?t)
		(cb21 ?u)
		(cb22 ?v)
		(cb23 ?w)
		(cb24 ?x)
	)
	(PV
		(pv1 ?p1)
		(pv2 ?p2)
		(pv3 ?p3)
		(pv4 ?p4)
		(pv5 ?p5)
		(pv6 ?p6)
		(pv7 ?p7)
		(pv8 ?p8)
		(pv9 ?p9)
		(pv10 ?p10)
		(pv11 ?p11)
		(pv12 ?p12)
		(pv13 ?p13)
		(pv14 ?p14)
		(pv15 ?p15)
		(pv16 ?p16)
		(pv17 ?p17)
		(pv18 ?p18)
		(pv19 ?p19)
		(pv20 ?p20)
	)
=>
	(bind ?rcb (+ ?a ?b ?c ?d ?e ?f ?g ?h ?i ?j ?k ?l ?m ?n ?o ?p ?q ?r ?s ?t ?u ?v ?w ?x))
	(bind ?rpv (+ ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?p10 ?p11 ?p12 ?p13 ?p14 ?p15 ?p16 ?p17 ?p18 ?p19 ?p20)) 
	(bind ?res (f ?rcb ?rpv))
	(modify ?es (estado evaluado))
	(assert (Resultado (nombre ?nom)(puntajecb ?rcb)(puntajepv ?rpv)(puntajeF ?res)))
	(printout t "El Estudiante: "  ?nom " ha respondido correctamente en un "  ?res  " % el test" crlf) 
	
)