# Episode 8

1. Rename the old tilemap to "DirtPathTileMap"

1. Create a new TileMap child node of world named "DirtCliffTileMap"

    - Place under the Dirthpath Tile Map
    - Cell -> Size -> 32 x 32
    - New TileSet -> ```World/CliffTileSet.png```
    - + New Autotile
    - Snap Options -> Step: 32 x 32
    - Selected Tile -> Subtitle Size: 32 x 32
    - Bitmask -> 3x3 (minimal)
    - Copy and Paste the Bitmask from the Dirt tileset.
    - Paint some cliffs!

1. Set up collisions for the cliff.

    - Select the Collision tab.
    - Select the rectangle tool.
    - Create a rectangle collision for every tile.
