(define (domain wumpus-simple-domain)
  (:requirements :strips :typing)
  
  (:types
    location - object
    agent - object
    gold - object
  )
  
  (:predicates
    (at ?agent - agent ?loc - location)
    (gold-at ?gold - gold ?loc - location)
    (holding ?agent - agent ?gold - gold)
    (connected ?loc1 - location ?loc2 - location)
    (pit ?loc - location)
    (wumpus ?loc - location)
    (safe ?loc - location)
    (has-gold ?agent - agent)
    (alive ?agent - agent)
  )
  
  (:action move
    :parameters (?agent - agent ?from - location ?to - location)
    :precondition (and 
      (at ?agent ?from)
      (connected ?from ?to)
      (safe ?to)
      (alive ?agent)
    )
    :effect (and 
      (not (at ?agent ?from))
      (at ?agent ?to)
    )
  )
  
  (:action pickup-gold
    :parameters (?agent - agent ?gold - gold ?loc - location)
    :precondition (and 
      (at ?agent ?loc)
      (gold-at ?gold ?loc)
      (alive ?agent)
    )
    :effect (and 
      (not (gold-at ?gold ?loc))
      (holding ?agent ?gold)
      (has-gold ?agent)
    )
  )
)