#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.hide;
static items as IItemStack[] = [
    <item:betterbuilderswands:wanddiamond>,
    <item:betterbuilderswands:wandstone>,
    <item:betterbuilderswands:wandunbreakable>
];

static liquids as ILiquidStack[] = [

];

function init(){
    for item in items{
        hide(item);
    }
    for liquid in liquids{
        hide(liquid);
    }
}