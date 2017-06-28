global.currentCombo++;
global.enemyKilled = true;
if (global.currentCombo >= 20)
{
    with obj_comboCount instance_destroy();
    instance_create(x, y, obj_comboCount);
}
