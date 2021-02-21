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

1. Review the occlusion tab.

    - Autotiles can automatically create shadows.

1. Review the navigation tab.

    - A navigation mesh can allow enemies to navigate the tile.

1. Priority

    - Control randomization of tiles.
    - Example: a flower on grass could have a 1/20 of being placed.
