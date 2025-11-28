orderReceived = true
orderPlaced = false
var h = instance_create_layer(x, y - 14, "Instances", obj_heart)
// Link the heart to this player
h.follow_target = id;



global.score += 3
audio_play_sound(snd_cofffee_delivered, 1, 0)

instance_destroy(other);
