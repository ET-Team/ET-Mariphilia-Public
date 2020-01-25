#priority -800

import crafttweaker.item.IIngredient;

static toAdd as string[IIngredient] = {
    <modulardiversity:blockemberinputhatch:0> : "余烬能量缓存：100",
    <modulardiversity:blockemberinputhatch:1> : "余烬能量缓存：800",
    <modulardiversity:blockemberinputhatch:2> : "余烬能量缓存：4000",
    <modulardiversity:blockemberinputhatch:3> : "余烬能量缓存：8000",
    <modulardiversity:blockemberinputhatch:4> : "余烬能量缓存：16000",
    <modulardiversity:blockemberinputhatch:5> : "余烬能量缓存：32000",
    <modulardiversity:blockemberinputhatch:6> : "余烬能量缓存：64000",
    <modulardiversity:blockemberinputhatch:7> : "余烬能量缓存：144000",
};

static warning as string[IIngredient] = {

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