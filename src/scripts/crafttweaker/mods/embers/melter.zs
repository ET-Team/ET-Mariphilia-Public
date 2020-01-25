#priority -700
import mods.embers.Melter;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static recipes as ILiquidStack[IIngredient] = {
    <contenttweaker:obsolete_can> : <fluid:copper>*48,
    <contenttweaker:obsolete_circuit> : <fluid:gold>*48,
    <contenttweaker:obsolete_iron> : <fluid:iron>*48,
    <contenttweaker:compact_ash> : <fluid:ash>*288,
    <contenttweaker:ash_ingot> : <fluid:ash>*144,
    <contenttweaker:obsidian_ash> : <fluid:obsidian>*12,
    <ore:ingotAshenMetal>.firstItem : <fluid:ashen_metal>*144,
    <ore:plateAshenMetal>.firstItem : <fluid:ashen_metal>*144
};

function init(){
    for input, output in recipes{
        Melter.add(output,input);
    }
}