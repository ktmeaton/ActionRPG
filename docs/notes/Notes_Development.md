# Development

1. In the Player scene, add a new child node ```AnimationTree```.

    - Anim Player: AnimationPlayer
    - Tree Root: NewAnimationNodeStateMachine
    - Active: Check On

1. Add animations to the tree (test)

    - Right click AnimationTree window -> Add Animation -> IdleRight
    - Add Animation -> RunRight
    - Click "Connect Nodes" button, connect Idle and Run (both ways)
    - Click transition from Run to Idle to get Transition options in Inspector
    - Auto Advance: Check On
    - SwitchMode: At end
    - Delete all animations boxes and transitions.

1. Add a BlendSpace for multiple directions.

    - Add BlendSpace2D and Rename to "Idle"
    - Click the pencil edit icon
    - Click "Create Points" button -> Add Animation
        - (x:1, y:0): IdleLeft
        - (x:0, y:1): IdleDown
        - (x:1, y:0) IdleRight
        - (x:0, y:-1) IdleUp
    - Blend: Dots
        - Solid line is for interpolation (physics or bone-based)
        - Dots are for discrete states/frames.
    - Go back to the root and hit play on Idle.
    - Click the button "Set the blending position in space" and move the point around.

1. Setup parameters for the BlendSpace

    - Click the AnimationTree Node
    - Inspector -> Parameters -> Idle:
        - Blend Position: 0,0