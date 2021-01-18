#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "进阶信号学"; 

//仅添加

//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <contenttweaker:ember_triode> : [
        [null,<contenttweaker:ember_diode>,null],
        [<ore:nuggetAshenMetal>,<ore:ingotSilver>,<ore:nuggetAshenMetal>],
        [null,<contenttweaker:ember_diode>,null]
    ],
    <contenttweaker:basic_sensor> : [
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>],
        [<contenttweaker:ember_triode>,<ore:ingotSilver>,<ore:plateDawnstone>],
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>]
    ],
    <openblocks:builder_guide> : [
        [<contenttweaker:ember_triode>,<ore:ingotAshenMetal>,<contenttweaker:ember_triode>],
        [<minecraft:brick_block>,<item:contenttweaker:basic_transmission>,<minecraft:brick_block>],
        [<minecraft:brick_block>,<ore:blockIron>,<minecraft:brick_block>]
    ],
    <minecraft:observer> : [
        [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
        [<minecraft:redstone>,<contenttweaker:basic_sensor>,<ore:gemQuartz>],
        [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
    ],
    <embers:breaker> : [
        [<ore:plateAshenMetal>,<contenttweaker:ember_triode>,<ore:plateAshenMetal>],
        [<ore:ingotLead>,<contenttweaker:basic_transmission>,<ore:ingotLead>],
        [<ore:ingotLead>,null,<ore:ingotLead>]
    ],
    <minecraft:daylight_detector> : [
        [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
        [<ore:gemQuartz>,<contenttweaker:basic_sensor>,<ore:gemQuartz>],
        [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
    ],
    <embers:jet_augment> : [
        [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
        [<contenttweaker:solidified_ash>,<contenttweaker:basic_transmission>,<contenttweaker:ember_triode>],
        [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]
    ],
    <embers:archaic_circuit> : [
        [<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>],
        [<embers:archaic_brick>,<contenttweaker:ember_triode>,<embers:archaic_brick>],
        [<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {
    
};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    <item:trapexpansion:detector> : [<minecraft:rotten_flesh>,<item:minecraft:observer>]
};

//添加配方
function initRegularRecipes(){
    logUtil.logInfo("Initializing regular shaped recipes for stage "+stageName);
    recipeUtil.addShapedRecipes(stageName, shapedRecipes);
    logUtil.logInfo("Initializing regular mirrored recipes for stage "+stageName);
    recipeUtil.addMirroredRecipes(stageName, mirroredRecipes);
    logUtil.logInfo("Initializing regular shapeless recipes for stage "+stageName);
    recipeUtil.addShapelessRecipes(stageName, shapelessRecipes);
}

//阶段特别配方
function initStageRecipes(){
    

}

function init(){
    logUtil.logInfo("Initializing recipes for stage "+stageName);
    initRegularRecipes();
    initStageRecipes();
}