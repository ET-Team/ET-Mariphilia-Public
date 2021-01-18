#priority -700
import mods.mekanism.purification;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mod.mekanism.gas.IGasStack;

/**
<输出> : {
    输入气体*数量 : <输入>
}

 */
static recipes as IIngredient[IGasStack][IItemStack] = {
    <contenttweaker:material_part:115> : {
        <gas:hydrogen>*200 : <aquaculture:loot:1>
    },
    <minecraft:netherrack> : {
        <gas:oxygen>*200 : <minecraft:soul_sand>
    }

};

function addRecipes(){
    for output, recipe in recipes{
        for gas, input in recipe{
            purification.addRecipe(input, gas, output);
        }
    }
}

function init(){
    addRecipes();
}