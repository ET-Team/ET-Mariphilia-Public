#priority -800

import scripts.crafttweaker.vanilla.recipes;

function init(){
    logUtil.logInfo("Initializing recipes");
    recipes.stageOne.init();
    recipes.stageTwo.init.init();
    recipes.stageThree.init.init();
    recipes.stageFour.init.init();
    
}