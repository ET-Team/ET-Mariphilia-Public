#priority -700
import mods.mekanism.infuser;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/**
<输出> : {
    灌注类型(“CARBON”,“TIN”,“DIAMOND”,“REDSTONE”,“FUNGI”,“BIO”,“OBSIDIAN”) : {
        灌注量 : <材料>
    }
}
 */

static recipes as IIngredient[int][string][IItemStack] = {
    <mekanism:controlcircuit> : {
        ("REDSTONE") : {
            20 : <ore:ingotOsmium>
        }
    },
    <mekanism:enrichedalloy> : {
        ("REDSTONE") : {
            20 : <ore:ingotAshenMetal>
        }
    },
    <mekanism:ingot:4> : {
        ("CARBON") : {
            20 : <ore:ingotAshenMetal>
        }
    }

};

function addRecipes(){
    for output, recipe in recipes{
        for type, innerRecipe in recipe{
            for amount, input in innerRecipe{
                infuser.addRecipe(type, amount, input, output);
            }
        }
    }
}

function init(){
    infuser.removeAllRecipes();
    addRecipes();
}