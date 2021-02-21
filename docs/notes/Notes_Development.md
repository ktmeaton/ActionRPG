# Episode 8

1. Uncheck "Active" in the AnimationTree to stop autoplay.

    - Set this to active in the _ready function.

1. Create Attack animations.

    - AttackDown: 36,37,38,39
    - AttackLeft: 32,33,34,35
    - AttackUp: 28,29,30,31
    - AttackRight: 24,25,26,27

1. Create a state machine in the Player script.

1. Add wasd to Input Map

    - Project -> Project Settings -> Tab Input Map
    - ui_left -> + Key -> 'w'

1. Create an attack action

    - Project -> Project Settings -> Tab Input Map
    - Action: attack
    - assign 'space' and 'j' to it.

1. Create a new blendspace2d for Attacking.

    - Set the blend position for attacking in the move_state function.

1. Configure stopping point of attack animation.

    - Create a function for when the attack animation is finished.
    - In Animation Player, select AttackDown.
    - + Add Track -> Call Method on Player Node
    - Right Click on New Track and Add Key -> attack_animation_finished

1. Set velocity in attack state to zero and remove attack looping.