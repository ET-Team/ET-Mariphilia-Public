#priority -700
import mods.embers.Melter;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static recipes as ILiquidStack[IIngredient] = {
    <contenttweaker:obsolete_can> : <fluid:copper>*48,
    <contenttweaker:obsolete_circuit> : <fluid:gold>*48,
    <contenttweaker:obsolete_iron> : <fluid:iron>*48
};

function init(){
    for input, output in recipes{
        Melter.add(output,input);
    }
}