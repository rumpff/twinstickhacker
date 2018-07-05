///upgrate_info(UpgradeTypes type)

/* 
 * Returns array with information about upgrades
 * 0 = Title
 * 1 = Description
 * 2 = Level (read only)
*/

var output

enum UpgradeTypes
{
    fireRate,
    damage,
    healthRegen,
    drone
}

switch(argument0)
{
    case UpgradeTypes.fireRate:
        output[0] = "FireRate";
        output[1] = "More firepower!!! More annihilation!!!"
        output[2] = global.upgradeFireRate;
        break;
        
    case UpgradeTypes.damage:
        output[0] = "Damage";
        output[1] = "Make enemies lose their shit because you're fucking unstoppable!"
        output[2] = global.upgradeBulletDamage;
        break;
        
    case UpgradeTypes.healthRegen:
        output[0] = "Health Regen";
        output[1] = "ReGens your health faster than your friends can notice you fucked up"
        output[2] = global.upgradeDrone;
        break;
        
    case UpgradeTypes.drone:
        output[0] = "Drone";
        output[1] = "A GOD DAMN DRONE! BOI, you know what to do, don't you?"
        output[2] = global.upgradeHealth;
        break;
}

return output;
