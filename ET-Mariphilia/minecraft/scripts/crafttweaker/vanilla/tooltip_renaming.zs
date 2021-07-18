#priority -800

import crafttweaker.item.IIngredient;

static toAdd as string[IIngredient] = {
    <item:contenttweaker:rekindled_ash> : "右键可生火",
    <modulardiversity:blockemberinputhatch:0> : "余烬能量缓存：100",
    <modulardiversity:blockemberinputhatch:1> : "余烬能量缓存：800",
    <modulardiversity:blockemberinputhatch:2> : "余烬能量缓存：4000",
    <modulardiversity:blockemberinputhatch:3> : "余烬能量缓存：8000",
    <modulardiversity:blockemberinputhatch:4> : "余烬能量缓存：16000",
    <modulardiversity:blockemberinputhatch:5> : "余烬能量缓存：32000",
    <modulardiversity:blockemberinputhatch:6> : "余烬能量缓存：64000",
    <modulardiversity:blockemberinputhatch:7> : "余烬能量缓存：144000",
    <item:contenttweaker:pressure_meter> : "仅在海水深处工作"
};

static warning as string[IIngredient] = {
    <item:contenttweaker:drug> : "右键使用开启超频时间，每次使用持续"+paramOverclockTime+"秒"
};

static praise as string[IIngredient] = {
    
};

function addToolTips(){
    for item in toAdd{
        item.addTooltip(format.darkAqua(toAdd[item]));
    }

    for item in warning{
        item.addTooltip(format.red(warning[item]));
    }

    for item in praise{
        item.addTooltip(format.gold(praise[item]));
    }
}

function init(){
    addToolTips();
    game.setLocalization("item.betterbuilderswands.wandAdvanced.name","灰烬手杖");
}