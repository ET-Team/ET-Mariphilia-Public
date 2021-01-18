#priority -700
import mods.mekanism.crusher;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
// 输出:输入
static recipes as IIngredient[IItemStack] = {
    <appliedenergistics2:material:46>*2 : <minecraft:ender_pearl>

};

function addRecipes(){
    for output, input in recipes{
        crusher.addRecipe(input, output);
    }
}

function init(){
    addRecipes();
}