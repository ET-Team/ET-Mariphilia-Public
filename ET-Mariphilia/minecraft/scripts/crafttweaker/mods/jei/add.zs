#priority -700
import crafttweaker.item.IItemStack;

static addList as IItemStack[] = [
    <minecraft:skull:3>
];

function init(){
    for item in addList{
        mods.jei.JEI.addItem(item);
    }
}