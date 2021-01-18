#priority -700
import mods.embers.Melter;
import crafttweaker.item.IIngredient;
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

static recipes as ILiquidStack[IIngredient] = {
    <contenttweaker:obsolete_can> : <fluid:copper>*48,
    <contenttweaker:obsolete_circuit> : <fluid:gold>*48,
    <contenttweaker:obsolete_iron> : <fluid:iron>*48,
    <contenttweaker:compact_ash> : <fluid:ash>*288,
    <contenttweaker:ash_ingot> : <fluid:ash>*144,
    <contenttweaker:obsidian_ash> : <fluid:obsidian>*12,
    <ore:ingotAshenMetal>.firstItem : <fluid:ashen_metal>*144,
    <ore:plateAshenMetal>.firstItem : <fluid:ashen_metal>*144
};

function meltParts(){
    for part in partTypes{
        for metal, liquid in metalMap{
            Melter.add(liquid*288, oreDict.get(part+"Part"+metal).firstItem);
        }
    }
}

function init(){
    for input, output in recipes{
        Melter.add(output,input);
    }
    meltParts();
}