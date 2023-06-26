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

static stageNotes as string[string] = {
	"灰烬学" : "note_stage_1",
	"基础材料学" : "note_stage_2",
	"基础信号学" : "note_stage_3",
	"进阶信号学" : "note_stage_4",
	"基础物流学" : "note_stage_5",
	"进阶物流学" : "note_stage_6",
	"生物学" : "note_stage_7",
	"植物学" : "note_stage_8",
	"基础怪物学" : "note_stage_9",
	"动物学" : "note_stage_10",
	"进阶材料学" : "note_stage_11",
	"基础电学" : "note_stage_12",
	"物流信号学" : "note_stage_13",
	"进阶电学" : "note_stage_14",
	"空间学" : "note_stage_15",
	"自动化" : "note_stage_16",
	"进阶怪物学" : "note_stage_17",
	"分子材料学" : "note_stage_18",
	"高能物理学" : "note_stage_19",
	"标准灰烬学" : "note_stage_20",
	"标准怪物学" : "note_stage_21",
	"夸克材料学" : "note_stage_22",
	"哲学" : "note_stage_23",
};

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
	"ember_triode",
	"obsidian_ash",
	"pressure_meter",
	"essencial_blood",
	"life_essence",
	"stanene",
	//DATA
	"data_container",
	"thermal_data",
	"toughness_data",
	"pressure_data",
	"electricity_data",
	"lightning_data",
	"explosion_data",
	"ember_data",
	"jet_data",
	"biodata_wheat",
	"biodata_self",
	"biodata_zombie",
	"biodata_skeleton",
	"biodata_creeper",
	"biodata_golem",
	"biodata_wither",
	"electricity_meter",
	"heart_of_atum",

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

	for key, value in stageNotes{
		buildItem(value, 1, "UNCOMMON", false);
	}
}

