#priority -700
import mods.embers.Melter;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static machine_name as string = "big_melter";

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

static recipes as ILiquidStack[IItemStack] = {
    <contenttweaker:obsolete_can> : <fluid:copper>*48,
    <contenttweaker:obsolete_circuit> : <fluid:gold>*48,
    <contenttweaker:obsolete_iron> : <fluid:iron>*48,
    <contenttweaker:compact_ash> : <fluid:ash>*288,
    <contenttweaker:ash_ingot> : <fluid:ash>*144,
    <contenttweaker:obsidian_ash> : <fluid:obsidian>*12,
    <ore:ingotAshenMetal>.firstItem : <fluid:ashen_metal>*144,
    <ore:plateAshenMetal>.firstItem : <fluid:ashen_metal>*144,
    <minecraft:ender_pearl> : <fluid:resonant_ender>*200
};

function addMelterRecipe(liquid as ILiquidStack, item as IItemStack){
    Melter.add(liquid, item);
    addBigMelterRecipe(liquid, item);
}

function addBigMelterRecipe(liquid as ILiquidStack, item as IItemStack){
    for i in 1 to 5{
        var j = (5 - i);
        var num = (pow(4,j - 1));
        mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+(100 - i)+item.name, machine_name, 10*j*j)
            .addItemInput(item*num)
            .addFluidOutput(liquid.definition * (liquid.amount*num))
            .addEmberInput(150*j*j)
            .build();
    }
}

function meltIngots(){
    for metal, liquid in metalMap{
        addBigMelterRecipe(liquid*144, oreDict.get("ingot"+metal).firstItem);
        addBigMelterRecipe(liquid*144, oreDict.get("plate"+metal).firstItem);
    }
}

function meltParts(){
    for part in partTypes{
        for metal, liquid in metalMap{
            addMelterRecipe(liquid*288, oreDict.get(part+"Part"+metal).firstItem);
        }
    }
}

function init(){
    for input, output in recipes{
        addMelterRecipe(output,input);
    }
    meltParts();
    meltIngots();
}