# Development

1. Change the World node back to a Node2D.

1. Add a new ysort node as a child of World.

    - Move all world objects to be children of the ysort node.

1. Delete the StaticBody2D.

1. Option 1) Add a Sprite childnode to world named "Background"

    - Assign it's texture to be ```World/GrassBackground.png```
    - Offset: Centered: Uncheck On
    - Region: Enabled: Check On
    - Check the "TextureRegion" tab at the bottom.
    - Snap Mode: Pixel Snap
    - Draw a box around the grass texture.
    - Snap Mode: Grid
    - Step: 16 x 16
    - Changing the box size will change the values in the Inspector:
        - Region -> Rect -> 'w' and 'h'

1. Make the GrassBackground sprite repeat.

    - FileSystem -> World/GrassBackground.png -> Import Tab -> Flags
        - Repeat: Enabled
    - Click reimport
    - Fill the camera space with the grass texture.
    - Renable centering of the GrassBackground Sprite
    - Transform -> Position:
        - x: 320/2
        - y: 180/2

1. Option 2) Add a TextureRect childnode to world named "TextureRectBackground".

    - Reszie to 320 x 180
    - Reorder above background and under world.
    - Assign it's texture to be ```World/GrassBackground.png```
    - Strecth Mode: Tile
    - Pros: Can drag it around in editor to resize.
    - Con: This is a control type node which isn't meant to be used like this. Meant for UI type elements.
    - HeartBeast doesn't know how significant the drawbacks are to use a TextureRect, but will use the Sprite method here.
    - Delete the TextureRectBackground
    