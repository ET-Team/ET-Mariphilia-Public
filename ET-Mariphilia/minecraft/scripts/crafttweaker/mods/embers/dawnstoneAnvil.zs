#priority -700
import mods.embers.DawnstoneAnvil;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static recipes as IIngredient[][IItemStack] = {
    <minecraft:golden_carrot> : [<minecraft:carrot>, <ore:ingotGold>],
    <minecraft:golden_apple> : [<minecraft:apple>, <ore:ingotGold>],
    <minecraft:speckled_melon> : [<minecraft:melon>, <ore:ingotGold>],
    <minecraft:sugar>*5 : [<minecraft:reeds>,<minecraft:reeds>],
    <minecraft:dye:2>*3 : [<minecraft:cactus>,<minecraft:cactus>],
    <embers:clockwork_attenuator> : [<embers:ember_gauge>,<ore:ingotDawnstone>],
    <minecraft:pumpkin_seeds> : [<minecraft:pumpkin>,<contenttweaker:pebble>],
    <minecraft:melon_seeds> : [<minecraft:melon>,<contenttweaker:pebble>],
    <ore:plateCompressedAshMetal>.firstItem : [<ore:ingotCompressedAshMetal>,null],
    <contenttweaker:material_part:71> : [<ore:ingotMithril>,null],
    <contenttweaker:material_part:113> : [<contenttweaker:material_part:115>,null],
    <woot:stygianironplate> : [<woot:stygianironingot>,null],
    <contenttweaker:material_part:120> : [<contenttweaker:material_part:122>,null],
    <ore:plateAshenMetal>.firstItem : [<ore:ingotAshenMetal>, null],
    <contenttweaker:material_part:78> : [<contenttweaker:material_part:80>,null],
    <contenttweaker:material_part:99> : [<contenttweaker:material_part:101>,null]
};

static breakDownRecipeRemoval as IIngredient[] = [
    <embers:ashen_cloak_head>
];

static plateArray as IItemStack[] = [
    <embers:plate_copper>,
    <embers:plate_lead>,
    <embers:plate_silver>,
    <embers:plate_dawnstone>,
    <embers:plate_iron>,
    <embers:plate_gold>,
    <embers:plate_aluminum>,
    <embers:plate_bronze>,
    <embers:plate_electrum>,
    <embers:plate_nickel>,
    <embers:plate_tin>
] as IItemStack[];

static plateMaterialArray as IItemStack[] = [
    <embers:ingot_copper>,
    <embers:ingot_lead>,
    <embers:ingot_silver>,
    <embers:ingot_dawnstone>,
    <minecraft:iron_ingot>,
    <minecraft:gold_ingot>,
    <embers:ingot_aluminum>,
    <embers:ingot_bronze>,
    <embers:ingot_electrum>,
    <embers:ingot_nickel>,
    <embers:ingot_tin>,
];

static embersMetals as string[] = [
	"Copper",
	"Tin",
	"Lead",
	"Bronze",
	"Dawnstone", 
	"Aluminum",
	"Nickel",
	"Silver",
	"Electrum"
];

static partTypes as string[] = [
    "pickaxe",
    "axe",
    "hoe",
    "sword",
    "shovel"
];

function initToolRecipes(){
    for metal in embersMetals{
        for type in partTypes{
            DawnstoneAnvil.add([itemUtils.getItem("embers:"+type+"_"+metal.toLowerCase())],<ore:stickWood>,oreDict[type+"Part"+metal]);
        }
    }
}

function initStampRecipes(){
    for part in partTypes{
        DawnstoneAnvil.add([itemUtils.getItem("contenttweaker:stamp_"+part)],<embers:stamp_flat>,oreDict[part+"PartIron"]);
    }
}

function initPlateRecipes(){
    for i, mats in plateMaterialArray{
        DawnstoneAnvil.add([plateArray[i]], mats, null);
    }
}

function initRecipes(){
    for output, inputs in recipes{
        DawnstoneAnvil.add([output], inputs[0], inputs[1]);
    }
}

function removeBreakDownRecipes(){
    for input in breakDownRecipeRemoval{
        DawnstoneAnvil.blacklistBreakdown(input);
    }
}


/*
function initToolRecipes(){
    for metal in embersMetals{
        val types as string[] = ["pickaxe","axe","sword","shovel","hoe"];
        for type in types{
            DawnstoneAnvil.add([itemUtils.getItem("embers:"+type+"_"+metal)],<ore:stickWood>,itemUtils.getItem("contenttweaker:"+"part_"+type+"_"+metal));
        }
    }
}
*/
function init(){
    initPlateRecipes();
    initToolRecipes();
    initStampRecipes();
    initRecipes();
    removeBreakDownRecipes();
}