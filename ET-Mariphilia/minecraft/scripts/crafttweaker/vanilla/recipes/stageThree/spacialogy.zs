#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static stageName as string = "空间学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <appliedenergistics2:spatial_pylon>*4 : [
            [<ore:ingotDimensionalMetal>,<ore:ingotDimensionalMetal>,<ore:ingotDimensionalMetal>],
            [<ore:alloyAdvanced>,<ore:circuitElite>,<ore:alloyAdvanced>],
            [<ore:ingotDimensionalMetal>,<ore:ingotDimensionalMetal>,<ore:ingotDimensionalMetal>]
        ],
        <mekanism:basicblock:7>*2 : [
            [<ore:plateBiopolymerMaterial>,<ore:ingotDimensionalMetal>,<ore:plateBiopolymerMaterial>],
            [<ore:ingotDimensionalMetal>,<mekanism:basicblock:4>,<ore:ingotDimensionalMetal>],
            [<ore:plateBiopolymerMaterial>,<ore:ingotDimensionalMetal>,<ore:plateBiopolymerMaterial>]
        ],
        <mekanism:portableteleporter> : [
            [<ore:circuitBasic>,<ore:ingotAluminum>,<ore:circuitBasic>],
            [<ore:ingotAluminum>,<mekanism:teleportationcore>,<ore:ingotAluminum>],
            [<ore:circuitBasic>,<ore:ingotAluminum>,<ore:circuitBasic>]
        ],
        <item:compactmachines3:psd> : [
            [<ore:nuggetDimensionalMetal>,<ore:nuggetDimensionalMetal>,<ore:nuggetDimensionalMetal>],
            [<ore:nuggetDimensionalMetal>,<mekanism:portableteleporter>,<ore:nuggetDimensionalMetal>],
            [<ore:nuggetDimensionalMetal>,<ore:nuggetDimensionalMetal>,<ore:nuggetDimensionalMetal>]
        ],
        <appliedenergistics2:material:32> : [
            [<contenttweaker:material_part:92>,<contenttweaker:material_part:122>,<contenttweaker:material_part:92>],
            [<contenttweaker:material_part:122>,<appliedenergistics2:material:9>,<contenttweaker:material_part:122>],
            [<contenttweaker:material_part:92>,<contenttweaker:material_part:122>,<contenttweaker:material_part:92>]
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
        <mekanism:machineblock3> : [
            [<item:mekanism:teleportationcore>,<ore:circuitUltimate>,<item:mekanism:teleportationcore>],
            [<ore:plateCompressedAshMetal>,<mekanism:basicblock:7>,<ore:plateCompressedAshMetal>],
            [<item:mekanism:teleportationcore>,<ore:circuitUltimate>,<item:mekanism:teleportationcore>]
        ],
        <appliedenergistics2:material:33> : [
            [<contenttweaker:material_part:120>,<appliedenergistics2:material:32>,<contenttweaker:material_part:120>],
            [<appliedenergistics2:material:32>,<appliedenergistics2:material:24>,<appliedenergistics2:material:32>],
            [<contenttweaker:material_part:120>,<appliedenergistics2:material:32>,<contenttweaker:material_part:120>]
        ],
        <appliedenergistics2:material:34> : [
            [<contenttweaker:material_part:120>,<appliedenergistics2:material:33>,<contenttweaker:material_part:120>],
            [<appliedenergistics2:material:33>,<appliedenergistics2:material:24>,<appliedenergistics2:material:33>],
            [<contenttweaker:material_part:120>,<appliedenergistics2:material:33>,<contenttweaker:material_part:120>]
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