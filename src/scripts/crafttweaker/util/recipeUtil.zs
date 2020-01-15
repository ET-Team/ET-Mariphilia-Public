#priority 3000
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

zenClass RecipeUtil{
    zenConstructor(){

    }

    function addShapedRecipes(stage as string, map as IIngredient[][][IItemStack]){
        for output in map{
            //参数列表：配方名(物品名_shaped_阶段名), 阶段名, 产出（IItemStack）, 配方(IIngredient[][])
            mods.recipestages.Recipes.addShaped(stage, output, map[output]);
        }
    }

    function addMirroredRecipes(stage as string, map as IIngredient[][][IItemStack]){
        for output in map{
            //参数列表：配方名(物品名_mirrored_阶段名), 阶段名, 产出（IItemStack）, 配方(IIngredient[][])
            mods.recipestages.Recipes.addShapedMirrored(stage, output, map[output]);
        }
    }

    function addShapelessRecipes(stage as string, map as IIngredient[][IItemStack]){
        for output in map{
            //参数列表：配方名(物品名_shapeless_阶段名), 阶段名, 产出（IItemStack）, 配方(IIngredient[])
            mods.recipestages.Recipes.addShapeless(stage, output, map[output]);
        }
    }
}