if (global.currentStage < 3)
{
    enemyCount = random_range(2, 8) + global.currentStage

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
}
else if (global.currentStage < 5)
{
    enemyCount = random_range(2, 8) + global.currentStage
    enemyCount2 = random_range(1, 2) + (global.currentStage / 3)

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
    
    for (i = 0; i < floor(enemyCount2); i++)
    {
        instance_create(x, y, obj_enemyMother);
    }
}
else if (global.currentStage < 8)
{
    enemyCount = random_range(2, 8) + global.currentStage
    enemyCount2 = random_range(1, 2) + (global.currentStage / 3)
    enemyCount3 = 1 + (global.currentStage / 2)

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
    
    for (i = 0; i < floor(enemyCount2); i++)
    {
        instance_create(x, y, obj_enemyMother);
    }
    
    for (i = 0; i < floor(enemyCount3); i++)
    {
        instance_create(x, y, obj_enemyKamikaze);
    }
}
else if (global.currentStage < 10)
{
    enemyCount = random_range(2, 8) + global.currentStage
    enemyCount2 = random_range(1, 2) + (global.currentStage / 5)
    enemyCount3 = 1 + (global.currentStage / 8)

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
    
    for (i = 0; i < floor(enemyCount2); i++)
    {
        instance_create(x, y, obj_enemyMother);
    }
    
    for (i = 0; i < floor(enemyCount3); i++)
    {
        instance_create(x, y, obj_enemyKamikaze);
    }

    instance_create(x, y, obj_enemyRanged);
}
else
{

    enemyCount = random_range(2, 8) + global.currentStage;
    enemyCount2 = random_range(1, 2) + (global.currentStage / 5);
    enemyCount3 = 1 + (global.currentStage / 8);
    enemyCount4 = random_range(1, 2) + (global.currentStage / 3);

    for (i = 0; i < enemyCount; i++)
    {
        instance_create(x, y, obj_enemyTemp);
    }
    
    for (i = 0; i < floor(enemyCount2); i++)
    {
        instance_create(x, y, obj_enemyMother);
    }
    
    for (i = 0; i < floor(enemyCount3); i++)
    {
        instance_create(x, y, obj_enemyKamikaze);
    }
        
    for (i = 0; i < floor(enemyCount4); i++)
    {
        instance_create(x, y, obj_enemyRanged);
    }
}
