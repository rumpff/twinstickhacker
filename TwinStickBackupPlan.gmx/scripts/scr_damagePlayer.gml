///scr_damagePlayer(amount)
amount = argument0
global.playerHealth -= amount;
obj_DrawGUI.dmgAlpha += 0.08;
audio_play_sound(snd_playerHit, 1, 0);
