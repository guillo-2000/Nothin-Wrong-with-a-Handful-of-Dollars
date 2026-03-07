if (!object_exists(obj_face)) {instance_destroy(self)};

image_angle = point_direction(x, y, obj_face.x, obj_face.y);

if (moving == true) {
	move_towards_point(obj_face.x, obj_face.y, speed);
}

image_angle = 0;

time += 1;

if ((time > looping_time)) {
	time = 0;
	looping_time = random_range(30, 90);
	if (moving == true) {
		moving = false;
		speed = 0;
	} else {
		moving = true;
		speed = random_range(1, 4);
	}
}