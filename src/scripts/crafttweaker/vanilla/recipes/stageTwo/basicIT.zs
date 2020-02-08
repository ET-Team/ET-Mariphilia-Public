#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "基础信号学"; 

//仅添加

//有序合成
    static shapedRecipes as IIngredient[][][IItemStack] = {
        
    <minecraft:comparator> : [
        [null,<minecraft:redstone_torch>,null],
        [<minecraft:redstone_torch>,<contenttweaker:ember_diode>,<minecraft:redstone_torch>],
        [<ore:stone>,<ore:stone>,<ore:stone>]
    ],
    <contenttweaker:ember_diode>*2 : [
        [null,<ore:nuggetAshenMetal>,null],
        [<ore:ingotTin>,<embers:shard_ember>,<ore:ingotTin>],
        [null,<ore:nuggetAshenMetal>,null]
    ],
    <minecraft:compass> : [
        [null,<ore:plateIron>,null],
        [<ore:plateIron>,<ore:dustRedstone>,<ore:plateIron>],
        [null,<ore:plateIron>,null]
    ],
    <minecraft:repeater> : [
        [<minecraft:redstone_torch>,<contenttweaker:ember_diode>,<minecraft:redstone_torch>],
        [<ore:stone>,<ore:stone>,<ore:stone>]
    ],
    <embers:fluid_gauge> : [
        [<minecraft:compass>],
        [<ore:plateIron>],
        [<contenttweaker:ember_diode>]
    ],
    <embers:ember_gauge> : [
        [<minecraft:compass>],
        [<ore:plateCopper>],
        [<contenttweaker:ember_diode>]
    ],
    <minecraft:redstone_torch> : [
        [<minecraft:redstone>],
        [<ore:stickWood>]
    ],
    <minecraft:tripwire_hook> : [
        [<ore:ingotIron>],
        [<ore:stickWood>],
        [<ore:plankWood>],
    ],
    <minecraft:dispenser> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,<minecraft:bow>,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <minecraft:dropper> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,null,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <minecraft:piston> : [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [<ore:stone>,<ore:plateIron>,<ore:stone>],
        [<ore:stone>,<minecraft:redstone>,<ore:stone>],
    ],
    <item:minecraft:redstone_block> : [
        [<ore:dustRedstone>,<ore:dustRedstone>,<ore:dustRedstone>],
        [<ore:dustRedstone>,<ore:dustRedstone>,<ore:dustRedstone>],
        [<ore:dustRedstone>,<ore:dustRedstone>,<ore:dustRedstone>]
    ],
    <minecraft:sticky_piston> : [
        [<ore:slimeball>],
        [<item:minecraft:piston>]
    ],
    <embers:field_chart> : [
        [<ore:blockCopper>,<embers:crystal_ember>,<ore:blockCopper>],
        [<contenttweaker:ember_diode>,<ore:blockGlass>,<contenttweaker:ember_diode>],
        [<ore:blockCopper>,<embers:crystal_ember>,<ore:blockCopper>]
    ],
    <embers:ember_gauge> : [
        [null,<embers:crystal_ember>,null],
        [<ore:nuggetAshenMetal>,<minecraft:compass>,<ore:nuggetAshenMetal>],
        [null,<contenttweaker:ember_diode>,null]
    ],
    <embers:ember_detector> : [
        [<ore:ingotDawnstone>,<embers:ember_gauge>,<ore:ingotDawnstone>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {
    
};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {
    <minecraft:redstone_lamp> : [<ore:dustRedstone>,<ore:glowstone>]
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