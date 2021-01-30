#priority -900
import scripts.crafttweaker.events as this;
function init(){
    this.onEntityLivingUseItemFinish.init();
    this.onBlockBreak.init();
    this.unlockallstages.init();
}