#priority -700
import mods.embers.DawnstoneAnvil;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static recipes as IIngredient[][IItemStack] = {

};

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
}