# ActionRPG

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
