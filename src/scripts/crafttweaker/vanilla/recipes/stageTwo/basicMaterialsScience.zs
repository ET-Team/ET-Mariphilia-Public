#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "基础材料学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    
    <embers:catalyzer> : [
        [null,<ore:ingotAshenMetal>,null],
        [<ore:plateAshenMetal>,<embers:ember_cluster>,<ore:plateAshenMetal>],
        [<embers:block_caminite_brick_slab>,<embers:mech_core>,<embers:block_caminite_brick_slab>]
    ],
    <embers:combustor> : [
        [null,<ore:ingotDawnstone>,null],
        [<ore:plateDawnstone>,<embers:ember_cluster>,<ore:plateDawnstone>],
        [<embers:block_caminite_brick_slab>,<embers:mech_core>,<embers:block_caminite_brick_slab>]
    ],
    <embers:reactor> : [
        [<embers:ingot_dawnstone>,<embers:wildfire_core>,<embers:ingot_dawnstone>],
        [<embers:ingot_dawnstone>,<ore:ingotAshenMetal>,<embers:ingot_dawnstone>],
        [<embers:block_caminite_brick>,<embers:mech_core>,<embers:block_caminite_brick>]
    ],
    <ore:nuggetAshenMetal>.firstItem*9 : [
        [<ore:ingotAshenMetal>]
    ],
    <ore:ingotAshenMetal>.firstItem : [
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>],
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>],
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>]
    ],
    <ore:blockAshenMetal>.firstItem : [
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>],
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>],
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>]
    ],
    <ore:ingotAshenMetal>.firstItem*9 : [
        [<ore:blockAshenMetal>]
    ],
    <ore:glowstone>.firstItem : [
        [<ore:dustGlowstone>,<ore:dustGlowstone>],
        [<ore:dustGlowstone>,<ore:dustGlowstone>]
    ],
    <minecraft:anvil> : [
        [<ore:blockAshenMetal>,<ore:blockAshenMetal>,<ore:blockAshenMetal>],
        [null,<ore:ingotIron>,null],
        [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]
    ],
    <item:embers:pickaxe_clockwork> : [
        [<ore:plateAshenMetal>,<item:embers:winding_gears>,<ore:plateAshenMetal>],
        [null,<ore:stickWood>,null],
        [null,<ore:stickWood>,null]
    ],
    <item:chisel:laboratory>*4 : [
        [<minecraft:dye:15>,<ore:ingotBrick>,<minecraft:dye:15>],
        [<ore:ingotBrick>,<ore:stone>,<ore:ingotBrick>],
        [<minecraft:dye:15>,<ore:ingotBrick>,<minecraft:dye:15>]
    ],
    <item:betterbuilderswands:wanddiamond> : [
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>],
        [<ore:ingotSilver>,<betterbuilderswands:wandiron>.anyDamage(),<ore:ingotSilver>],
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {

    <chisel:chisel_iron> : [
        [null,<ore:ingotAshenMetal>],
        [<ore:stickWood>,null]
    ],
    <embers:axe_clockwork> : [
        [<item:embers:winding_gears>,<ore:plateAshenMetal>],
        [<ore:stickWood>,<ore:plateAshenMetal>],
        [<ore:stickWood>,null]
    ]
};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    
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