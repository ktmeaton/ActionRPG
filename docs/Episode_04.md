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

4. Pros of 'World' being a 2D node.

    - You can move World and all it's child nodes around.
    - ie. World as a 2D node has a transform property.
    - You can add scenes (ex. Bush) exactly where you want them. They won't snap back to the origin.

5. Keeping new scenes isolated.

    - You can add a Bush scene to the Player scene.
    - But it will follow the user around in other scenes.
    - A better use for that would be furniture inside a house.
    - This is a powerful way to isolate or connect assets.

6. Add sorting layers.

    - Right click on 'World' -> Change type -> ysort
    - This sorts child nodes by their y position.
    - The player can be in front and behind the bush.
    - Problem: this sorts by the origin. And in the 'Player' scene, the sprite's neck is at the origin.
    - Select the Player scene, enable selecting children nodes.
    - Move the Sprite and CollisionShape2D up.
    - Edit the CollishipShape2D position to 0,0.
    - Repeat these steps for the Bush scene.
