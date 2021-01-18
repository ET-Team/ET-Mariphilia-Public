#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "进阶电学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <mekanism:gastank>.withTag({tier: 0}) : [
            [<mekanism:ingot:4>,<mekanism:enrichedalloy>,<mekanism:ingot:4>],
            [<mekanism:ingot:4>,null,<mekanism:ingot:4>],
            [<mekanism:ingot:4>,<mekanism:ingot:4>,<mekanism:ingot:4>]
        ]

    };

    //镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {

    };

    //无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        <appliedenergistics2:material:30>*2 : [<mekanism:speedupgrade>,<ore:crystalFluix>]
    };
//超频配方
    //有序合成
    static shapedRecipesOverclocked as IIngredient[][][IItemStack] = {
        <mekanism:tierinstaller:1> : [
            [<ore:circuitAdvanced>,<ore:alloyAdvanced>,<ore:circuitAdvanced>],
            [<ore:plateAshenMetal>,<item:contenttweaker:advanced_transmission>,<ore:plateAshenMetal>],
            [<ore:circuitAdvanced>,<ore:alloyAdvanced>,<ore:circuitAdvanced>]
        ],
        <mekanism:tierinstaller:2> : [
            [<ore:circuitElite>,<ore:alloyElite>,<ore:circuitElite>],
            [<ore:plateCompressedAshMetal>,<item:contenttweaker:advanced_transmission>,<ore:plateCompressedAshMetal>],
            [<ore:circuitElite>,<ore:alloyElite>,<ore:circuitElite>]
        ],
        <mekanism:speedupgrade>*2 : [
            [<ore:gemQuartz>,<ore:dustRedstone>,<ore:gemQuartz>],
            [<ore:dustRedstone>,<ore:circuitAdvanced>,<ore:gemQuartz>],
            [<ore:gemQuartz>,<ore:dustRedstone>,<ore:gemQuartz>]
        ],
        <mekanism:energyupgrade>*2 : [
            [<ore:gemQuartz>,<ore:dustGlowstone>,<ore:gemQuartz>],
            [<ore:dustGlowstone>,<ore:circuitAdvanced>,<ore:dustGlowstone>],
            [<ore:gemQuartz>,<ore:dustGlowstone>,<ore:gemQuartz>]
        ],
        <mekanism:teleportationcore> : [
            [<ore:ingotDimensionalMetal>,<ore:alloyElite>,<ore:ingotDimensionalMetal>],
            [<ore:alloyElite>,<ore:circuitUltimate>,<ore:alloyElite>],
            [<ore:ingotDimensionalMetal>,<ore:alloyElite>,<ore:ingotDimensionalMetal>]
        ],
        <ore:circuitElite>.firstItem : [
            [null,<ore:alloyElite>,null],
            [<ore:alloyElite>,<ore:circuitAdvanced>,<ore:alloyElite>],
            [null,<ore:alloyElite>,null]
        ],
        <item:contenttweaker:electricity_meter> : [
            [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
            [<ore:nuggetSilver>,<ore:circuitAdvanced>,<ore:nuggetSilver>],
            [<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]
        ]
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