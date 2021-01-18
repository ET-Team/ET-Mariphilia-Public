#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "基础物流学"; 

//仅添加

//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    
    <minecraft:rail>*8 : [
        [<ore:ingotIron>,null,<ore:ingotIron>],
        [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
        [<ore:ingotIron>,null,<ore:ingotIron>]
    ],
    <minecraft:minecart> : [
        [<ore:plateIron>,null,<ore:plateIron>],
        [<ore:plateAshenMetal>,<ore:plateIron>,<ore:plateAshenMetal>],
        [<stevescarts:modulecomponents:1>,null,<stevescarts:modulecomponents:1>]
    ],
    <bdsandm:wood_barrel> : [
        [<ore:logWood>,<ore:slabWood>,<ore:logWood>],
        [<ore:logWood>,null,<ore:logWood>],
        [<ore:logWood>,<ore:slabWood>,<ore:logWood>]
    ],
    <stevescarts:modulecomponents:1>*2 : [
        [null,<ore:plateIron>,null],
        [<ore:plateIron>,<ore:stickWood>,<ore:plateIron>],
        [null,<ore:plateIron>,null]
    ],
    <item:embers:bin> : [
        [<ore:plateIron>,<ore:ingotAshenMetal>,<ore:plateIron>],
        [<ore:plateIron>,null,<ore:plateIron>],
        [<ore:plateIron>,<ore:ingotAshenMetal>,<ore:plateIron>]
    ],
    <item:embers:vacuum> : [
        [<ore:plateLead>,null,<ore:plateLead>],
        [<ore:plateLead>,<item:embers:bin>,<ore:plateLead>],
        [null,<item:minecraft:hopper>,null]
    ],
    <minecraft:hopper> : [
        [<ore:plateAshenMetal>,null,<ore:plateAshenMetal>],
        [<ore:plateAshenMetal>,<ore:chest>,<ore:plateAshenMetal>],
        [null,<ore:plateAshenMetal>,null],
    ],
    <embers:ember_funnel> : [
        [<ore:plateDawnstone>,<ore:blockBronze>,<ore:plateDawnstone>],
        [<ore:plateDawnstone>,<embers:copper_cell>,<ore:plateDawnstone>],
        [null,<item:minecraft:hopper>,null]
    ],
    <item:bdsandm:upgrade> : [
        [<ore:logWood>,<ore:logWood>,<ore:logWood>],
        [<ore:logWood>,<minecraft:chest>,<ore:logWood>],
        [<ore:logWood>,<ore:logWood>,<ore:logWood>]
    ]
};

//镜像合成
    static mirroredRecipes as IIngredient[][][IItemStack] = {
        
        <minecraft:hopper_minecart> : [
            [<ore:hopper>],
            [<minecraft:minecart>]
        ],
        <minecraft:chest_minecart> : [
            [<ore:chestWood>],
            [<minecraft:minecart>]
        ],
        <minecraft:furnace_minecart> : [
            [<minecraft:furnace>],
            [<minecraft:minecart>]
        ],
        <minecraft:tnt_minecart> : [
            [<minecraft:tnt>],
            [<minecraft:minecart>]
        ],
        <embers:item_dropper>*2 : [
            [null,<ore:hopper>,null],
            [<ore:plateIron>,<minecraft:dropper>,<ore:plateIron>]
        ]
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