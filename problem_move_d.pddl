(define (problem move-d-problem)
  (:domain move-domain)
  
  (:objects 
    robot1 - robot
    rooma roomb roomc roomd - room
  )
  
  (:init 
    (at robot1 rooma)
    (connected rooma roomb)
    (connected roomb rooma)
    (connected rooma roomc)
    (connected roomc rooma)
    (connected roomb roomd)
    (connected roomd roomb)
    (connected roomc roomd)
    (connected roomd roomc)
  )
  
  (:goal 
    (at robot1 roomd)
  )
)