# Episode 2

1. Smooth Movement

    - Use constants to control max speed, acceleration, and friction.

    ```python
    9   const MAX_SPEED = 100
    10  const ACCELERATION = 10
    11  const FRICTION = 100
    ```

    - Normalize the input vector for diagonal movement.

    ```python
    24  input_vector = input_vector.normalized()
    ```

    - Scale the movement speed by delta (time rather than framerate)

    ```python
    26	if input_vector != Vector2.ZERO:
	27	    velocity += input_vector * ACCELERATION * delta
	28	    velocity = velocity.clamped(MAX_SPEED * delta)
	29  else:
	30	    velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
    ```


