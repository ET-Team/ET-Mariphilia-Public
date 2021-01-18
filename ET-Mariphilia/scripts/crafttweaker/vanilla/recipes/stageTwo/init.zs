#priority -700

import scripts.crafttweaker.vanilla.recipes.stageTwo as this;

function init(){
    logUtil.logInfo("Initializing recipes for stage two");
    this.basicMaterialsScience.init();
    this.ashenology.init();
    this.basicIT.init();
    this.advancedIT.init();
    this.basicLogistics.init();
    this.advancedLogistics.init();
    this.zoology.init();
    this.basicMobiology.init();
    this.botany.init();
    this.biology.init();
}