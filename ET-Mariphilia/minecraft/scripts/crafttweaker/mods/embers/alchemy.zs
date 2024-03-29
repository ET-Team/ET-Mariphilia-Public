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
    Alchemy.add(<embers:ingot_nickel>*4,
        [
            <contenttweaker:ash_ingot>,
            <ore:stone>,
            <ore:stone>,
            <ore:ingotIron>,
            <ore:ingotIron>
        ],
        {
            "iron" : 3 to 8,
            "dawnstone" : 3 to 8
        });
    Alchemy.add(<embers:ingot_aluminum>*4,
        [
            <contenttweaker:ash_ingot>,
            <ore:gemQuartz>,
            <ore:gemQuartz>,
            <ore:ingotDawnstone>,
            <ore:ingotDawnstone>
        ],
        {
            "iron" : 3 to 8,
            "dawnstone" : 3 to 8
        });
    Alchemy.add(<embers:seed_dawnstone>*4,
        [
            <ore:gemQuartz>,
            <ore:ingotDawnstone>,
            <ore:ingotDawnstone>,
            <embers:ember_cluster>,
            <embers:ember_cluster>
        ],
        {
            "iron" : 48 to 64,
            "dawnstone" : 64 to 88
        });
    Alchemy.add(<ore:dustGlowstone>.firstItem*4,
        [
            <ore:dustGlowstone>,
            <ore:bone>,
            <ore:dustRedstone>,
            <ore:dustRedstone>,
            <embers:shard_ember>
        ],
        {
            "copper" : 1 to 5,
            "dawnstone" : 4 to 9
        });
    Alchemy.add(<ore:cropNetherWart>.firstItem*2,
        [
            <ore:cropCarrot>,
            <ore:bone>,
            <item:minecraft:rotten_flesh>,
            <ore:dustRedstone>,
            <ore:nuggetCopper>
        ],
        {
            "copper" : 8 to 15,
            "silver" : 14 to 19
        });
    Alchemy.add(<contenttweaker:life_essence>,
        [
            <contenttweaker:essencial_blood>,
            <minecraft:rotten_flesh>,
            <ore:cropWheat>,
            <minecraft:rotten_flesh>,
            <ore:cropWheat>
        ],
        {
            "iron" : 12 to 18
        });
    //植物种子
    Alchemy.add(<inspirations:carrot_seeds>,
        [
            <minecraft:wheat_seeds>,
            <minecraft:rotten_flesh>,
            <ore:cropWheat>,
            <ore:dyeRed>,
            <ore:dyeYellow>
        ],
        {
            "dawnstone" : 3 to 7
        });
    Alchemy.add(<inspirations:sugar_cane_seeds>,
        [
            <minecraft:wheat_seeds>,
            <ore:nuggetIron>,
            <minecraft:spider_eye>,
            <minecraft:dye:15>,
            <ore:cropWheat>
        ],
        {
            "dawnstone" : 3 to 7
        });
    Alchemy.add(<minecraft:melon_seeds>,
        [
            <minecraft:wheat_seeds>,
            <contenttweaker:bottled_ash>,
            <ore:cropWheat>,
            <minecraft:cactus>,
            <ore:cropWheat>
        ],
        {
            "dawnstone" : 3 to 7
        });
    Alchemy.add(<minecraft:pumpkin_seeds>,
        [
            <minecraft:wheat_seeds>,
            <ore:dyeYellow>,
            <ore:cropWheat>,
            <ore:dyeYellow>,
            <minecraft:rotten_flesh>
        ],
        {
            "dawnstone" : 3 to 7
        });
    Alchemy.add(<minecraft:beetroot_seeds>,
        [
            <minecraft:wheat_seeds>,
            <ore:dyeRed>,
            <minecraft:rotten_flesh>,
            <ore:dyeRed>,
            <minecraft:rotten_flesh>
        ],
        {
            "dawnstone" : 3 to 7
        });
    Alchemy.add(<minecraft:packed_ice>,
        [
            <minecraft:water_bucket>,
            <ore:gemLapis>,
            <contenttweaker:bottled_ash>,
            <ore:gemLapis>,
            <contenttweaker:bottled_ash>
        ],
        {
            "silver" : 5 to 18
        });
    Alchemy.add(<ore:gemLapis>.firstItem*4,
        [
            <ore:gemLapis>,
            <minecraft:water_bucket>,
            <contenttweaker:bottled_ash>,
            <minecraft:dye:15>,
            <ore:gunpowder>
        ],
        {
            "silver" : 3 to 7
        });
    Alchemy.add(<ore:gemLapis>.firstItem,
        [
            <ore:gemDiamond>,
            <minecraft:water_bucket>,
            <contenttweaker:bottled_ash>,
            <minecraft:dye:15>,
            <ore:gunpowder>
        ],
        {
            "silver" : 3 to 7
        });
    Alchemy.add(<item:minecraft:fish:3>*4,
        [
            <item:trapexpansion:spike_trap>,
            <item:minecraft:fish>,
            <item:minecraft:fish>,
            <item:minecraft:fish>,
            <item:minecraft:fish>
        ],
        {
            "silver" : 6 to 12,
            "lead" : 10 to 18
        });
    Alchemy.add(<appliedenergistics2:material:9>*2,
        [
            <minecraft:ender_pearl>,
            <appliedenergistics2:material:8>,
            <appliedenergistics2:material:7>,
            <appliedenergistics2:material:8>,
            <appliedenergistics2:material:7>
        ],
        {
            "silver" : 40 to 60,
            "lead" : 10 to 30,
            "dawnstone" : 30 to 50
        });
    Alchemy.add(<minecraft:skull:3>,
        [
            <ore:itemSkull>,
            <contenttweaker:life_essence>,
            <contenttweaker:life_essence>,
            <contenttweaker:life_essence>,
            <contenttweaker:life_essence>
        ],
        {
            "silver" : 10 to 60,
            "lead" : 10 to 60,
            "dawnstone" : 10 to 60
        });
    Alchemy.add(<minecraft:end_stone>*8,
        [
            <ore:ingotZeroAshMetal>,
            <ore:stone>,
            <ore:stone>,
            <item:minecraft:ender_pearl>,
            <item:minecraft:ender_pearl>
        ],
        {
            "silver" : 3 to 8,
            "lead" : 5 to 12,
            "dawnstone" : 5 to 12
        });
    Alchemy.add(<atum:scarab>,
        [
            <ore:plateBiopolymerMaterial>,
            <ore:ingotGold>,
            <ore:ingotGold>,
            <ore:gemEmerald>,
            <ore:gemEmerald>
        ],
        {
            "silver" : 12 to 84,
            "lead" : 52 to 96,
            "dawnstone" : 63 to 96,
            "iron" : 18 to 42
        });
    Alchemy.add(<avaritia:resource:5>,
        [
            <aquaculture:fish:11>,
            <ore:ingotCrystalMatrix>,
            <ore:ingotSuperconductium>,
            <bigreactors:ingotblutonium>,
            <woot:shard:6>
        ],
        {
            "silver" : 800 to 900,
            "lead" : 800 to 900,
            "dawnstone" : 900 to 963,
            "iron" : 400 to 600
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