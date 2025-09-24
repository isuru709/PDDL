(define (problem move-ab-problem)
  (:domain move-domain)
  
  (:objects 
    robot1 - robot
    rooma roomb - room
  )
  
  (:init 
    (at robot1 rooma)
    (connected rooma roomb)
    (connected roomb rooma)
  )
  
  (:goal 
    (at robot1 roomb)
  )
)