#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "基础电学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <mekanism:transmitter>.withTag({tier: 0})*4 : [
            [<contenttweaker:material_part:92>,<minecraft:glass>,<contenttweaker:material_part:92>],
            [<minecraft:redstone>,<ore:ingotSilver>,<minecraft:redstone>],
            [<contenttweaker:material_part:92>,<minecraft:glass>,<contenttweaker:material_part:92>]
        ],
        <mekanism:machineblock:8> : [
            [<contenttweaker:material_part:92>,<contenttweaker:material_part:92>,<contenttweaker:material_part:92>],
            [<contenttweaker:material_part:92>,<embers:focal_lens>,<contenttweaker:material_part:92>],
            [<mekanism:transmitter>,<embers:wildfire_core>,<mekanism:transmitter>]
        ],
        <mekanism:basicblock:8>*2 : [
            [<ore:ingotSteel>,<minecraft:glass>,<ore:ingotSteel>],
            [<minecraft:glass>,<mekanism:enrichedalloy>,<minecraft:glass>],
            [<ore:ingotSteel>,<minecraft:glass>,<ore:ingotSteel>]
        ],
        <mekanism:machineblock:3> : [
            [<contenttweaker:basic_transmission>,<mekanism:enrichedalloy>,<contenttweaker:basic_transmission>],
            [<contenttweaker:material_part:92>,<mekanism:basicblock:8>,<contenttweaker:material_part:92>],
            [<contenttweaker:material_part:66>,<mekanism:transmitter>,<contenttweaker:material_part:66>]
        ],
        <mekanism:machineblock> : [
            [<aquaculture:loot:1>,<mekanism:enrichedalloy>,<aquaculture:loot:1>],
            [<contenttweaker:material_part:92>,<mekanism:basicblock:8>,<contenttweaker:material_part:92>],
            [<embers:wildfire_core>,<mekanism:transmitter>,<embers:wildfire_core>]
        ],
        <mekanism:energytablet> : [
            [<mekanism:enrichedalloy>,<ore:ingotGold>,<mekanism:enrichedalloy>],
            [<minecraft:redstone>,<mekanism:controlcircuit>,<minecraft:redstone>],
            [<mekanism:enrichedalloy>,<minecraft:gold_ingot>,<mekanism:enrichedalloy>]
        ],
        <mekanismgenerators:turbineblade> : [
            [null,<ore:plateIron>,null],
            [<ore:plateIron>,<ore:ingotIron>,<ore:plateIron>],
            [null,<ore:plateIron>,null]
        ]
        
        
    };

    //镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {
        <mekanism:configurator> : [
            [null,<ore:ingotAluminum>,<ore:ingotAshenMetal>],
            [<ore:ingotAluminum>,<item:mekanism:energytablet>,<ore:ingotAluminum>],
            [<ore:ingotAshenMetal>,<ore:ingotAluminum>,null]
        ]
    };

    //无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        
    };
//超频配方
    //有序合成
    static shapedRecipesOverclocked as IIngredient[][][IItemStack] = {
        <mekanism:controlcircuit:1> : [
            [<contenttweaker:basic_sensor>,<mekanism:enrichedalloy>,<contenttweaker:basic_sensor>],
            [<embers:shard_ember>,<mekanism:controlcircuit>,<embers:shard_ember>],
            [<contenttweaker:basic_sensor>,<mekanism:enrichedalloy>,<contenttweaker:basic_sensor>]
        ],
        <mekanism:electrolyticcore> : [
            [<mekanism:enrichedalloy>,<aquaculture:loot:1>,<mekanism:enrichedalloy>],
            [<mekanism:dust>,<embers:focal_lens>,<mekanism:dust:1>],
            [<mekanism:enrichedalloy>,<aquaculture:loot:1>,<mekanism:enrichedalloy>]
        ]

    };

    //镜像合成
    static mirroredRecipesOverclocked as IIngredient[][][IItemStack] = {
        <mekanism:tierinstaller> : [
            [<ore:plateAshenMetal>,<mekanism:enrichedalloy>,<embers:archaic_circuit>],
            [<ore:plateAshenMetal>,<mekanism:ingot:4>,<ore:plateAshenMetal>],
            [<ore:plateAshenMetal>,<contenttweaker:material_part:73>,<ore:plateAshenMetal>]
        ]

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

    logUtil.logInfo("初始化阶段 "+stageNameOverclocked+" 超频镜像配方");
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
