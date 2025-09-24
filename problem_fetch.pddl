(define (problem fetch-problem)
  (:domain fetch-domain)
  
  (:objects 
    robot1 - robot
    treat1 - treat
    rooma roomb roomc roomd - room
  )
  
  (:init 
    (at robot1 rooma)
    (treat-at treat1 roomd)
    (empty-handed robot1)
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
    (and
      (at robot1 rooma)
      (treat-at treat1 rooma)
    )
  )
)