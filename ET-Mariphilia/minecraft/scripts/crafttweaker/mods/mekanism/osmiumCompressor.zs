#priority -700
import mods.mekanism.compressor;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/**
<输出> : {
    气态锇数量 : <输入>
}
*/

static recipes as IIngredient[int][IItemStack] = {
    <appliedenergistics2:material>*2 : {
        40 : <minecraft:quartz>
    },
    <appliedenergistics2:material:45>*2 : {
        100 : <contenttweaker:solidified_ash>
    },
    <mekanism:ingot:3> : {
        200 : <minecraft:glowstone_dust>
    }
};

function addRecipes(){
    for output, recipe in recipes{
        for volume, input in recipe{
            compressor.addRecipe(input, <gas:liquidosmium>*volume, output);
        }
    }
}

function init(){
    compressor.removeAllRecipes();
    addRecipes();
}