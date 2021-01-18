#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "进阶材料学";
static stageNameOverclocked as string = stagingUtil.getOverclockStage(stageName);

static materialNames as string[] = [
    "Mithril",
    "CompressedAshMetal",
    "BiopolymerMaterial",
    "PureNeptunium",
    "DimensionalMetal",
    "Steel"
];

//非超频配方
    //有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        <item:waterstrainer:strainer_survivalist_reinforced> : [
            [<waterstrainer:net>,<minecraft:obsidian>,<waterstrainer:net>],
            [<minecraft:obsidian>,<waterstrainer:net>,<minecraft:obsidian>],
            [<waterstrainer:net>,<minecraft:obsidian>,<waterstrainer:net>]
        ],
        <item:waterstrainer:strainer_survivalist_dense_reinforced> : [
            [<waterstrainer:net:1>,<minecraft:obsidian>,<waterstrainer:net:1>],
            [<minecraft:obsidian>,<waterstrainer:net:1>,<minecraft:obsidian>],
            [<waterstrainer:net:1>,<minecraft:obsidian>,<waterstrainer:net:1>]
        ],
        <item:minecraft:book> : [
            [<item:minecraft:leather>,<ore:paper>],
            [<ore:paper>,<ore:paper>]
        ],
        <item:minecraft:bookshelf> : [
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
            [<ore:book>,<ore:book>,<ore:book>],
            [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
        ],
        <ore:blockBiopolymerMaterial>.firstItem : [
            [<ore:plateBiopolymerMaterial>,<ore:plateBiopolymerMaterial>],
            [<ore:plateBiopolymerMaterial>,<ore:plateBiopolymerMaterial>]
        ],
        <modularmachinery:blockcasing:1>*2 : [
            [null,<modularmachinery:itemmodularium>,null],
            [<modularmachinery:itemmodularium>,<waterstrainer:net:1>,<modularmachinery:itemmodularium>],
            [null,<modularmachinery:itemmodularium>,null]
        ],
        <modulardiversity:blockemberinputhatch:2> : [
            [null,<embers:ember_cluster>,null],
            [<embers:ember_cluster>,<modulardiversity:blockemberinputhatch:1>,<embers:ember_cluster>],
            [null,<embers:ember_cluster>,null]
        ],
        <modularmachinery:blockfluidinputhatch:2> : [
            [<modularmachinery:itemmodularium>,<embers:block_tank>,<modularmachinery:itemmodularium>],
            [<ore:ingotAshenMetal>,<modularmachinery:blockfluidinputhatch:1>,<ore:ingotAshenMetal>],
            [<modularmachinery:itemmodularium>,<ore:ingotAshenMetal>,<modularmachinery:itemmodularium>]
        ],
        <modularmachinery:blockfluidoutputhatch:2> : [
            [<modularmachinery:itemmodularium>,<ore:ingotAshenMetal>,<modularmachinery:itemmodularium>],
            [<ore:ingotAshenMetal>,<modularmachinery:blockfluidoutputhatch:1>,<ore:ingotAshenMetal>],
            [<modularmachinery:itemmodularium>,<embers:block_tank>,<modularmachinery:itemmodularium>]
        ],
        <modularmachinery:blockinputbus:2> : [
            [<ore:ingotDawnstone>,<wopper:wopper>,<ore:ingotDawnstone>],
            [<wopper:wopper>,<modularmachinery:blockinputbus:1>,<wopper:wopper>],
            [<ore:ingotDawnstone>,<modularmachinery:itemmodularium>,<ore:ingotDawnstone>]
        ],
        <modularmachinery:blockoutputbus:2> : [
            [<ore:ingotDawnstone>,<modularmachinery:itemmodularium>,<ore:ingotDawnstone>],
            [<wopper:wopper>,<modularmachinery:blockoutputbus:1>,<wopper:wopper>],
            [<ore:ingotDawnstone>,<wopper:wopper>,<ore:ingotDawnstone>]
        ],
        <modularmachinery:blockinputbus:3> : [
            [<contenttweaker:material_part:94>,<minecraft:hopper>,<contenttweaker:material_part:94>],
            [<minecraft:hopper>,<modularmachinery:blockinputbus:2>,<minecraft:hopper>],
            [<contenttweaker:material_part:94>,<modularmachinery:itemmodularium>,<contenttweaker:material_part:94>]
        ],
        <modularmachinery:blockoutputbus:3> : [
             [<contenttweaker:material_part:94>,<modularmachinery:itemmodularium>,<contenttweaker:material_part:94>],
            [<minecraft:hopper>,<modularmachinery:blockoutputbus:2>,<minecraft:hopper>],
            [<contenttweaker:material_part:94>,<minecraft:hopper>,<contenttweaker:material_part:94>]
        ],
        <modularmachinery:blockenergyinputhatch> : [
            [null,<embers:ember_jar>,null],
            [<minecraft:redstone>,<modularmachinery:blockcasing>,<minecraft:redstone>],
            [null,<ore:ingotIron>,null]
        ],
        <modularmachinery:blockenergyoutputhatch> : [
            [null,<ore:ingotIron>,null],
            [<minecraft:redstone>,<modularmachinery:blockcasing>,<minecraft:redstone>],
            [null,<embers:ember_jar>,null]
        ],
        <modularmachinery:blockenergyinputhatch:1> : [
            [null,<embers:ember_cartridge>,null],
            [<ore:ingotDawnstone>,<modularmachinery:blockenergyinputhatch>,<ore:ingotDawnstone>],
            [null,<minecraft:redstone>,null]
        ],
        <modularmachinery:blockenergyoutputhatch:1> : [
            [null,<minecraft:redstone>,null],
            [<ore:ingotDawnstone>,<modularmachinery:blockenergyoutputhatch>,<ore:ingotDawnstone>],
            [null,<embers:ember_cartridge>,null]
        ],
        <modularmachinery:blockenergyinputhatch:2> : [
            [<ore:ingotAshenMetal>,<mekanism:energytablet>,<ore:ingotAshenMetal>],
            [<mekanism:enrichedalloy>,<modularmachinery:blockenergyinputhatch:1>,<mekanism:enrichedalloy>],
            [<ore:ingotAshenMetal>,<aquaculture:loot:1>,<ore:ingotAshenMetal>]
        ],
        <modularmachinery:blockenergyoutputhatch:2> : [
            [<ore:ingotAshenMetal>,<aquaculture:loot:1>,<ore:ingotAshenMetal>],
            [<mekanism:enrichedalloy>,<modularmachinery:blockenergyoutputhatch:1>,<mekanism:enrichedalloy>],
            [<ore:ingotAshenMetal>,<mekanism:energytablet>,<ore:ingotAshenMetal>]
        ],
        <modularmachinery:blockenergyinputhatch:3> : [
            [<ore:ingotCompressedAshMetal>,<mekanism:energytablet>,<ore:ingotCompressedAshMetal>],
            [<mekanism:reinforcedalloy>,<modularmachinery:blockenergyinputhatch:2>,<mekanism:reinforcedalloy>],
            [<ore:ingotCompressedAshMetal>,<aquaculture:loot:1>,<ore:ingotCompressedAshMetal>]
        ],
        <modularmachinery:blockenergyoutputhatch:3> : [
            [<ore:ingotCompressedAshMetal>,<aquaculture:loot:1>,<ore:ingotCompressedAshMetal>],
            [<mekanism:reinforcedalloy>,<modularmachinery:blockenergyoutputhatch:2>,<mekanism:reinforcedalloy>],
            [<ore:ingotCompressedAshMetal>,<mekanism:energytablet>,<ore:ingotCompressedAshMetal>]
        ],
        <modularmachinery:blockfluidinputhatch> : [
            [null,<minecraft:bucket>,null],
            [<ore:ingotIron>,<modularmachinery:blockcasing>,<ore:ingotIron>],
            [null,<modularmachinery:itemmodularium>,null]
        ],
        <modularmachinery:blockfluidoutputhatch> : [
            [null,<modularmachinery:itemmodularium>,null],
            [<ore:ingotIron>,<modularmachinery:blockcasing>,<ore:ingotIron>],
            [null,<minecraft:bucket>,null]
        ],
        <modularmachinery:blockfluidinputhatch:1> : [
            [null,<minecraft:bucket>,null],
            [<ore:ingotDawnstone>,<modularmachinery:blockfluidinputhatch>,<ore:ingotDawnstone>],
            [null,<modularmachinery:itemmodularium>,null]
        ],
        <modularmachinery:blockfluidoutputhatch:1> : [
            [null,<modularmachinery:itemmodularium>,null],
            [<ore:ingotDawnstone>,<modularmachinery:blockfluidoutputhatch>,<ore:ingotDawnstone>],
            [null,<minecraft:bucket>,null]
        ],
        <modularmachinery:blockfluidinputhatch:3> : [
            [<modularmachinery:itemmodularium>,<embers:block_tank>,<modularmachinery:itemmodularium>],
            [<ore:ingotCompressedAshMetal>,<modularmachinery:blockfluidinputhatch:2>,<ore:ingotCompressedAshMetal>],
            [<modularmachinery:itemmodularium>,<ore:ingotCompressedAshMetal>,<modularmachinery:itemmodularium>]
        ],
        <modularmachinery:blockfluidoutputhatch:3> : [
            [<modularmachinery:itemmodularium>,<ore:ingotCompressedAshMetal>,<modularmachinery:itemmodularium>],
            [<ore:ingotCompressedAshMetal>,<modularmachinery:blockfluidoutputhatch:2>,<ore:ingotCompressedAshMetal>],
            [<modularmachinery:itemmodularium>,<embers:block_tank>,<modularmachinery:itemmodularium>]
        ],
        <embers:mini_boiler> : [
            [<ore:plateAshenMetal>,<ore:ingotBronze>,<ore:plateAshenMetal>],
            [<ore:plateAshenMetal>,<ore:ingotCompressedAshMetal>,<ore:plateAshenMetal>],
            [<ore:plateAshenMetal>,<ore:ingotBronze>,<ore:plateAshenMetal>]
        ],
        <modularmachinery:blockfluidinputhatch:4> : [
            [<modularmachinery:itemmodularium>,<embers:large_tank>,<modularmachinery:itemmodularium>],
            [<contenttweaker:material_part:66>,<modularmachinery:blockfluidinputhatch:3>,<contenttweaker:material_part:66>],
            [<modularmachinery:itemmodularium>,<contenttweaker:material_part:66>,<modularmachinery:itemmodularium>]
        ],
        <modularmachinery:blockfluidoutputhatch:4> : [
            [<modularmachinery:itemmodularium>,<contenttweaker:material_part:66>,<modularmachinery:itemmodularium>],
            [<contenttweaker:material_part:66>,<modularmachinery:blockfluidoutputhatch:3>,<contenttweaker:material_part:66>],
            [<modularmachinery:itemmodularium>,<embers:large_tank>,<modularmachinery:itemmodularium>]
        ]

    };

    //镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {

    };

    //无序合成
    static shapelessRecipes as IIngredient[][IItemStack] = {
        <ore:dustBiopolymerMaterial>.firstItem*8 : [<ore:plateBiopolymerMaterial>,<embers:tinker_hammer>.reuse()]
    };
