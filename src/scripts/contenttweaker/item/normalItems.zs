/*
Partial codes by Youyihj, aka 友谊
Adapted by ET-Team
Following the license of CC BY-NC-SA 4.0
*/

#priority -800
#loader contenttweaker
//导包
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.IItemRightClick;
	import mods.contenttweaker.Commands;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;

function buildItem(name as string, stacksize as int, rarity as string, glowing as bool){
	var itemt = VanillaFactory.createItem(name);
	itemt.maxStackSize = stacksize; //最大堆叠
	itemt.rarity = rarity; //稀有度 (“COMMON”白, “UNCOMMON”蓝, “RARE”紫, “EPIC”橙)
	itemt.glowing = glowing; //附魔闪光动画
	itemt.register();
}

function buildPlainItem(name as string){
	buildItem(name, 64, "COMMON", false);
}

static plainItemList as string[] = [
	"solidified_ash",
	"ash_string",
	"compact_ash",
	"ash_ingot",
	"obsolete_iron",
	"obsolete_can",
	"obsolete_circuit",
	"obsolete_battery",
	"bottled_ash",
	"handfulsand",
	"pebble",
	"plant_fiber",
	"fiber_string",
	"basic_sensor",
	"advanced_sensor",
	"basic_motor",
	"advanced_motor",
	"basic_transmission",
	"advanced_transmission",
	"basic_ember_capacitor",
	"advanced_ember_capacitor",
	"ember_diode",
	"ember_triode"
];


function buildStamps(){
	val typeList as string[] = ["sword","axe","hoe","pickaxe","shovel"];
	for partName in typeList{
		buildPlainItem("stamp_"+partName);
	}
}

function init(){
	for item in plainItemList{
		buildPlainItem(item);
	}
	buildStamps();
}