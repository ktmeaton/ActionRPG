# Episode 04

1. Save 'Player' node as a scene.

    - Inspector -> 'Player' -> Right Click -> Save branch as scene -> ```Player/Player.tscn```
    - Open the 'Player' scene by clicking on the clapperboard.
    - Select 'Player' and adjust opsition in Inspector -> Node2D -> Transform:
        - Position: x=0, y=0
    - Moving the player in the base scene ('Player') will update the position in other scenes. Moving the player in the 'World' scene will not do that.

2. Create a 'Bush' scene.

    - '+' icon in tabs -> Other Node -> StaticBody2D
    - Rename the new node to 'Bush'
    - Add a 'Sprite' node as a child node of 'Bush'.
    - Add the ```World/Bush.png``` as a sprite in the inspector.
    - Add a CollisionShape2D node as a child node of 'Bush':
        - Shape: -90
        - Resize to bottom of bush.
    - Save the scene as ```World/Bush.tscn```

3. Add the new 'Bush' to the 'World' scene.

    - Delete the old Bush, add the new 'Bush' scene.
