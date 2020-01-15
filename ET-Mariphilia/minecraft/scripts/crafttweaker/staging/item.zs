#priority -800
import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;
global stagedItemMap as IItemStack[][string] = {
    "two" : [
        <minecraft:redstone>,
        <minecraft:piston>,
        <minecraft:sticky_piston>,
        <minecraft:noteblock>,
        <minecraft:dispenser>,
        <minecraft:redstone_block>,
        <minecraft:redstone_lamp>,
        <minecraft:redstone_torch>,
        <minecraft:tripwire_hook>,
        <minecraft:trapped_chest>,
        <minecraft:daylight_detector>,
        <minecraft:observer>,
        <minecraft:dropper>,
        <minecraft:repeater>,
        <minecraft:comparator>,
        <minecraft:activator_rail>,
        <minecraft:detector_rail>,
        <minecraft:golden_rail>,
        <inspirations:redstone_torch_lever>,
        <inspirations:collector>
    ],
    "three" : [
        <aquaculture:neptunium_axe>,
        <aquaculture:neptunium_pickaxe>,
        <aquaculture:neptunium_shovel>,
        <aquaculture:neptunium_hoe>,
        <aquaculture:neptunium_sword>,
        <aquaculture:neptunium_chestplate>,
        <aquaculture:neptunium_helmet>,
        <aquaculture:neptunium_leggings>,
        <aquaculture:diamond_fishing_rod>,
        <aquaculture:loot:1>,
        <aquaculture:neptunium_boots>,
        <aquaculture:loot:7>
    ]
};

function init(){
    for stage, items in stagedItemMap{
        for item in items{
            addItemStage(stage, item);
        }
    }
}