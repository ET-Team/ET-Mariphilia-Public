#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "动物学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <item:contenttweaker:dagger> : [
        [<embers:tinker_hammer>.reuse(),<ore:plateIron>],
        [<ore:stickWood>,null]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {

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