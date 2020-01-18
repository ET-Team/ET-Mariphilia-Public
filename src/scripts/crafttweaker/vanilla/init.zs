#priority -900
import scripts.crafttweaker.vanilla;

function init(){
    recipes.removeAll();
    furnace.removeAll();
    vanilla.oreDict.init.init();
    vanilla.recipes.init.init();
    vanilla.furnace.init();
    vanilla.tooltip_renaming.init();
}
