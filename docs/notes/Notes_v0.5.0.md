# Episode 05

1. In the Player scene, add a new child node ```AnimationPlayer```.

1. Create the Run animation.

    - Animation -> New -> 'RunRight'
    - Change the total animation time from 1 to 0.6
    - Select 'Sprite', change Frame:0 to Frame:1. Press the key button.
    - (Do not select bezier curves) Select Create
    - Move the animation slider so it rests at 0.1
    - Change to Frame:2, key it.
    - Continue keying until Fox faces backwards.
    - Key frame 0 for the very last frame (back to start)
    - Enable 'Animation Looping'
    - RunUp: 7,8,9,10,11,6
    - RunLeft: 13,14,15,16,17,12
    - RughtRight: 19,20,21,22,23,18

1. Create the Idle animation.

    - Animation -> New -> 'IdleRight'
    - Total Time: 0.1
    - Loop
    - IdleRight: 0
    - IdleUp: 6
    - IdleLeft: 12
    - IdleDown: 18