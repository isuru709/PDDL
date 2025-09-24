(define (domain fetch-domain)
  (:requirements :strips :typing)
  
  (:types
    room - object
    robot - object
    treat - object
  )
  
  (:predicates
    (at ?robot - robot ?room - room)
    (treat-at ?treat - treat ?room - room)
    (holding ?robot - robot ?treat - treat)
    (connected ?room1 - room ?room2 - room)
    (empty-handed ?robot - robot)
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
  
  (:action pickup
    :parameters (?robot - robot ?treat - treat ?room - room)
    :precondition (and 
      (at ?robot ?room)
      (treat-at ?treat ?room)
      (empty-handed ?robot)
    )
    :effect (and 
      (not (treat-at ?treat ?room))
      (not (empty-handed ?robot))
      (holding ?robot ?treat)
    )
  )
  
  (:action drop
    :parameters (?robot - robot ?treat - treat ?room - room)
    :precondition (and 
      (at ?robot ?room)
      (holding ?robot ?treat)
    )
    :effect (and 
      (not (holding ?robot ?treat))
      (treat-at ?treat ?room)
      (empty-handed ?robot)
    )
  )
)