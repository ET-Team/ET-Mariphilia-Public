#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FluidToItem;
import crafttweaker.liquid.ILiquidStack;

static corrosive as ILiquidStack = <fluid:corrosive_liquid>;

static generalRecipes as IIngredient[][IItemStack][ILiquidStack] = {
    <fluid:aquae_cinere> : {
        <item:embers:blend_caminite>.withAmount(paramBlendedCaminiteAmountFromIWC) : [<item:minecraft:clay_ball>, <item:minecraft:dye:15>, <item:contenttweaker:handfulsand>],
        <item:minecraft:ice> : [<item:minecraft:packed_ice>,<item:minecraft:blaze_powder>]
    },
    <fluid:corrosive_liquid> : {<item:embers:archaic_brick> : [<embers:brick_caminite>]},
};

static corrosingRecipes as IIngredient[][IItemStack] = {
    
};

function registerGeneralRecipes(){
    for liquid, itemMap in generalRecipes{
        for output, inputs in itemMap{
            FluidToItem.transform(output, liquid, inputs, true);
        }
    }
}

function registerCorrosingRecipes(){
    for output in corrosingRecipes{
        FluidToItem.transform(output, corrosive, corrosingRecipes[output], true);
    }
}



function init(){
    registerCorrosingRecipes();
    registerGeneralRecipes();
}