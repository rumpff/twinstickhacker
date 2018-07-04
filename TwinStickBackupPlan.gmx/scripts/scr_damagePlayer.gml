///scr_damagePlayer(amount)
amount = argument0
global.playerHealth -= amount;

obj_DrawGUI.dmgAlpha += 0.08;
obj_player.m_gettingDamage = true;
obj_glitchShader.m_lineShift += 0.01;

audio_play_sound(snd_playerHit, 1, 0);
