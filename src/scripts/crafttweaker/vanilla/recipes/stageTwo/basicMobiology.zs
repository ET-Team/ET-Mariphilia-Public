#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "基础怪物学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <minecraft:slime> : [
        [<minecraft:slime_ball>,<minecraft:slime_ball>],
        [<minecraft:slime_ball>,<minecraft:slime_ball>]
    ],
    <minecraft:slime_ball>*4 : [
        [<minecraft:slime>]
    ],
    <item:trapexpansion:spike_trap>*6 : [
        [<ore:rodStone>,<ore:rodStone>,<ore:rodStone>],
        [<ore:ingotAshenMetal>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>],
        [<ore:blockIron>,<ore:blockIron>,<ore:blockIron>]
    ],
    <item:trapexpansion:fan>*4 : [
        [<ore:wool>,<ore:wool>,<ore:wool>],
        [null,<ore:ingotAshenMetal>,null],
        [<ore:blockIron>,<contenttweaker:ember_diode>,<ore:blockIron>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {
    <item:trapexpansion:slippery_stone>*2 : [
        [<ore:slimeball>,<ore:slimeball>],
        [<minecraft:ice>,<ore:stone>]
    ],
    <item:minecraft:fermented_spider_eye> : [
        [<item:minecraft:spider_eye>,<item:minecraft:sugar>],
        [<item:minecraft:sugar>,<item:minecraft:sugar>]
    ]
};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    <minecraft:slime_ball>*3 : [<item:minecraft:dye:2>,<item:minecraft:dye:15>,<minecraft:sugar>,<item:minecraft:dye:2>,<item:minecraft:dye:15>,<minecraft:sugar>,<item:minecraft:dye:2>,<item:minecraft:dye:15>,<minecraft:sugar>],
    

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