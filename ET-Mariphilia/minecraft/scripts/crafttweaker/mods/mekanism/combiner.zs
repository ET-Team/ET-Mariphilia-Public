#priority -700
import mods.mekanism.combiner;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/**
<输出> : {
    <上面槽输入> : <下面槽输入>
    }
}
 */

static recipes as IIngredient[IIngredient][IItemStack] = {
    <mekanism:reinforcedalloy> : {
        <mekanism:enrichedalloy> : <mekanism:otherdust>
    },
    <appliedenergistics2:quartz_glass> : {
        <minecraft:glass> : <ore:dustCertusQuartz>*2
    },
    <appliedenergistics2:sky_stone_block> : {
        <minecraft:cobblestone> : <appliedenergistics2:material:45>*4
    },
    <ore:ingotMithril>.firstItem*2 : {
        <embers:ingot_silver> : <aquaculture:loot:1>
    },
    <minecraft:ender_eye> : {
        <minecraft:ender_pearl> : <minecraft:blaze_powder>
    },
    <minecraft:soul_sand> : {
        <minecraft:sand> : <mekanism:otherdust:3>
    },
    <ore:ingotZeroAshMetal>.firstItem : {
        <ore:ingotCompressedAshMetal> : <ore:ingotMithril>
    },
    <bigreactors:ingotblutonium>*2 : {
        <bigreactors:dustcyanite>*2 : <contenttweaker:material_part:115>
    },
    <avaritia:resource:1> : {
        <ore:ingotPureNeptunium>.firstItem : <ore:ingotZeroAshMetal>.firstItem
    },
    <avaritia:resource:6> : {
        <contenttweaker:material_part:108> : <avaritia:resource:5>*2
    }


};

function addRecipes(){
    for output, recipe in recipes{
        for up, down in recipe{
            combiner.addRecipe(up, down, output);
        }
    }
}

function init(){
    addRecipes();
}