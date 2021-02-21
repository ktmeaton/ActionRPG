# Episode 6

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

1. Add an Idle BlendSpace for multiple directions.

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
    - Click the AnimationTree Node
    - Inspector -> Parameters -> Idle:
        - Blend Position: 0,0

1. Create a Run Blendspace

    - Click Play
    - Click "Create Points" button -> Add Animation
        - (x:1, y:0): RunLeft
        - (x:0, y:1): RunDown
        - (x:1, y:0) RunRight
        - (x:0, y:-1) RunUp
    - Blend: Dots
    - Click the AnimationTree Node
    - Inspector -> Parameters -> Run:
        - Blend Position: 0,0 

1. Create Transition between Idle and Run (both ways)

1. Connect AnimationTree to Player script.

    - Initialize the AnimationTree on ready
    - Only update AnimationTree run on input (otherwise it will get set to 0 which will be associated with facing to the left)
    - Get the string name of the property we want to set
        - AnimationTree -> Parameters -> Idle -> Blend Position (Hover Mouse)
            - ```parameters/Idle/blend_position```
    - Set the animationTree values for Run and Idle to the input vector.

1. Set an animation to play on load.

    - AnimationTree -> root -> Idle
    - Click button "Toggle autoplay on start..."

1. Disable RunRight auto animation.

    - AnimationPlayer -> RunRight
    - Uncheck "Autoplay on load"

1. Set the animation state

    - Initialize the AnimationState on ready
    - Access to the AnimationState is needed to set the animation.
    - Set the animation state using the ```travel``` function.


1. Make the run animations directionally consistent.

    - To prioritze a direction, change the triangle shapes.
    - AnimationTree -> Idle -> Blendspace
    - To priortize Left and Right over up and down:
        - (x:0, y:1) -> (x:0, y:1.1)
        - (x:0, y:-1) -> (x:0, y:-1.1) 
    - Repeat for Run blendspace.

