(define (domain move-domain)
  (:requirements :strips :typing)
  
  (:types
    room - object
    robot - object
  )
  
  (:predicates
    (at ?robot - robot ?room - room)
    (connected ?room1 - room ?room2 - room)
  )
  
  (:action move
    :parameters (?robot - robot ?from - room ?to - room)
    :precondition (and 
      (at ?robot ?from)
      (connected ?from ?to)
    )
    :effect (and 
      (not (at ?robot ?from))
      (at ?robot ?to)
    )
  )
)
