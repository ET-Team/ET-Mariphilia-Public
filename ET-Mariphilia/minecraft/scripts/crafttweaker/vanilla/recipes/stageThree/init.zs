#priority -700

import scripts.crafttweaker.vanilla.recipes.stageThree as this;

function init(){
    logUtil.logInfo("Initializing recipes for stage three");
    this.advancedMaterialsScience.init();
    this.basicElectricity.init();
    this.logisticIT.init();
    this.advancedElectricity.init();
    this.advancedMobiology.init();
    this.spacialogy.init();
    this.automation.init();
}