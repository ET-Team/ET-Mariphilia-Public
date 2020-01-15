#priority -800

import scripts.crafttweaker.vanilla.recipes;

function init(){
    logUtil.logInfo("Initializing recipes");
    recipes.stageOne.init();
}