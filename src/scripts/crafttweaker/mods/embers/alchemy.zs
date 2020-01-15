#priority -700
import mods.embers.Alchemy;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
/**
迫于语言限制，只好只用脚本式架构实现炼金配方
static recipes as IntRange[string][IIngredient[]][IItemStack] = {
    <ore:gemQuartz>.firstItem.withAmount(4) : {
        [
            <minecraft:flint>,
            <embers:blend_caminite>,
            <embers:blend_caminite>,
            <ore:ingotIron>.firstItem,
            <ore:ingotIron>.firstItem
        ] : {
                iron : 5 to 10,
                gold : 3 to 8
            }
    }
};
*/
static listRemove as IItemStack[] = [

];

function addRecipes(){
    //for output, inputs in recipes{
        //for itemsInput, condition in inputs{

    Alchemy.add(<minecraft:quartz>*4,
        [
            <minecraft:flint>,
            <embers:blend_caminite>,
            <embers:blend_caminite>,
            <minecraft:iron_ingot>,
            <minecraft:iron_ingot>
        ],
        {
            "iron" : 1 to 5,
            "dawnstone" : 3 to 8
        });

    Alchemy.add(<contenttweaker:advanced_alchemy_knowledge>,
        [
            <minecraft:book>,
            <embers:focal_lens>,
            <contenttweaker:ash_ingot>,
            <embers:ember_cluster>,
            <contenttweaker:ash_ingot>
        ],
        {
            "iron" : 12 to 53,
            "dawnstone" : 23 to 81,
            "lead" : 21 to 44,
            "silver" : 5 to 63,
            "copper" : 32 to 80
        });

    Alchemy.add(<item:embers:ingot_silver>*4,
        [
            <item:contenttweaker:ash_ingot>,
            <ore:ingotIron>,
            <ore:ingotIron>,
            <ore:bone>,
            <ore:bone>
        ],
        {
            "dawnstone" : 3 to 8,
            "lead" : 3 to 8
        });
        //}
    //}
}

function removeRecipes(){
    for output in listRemove{
        Alchemy.remove(output);
    }
}

function init(){
    addRecipes();
    removeRecipes();
}