(define (problem wumpus-simple-problem)
  (:domain wumpus-simple-domain)
  
  (:objects 
    agent1 - agent
    gold1 - gold
    loc11 loc12 loc13 loc14
    loc21 loc22 loc23 loc24  
    loc31 loc32 loc33 loc34
    loc41 loc42 loc43 loc44 - location
  )
  
  (:init 
    (at agent1 loc11)
    (alive agent1)
    (gold-at gold1 loc42)
    (wumpus loc13)
    (pit loc31)
    (pit loc32)
    (pit loc24)
    (safe loc11) (safe loc12) (safe loc14)
    (safe loc21) (safe loc22) (safe loc23)
    (safe loc33) (safe loc34)
    (safe loc41) (safe loc42) (safe loc43) (safe loc44)
    (connected loc11 loc12) (connected loc12 loc11)
    (connected loc12 loc13) (connected loc13 loc12)
    (connected loc13 loc14) (connected loc14 loc13)
    (connected loc21 loc22) (connected loc22 loc21)
    (connected loc22 loc23) (connected loc23 loc22)
    (connected loc23 loc24) (connected loc24 loc23)
    (connected loc31 loc32) (connected loc32 loc31)
    (connected loc32 loc33) (connected loc33 loc32)
    (connected loc33 loc34) (connected loc34 loc33)
    (connected loc41 loc42) (connected loc42 loc41)
    (connected loc42 loc43) (connected loc43 loc42)
    (connected loc43 loc44) (connected loc44 loc43)
    (connected loc11 loc21) (connected loc21 loc11)
    (connected loc21 loc31) (connected loc31 loc21)
    (connected loc31 loc41) (connected loc41 loc31)
    (connected loc12 loc22) (connected loc22 loc12)
    (connected loc22 loc32) (connected loc32 loc22)
    (connected loc32 loc42) (connected loc42 loc32)
    (connected loc13 loc23) (connected loc23 loc13)
    (connected loc23 loc33) (connected loc33 loc23)
    (connected loc33 loc43) (connected loc43 loc33)
    (connected loc14 loc24) (connected loc24 loc14)
    (connected loc24 loc34) (connected loc34 loc24)
    (connected loc34 loc44) (connected loc44 loc34)
  )
  
  (:goal 
    (and
      (at agent1 loc11)
      (has-gold agent1)
      (alive agent1)
    )
  )
)