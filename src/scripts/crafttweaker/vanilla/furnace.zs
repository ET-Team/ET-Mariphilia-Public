#priority -800

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static furnaceRecipes as IIngredient[IItemStack] = {
    <contenttweaker:ash_ingot> : <contenttweaker:compact_ash>,
    <embers:plate_caminite> : <embers:plate_caminite_raw>,
    <embers:brick_caminite> : <embers:blend_caminite>,
    <embers:stamp_bar> : <embers:stamp_bar_raw>,
    <embers:stamp_plate> : <embers:stamp_plate_raw>,
    <embers:stamp_flat> : <embers:stamp_flat_raw>,
    <item:minecraft:stone> : <item:minecraft:cobblestone>,
    <item:minecraft:brick> : <item:minecraft:clay_ball>,
    oreDictUtil.getNuggetFromOre("Tin", 2) : <item:aquaculture:loot:2>,
    <item:minecraft:coal:1> : <ore:logWood>,
    <minecraft:glass> : <ore:sand>,
    <aquaculture:food:4> : <aquaculture:food:3>,
    <aquaculture:food:5> : <aquaculture:food:2>
};

function init(){
    logUtil.logInfo("Initializing furnace recipes");
    for output in furnaceRecipes{
        furnace.addRecipe(output, furnaceRecipes[output]);
    }
    if(paramEnableRemedyRecipeForAsh){
        furnace.addRecipe(<item:embers:dust_ash>, <ore:stickWood>);
    }
}