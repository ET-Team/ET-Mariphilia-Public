#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "植物学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <item:minecraft:paper> : [[<minecraft:reeds>,<minecraft:reeds>,<minecraft:reeds>]],
    <item:minecraft:brewing_stand> : [
        [null,<minecraft:blaze_powder>,null],
        [<ore:cropNetherWart>,<ore:blockAshenMetal>,<ore:cropNetherWart>],
        [<ore:blockBronze>,<ore:blockBronze>,<ore:blockBronze>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {

};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    
    <contenttweaker:bottled_ash> : [<item:minecraft:glass_bottle>,<embers:dust_ash>]
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