#priority -600
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes.addShaped;

static stageName as string = "进阶物流学"; 


//有序合成
static shapedRecipes as IIngredient[][][IItemStack] = {
    <item:bdsandm:metal_crate>*4 : [
        [<ore:ingotAshenMetal>,<bdsandm:wood_crate>,<ore:ingotAshenMetal>],
        [<bdsandm:wood_crate>,<ore:ingotAshenMetal>,<bdsandm:wood_crate>],
        [<ore:ingotAshenMetal>,<bdsandm:wood_crate>,<ore:ingotAshenMetal>]
    ],
    <bdsandm:upgrade:1> : [
        [<ore:plateBronze>,<bdsandm:upgrade>],
        [<bdsandm:upgrade>,<ore:plateBronze>]
    ],
    <bdsandm:upgrade:2> : [
        [<ore:plateDawnstone>,<bdsandm:upgrade:1>],
        [<bdsandm:upgrade:1>,<ore:plateDawnstone>]
    ],
    <bdsandm:upgrade:3> : [
        [<ore:plateAshenMetal>,<bdsandm:upgrade:2>],
        [<bdsandm:upgrade:2>,<ore:plateAshenMetal>]
    ],
    <bdsandm:shipping_container> : [
        [<ore:blockIron>,<item:bdsandm:metal_crate>,<ore:blockIron>],
        [<item:bdsandm:metal_crate>,<ore:blockAshenMetal>,<item:bdsandm:metal_crate>],
        [<ore:blockIron>,<item:bdsandm:metal_crate>,<ore:blockIron>]
    ],
    <bdsandm:metal_barrel> : [
        [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
        [<ore:ingotIron>,<bdsandm:wood_barrel>,<ore:ingotIron>],
        [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]
    ],
    <bdsandm:crate_key> : [
        [<ore:ingotIron>,<ore:nuggetAshenMetal>],
        [<ore:ingotIron>]
    ],
    <bdsandm:upgrade:7> : [
        [<bdsandm:crate_key>,<ore:gemLapis>]
    ],
    <bdsandm:upgrade:6> : [
        [<embers:vacuum>,<ore:nuggetAshenMetal>],
        [<ore:nuggetAshenMetal>,<ore:nuggetAshenMetal>]
    ],
    <minecraft:activator_rail> : [
        [<minecraft:rail>,<ore:dustGlowstone>]
    ],
    <minecraft:golden_rail> : [
        [<minecraft:rail>,<minecraft:golden_carrot>]
    ],
    <minecraft:detector_rail> : [
        [<minecraft:rail>,<ore:dustRedstone>]
    ],
    <embers:ember_siphon>*2 : [
        [<item:embers:block_caminite_brick>,<embers:item_pump>,<item:embers:block_caminite_brick>],
        [<ore:plateLead>,<item:embers:crystal_ember>,<ore:plateLead>],
        [<item:embers:block_caminite_brick>,<item:embers:block_caminite_brick>,<item:embers:block_caminite_brick>]
    ],
    <embers:item_transfer> : [
        [<ore:plateLead>,<embers:item_pump>,<ore:plateLead>],
        [<ore:ingotLead>,<contenttweaker:basic_transmission>,<ore:ingotLead>],
        [<ore:ingotLead>,null,<ore:ingotLead>]
    ],
    <embers:fluid_transfer> : [
        [<embers:item_transfer>,<ore:gemLapis>]
    ],
    <openblocks:vacuum_hopper> : [
        [<ore:nuggetAshenMetal>,<ore:obsidian>,<ore:nuggetAshenMetal>],
        [<ore:obsidian>,<embers:item_pump>,<ore:obsidian>],
        [<ore:nuggetAshenMetal>,<ore:obsidian>,<ore:nuggetAshenMetal>]
    ],
    <embers:large_tank> : [
        [<embers:stairs_caminite_brick>,null,<embers:stairs_caminite_brick>],
        [<ore:plateIron>,<embers:block_tank>,<ore:plateIron>],
        [<embers:block_caminite_brick>,<embers:mech_core>,<embers:block_caminite_brick>]
    ],
    <embers:stone_edge> : [
        [<embers:wall_caminite_brick>,<embers:wall_caminite_brick>,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,null,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,<embers:wall_caminite_brick>,<embers:wall_caminite_brick>]
    ],
    <embers:stone_valve> : [
        [<embers:wall_caminite_brick>,<embers:wall_caminite_brick>,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,null,<embers:wall_caminite_brick>],
        [<embers:wall_caminite_brick>,<embers:pump>,<embers:wall_caminite_brick>]
    ]
    
};

//镜像合成
static mirroredRecipes as IIngredient[][][IItemStack] = {
    <item:bdsandm:metal_barrel>*2 : [
        [<ore:plateAshenMetal>,<item:bdsandm:wood_barrel>],
        [<item:bdsandm:wood_barrel>,<ore:plateAshenMetal>]
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