//超频配方
    //有序合成
    static shapedRecipesOverclocked as IIngredient[][][IItemStack] = {
        <item:waterstrainer:strainer_survivalist_reinforced> : [
            [<waterstrainer:net>,<contenttweaker:obsidian_ash>,<waterstrainer:net>],
            [<contenttweaker:obsidian_ash>,<waterstrainer:net>,<contenttweaker:obsidian_ash>],
            [<waterstrainer:net>,<contenttweaker:obsidian_ash>,<waterstrainer:net>]
        ],
        <item:waterstrainer:strainer_survivalist_dense_reinforced> : [
            [<waterstrainer:net:1>,<contenttweaker:obsidian_ash>,<waterstrainer:net:1>],
            [<contenttweaker:obsidian_ash>,<waterstrainer:net:1>,<contenttweaker:obsidian_ash>],
            [<waterstrainer:net:1>,<contenttweaker:obsidian_ash>,<waterstrainer:net:1>]
        ],
        <item:minecraft:enchanting_table> : [
            [null,<minecraft:book>,null],
            [<ore:gemDiamond>,<ore:obsidian>,<ore:gemDiamond>],
            [<ore:obsidian>,<ore:blockBiopolymerMaterial>,<ore:obsidian>]
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
    for mat in materialNames{
        recipeUtil.addNuggetToIngotToBlockRecipe(mat,stageName);
    }
}

function init(){
    logUtil.logInfo("正在为以下阶段初始化配方 "+stageName);
    initRegularRecipes();
    initStageRecipes();
}