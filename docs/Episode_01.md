# Episode 01

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

1. Implement Character Movement.

    - Scene -> 'Player'
    - In the top icons, right of the lock, Select "Make sure the object's children are not selectable."
    - Scene -> 'Player' -> Right Click "Attach Script" -> res://Player/Player.gd -> Create
    
    ```python
    1   # Always extend the node you're passing the script to
    2   extends KinematicBody2D
    3  
    4   # Called when the node enters the scene tree for the first time.
    5   # Callback functions start with _
    6   #func _ready():
    7   #	pass
    8  
    9   # Vector2 is an x and y position
    10  var velocity = Vector2.ZERO
    11
    12  # Called every frame. 'delta' is the elapsed time since the previous frame.
    13  # delta is how long the last frame took
    14  # _physics_process is a function we're overriding
    15  func _physics_process(delta):
    16      var input_vector = Vector2.ZERO
    17    
    18      input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    19      input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
    20    
    21      if input_vector != Vector2.ZERO:
    22          velocity = input_vector
    23      else:
    24          velocity = Vector2.ZERO
    25        
    26      move_and_collide(velocity)
    ```

     ```bash
    git add -A
    git commit -m "implement character movement"   
    ```         