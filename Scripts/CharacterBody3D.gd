extends CharacterBody3D


#const SPEED = 20.0
#const JUMP_VELOCITY = 20.0
# testing speeds
const SPEED = 8.0
const JUMP_VELOCITY = 5.0
var num = 0

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
	if $RayCast1.is_colliding() or $RayCast2.is_colliding() or $RayCast3.is_colliding():
		var shape1 = $RayCast1.get_collider()
		var shape2 = $RayCast2.get_collider()
		var shape3 = $RayCast3.get_collider()
		if shape1 != null:
			if shape1.timer_started == false:
				shape1.collision_timer_start()
				num += 1
				print(num)
		if shape2 != null:
			if shape2.timer_started == false:
				shape2.collision_timer_start()
				num += 1
				print(num)
		if shape3 != null:
			if shape3.timer_started == false:
				shape3.collision_timer_start()
				num += 1
				print(num)
				
				
# Template code for moving camera
func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.mouse_mode==Input.MOUSE_MODE_CAPTURED: #if mouse is moved, rotate
		rotate_y(-event.relative.x * .003)
		$camera.rotate_x(-event.relative.y * .003)
		$camera.rotation.x = clamp($camera.rotation.x, -PI/2, PI/2)
		

	


