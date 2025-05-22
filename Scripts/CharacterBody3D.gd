extends CharacterBody3D


const SPEED = 20.0
const JUMP_VELOCITY = 20

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		
		

	## ray cast
	_check_collision()

	move_and_slide()

func _check_collision():
	## ray cast
	if $RayCast1.is_colliding() or $RayCast2.is_colliding():
		#var timer = Timer.new()
		#timer.wait_time = 0.5
		#add_child(timer)
		#$timer.start()
		
		var shape1 = $RayCast1.get_collider()
		var shape2 = $RayCast2.get_collider()
		if shape1 != null:
			shape1.queue_free()
		if shape2 != null:
			shape2.queue_free()
		print("ground")
	else:
		print("air")
		
	


