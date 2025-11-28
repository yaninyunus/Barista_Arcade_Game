orderReceived = true
orderPlaced = false
var h = instance_create_layer(x, y - 14, "Instances", obj_heart)
// Link the heart to this player
h.follow_target = id;


    // Award remaining points
    global.score += orderScore; // bonus points
	global.score += 3 //baseline points

    // Reset for next customer
    orderPlaced = false;
    orderScore = 0;
    orderTimer = 0;




audio_play_sound(snd_delivered, 1, 0)

instance_destroy(other);
