#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.ExplosionCrafting;

function explosionWithChance(output as IItemStack, input as IIngredient, percentage as int){
    ExplosionCrafting.explodeItemRecipe(output, input, percentage);
}

function explosion(output as IItemStack, input as IIngredient){
    explosionWithChance(output, input, 100);
}

static recipes as IIngredient[IItemStack] = {
    oreDictUtil.getNuggetFromOre("Iron", 3) : <contenttweaker:obsolete_iron>,
    oreDictUtil.getNuggetFromOre("Copper", 3) : <contenttweaker:obsolete_can>,
    <item:embers:crystal_ember> : <item:contenttweaker:solidified_ash>,
    <item:minecraft:blaze_powder>*3 : <item:minecraft:soul_sand>
};

static blockRecipes as IItemStack[IItemStack] = {
};

function init(){
    for output in recipes{
        explosion(output, recipes[output]);
    }
    for output, input in blockRecipes{
        ExplosionCrafting.explodeBlockRecipe(output, input, 100);
    }
}