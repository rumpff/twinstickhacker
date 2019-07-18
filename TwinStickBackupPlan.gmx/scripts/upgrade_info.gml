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
        output[1] = "shoot faster!"
        output[2] = global.upgradeFireRate;
        break;
        
    case UpgradeTypes.damage:
        output[0] = "Damage";
        output[1] = "Deal more damage"
        output[2] = global.upgradeBulletDamage;
        break;
        
    case UpgradeTypes.healthRegen:
        output[0] = "Health Regen";
        output[1] = "Enables and upgrades health regeneration"
        output[2] = global.upgradeHealth;
        break;
        
    case UpgradeTypes.drone:
        output[0] = "Drone";
        output[1] = "so uhh, this one doesn't work"
        output[2] = global.upgradeDrone;
        break;
}

return output;
