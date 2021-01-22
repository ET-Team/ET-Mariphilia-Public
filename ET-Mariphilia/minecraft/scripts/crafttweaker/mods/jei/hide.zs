#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.hide;
static items as IItemStack[] = [
    <item:betterbuilderswands:wandstone>,
    <item:betterbuilderswands:wandunbreakable>,
    <woot:upgrade:5>,
    <woot:upgrade:8>,
    <woot:upgrade:11>,
    <woot:upgrade:14>,
    <woot:upgradeb:2>,
    <woot:upgrade:2>
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