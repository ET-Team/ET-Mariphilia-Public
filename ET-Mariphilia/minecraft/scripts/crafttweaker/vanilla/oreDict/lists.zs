#priority 3000
import crafttweaker.item.IItemStack;

//剑列表
    static swords as IItemStack[] = [
        <minecraft:stone_sword>,
        <minecraft:wooden_sword>,
        <minecraft:iron_sword>,
        <minecraft:diamond_sword>,
        <minecraft:golden_sword>,
        <embers:sword_dawnstone>,
        <embers:tyrfing>,
        <embers:sword_copper>,
        <embers:sword_silver>,
        <embers:sword_lead>,
        <embers:sword_aluminum>,
        <embers:sword_bronze>,
        <embers:sword_electrum>,
        <embers:sword_nickel>,
        <embers:sword_tin>,
    ];


function init(){
    <ore:etmListSwords>.addItems(swords);
}