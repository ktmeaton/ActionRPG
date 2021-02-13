# ActionRPG

## Episode 1

1. Create Godot Project

   - Project Name: ```ActionRPG```
   - Project Path: ```C:/Users/ktmea/Projects/Godot/ActionRPG```

1. Setup Git Repository

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


1. Import Resources

    - Select the ```icon.png```
    - Import Tab -> Import As -> Flags -> Filter (Uncheck) -> Reimport
    - Import Tab -> Import As -> Preset -> 2D Pixel -> Reimport
    - Import Tab -> Import As -> Preset -> Set as Default for 'Texture'
    - Add Assets:

    ```bash
    wget https://github.com/uheartbeast/youtube-tutorials/raw/master/Action%20RPG/Action%20RPG%20Resources.zip ;
    unzip Action\ RPG\ Resources.zip;
    mv Action\ RPG\ Resources/* . ;
    rm -r Action\ RPG\ Resources Action\ RPG\ Resources.zip;
    ```

1.
