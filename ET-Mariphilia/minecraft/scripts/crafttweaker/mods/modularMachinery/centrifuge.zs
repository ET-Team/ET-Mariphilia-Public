#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;

static machine_name as string = "centrifuge";

static recipes as IItemStack[][int][int][IItemStack] = {
    <ore:dustBiopolymerMaterial>.firstItem*2 : {
        100 : {80 : 
            [<ore:dustOsmium>.firstItem,<item:minecraft:dye:15>*4,<item:embers:dust_ash>*20]
        }
    },
    <item:minecraft:gunpowder>*64 : {
        40 : { 40 :
            [<ore:dustRedstone>.firstItem*48,<item:embers:dust_ash>*64]
        }
    }
};

function init(){
    for input, recipe in recipes{
        for time, innerRecipe in recipe{
            for energy,outputs in innerRecipe{
                var builder = RecipeBuilder.newBuilder(machine_name+input.name, machine_name, time);
                for item in outputs{
                    builder.addItemOutput(item);
                }
                builder.addItemInput(input).addEnergyPerTickInput(energy).build();
            }
        }
    }
}