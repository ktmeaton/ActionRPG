# ActionRPG

[Tutorial Playlist](https://www.youtube.com/watch?v=mAbG8Oi-SvQ)
## Table of Contents

- [Episode 0](https://github.com/ktmeaton/ActionRPG) - [Checkout](https://github.com/ktmeaton/ActionRPG/tree/a58299c51609ade4d5491ea1708bce5cb898b776)
- [Episode 1](https://github.com/ktmeaton/ActionRPG#episode-1) - [Checkout](https://github.com/ktmeaton/ActionRPG/tree/d372070749643779ddeadaa57c310179179982f9) - [Video](https://www.youtube.com/watch?v=mAbG8Oi-SvQ&ab_channel=HeartBeast)


## Episode 1

1. Create Godot Project.

   - Project Name: ```ActionRPG```
   - Project Path: ```C:/Users/ktmea/Projects/Godot/ActionRPG```

1. Setup Git Repository.

    - Create a new, empty Github Repository at <https://github.com/ktmeaton/ActionRPG>

    ```bash
    git init
    git remote add origin https://github.com/ktmeaton/ActionRPG

    git add -A
    git commit -m "init repo"
    git push --set-upstream origin master

    echo ".import/" > .gitignore
    touch README.md
    git add -A
    git commit -m "setup README and gitignore"
    ```

1. Configure Project for 2D Pixel Art.

    - Select the ```icon.png```
    - Import Tab -> Import As -> Flags -> Filter (Uncheck) -> Reimport
    - Import Tab -> Import As -> Preset -> 2D Pixel -> Reimport
    - Import Tab -> Import As -> Preset -> Set as Default for 'Texture'
    - Save

    ```bash
    git add -A
    git commit -m "configure project for 2D pixel art"
    ```


1. Import Assets.

    ```bash
    wget https://github.com/uheartbeast/youtube-tutorials/raw/master/Action%20RPG/Action%20RPG%20Resources.zip ;
    unzip Action\ RPG\ Resources.zip ;
    mv Action\ RPG\ Resources/* . ;
    rm -r Action\ RPG\ Resources Action\ RPG\ Resources.zip ;

    git add -A
    git commit -m "add assets"   
    ```

    - Open the Godot Project (Assets are now imported)
    - Save

    ```bash
    git add -A
    git commit -m "import assets"   
    ``` 

1. Configure Scene Resolution and Scaling.

    - Scene -> 2D Scene
    - Rename 'Node2D' to 'World'.
    - Scene -> Save Scene As -> ```World.tscn```
    - Play -> Select -> ```World.tscn```

   
    ```bash
    git add -A
    git commit -m "create main scene World"   
    ```  

    - Drag a ```World/Bush.png``` into the scene.
    - Project -> Project Settings -> Display -> Window:
        - Width: 320
        - Height: 180
        - Test Width: 1280
        - Height: 720
    - Project -> Project Settings -> Display -> Stretch
        - Mode: 2d

     ```bash
    git add -A
    git commit -m "configure scene resolution and scaling"   
    ```     

1. Create a Character.

    - Scene -> Right Click 'World' -> Create Child Node -> KinematicBody2D
    - Rename 'KinematicBody2D' to 'Player'
    - Scene -> Right Click 'Player' -> Create Child Node -> Sprite
    - Select 'Sprite'. Drag ```Player/Player.png``` into Inspector -> Texture.
    - Inspector -> Animation:
        - HFrames: 60

     ```bash
    git add -A
    git commit -m "add player sprite to scene"   
    ```     