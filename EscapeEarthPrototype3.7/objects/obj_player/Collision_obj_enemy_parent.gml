/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 207E7703
/// @DnDComment : This checks if the player is invincible,$(13_10)by checking if no_hurt_frames is greater$(13_10)than 0.
/// @DnDArgument : "var" "no_hurt_frames"
/// @DnDArgument : "op" "2"
if(no_hurt_frames > 0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3427C69C
	/// @DnDComment : In that case we exit the event so the$(13_10)player is not hurt by the enemy.
	/// @DnDParent : 207E7703
	exit;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 666D2B99
/// @DnDComment : This section hurts the player,$(13_10)because it only runs if the player$(13_10)was not found to be jumping on the$(13_10)enemy's head.$(13_10)$(13_10)This action gets the sign (1, 0 or -1) from the$(13_10)enemy's position to the player's position.
/// @DnDArgument : "var" "_x_sign"
/// @DnDArgument : "value" "sign(x - other.x)"
var _x_sign = sign(x - other.x);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0195D4A3
/// @DnDComment : That sign is multiplied by 15, and applied$(13_10)to vel_x as the knockback.
/// @DnDArgument : "expr" "_x_sign * 15"
/// @DnDArgument : "var" "vel_x"
vel_x = _x_sign * 15;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2472FF4D
/// @DnDComment : This first reduces the player's health$(13_10)by the damage amount in the 'other' instance$(13_10)(which is the enemy).$(13_10)$(13_10)Then it sets 'in_knockback' to true to tell$(13_10)the player that it's in knockback.
/// @DnDInput : 2
/// @DnDArgument : "expr" "-other.damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "in_knockback"
hp += -other.damage;
in_knockback = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4662ECAA
/// @DnDComment : This sets no_hurt_frames to 120, so the player$(13_10)is invincible for the next 2 seconds (as one$(13_10)second contains 60 frames).
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "no_hurt_frames"
no_hurt_frames = 120;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6D99FC55
/// @DnDComment : This changes the sprite to the hurt sprite.
/// @DnDArgument : "spriteind" "spr_player_hurt"
/// @DnDSaveInfo : "spriteind" "spr_player_hurt"
sprite_index = spr_player_hurt;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 01F45CBC
/// @DnDComment : Set Alarm 0 to run after 15 frames;$(13_10)that event stops the player's horizontal velocity,$(13_10)ending the knockback
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4C66E2A5
/// @DnDComment : Play the 'life lost' sound effect
/// @DnDArgument : "soundid" "snd_life_lost_01"
/// @DnDSaveInfo : "soundid" "snd_life_lost_01"
audio_play_sound(snd_life_lost_01, 0, 0, 1.0, undefined, 1.0);