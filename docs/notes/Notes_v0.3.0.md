# Episode 3

1. Fix bug where clamping is dependent on delta.

2. Use the move_toward() function for calculating all velocties.

    ```python
    21  if input_vector != Vector2.ZERO:
	22  	velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
    ...
    26  move_and_collide(velocity)
    ```

3. Reoptimize speed.

    ```python
    4   const MAX_SPEED = 80
    5   const ACCELERATION = 500
    6   const FRICTION = 500
    ```

4. Setup collisions.

    - Scene -> Right Click 'Player' -> Create Child Node -> CollisionShape2D
    - Using a capsule shape helps with moving around corners.
    - Inspector -> Shape -> New CapsuleShape2D
    - Reshape to head and torso.
    - 3 dot icon in top tabs -> Use Pixel Snap
    - Holding 'Alt' will let you move child nodes if selection was disabled.
    - Drag down to legs
    - Node2D -> Transform -> Rotation Degrees: -90
    - A different collider will be used for the top part of the body.

5. Test collisions.

   - Scene -> Right Click 'World' -> Create Child Node -> StaticBody2D
   - Scene -> Right Click 'StaticBody2D' -> Create Child Node -> CollisionPolygon2D
   - Enable Grid Snap
   - Create points, draw funky world boundary.
   - Debug -> Visible Collision Shapes

6. Optimize collision physics.

   - The collisions feel sticky, because of the function "move_and_collide", we'll use "move_and_slide" instead.
   - Remove 'delta' from inside move_and_collide.
   - Corners are still a bit sticky and lose momentum around corners.
   - Fix this by using the return value of ```move_and_slide``` and set to the new velocity.

    ```python
    26  velocity = move_and_slide(velocity)
    ```

7. Fix warning about fonts.

    - Project -> Project Settings -> Display -> Window
        - Aspect: Keep 
    - This adds black bars if the diplay aspect ratio is different.