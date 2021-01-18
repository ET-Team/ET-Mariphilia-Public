#priority 2000
import scripts.crafttweaker.vanilla.oreDict;

function init(){
    logUtil.logInfo("Initializing Oredit entries");
    oreDict.lists.init();
    oreDict.oreDictEntries.init();
}

init();