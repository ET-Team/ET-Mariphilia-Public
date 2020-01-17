#priority -700
import mods.embers.Stamper;
import crafttweaker.liquid.ILiquidStack;

static partTypes as string[] = [
    "pickaxe",
    "axe",
    "sword",
    "shovel",
    "hoe"
];

static metalMap as ILiquidStack[string] = {
    Iron : <fluid:iron>,
    Copper : <fluid:copper>,
    Tin : <fluid:tin>,
    Bronze : <fluid:bronze>,
    Aluminum : <fluid:aluminum>,
    Gold : <fluid:gold>,
    Lead : <fluid:lead>,
    Dawnstone : <fluid:dawnstone>,
    Nickel : <fluid:nickel>,
    Electrum : <fluid:electrum>,
    Silver : <fluid:silver>
};

function init(){
    for part in partTypes{
        for metal, liquid in metalMap{
            Stamper.add(oreDict.get(part+"Part"+metal).firstItem,liquid*288,itemUtils.getItem("contenttweaker:stamp_"+part),null);
        }
    }
}