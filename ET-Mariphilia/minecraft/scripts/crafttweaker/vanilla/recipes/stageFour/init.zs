#priority -700

import scripts.crafttweaker.vanilla.recipes.stageFour as this;

function init(){
    logUtil.logInfo("Initializing recipes for stage four");
    this.atomicMaterialsScience.init();
    this.quarkMaterialsScience.init();
    this.HighEnergyPhysics.init();
    this.philosophy.init();
}