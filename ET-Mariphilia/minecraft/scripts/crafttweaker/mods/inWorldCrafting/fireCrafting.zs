#priority -700
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FireCrafting;

static recipes as IIngredient[int][IItemStack] = {
    <item:contenttweaker:rekindled_ash> : {20 : <ore:dustAsh>}
    //<item:minecraft:brick> : {40 : <minecraft:clay_ball>}
};

function init(){
    for output, recipe in recipes{
        for time, input in recipe{
            FireCrafting.addRecipe(output, input, time);
        }
    }
}