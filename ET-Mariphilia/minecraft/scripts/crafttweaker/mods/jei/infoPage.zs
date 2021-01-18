#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI.addDescription as addInfo;

static info as string[IItemStack] = {
    <item:contenttweaker:essencial_blood> : "你可以做出一把匕首，手持匕首右击即可以你的生命值为代价换取一滴精血。"
};

function init(){
    for item, des in info{
        addInfo(item,des);
    }
}