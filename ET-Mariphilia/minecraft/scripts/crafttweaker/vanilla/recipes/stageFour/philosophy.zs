#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "哲学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <item:avaritia:resource:6> : [
            [<item:avaritia:resource:1>,<ore:ingotNeutron>,<item:avaritia:resource:1>],
            [<ore:ingotNeutron>,<item:embers:dust_ash>,<ore:ingotNeutron>],
            [<item:avaritia:resource:1>,<ore:ingotNeutron>,<item:avaritia:resource:1>]
        ],
        <item:avaritia:infinity_helmet> : [
            [<item:avaritia:resource:6>,<item:avaritia:resource:6>,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>]
        ],
        <item:avaritia:infinity_pants> : [
            [<item:avaritia:resource:6>,<item:avaritia:resource:6>,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>]
        ],
        <item:avaritia:infinity_chestplate> : [
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,<item:avaritia:resource:6>,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,<item:avaritia:resource:6>,<item:avaritia:resource:6>]
        ],
        <item:avaritia:infinity_boots> : [
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>,null,<item:avaritia:resource:6>]
        ],
        <item:avaritia:infinity_pickaxe> : [
            [<item:avaritia:resource:6>,<item:avaritia:resource:6>,<item:avaritia:resource:6>],
            [null,<contenttweaker:solidified_ash>,null],
            [null,<item:contenttweaker:solidified_ash>,null]
        ],
        <item:avaritia:infinity_sword> : [
            [<item:avaritia:resource:6>],
            [<item:avaritia:resource:6>],
            [<item:minecraft:stick>]
        ]
    };

    //镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {

    };

    //无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        
    };
//超频配方
    //有序合成
    static shapedRecipesOverclocked as IIngredient[][][IItemStack] = {

    };

    //镜像合成
    static mirroredRecipesOverclocked as IIngredient[][][IItemStack] = {

    };

    //无序合成
    static shapelessRecipesOverclocked as IIngredient[][IItemStack] = {
        
    };


//添加配方
function initRegularRecipes(){
    logUtil.logInfo("初始化阶段 "+stageName+" 基础有序配方");
    recipeUtil.addShapedRecipes(stageName, shapedRecipes);

    logUtil.logInfo("初始化阶段 "+stageName+" 基础镜像配方");
    recipeUtil.addMirroredRecipes(stageName, mirroredRecipes);

    logUtil.logInfo("初始化阶段 "+stageName+" 基础无序配方");
    recipeUtil.addShapelessRecipes(stageName, shapelessRecipes);


    logUtil.logInfo("初始化阶段 "+stageName+" 超频有序配方");
    recipeUtil.addShapedRecipes(stageNameOverclocked, shapedRecipesOverclocked);

    logUtil.logInfo("初始化阶段 "+stageName+" 超频镜像配方");
    recipeUtil.addMirroredRecipes(stageNameOverclocked, mirroredRecipesOverclocked);

    logUtil.logInfo("初始化阶段 "+stageName+" 超频无序配方");
    recipeUtil.addShapelessRecipes(stageNameOverclocked, shapelessRecipesOverclocked);
}

//阶段特别配方
function initStageRecipes(){

}

function init(){
    logUtil.logInfo("正在为以下阶段初始化配方 "+stageName);
    initRegularRecipes();
    initStageRecipes();
}