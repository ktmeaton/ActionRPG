# CHANGELOG

## Development

### Commits

## v0.8.0

### Notes

1. Rename the old tilemap to "DirtPathTileMap"
1. Create a new TileMap child node of world named "DirtCliffTileMap"
1. Set up collisions for the cliff.
1. Review the occlusion tab.
1. Review the navigation tab.
1. Priority

### Pull Requests

* [```pull/8```](https://github.com/ktmeaton/ActionRPG/pull/8) Episode 8

### Commits

* [```bff9026```](https://github.com/ktmeaton/ActionRPG/commit/bff9026) Merge pull request #8 from ktmeaton/dev
* [```00b3fa5```](https://github.com/ktmeaton/ActionRPG/commit/00b3fa5) review the remaining tileset tabs
* [```b90bf15```](https://github.com/ktmeaton/ActionRPG/commit/b90bf15) paint in cliffs and add collisions
* [```b76a82e```](https://github.com/ktmeaton/ActionRPG/commit/b76a82e) Add Heart GameDev's MIT License
* [```798373a```](https://github.com/ktmeaton/ActionRPG/commit/798373a) prepare for Episode 8
* [```4c850cb```](https://github.com/ktmeaton/ActionRPG/commit/4c850cb) add CHANGELOG for Episode 7

## v0.7.0

### Notes

1. Change the World node back to a Node2D.
1. Add a new ysort node as a child of World.
1. Delete the StaticBody2D.
1. Option 1) Add a Sprite childnode to world named "Background"
1. Make the GrassBackground sprite repeat.
1. Option 2) Add a TextureRect childnode to world named "TextureRectBackground".
1. Create a Tilemap child note of World.
1. Configure Tilemap
 1. Draw the tile bitmask:
1. Place the autotiles
1. Change the dirtmap tile icon.

### Pull Requests

* [```pull/7```](https://github.com/ktmeaton/ActionRPG/pull/7) Episode 7

### Commits

* [```e79873b```](https://github.com/ktmeaton/ActionRPG/commit/e79873b) Merge pull request #7 from ktmeaton/dev
* [```9080ad4```](https://github.com/ktmeaton/ActionRPG/commit/9080ad4) change the dirt tileset icon
* [```03e33de```](https://github.com/ktmeaton/ActionRPG/commit/03e33de) create the dirt bitmap and paint the scene
* [```105e1b8```](https://github.com/ktmeaton/ActionRPG/commit/105e1b8) create a tilemap and dirt tileset
* [```e5c32de```](https://github.com/ktmeaton/ActionRPG/commit/e5c32de) Create the grass background sprite node
* [```d9c3a1b```](https://github.com/ktmeaton/ActionRPG/commit/d9c3a1b) prep for Episode 7
* [```4e0834d```](https://github.com/ktmeaton/ActionRPG/commit/4e0834d) Merge pull request #6 from ktmeaton/dev
* [```374582b```](https://github.com/ktmeaton/ActionRPG/commit/374582b) update CHANGELOG for Episode 6

## v0.6.0

### Notes

1. In the Player scene, add a new child node ```AnimationTree```.
1. Add animations to the tree (test)
1. Add an Idle BlendSpace for multiple directions.
1. Create a Run Blendspace
1. Create Transition between Idle and Run (both ways)
1. Connect AnimationTree to Player script.
1. Set an animation to play on load.
1. Disable RunRight auto animation.
1. Set the animation state
1. Make the run animations directionally consistent.

### Pull Requests

* [```pull/6```](https://github.com/ktmeaton/ActionRPG/pull/6) Episode 6

### Commits

* [```244ad6e```](https://github.com/ktmeaton/ActionRPG/commit/244ad6e) finish Episode 6
* [```b8c1954```](https://github.com/ktmeaton/ActionRPG/commit/b8c1954) prioritize L-R anim over U-D anim
* [```9213f04```](https://github.com/ktmeaton/ActionRPG/commit/9213f04) implement run and idle anims in player script
* [```429cd37```](https://github.com/ktmeaton/ActionRPG/commit/429cd37) create a blendspace for run animations
* [```6f6e9df```](https://github.com/ktmeaton/ActionRPG/commit/6f6e9df) create a blendspace for idle animations
* [```84afcb0```](https://github.com/ktmeaton/ActionRPG/commit/84afcb0) update workflow badge for Godot CI
* [```8233990```](https://github.com/ktmeaton/ActionRPG/commit/8233990) prepare notes for episode 6
* [```5b53e3b```](https://github.com/ktmeaton/ActionRPG/commit/5b53e3b) update CHANGELOG for v0.5.0

## v0.5.0

### Notes

1. In the Player scene, add a new child node ```AnimationPlayer```.
1. Create the Run animation.
1. Create the Idle animation.
1. Autplay an animation on game load.
1. Create an intial animation implementation.

### Pull Requests

* [```pull/5```](https://github.com/ktmeaton/ActionRPG/pull/5) Episode 5
* [```pull/4```](https://github.com/ktmeaton/ActionRPG/pull/4) Episode 4.1

### Commits

* [```e2568f1```](https://github.com/ktmeaton/ActionRPG/commit/e2568f1) Merge pull request #5 from ktmeaton/dev
* [```9a50407```](https://github.com/ktmeaton/ActionRPG/commit/9a50407) fix rogue period in Notes
* [```135968d```](https://github.com/ktmeaton/ActionRPG/commit/135968d) give release notes a dependency
* [```4ad56fe```](https://github.com/ktmeaton/ActionRPG/commit/4ad56fe) try to restore previous CI
* [```12c2fc7```](https://github.com/ktmeaton/ActionRPG/commit/12c2fc7) update workflows
* [```5aad7ad```](https://github.com/ktmeaton/ActionRPG/commit/5aad7ad) create intial animation implementation
* [```c7c5fd7```](https://github.com/ktmeaton/ActionRPG/commit/c7c5fd7) animate idle in 4 directions
* [```a1a4b5f```](https://github.com/ktmeaton/ActionRPG/commit/a1a4b5f) animate run in 4 directions
* [```c7d944d```](https://github.com/ktmeaton/ActionRPG/commit/c7d944d) arrange TOC as table
* [```9e24a31```](https://github.com/ktmeaton/ActionRPG/commit/9e24a31) merge with master
* [```17e1741```](https://github.com/ktmeaton/ActionRPG/commit/17e1741) reorganize the notes docs
* [```9f330e8```](https://github.com/ktmeaton/ActionRPG/commit/9f330e8) ignore .bak files
* [```320bb33```](https://github.com/ktmeaton/ActionRPG/commit/320bb33) Merge branch 'dev' of https://github.com/ktmeaton/ActionRPG into dev
* [```2405b02```](https://github.com/ktmeaton/ActionRPG/commit/2405b02) Add heartbeast info to readme
* [```b052ca3```](https://github.com/ktmeaton/ActionRPG/commit/b052ca3) update CI and CHANGELOG with new submodule autologs
* [```f7b22bb```](https://github.com/ktmeaton/ActionRPG/commit/f7b22bb) add submodule autologs
* [```13d248d```](https://github.com/ktmeaton/ActionRPG/commit/13d248d) remove old scripts
* [```54f7834```](https://github.com/ktmeaton/ActionRPG/commit/54f7834) Merge pull request #4 from ktmeaton/dev
* [```0bae4a5```](https://github.com/ktmeaton/ActionRPG/commit/0bae4a5) update Changelog after v0.4.1
* [```6112d00```](https://github.com/ktmeaton/ActionRPG/commit/6112d00) try a different release action
* [```37e6807```](https://github.com/ktmeaton/ActionRPG/commit/37e6807) fix typo
* [```b598938```](https://github.com/ktmeaton/ActionRPG/commit/b598938) test get commit history
* [```a854a3c```](https://github.com/ktmeaton/ActionRPG/commit/a854a3c) test release tags
* [```24e651e```](https://github.com/ktmeaton/ActionRPG/commit/24e651e) test release
* [```1ea52af```](https://github.com/ktmeaton/ActionRPG/commit/1ea52af) add badge
* [```3fb507d```](https://github.com/ktmeaton/ActionRPG/commit/3fb507d) only upload on master branch
* [```0907e00```](https://github.com/ktmeaton/ActionRPG/commit/0907e00) try to restrict again
* [```b890904```](https://github.com/ktmeaton/ActionRPG/commit/b890904) fix typo
* [```08e204e```](https://github.com/ktmeaton/ActionRPG/commit/08e204e) general condition
* [```126ef21```](https://github.com/ktmeaton/ActionRPG/commit/126ef21) remove old build files
* [```f86f2bb```](https://github.com/ktmeaton/ActionRPG/commit/f86f2bb) configure export for linux and mac also
* [```44297ed```](https://github.com/ktmeaton/ActionRPG/commit/44297ed) fix relative build paths
* [```a666106```](https://github.com/ktmeaton/ActionRPG/commit/a666106) test godot ci
* [```904597e```](https://github.com/ktmeaton/ActionRPG/commit/904597e) rename html5 export

## v0.4.1

### Commits

* [```713cab1```](https://github.com/ktmeaton/ActionRPG/commit/713cab1) fix download artifacts name for release notes
* [```59f2dc3```](https://github.com/ktmeaton/ActionRPG/commit/59f2dc3) release notes after build and before create
* [```69c265c```](https://github.com/ktmeaton/ActionRPG/commit/69c265c) make release notes conditional on v tag
* [```353c1ca```](https://github.com/ktmeaton/ActionRPG/commit/353c1ca) if on HEAD read next episodes notes
* [```05681f1```](https://github.com/ktmeaton/ActionRPG/commit/05681f1) Update Changelog
* [```c7cb4c2```](https://github.com/ktmeaton/ActionRPG/commit/c7cb4c2) fix typo in CI
* [```4c5daea```](https://github.com/ktmeaton/ActionRPG/commit/4c5daea) update changelog through CI
* [```6c7e5c7```](https://github.com/ktmeaton/ActionRPG/commit/6c7e5c7) accomodate patch versions
* [```0646e46```](https://github.com/ktmeaton/ActionRPG/commit/0646e46) remove 0 prefix to episodes
* [```f349e44```](https://github.com/ktmeaton/ActionRPG/commit/f349e44) don't upload artifacts on dev branch
* [```470d072```](https://github.com/ktmeaton/ActionRPG/commit/470d072) reverse tagged and untagged release notes
* [```ced6b98```](https://github.com/ktmeaton/ActionRPG/commit/ced6b98) set fetch depth 0 for release notes
* [```4df093a```](https://github.com/ktmeaton/ActionRPG/commit/4df093a) fix typo in head command
* [```4d4c2df```](https://github.com/ktmeaton/ActionRPG/commit/4d4c2df) decipher git status in CI
* [```bb681e6```](https://github.com/ktmeaton/ActionRPG/commit/bb681e6) only run tagged release notes if v tag
* [```d220938```](https://github.com/ktmeaton/ActionRPG/commit/d220938) add execute permissions to all scripts
* [```1ecc38e```](https://github.com/ktmeaton/ActionRPG/commit/1ecc38e) generate release notes in CI
* [```3104767```](https://github.com/ktmeaton/ActionRPG/commit/3104767) add scripts to auto generate release notes and changelog
* [```df01659```](https://github.com/ktmeaton/ActionRPG/commit/df01659) reformat commit history notes
* [```d01cee3```](https://github.com/ktmeaton/ActionRPG/commit/d01cee3) prepare for Episode 05

## v0.4.0

### Notes

1. Save 'Player' node as a scene.
1. Create a 'Bush' scene.
1. Add the new 'Bush' to the 'World' scene.
1. Pros of 'World' being a 2D node.
1. Keeping new scenes isolated.
1. Add sorting layers.

### Pull Requests

* [```pull/3```](https://github.com/ktmeaton/ActionRPG/pull/3) Episode 04

### Commits

* [```bb875a3```](https://github.com/ktmeaton/ActionRPG/commit/bb875a3) Merge pull request #3 from ktmeaton/dev
* [```1125db1```](https://github.com/ktmeaton/ActionRPG/commit/1125db1) hard code artifact retention days to 7
* [```b851520```](https://github.com/ktmeaton/ActionRPG/commit/b851520) upgrade upload-artifact to v2
* [```596dfaa```](https://github.com/ktmeaton/ActionRPG/commit/596dfaa) reorganize scripts and create notes_major.sh
* [```22d1cba```](https://github.com/ktmeaton/ActionRPG/commit/22d1cba) add a ysort layer
* [```3439ef2```](https://github.com/ktmeaton/ActionRPG/commit/3439ef2) create Player and Bush scenes
* [```cdfaf3b```](https://github.com/ktmeaton/ActionRPG/commit/cdfaf3b) start Episode 04
* [```ffae9d4```](https://github.com/ktmeaton/ActionRPG/commit/ffae9d4) add expiry to artifacts and set release to draft mode

## v0.3.0

### Notes

1. Fix bug where clamping is dependent on delta.
2. Use the move_toward() function for calculating all velocties.
3. Reoptimize speed.
4. Setup collisions.
5. Test collisions.
6. Optimize collision physics.
7. Fix warning about fonts.

### Pull Requests

* [```pull/2```](https://github.com/ktmeaton/ActionRPG/pull/2) Episode 03

### Commits

* [```53fa6fe```](https://github.com/ktmeaton/ActionRPG/commit/53fa6fe) Merge pull request #2 from ktmeaton/dev
* [```1cf0e11```](https://github.com/ktmeaton/ActionRPG/commit/1cf0e11) finish Episode 03
* [```015bdfe```](https://github.com/ktmeaton/ActionRPG/commit/015bdfe) use commit tags for checkout link
* [```d843d1b```](https://github.com/ktmeaton/ActionRPG/commit/d843d1b) add bullets and hyphens to commit history

## v0.2.0

### Notes

1. Smooth Movement

### Pull Requests

* [```pull/1```](https://github.com/ktmeaton/ActionRPG/pull/1) Episode 02

### Commits

* [```6ba391d```](https://github.com/ktmeaton/ActionRPG/commit/6ba391d) Merge pull request #1 from ktmeaton/dev
* [```932fe76```](https://github.com/ktmeaton/ActionRPG/commit/932fe76) finish Episode 02

## v0.1.0

### Notes

1. Create Godot Project.
1. Setup Git Repository.
1. Configure Project for 2D Pixel Art.
1. Import Assets.
1. Configure Scene Resolution and Scaling.
1. Create a Character.
1. Implement Character Movement.

### Commits

* [```cd09528```](https://github.com/ktmeaton/ActionRPG/commit/cd09528) configure export for linux and mac
* [```ede3576```](https://github.com/ktmeaton/ActionRPG/commit/ede3576) add continuous integration
* [```a0a49f3```](https://github.com/ktmeaton/ActionRPG/commit/a0a49f3) build for HTML5
* [```bd471fb```](https://github.com/ktmeaton/ActionRPG/commit/bd471fb) build for Windows
* [```21181c0```](https://github.com/ktmeaton/ActionRPG/commit/21181c0) start Episode 02
* [```446b483```](https://github.com/ktmeaton/ActionRPG/commit/446b483) update notes for Episode 01
* [```edfd8a9```](https://github.com/ktmeaton/ActionRPG/commit/edfd8a9) implement character movement
* [```9c6164c```](https://github.com/ktmeaton/ActionRPG/commit/9c6164c) add player sprite to scene
* [```d372070```](https://github.com/ktmeaton/ActionRPG/commit/d372070) configure scene resolution and scaling
* [```f9ef589```](https://github.com/ktmeaton/ActionRPG/commit/f9ef589) create main scene World
* [```7f98611```](https://github.com/ktmeaton/ActionRPG/commit/7f98611) import assets
* [```4611e38```](https://github.com/ktmeaton/ActionRPG/commit/4611e38) add assets
* [```4bae74c```](https://github.com/ktmeaton/ActionRPG/commit/4bae74c) configure project for 2D pixel art
* [```221e40b```](https://github.com/ktmeaton/ActionRPG/commit/221e40b) setup README and gitignore

