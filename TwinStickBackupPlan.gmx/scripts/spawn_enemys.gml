if (global.currentStage < 5)
{
    enemyCount = random_range(2, 8) + global.currentStage

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
}
else if (global.currentStage < 6)
{
    enemyCount1 = random_range(1, 3) + global.currentStage

    for (i = 0; i < enemyCount1; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }

    instance_create(x, y, obj_enemyRanged);
}
else
{
    enemyCount1 = random_range(3, 5) + global.currentStage
    enemyCount2 = random_range(1, 2) + (global.currentStage / 3)

    for (i = 0; i < enemyCount1; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
    
    for (i = 0; i < floor(enemyCount2); i++)
    {
        instance_create(x, y, obj_enemyRanged);
    }
}
