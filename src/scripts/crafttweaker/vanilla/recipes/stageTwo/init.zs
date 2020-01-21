#priority -700

import scripts.crafttweaker.vanilla.recipes.stageTwo as this;

function init(){
    logUtil.logInfo("Initializing recipes for stage two");
    this.basicMaterialsScience.init();
    this.ashenology.init();
}