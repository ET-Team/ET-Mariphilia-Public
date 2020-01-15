#priority -800
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static fluidRecipes as ILiquidStack[bool][int][IItemStack][IIngredient] = {
    <contenttweaker:obsolete_circuit> : {oreDictUtil.getNuggetFromOre("Gold", 3) : {1 : { false : <fluid:corrosive_liquid> }}},
    <contenttweaker:obsolete_battery> : {oreDictUtil.getNuggetFromOre("Lead", 3) : {1 : { false : <fluid:corrosive_liquid> }}}
};

static transformationRecipes as ILiquidStack[bool][int][IIngredient][ILiquidStack] = {
    <fluid:aquae_cinere> : {<ore:dustAsh> : {3 : {false : <fluid:water>}}},
    <fluid:lava> : {<ore:cobblestone> : {3 : {true : <fluid:corrosive_liquid>}}},
    <fluid:corrosive_liquid> : {<item:contenttweaker:handfulsand> : {3 : {true : <fluid:aquae_cinere>}}}
};

function addWashingRecipes(){
    for input, recipe in fluidRecipes{
        for output, liquid in recipe{
            for amount, liquidStack in liquid{
                for consume, innerLiquidStack in liquidStack{
                    mods.inspirations.Cauldron.addFluidRecipe(output, input, innerLiquidStack, amount, consume);
                }
            }
        }
    }
}

function addTransformationRecipes(){
    for outputLiquid, inputs in transformationRecipes{
        for inputItem, liquid in inputs{
            for level, innerLiquid in liquid{
                for fire, inputLiquid in innerLiquid{
                    mods.inspirations.Cauldron.addFluidTransform(outputLiquid, inputItem, inputLiquid, level, fire);
                }
            }
        }
    }
}

function init(){
    addWashingRecipes();
    addTransformationRecipes();
}