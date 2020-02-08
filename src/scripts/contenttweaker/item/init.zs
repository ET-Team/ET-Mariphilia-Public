#loader contenttweaker
#priority -900
import scripts.contenttweaker.item;
function init(){
    item.normalItems.init();
    item.rekindledAsh.init();
    //item.stageItems.init();
    item.appleSeed.init();
    item.grassSeeds.init();
    item.dagger.init();
}