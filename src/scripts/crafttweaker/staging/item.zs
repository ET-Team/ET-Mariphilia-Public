#priority -800
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.ItemStages.addItemStage;
global stagedItemMap as IItemStack[][string] = {
    "灰烬学" : [
        <embers:ember_funnel>,
        <embers:ember_pulser>,
        <embers:ember_relay>,
        <embers:ember_injector>,
        <embers:boiler>,
        <embers:crystal_cell>,
        <embers:seed_copper>,
        <embers:seed_dawnstone>,
        <embers:seed_gold>,
        <embers:seed_iron>,
        <embers:seed_lead>,
        <embers:seed_nickel>,
        <embers:seed_silver>,
        <embers:seed_tin>,
        <embers:seed_aluminum>,
        <embers:archaic_light>,
        <embers:glimmer_lamp>,
        <embers:glimmer_shard>,
        <embers:pickaxe_clockwork>,
        <embers:axe_clockwork>,
        <embers:pickaxe_clockwork>,
        <embers:staff_ember>,
        <embers:winding_gears>,
        <embers:grandhammer>,
        <embers:inferno_forge>,
        <embers:ignition_cannon>
    ],
    "基础材料学" : [
        <embers:reactor>,
        <embers:combustor>,
        <embers:catalyzer>,
        <item:minecraft:redstone>,
        <item:chisel:chisel_hitech>,
        <item:chisel:chisel_iron>,
        <item:chisel:chisel_diamond>,
        <item:chisel:offsettool>
    ],
    "基础信号学" : [
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
        <minecraft:dropper>,
        <minecraft:repeater>,
        <minecraft:comparator>,
        <minecraft:activator_rail>,
        <minecraft:detector_rail>,
        <minecraft:golden_rail>,
        <inspirations:redstone_torch_lever>,
        <inspirations:collector>,
        <contenttweaker:ember_diode>,
        <embers:ember_gauge>,
        <embers:fluid_gauge>,
        <embers:ember_detector>,
        <embers:field_chart>
    ],
    "基础物流学" : [
        <minecraft:rail>,
        <minecraft:minecart>,
        <minecraft:hopper_minecart>,
        <minecraft:furnace_minecart>,
        <minecraft:chest_minecart>,
        <minecraft:tnt_minecart>,
        <minecraft:hopper>,
        <item:bdsandm:wood_crate>,
        <item:bdsandm:wood_barrel>,
        <item:bdsandm:upgrade>,
        <embers:bin>,
        <embers:item_dropper>,
        <embers:vacuum>
    ],
    "进阶物流学" : [
        <embers:item_pipe>,
        <embers:item_pump>,
        <embers:mechanical_pump>,
        <minecraft:golden_rail>,
        <minecraft:detector_rail>,
        <minecraft:activator_rail>,
        <bdsandm:color_tool>,
        <bdsandm:crate_key>,
        <bdsandm:metal_barrel>,
        <bdsandm:metal_crate>,
        <bdsandm:shipping_container>,
        <bdsandm:upgrade:1>,
        <bdsandm:upgrade:2>,
        <bdsandm:upgrade:3>,
        <bdsandm:upgrade:4>,
        <bdsandm:upgrade:5>,
        <bdsandm:upgrade:6>,
        <bdsandm:upgrade:7>,
        <openblocks:vacuum_hopper>,
        <embers:large_tank>,
        <embers:stone_edge>,
        <item:embers:stone_valve>,
        <embers:fluid_transfer>,
        <embers:item_transfer>,
        <embers:ember_siphon>
    ],
    "进阶信号学" : [
        <minecraft:observer>,
        <contenttweaker:ember_triode>,
        <trapexpansion:detector>,
        <openblocks:guide>,
        <openblocks:builder_guide>,
        <embers:breaker>,
        <embers:clockwork_attenuator>,
        <embers:catalytic_plug>,
        <embers:archaic_circuit>,
        <embers:jet_augment>
    ],
    "生物学" : [
        <minecraft:wheat_seeds>,
        <minecraft:wheat>,
        <openblocks:heal>,
        <embers:shifting_scales>,
        <embers:focal_lens>,
        <embers:isolated_materia>,
        <openblocks:beartrap>
    ],
    "植物学" : [
        <minecraft:beetroot_seeds>,
        <minecraft:beetroot>,
        <minecraft:beetroot_soup>,
        <minecraft:melon_seeds>,
        <minecraft:melon>,
        <minecraft:melon_block>,
        <minecraft:carrot>,
        <minecraft:carrot_on_a_stick>,
        <minecraft:golden_carrot>,
        <minecraft:speckled_melon>,
        <minecraft:baked_potato>,
        <minecraft:potato>,
        <minecraft:poisonous_potato>,
        <minecraft:lit_pumpkin>,
        <minecraft:pumpkin>,
        <minecraft:pumpkin_pie>,
        <minecraft:pumpkin_seeds>,
        <minecraft:nether_wart>,
        <minecraft:nether_wart_block>
    ],
    "动物学" : [
        <openblocks:generic>,
        <openblocks:hang_glider>
    ],
    "基础怪物学" : [
        <trapexpansion:spike_trap>,
        <trapexpansion:slippery_stone>,
        <trapexpansion:fan>
    ],
    "进阶材料学" : [
        <item:aquaculture:loot:1>,
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
    ],
    "物流信号学" : [

    ],
    "基础电学" : [
        <item:openblocks:elevator>,
        <item:openblocks:elevator_rotating>
    ],
    "自动化" : [
        <item:openblocks:auto_anvil>,
        <item:openblocks:auto_enchantment_table>,
        <item:chisel:auto_chisel>,
        <item:appliedenergistics2:crafting_accelerator>,
        <item:appliedenergistics2:crafting_monitor>,
        <item:appliedenergistics2:crafting_storage_16k>,
        <item:appliedenergistics2:crafting_storage_1k>,
        <item:appliedenergistics2:crafting_storage_4k>,
        <item:appliedenergistics2:crafting_storage_16k>,
        <item:appliedenergistics2:crafting_unit>,
        <item:appliedenergistics2:encoded_pattern>,
        <item:appliedenergistics2:material:52>,
        <item:appliedenergistics2:material:53>,
        <item:appliedenergistics2:molecular_assembler>,
        <item:appliedenergistics2:part:280>,
        <item:appliedenergistics2:part:281>,
        <item:appliedenergistics2:part:340>,
        <item:appliedenergistics2:part:480>,
        <item:appliedenergistics2:part:80>
    ],
    "进阶电学" : [
        //TODO
    ],
    "进阶怪物学" : [
        //TODO
    ],
    "空间学" : [
        <item:appliedenergistics2:quantum_link>,
        <item:appliedenergistics2:quantum_ring>,
        <item:appliedenergistics2:spatial_io_port>,
        <item:appliedenergistics2:spatial_pylon>,
        <item:appliedenergistics2:spatial_storage_cell_128_cubed>,
        <item:appliedenergistics2:spatial_storage_cell_16_cubed>,
        <item:appliedenergistics2:spatial_storage_cell_2_cubed>,
        <item:appliedenergistics2:wireless_access_point>,
        <item:appliedenergistics2:wireless_terminal>,
        <item:appliedenergistics2:condenser>,
        <item:mekanism:anchorupgrade>,
        <item:mekanism:basicblock:7>,
        <item:mekanism:machineblock:11>,
        <item:mekanism:portableteleporter>,
        <item:mekanism:teleportationcore>,
        <item:mekanism:machineblock3>
    ],
    "分子材料学" : [
        <item:bigreactors:ingotyellorium>,
        <item:bigreactors:blockyellorium>,
        <item:bigreactors:dustyellorium>
    ],
    "高能物理学" : [
        //TODO
    ],
    "原子材料学" : [
        //TODO
    ],
    "标准灰烬学" : [
        <embers:creative_ember_source>
    ],
    "标准怪物学" : [
        //TODO
    ],
    "哲学" : [
        //TODO
    ]
};

global stagedOreDictMap as string[][string] = {
    "基础材料学" : [
        "AshenMetal"
    ],
    "进阶材料学" : [
        "Mithril",
        "CompressedAshenMetal",
        "BiopolymerMaterial"
    ],
    "分子材料学" : [
        "Superconductium",
        "ZeroAshenMetal"
    ],
    "原子材料学" : [
        "Graphene",
        "Neutron"
    ]
};

function stageOreDict(){
    for stage, oreDicts in stagedOreDictMap{
        for oreDictName in oreDicts{
            for oreDict in oreDict.entries{
                if(oreDict.name has oreDictName){
                    for item in oreDict.items{
                        addItemStage(stage, item);
                    }
                }
            }
        }
    }
}

function stageItems(){
    for stage, items in stagedItemMap{
            for item in items{
                addItemStage(stage, item);
            }
        }
}
function init(){
    stageOreDict();
    stageItems();
}