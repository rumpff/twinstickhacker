///scr_addScore(amount)

amount = argument0 + global.currentCombo;
obj_DrawGUI.m_scoreScale2 = 1.45;
global.playerScore += amount
newScoreObj = instance_create(x, y, obj_newScoreVisual);
newScoreObj.amount = amount;
