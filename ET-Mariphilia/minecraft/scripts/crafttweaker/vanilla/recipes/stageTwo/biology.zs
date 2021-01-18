#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "生物学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <item:contenttweaker:grass_seeds>*2 : [
        [<ore:etmSeaweed>,<ore:etmSeaweed>],
        [<ore:etmSeaweed>,<ore:etmSeaweed>]
    ],
    <item:openblocks:beartrap> : [
        [<ore:plateIron>,<embers:tinker_hammer>.reuse(),<ore:plateIron>],
        [null,<ore:plateIron>,null]
    ],
    <item:openblocks:heal> : [
        [<item:minecraft:dye:2>,<item:minecraft:dye:15>,<item:minecraft:dye:2>],
        [<minecraft:dye:15>,<ore:wool>,<minecraft:dye:15>],
        [<item:minecraft:dye:2>,<item:minecraft:dye:15>,<item:minecraft:dye:2>]
    ],
    <minecraft:dye:5> : [[<minecraft:red_flower:2>]],
    <minecraft:dye:6> : [[<minecraft:red_flower:1>]],
    <minecraft:dye:7>*2 : [[<ore:dyeGray>,<ore:dyeWhite>]],
    <minecraft:dye:8>*2 : [[<ore:dyeBlack>,<ore:dyeWhite>]],
    <minecraft:dye:9> : [[<minecraft:red_flower:7>]],
    <minecraft:dye:10>*2 : [[<ore:dyeGreen>,<ore:dyeYellow>]],
    <minecraft:dye:11> : [[<minecraft:yellow_flower>]],
    <minecraft:dye:12> : [[<ore:dyeWhite>,<ore:dyeBlue>]],
    <minecraft:dye:13> : [[<minecraft:red_flower:4>]],
    <minecraft:dye:14> : [[<minecraft:red_flower:5>]],
    <minecraft:dye:1> : [[<minecraft:red_flower:0>]],
    <minecraft:hay_block> : [
        [<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>],
        [<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>],
        [<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>]
    ]
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {

};

//无序合成
static shapelessRecipes as IIngredient[][IItemStack] = {

    <minecraft:wheat>*9 : [<minecraft:hay_block>]
    
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