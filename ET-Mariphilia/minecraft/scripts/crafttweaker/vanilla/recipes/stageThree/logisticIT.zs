#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "物流信号学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <mekanism:transmitter:3>.withTag({tier: 0})*2 : [
            [<ore:ingotSteel>,<embers:item_pipe>,<ore:ingotSteel>]
        ],
        <mekanism:transmitter:1>.withTag({tier: 0})*2 : [
            [<ore:ingotSteel>,<embers:pipe>,<ore:ingotSteel>]
        ],
        <mekanism:transmitter:2>.withTag({tier: 0})*2 : [
            [<ore:ingotSteel>,<mekanism:enrichedalloy>,<ore:ingotSteel>]
        ],
        <appliedenergistics2:energy_acceptor> : [
            [<ore:plateCompressedAshMetal>,<appliedenergistics2:quartz_glass>,<ore:plateCompressedAshMetal>],
            [<appliedenergistics2:quartz_glass>,<ore:pearlFluix>,<appliedenergistics2:quartz_glass>],
            [<ore:plateCompressedAshMetal>,<appliedenergistics2:quartz_glass>,<ore:plateCompressedAshMetal>]
        ],
        <appliedenergistics2:material:35> : [
            [<mekanism:enrichedalloy>,<ore:crystalCertusQuartz>,<mekanism:enrichedalloy>],
            [<ore:crystalCertusQuartz>,<appliedenergistics2:material:22>,<ore:crystalCertusQuartz>],
            [<mekanism:enrichedalloy>,<ore:crystalCertusQuartz>,<mekanism:enrichedalloy>]
        ],
        <appliedenergistics2:material:36> : [
            [<mekanism:ingot:3>,<appliedenergistics2:material:23>,<mekanism:ingot:3>],
            [<appliedenergistics2:material:35>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:35>],
            [<mekanism:ingot:3>,<appliedenergistics2:material:35>,<mekanism:ingot:3>]
        ],
        <appliedenergistics2:material:37> : [
            [<mekanism:reinforcedalloy>,<appliedenergistics2:material:24>,<mekanism:reinforcedalloy>],
            [<appliedenergistics2:material:36>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:36>],
            [<mekanism:reinforcedalloy>,<appliedenergistics2:material:36>,<mekanism:reinforcedalloy>]
        ],
        <appliedenergistics2:material:39> : [
            [<appliedenergistics2:quartz_glass>,<ore:crystalFluix>,<appliedenergistics2:quartz_glass>],
            [<contenttweaker:material_part:64>,null,<contenttweaker:material_part:64>],
            [<contenttweaker:material_part:64>,<contenttweaker:material_part:64>,<contenttweaker:material_part:64>]
        ],
        <appliedenergistics2:sky_stone_chest> : [
            [<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>],
            [<appliedenergistics2:sky_stone_block>,null,<appliedenergistics2:sky_stone_block>],
            [<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>,<appliedenergistics2:sky_stone_block>]
        ],
        <mekanismgenerators:solarpanel> : [
            [<ore:plateAshenMetal>,<minecraft:glass_pane>,<ore:plateAshenMetal>],
            [<minecraft:glass_pane>,<ore:itemCompressedCarbon>,<minecraft:glass_pane>],
            [<ore:plateAshenMetal>,<minecraft:glass_pane>,<ore:plateAshenMetal>]
        ],
        <stevescarts:modulecomponents:23> : [
            [null,<ore:plateMithril>,null],
            [<ore:plateMithril>,<mekanism:ingot:4>,<ore:plateMithril>],
            [null,<ore:plateMithril>,null]
        ],
        <stevescarts:modulecomponents:80> : [
            [<contenttweaker:material_part:71>,<contenttweaker:material_part:71>,null],
            [<mekanism:ingot:4>,<mekanism:ingot:4>,<contenttweaker:material_part:71>],
            [<contenttweaker:material_part:71>,<contenttweaker:material_part:71>,null]
        ]
    };

    //镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {
        <appliedenergistics2:part:180> : [
            [null,<contenttweaker:ember_diode>,<appliedenergistics2:quartz_glass>],
            [<ore:ingotAshenMetal>,<embers:glimmer_shard>,<appliedenergistics2:quartz_glass>],
            [null,<contenttweaker:ember_diode>,<appliedenergistics2:quartz_glass>]

        ]

    };

    //无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        <appliedenergistics2:crystal_seed>.withTag({progress: 0})*2 : [<appliedenergistics2:material:2>,<ore:sand>],
        <stevescarts:blockadvdetector> : [<minecraft:rail>,<contenttweaker:basic_sensor>]
    };
//超频配方
    //有序合成
    static shapedRecipesOverclocked as IIngredient[][][IItemStack] = {
        <appliedenergistics2:material:38> : [
            [<ore:ingotMithril>,<appliedenergistics2:material:24>,<ore:ingotMithril>],
            [<appliedenergistics2:material:37>,<mekanism:controlcircuit:1>,<appliedenergistics2:material:37>],
            [<ore:ingotMithril>,<appliedenergistics2:material:37>,<ore:ingotMithril>]
        ],
        <appliedenergistics2:part:76> : [
            [<appliedenergistics2:part:56>,<appliedenergistics2:part:56>],
            [<appliedenergistics2:part:56>,<appliedenergistics2:part:56>]
        ],
        <appliedenergistics2:part:460> : [
            [null,<appliedenergistics2:part:16>,null],
            [<contenttweaker:material_part:64>,<appliedenergistics2:material:24>,<contenttweaker:material_part:64>],
            [<ore:crystalFluix>,<ore:crystalFluix>,<ore:crystalFluix>]
        ],
        <appliedenergistics2:memory_card> : [
            [<appliedenergistics2:material:23>,<ore:ingotAshenMetal>,<ore:ingotAshenMetal>],
            [<ore:ingotGold>,<mekanism:enrichedalloy>,<ore:ingotGold>]
        ],
        <contenttweaker:advanced_transmission>*2 : [
            [<ore:plateBiopolymerMaterial>,<ore:ingotPureNeptunium>,<ore:plateBiopolymerMaterial>],
            [<ore:ingotPureNeptunium>,<ore:pearlFluix>,<ore:ingotPureNeptunium>],
            [<ore:plateBiopolymerMaterial>,<ore:ingotPureNeptunium>,<ore:plateBiopolymerMaterial>]
        ]

    };

    //镜像合成
    static mirroredRecipesOverclocked as IIngredient[][][IItemStack] = {
        <appliedenergistics2:part:220> : [
            [null,<appliedenergistics2:material:44>,<contenttweaker:material_part:64>],
            [<appliedenergistics2:part:76>,<appliedenergistics2:material:24>,<contenttweaker:material_part:64>],
            [null,<appliedenergistics2:material:43>,<contenttweaker:material_part:64>]
        ]

    };

    //无序合成
    static shapelessRecipesOverclocked as IIngredient[][IItemStack] = {
        <appliedenergistics2:part:360> : [<appliedenergistics2:material:24>,<appliedenergistics2:part:380>,<minecraft:crafting_table>]
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