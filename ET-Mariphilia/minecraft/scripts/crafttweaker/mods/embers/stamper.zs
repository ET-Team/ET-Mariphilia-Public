#priority -700
import mods.embers.Stamper;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static recipes as IIngredient[IIngredient][ILiquidStack][IItemStack] = {
    <item:modularmachinery:itemmodularium> : {
        <fluid:modularium>*144 : {
            <embers:stamp_bar> : null
        }
    },
    <item:contenttweaker:ash_ingot> : {
        <fluid:ash>*144 : {
            <embers:stamp_bar> : null
        }
    },
    <ore:ingotAshenMetal>.firstItem : {
        <fluid:ashen_metal>*144 : {
            <embers:stamp_bar> : null
        }
    },
    <ore:plateAshenMetal>.firstItem : {
        <fluid:ashen_metal>*144 : {
            <embers:stamp_plate> : null
        }
    },
    <embers:blend_caminite> : {
        <fluid:ash>*24 : {
            null : <minecraft:clay_ball>
        }
    },
    <embers:plate_caminite> : {
        <fluid:ash>*24 : {
            <embers:stamp_plate> : <minecraft:clay_ball>
        }
    },
    <aquaculture:loot:1> : {
        <fluid:neptunium>*144 : {
            <embers:stamp_bar> : null
        }
    }
};

static removes as IItemStack[] = [

];

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

function buildParts(){
    for part in partTypes{
        for metal, liquid in metalMap{
            Stamper.add(oreDict.get(part+"Part"+metal).firstItem,liquid*288,itemUtils.getItem("contenttweaker:stamp_"+part),null);
        }
    }
}

function buildRecipes(){
    for output, recipe in recipes{
        for liquid, innerRecipe in recipe{
            for stamp, inputItem in innerRecipe{
                Stamper.add(output, liquid, stamp, inputItem);
            }
        }
    }
}

function init(){
    buildParts();
    buildRecipes();
}