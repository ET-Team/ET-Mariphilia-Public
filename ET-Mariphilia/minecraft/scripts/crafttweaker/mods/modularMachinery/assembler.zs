#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.data.IData;

static machine_name as string = "assembler";
/**
    <产物> : {
        耗能每T : {
            耗时 : [<材料1>,<材料2>,...]
        }
    }
*/
static recipes as IItemStack[][int][int][IItemStack] = {
    <mekanism:machineblock:2> : {
        60 : {
            300 : [<mekanism:basicblock:8>,<mekanism:controlcircuit>*2,<embers:flame_barrier>*2]
        }
    },
    <mekanism:machineblock:1> : {
        46 : {
            300 : [<mekanism:basicblock:8>,<mekanism:controlcircuit>*2,<mekanism:ingot:1>*4,<embers:block_tank>]
        }
    },
    <appliedenergistics2:chest> : {
        50 : {
            150 : [<appliedenergistics2:part:160>,<appliedenergistics2:quartz_glass>*2,<contenttweaker:material_part:66>*4,<appliedenergistics2:material:9>]
        }
    },
    <appliedenergistics2:part:140>*2 : {
        10 : {
            60 : [<appliedenergistics2:quartz_glass>*4,<embers:dust_ember>]
        }
    },
    <appliedenergistics2:part:16>*4 : {
        10 : {
            60 : [<appliedenergistics2:part:140>,<appliedenergistics2:material:7>*2]
        }
    },
    <appliedenergistics2:material:24> : {
        20 : {
            100 : [<mekanism:compresseddiamond>,<mekanism:controlcircuit:1>,<appliedenergistics2:material:8>]
        }
    },
    <appliedenergistics2:material:22> : {
        20 : {
            100 : [<mekanism:ingot:3>,<mekanism:controlcircuit>,<appliedenergistics2:material:8>]
        }
    },
    <appliedenergistics2:material:23> : {
        20 : {
            100 : [<appliedenergistics2:material:10>,<mekanism:controlcircuit>,<appliedenergistics2:material:8>]
        }
    },
    <appliedenergistics2:controller> : {
        50 : {
            160 : [<appliedenergistics2:smooth_sky_stone_block>*4,<appliedenergistics2:material:24>,<mekanism:reinforcedalloy>*2,<ore:ingotMithril>.firstItem*3]
        }
    },
    <appliedenergistics2:material:44>*2 : {
        20 : {
            60 : [<appliedenergistics2:material:22>,<appliedenergistics2:material:23>,<appliedenergistics2:material:45>,<contenttweaker:material_part:64>*2]
        }
    },
    <appliedenergistics2:material:43>*2 : {
        20 : {
            60 : [<appliedenergistics2:material:22>,<appliedenergistics2:material:23>,<appliedenergistics2:material:8>,<contenttweaker:material_part:64>*2]
        }
    },
    <appliedenergistics2:part:380> : {
        40 : {
            160 : [<appliedenergistics2:part:180>,<appliedenergistics2:material:43>,<appliedenergistics2:material:44>,<embers:intelligent_apparatus>,<appliedenergistics2:part:16>,<contenttweaker:ember_diode>,<contenttweaker:basic_sensor>*4]
        }
    },
    <appliedenergistics2:storage_cell_1k>.withTag({}) : {
        20 : {
            160 : [<appliedenergistics2:material:39>,<appliedenergistics2:material:35>,<contenttweaker:ember_triode>]
        }
    },
    <appliedenergistics2:storage_cell_4k>.withTag({}) : {
        20 : {
            165 : [<appliedenergistics2:material:39>,<appliedenergistics2:material:36>,<contenttweaker:ember_triode>]
        }
    },
    <appliedenergistics2:storage_cell_16k>.withTag({}) : {
        20 : {
            170 : [<appliedenergistics2:material:39>,<appliedenergistics2:material:37>,<contenttweaker:ember_triode>]
        }
    },
     <appliedenergistics2:storage_cell_64k>.withTag({}) : {
        20 : {
            200 : [<appliedenergistics2:material:39>,<appliedenergistics2:material:38>,<contenttweaker:ember_triode>]
        }
    },
    <appliedenergistics2:drive> : {
        40 : {
            160 : [<mekanism:ingot:4>*4,<appliedenergistics2:material:24>*1,<contenttweaker:ember_triode>,<contenttweaker:basic_sensor>*10,<appliedenergistics2:part:16>*4]
        }
    },
    <appliedenergistics2:part:36> : {
        5 : {
            10 : [<appliedenergistics2:part:16>,<ore:wool>.firstItem]
        }
    },
    <appliedenergistics2:part:56> : {
        5 : {
            10 : [<appliedenergistics2:part:36>,<minecraft:redstone>,<contenttweaker:ember_diode>]
        } 
    },
    <appliedenergistics2:charger> : {
        20 : {
            160 : [<appliedenergistics2:smooth_sky_stone_block>*4,<mekanism:energytablet>,<mekanism:reinforcedalloy>*2,<contenttweaker:ember_triode>]
        }
    },
    <appliedenergistics2:part:240> : {
        20 : {
            80 : [<appliedenergistics2:material:44>,<contenttweaker:basic_sensor>,<appliedenergistics2:part:16>*4,<mekanism:ingot:4>*2]
        }
    },
    <appliedenergistics2:part:260> : {
        20 : {
            80 : [<appliedenergistics2:material:43>,<contenttweaker:basic_sensor>,<appliedenergistics2:part:16>*4,<mekanism:ingot:4>*2]
        }
    },
    <mekanismgenerators:generator:6> : {
        44 : {
            300 : [<mekanismgenerators:turbineblade>,<mekanism:ingot:4>*4,<mekanism:energytablet>,<mekanism:controlcircuit:1>*2,<contenttweaker:basic_transmission>*4]
        }
    },
    <mekanismgenerators:generator:1> : {
        30 : {
            160 : [<mekanismgenerators:solarpanel>*4,<mekanism:ingot:4>*6,<mekanism:energytablet>,<contenttweaker:basic_sensor>*4]
        }
    },
    <mekanismgenerators:generator:4> : {
        80 : {
            200 : [<mekanism:biofuel>*16,<mekanism:controlcircuit:1>*2,<mekanism:basicblock:8>,<mekanism:reinforcedalloy>*2,<mekanism:energytablet>*2]
        }
    },
    <stevescarts:cartmodule:39> : {
        40 : {
            160 : [<contenttweaker:material_part:71>*5,<stevescarts:modulecomponents:23>*2,<contenttweaker:advanced_transmission>*4]
        }
    },
    <stevescarts:blockcartassembler> : {
        50 : {
            160 : [<contenttweaker:material_part:64>*8,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>*2,<mekanism:basicblock:8>,<contenttweaker:advanced_transmission>*4]
        }
    },
    <stevescarts:blockcargomanager> : {
        40 : {
            80 : [<mekanism:basicblock:8>,<mekanism:controlcircuit:1>,<contenttweaker:material_part:64>*4]
        }
    },
    <mekanism:machineblock:9> : {
        50 : {
            160 : [<mekanism:basicblock:8>,<aquaculture:loot:1>*4,<mekanism:controlcircuit:2>,<mekanism:reinforcedalloy>*2,<mekanism:ingot:1>*6]
        }
    },
    <stevescarts:cartmodule:14>.withTag({Data: 100 as byte}) : {
        50 : {
            160 : [<contenttweaker:advanced_transmission>,<contenttweaker:material_part:39>*4,<mekanism:ingot:4>*2]
        }
    },
    <stevescarts:cartmodule:1> : {
        40 : {
            180 : [<mekanismgenerators:solarpanel>*4,<contenttweaker:advanced_transmission>,<mekanism:basicblock:8>,<mekanism:energytablet>,<contenttweaker:material_part:66>*2]
        }
    },
    <stevescarts:cartmodule:2> : {
        20 : {
            80 : [<minecraft:chest>*2]
        }
    },
    <mekanism:machineblock2:4> : {
        40 : {
            160 : [<mekanism:controlcircuit:2>,<mekanism:reinforcedalloy>*2,<mekanism:electrolyticcore>,<mekanism:basicblock:8>]
        }
    },
    <stevescarts:cartmodule> : {
        20 : {
            80 : [<mekanism:basicblock:8>,<embers:wildfire_core>,<mekanism:controlcircuit>*8,<contenttweaker:material_part:64>]
        }
    },
    <mekanism:energycube>.withTag({tier: 0}) : {
        120 : {
            200 : [<ore:circuitBasic>.firstItem*6,<ore:alloyBasic>.firstItem*16,<mekanism:energytablet>,<mekanism:energytablet>,<item:contenttweaker:ember_triode>*3,<item:mekanism:basicblock:8>]
        }
    },
    <stevescarts:cartmodule:79>.withTag({Data: 100 as byte}) : {
        60 : {
            180 : [<stevescarts:modulecomponents:80>*4,<mekanism:controlcircuit:1>*2,<mekanism:basicblock:8>,<ore:treeSapling>.firstItem*8]
        }
    },
    <stevescarts:cartmodule:3> : {
        60 : {
            40 : [<minecraft:chest>,<embers:plate_iron>*2]
        }
    },
    <stevescarts:cartmodule:4> : {
        60 : {
            40 : [<minecraft:chest>,<embers:plate_silver>*2]
        }
    },
    <stevescarts:cartmodule:5> : {
        60 : {
            40 : [<minecraft:chest>,<embers:plate_lead>*2]
        }
    },
    <stevescarts:cartmodule:63> : {
        60 : {
            40 : [<appliedenergistics2:quartz_glass>*16,<mekanism:transmitter:1>]
        }
    },
    <stevescarts:cartmodule:16> : {
        60 : {
            40 : [<mekanism:ingot:4>*4,<mekanism:enrichedalloy>,<minecraft:bucket>,<mekanism:transmitter:1>]
        }
    },
    <mekanism:machineblock2:1> : {
        20 : {
            600 : [<mekanism:basicblock:8>,<mekanism:controlcircuit:2>*2,<mekanism:reinforcedalloy>,<mekanism:gastank>.withTag({tier: 0}),]
        }
    },
    <mekanism:machineblock2:2> : {
        20 : {
            600 : [<mekanism:controlcircuit:2>,<mekanism:basicblock:8>,<mekanism:gastank>.withTag({tier: 0})*2,<contenttweaker:advanced_transmission>,<contenttweaker:ember_triode>*8,<aquaculture:loot:1>*16]
        }
    },
    <mekanism:machineblock2> : {
        20 : {
            600 : [<mekanism:basicblock:8>,<mekanism:gastank>.withTag({tier: 0}),<bdsandm:metal_barrel>,<mekanism:controlcircuit:2>,<contenttweaker:advanced_transmission>*2,<contenttweaker:material_part:71>*16]
        }
    },
    <mekanism:machineblock2:3> : {
        20 : {
            600 : [<mekanism:machineblock:9>,<mekanism:controlcircuit:2>*2,<embers:focal_lens>,<contenttweaker:material_part:71>*4,<mekanism:reinforcedalloy>*4,<contenttweaker:advanced_transmission>,<contenttweaker:basic_sensor>*4]
        }
    },
    <woot:factorybase> : {
        50 : {
            400 : [<contenttweaker:material_part:122>*8,<mekanism:teleportationcore>,<woot:stygianironingot>*4]
        }
    },
    <woot:prism> : {
        40 : {
            400 : [<appliedenergistics2:quartz_glass>,<mekanism:teleportationcore>,<appliedenergistics2:material:9>,<contenttweaker:material_part:122>*4]
        }
    },
    <woot:anvil> : {
        60 : {
            800 : [<embers:dawnstone_anvil>,<minecraft:obsidian>*3,<contenttweaker:material_part:122>*8,<woot:stygianironingot>*16]
        }
    },
    <woot:layout> : {
        40 : {
            600 : [<openblocks:builder_guide>,<woot:factorybase>]
        }
    },
    <woot:builder>.withTag({tier: 0}) : {
        40 : {
            40 : [<woot:yahhammer>,<openblocks:builder_guide>]
        }
    },
    <woot:factory> : {
        60 : {
            180 : [<woot:factorybase>,<mekanism:controlcircuit:3>,<appliedenergistics2:material:43>*4,<appliedenergistics2:material:44>*4,<contenttweaker:biodata_self>]
        }
    },
    <woot:structure>*16 : {
        50 : {
            600 : [<contenttweaker:biodata_zombie>,<contenttweaker:material_part:122>*4,<woot:stygianironingot>*16,<appliedenergistics2:material:43>*2,<mekanism:controlcircuit>*4]
        }
    },
    <woot:structure:1>*16 : {
        50 : {
            600 : [<contenttweaker:biodata_skeleton>,<contenttweaker:material_part:122>*4,<woot:stygianironingot>*16,<appliedenergistics2:material:43>*2,<mekanism:controlcircuit>*4]
        }
    },
    <woot:structure:2>*16 : {
        50 : {
            600 : [<contenttweaker:biodata_golem>,<contenttweaker:biodata_self>,<minecraft:blaze_powder>*8,<contenttweaker:material_part:122>*4,<woot:stygianironingot>*16,<appliedenergistics2:material:43>*2,<mekanism:controlcircuit:1>*4,<woot:shard:4>*2]
        }
    },
    <woot:structure:6> : {
        40 : {
            400 : [<woot:shard:2>*18,<woot:factorybase>,<appliedenergistics2:material:44>*2,<mekanism:controlcircuit>*4,<contenttweaker:material_part:64>*6]
        }
    },
    <woot:structure:7> : {
        40 : {
            400 : [<woot:shard>*18,<woot:factorybase>,<appliedenergistics2:material:44>*2,<mekanism:controlcircuit:1>*4,<contenttweaker:material_part:64>*6,<woot:shard:4>]
        }
    },
    <woot:structure:8> : {
        40 : {
            400 : [<woot:shard:1>*18,<woot:factorybase>,<appliedenergistics2:material:44>*2,<mekanism:controlcircuit:2>*4,<contenttweaker:material_part:64>*6,<woot:shard:5>]
        }
    },
    <woot:importer> : {
        40 : {
            500 : [<appliedenergistics2:part:240>,<woot:factorybase>,<mekanism:controlcircuit:3>]
        }
    },
    <woot:exporter> : {
        40 : {
            500 : [<appliedenergistics2:part:260>,<woot:factorybase>,<mekanism:controlcircuit:3>]
        }
    },
    <woot:cell:1> : {
        100 : {
            500 : [<woot:factorybase>,<mekanism:controlcircuit:3>,<mekanism:energycube>,<mekanism:reinforcedalloy>*8]
        }
    },
    <woot:structure:5> : {
        50 : {
            100 : [<woot:factorybase>,<mekanism:reinforcedalloy>*4,<mekanism:controlcircuit:3>,<contenttweaker:material_part:115>*8,<contenttweaker:basic_sensor>*4,<contenttweaker:ember_diode>*16]
        }
    },
    <woot:upgrade> : {
        40 : {
            200 : [<woot:factorybase>,<mekanism:speedupgrade>,<embers:flame_barrier>,<contenttweaker:material_part:120>*6,<embers:plate_iron>*4,<contenttweaker:basic_sensor>*2]
        }
    },
    <woot:upgrade:1> : {
        40 : {
            200 : [<woot:factorybase>,<mekanism:speedupgrade>*2,<embers:flame_barrier>,<contenttweaker:material_part:120>*6,<embers:plate_gold>*4,<contenttweaker:basic_sensor>*2,<woot:shard:4>*4]
        }
    },
    <woot:upgrade:3> : {
        40 : {
            200 : [<woot:factorybase>,<minecraft:dye:4>*16,<mekanism:reinforcedalloy>*4,<contenttweaker:material_part:120>*6,<embers:plate_iron>*4,<contenttweaker:basic_sensor>*2]
        }
    },
    <woot:upgrade:4> : {
        40 : {
            200 : [<woot:factorybase>,<minecraft:dye:4>*32,<mekanism:reinforcedalloy>*4,<contenttweaker:material_part:120>*6,<embers:plate_gold>*4,<contenttweaker:basic_sensor>*2,<woot:shard:4>*4]
        }
    },
    <woot:upgradeb> : {
        40 : {
            200 : [<woot:factorybase>,<mekanism:controlcircuit:3>,<mekanism:energytablet>,<contenttweaker:material_part:120>*8,<embers:plate_iron>*4,<appliedenergistics2:material:9>*2]
        }
    },
    <woot:upgradeb:1> : {
        40 : {
            200 : [<woot:factorybase>,<mekanism:controlcircuit:3>,<mekanism:energytablet>,<contenttweaker:material_part:120>*8,<embers:plate_iron>*4,<appliedenergistics2:material:9>*2,<woot:shard:4>*4]
        }
    },
    <appliedenergistics2:condenser> : {
        80 : {
            80 : [<ore:circuitUltimate>.firstItem,<ore:ingotDimensionalMetal>.firstItem*2,<mekanism:basicblock:8>]
        }
    },
    <appliedenergistics2:quantum_ring>*2 : {
        200 : {
            200 : [<appliedenergistics2:material:47>*2,<ore:ingotDimensionalMetal>.firstItem*8,<ore:alloyElite>.firstItem*5,<mekanism:basicblock:8>*2,<ore:circuitUltimate>.firstItem*2]
        }
    },
    <appliedenergistics2:spatial_io_port> : {
        200 : {
            80 : [<appliedenergistics2:spatial_pylon>,<ore:circuitUltimate>.firstItem,<item:mekanism:basicblock:8>,<item:minecraft:crafting_table>]
        }
    },
    <mekanism:machineblock:11> : {
        160 : {
            120 : [<mekanism:basicblock:7>,<ore:circuitUltimate>.firstItem,<item:mekanism:teleportationcore>,<ore:alloyElite>.firstItem*3]
        }
    },
    <item:compactmachines3:fieldprojector>*4 : {
        512 : {
            400 : [<ore:ingotDimensionalMetal>.firstItem*16,<mekanism:teleportationcore>*4,<ore:circuitUltimate>.firstItem*8,<ore:blockSteel>.firstItem*4,<ore:plateCompressedAshMetal>.firstItem*4,<ore:plateBiopolymerMaterial>.firstItem*8]
        }
    },
    <appliedenergistics2:material:52>*4 : {
        20 : {
            60 : [<appliedenergistics2:material:23>,<mekanism:reinforcedalloy>,<contenttweaker:material_part:92>*6,<contenttweaker:ember_triode>*2]
        }
    },
    <appliedenergistics2:part:340> : {
        40 : {
            100 : [<appliedenergistics2:part:180>,<appliedenergistics2:material:52>,<mekanism:reinforcedalloy>,<contenttweaker:basic_sensor>*4,<appliedenergistics2:material:24>*2]
        }
    },
    <appliedenergistics2:crafting_unit> : {
        40 : {
            200 : [<mekanism:basicblock:8>,<mekanism:controlcircuit:1>*2,<appliedenergistics2:material:22>*4,<contenttweaker:advanced_transmission>]
        }
    },
    <appliedenergistics2:crafting_storage_1k> : {
        40 : {
            200 : [<appliedenergistics2:material:35>,<appliedenergistics2:crafting_unit>]
        }
    },
    <appliedenergistics2:crafting_storage_4k> : {
        40 : {
            200 : [<appliedenergistics2:material:36>,<appliedenergistics2:crafting_unit>]
        }
    },
    <appliedenergistics2:crafting_storage_16k> : {
        40 : {
            200 : [<appliedenergistics2:material:37>,<appliedenergistics2:crafting_unit>]
        }
    },
    <appliedenergistics2:crafting_storage_64k> : {
        40 : {
            200 : [<appliedenergistics2:material:38>,<appliedenergistics2:crafting_unit>]
        }
    },
    <appliedenergistics2:crafting_monitor> : {
        40 : {
            200 : [<appliedenergistics2:crafting_unit>,<appliedenergistics2:part:180>,<contenttweaker:ember_triode>*8]
        }
    },
    <appliedenergistics2:crafting_accelerator> : {
        40 : {
            200 : [<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:24>*2,<contenttweaker:basic_sensor>*4]
        }
    },
    <appliedenergistics2:interface> : {
        40 : {
            100 : [<mekanism:basicblock:8>,<appliedenergistics2:material:43>,<appliedenergistics2:material:44>,<appliedenergistics2:smooth_sky_stone_block>*4,<mekanism:controlcircuit:1>*2,<contenttweaker:advanced_transmission>]
        }
    },
    <appliedenergistics2:molecular_assembler> : {
        40 : {
            100 : [<minecraft:crafting_table>,<appliedenergistics2:quartz_glass>*4,<appliedenergistics2:material:23>*4,<contenttweaker:material_part:71>,<contenttweaker:basic_sensor>*2,<contenttweaker:ember_triode>*4]
        }
    },
    <chisel:auto_chisel> : {
        40 : {
            100 : [<mekanism:basicblock:8>,<appliedenergistics2:material:23>*2,<contenttweaker:advanced_transmission>,<chisel:chisel_iron>,<contenttweaker:material_part:92>*4]
        }
    },
    <openblocks:auto_enchantment_table> : {
        40 : {
            100 : [<minecraft:enchanting_table>,<contenttweaker:advanced_transmission>,<appliedenergistics2:material:23>*2,<embers:wildfire_core>]
        }
    },
    <openblocks:auto_anvil> : {
        40 : {
            100 : [<mekanism:ingot:4>*16,<embers:tinker_hammer>,<contenttweaker:advanced_transmission>,<appliedenergistics2:material:23>*2]
        }
    },
    <appliedenergistics2:part:80> : {
        10 : {
            20 : [<contenttweaker:basic_sensor>,<contenttweaker:ember_triode>,<minecraft:redstone>*4,<appliedenergistics2:part:16>]
        }
    },
    <mekanism:machineblock:15> : {
        20 : {
            40 : [<mekanism:transmitter:3>,<appliedenergistics2:material:22>,<contenttweaker:basic_transmission>*2,<contenttweaker:material_part:92>*4,<contenttweaker:basic_sensor>*2,<appliedenergistics2:part:280>*2]
        }
    },
    <stevescarts:cartmodule:18> : {
        60 : {
            100 : [<minecraft:leather>*2,<minecraft:wool>*2,<contenttweaker:advanced_transmission>,<appliedenergistics2:material:22>*2,<appliedenergistics2:material:23>*2,<stevescarts:cartmodule:16>,<contenttweaker:basic_sensor>*4]
        }
    },
    <stevescarts:cartmodule:89> : {
        60 : {
            100 : [<appliedenergistics2:quartz_glass>*4,<mekanism:controlcircuit:3>,<contenttweaker:material_part:57>*4,<contenttweaker:basic_sensor>*4]
        }
    },
    <bigreactors:reactorcasing>*2 : {
        200 : {
            60 : [<bigreactors:reactorcasingcores>*4,<contenttweaker:material_part:99>*4]
        }
    },
    <bigreactors:reactorcontroller> : {
        300 : {
            100 : [<bigreactors:reactorcasing>*4,<mekanism:controlcircuit:3>,<appliedenergistics2:part:180>,<contenttweaker:material_part:101>*4]
        }
    },
    <bigreactors:reactorfuelrod>*2 : {
        200 : {
            60 : [<bigreactors:reactorcasing>*2,<appliedenergistics2:quartz_glass>,<bigreactors:ingotyellorium>*3]
        }
    },
    <bigreactors:reactorcontrolrod> : {
        300 : {
            100 : [<bigreactors:reactorcasing>*4,<contenttweaker:advanced_transmission>,<mekanism:controlcircuit:3>*2,<contenttweaker:material_part:101>*4]
        }
    },
    <bigreactors:reactorglass>*2 : {
        200 : {
            60 : [<bigreactors:reactorcasingcores>*4,<appliedenergistics2:quartz_glass>]
        }
    },
    <bigreactors:reactorpowertaprf> : {
        200 : {
            100 : [<bigreactors:reactorcasing>*4,<mekanism:energycube>,<mekanism:controlcircuit:3>*2]
        }
    },
    <bigreactors:reactoraccessport> : {
        200 : {
            100 : [<bigreactors:reactorcasing>*4,<appliedenergistics2:interface>,<mekanism:controlcircuit:3>,<contenttweaker:material_part:101>*2]
        }
    }

    

};

function buildUltimateCircuitRecipe(){
    RecipeBuilder.newBuilder(machine_name+"_ultimate_circuit", machine_name, 80)
        .addItemInput(<ore:circuitElite>,2)
        .addItemInput(<ore:ingotRefinedGlowstone>)
        .addItemInput(<item:contenttweaker:obsidian_ash>*2)
        .addItemInput(<ore:plateBiopolymerMaterial>)
        .addItemOutput(<ore:circuitUltimate>.firstItem)
        .addFluidInput(<fluid:sulfuricacid>*200)
        .addFluidInput(<fluid:liquidoxygen>*1000)
        .addEnergyPerTickInput(400)
        .build();
    RecipeBuilder.newBuilder(machine_name+"_structure:3", machine_name, 40)
        .addItemInput(<contenttweaker:biodata_self>)
        .addItemInput(<ore:ingotDimensionalMetal>,4)
        .addItemInput(<woot:stygianironingot>*16)
        .addItemInput(<appliedenergistics2:material:43>*2)
        .addItemInput(<mekanism:controlcircuit:2>*4)
        .addItemInput(<woot:shard:5>*2)
        .addItemOutput(<woot:structure:3>*16)
        .addFluidInput(<fluid:resonant_ender>*1000)
        .addEnergyPerTickInput(400)
        .build();
}

function init(){
    var i as int = 0;
    for output, recipe in recipes{
        for energy, innerRecipe in recipe{
            for time, inputs in innerRecipe{
                var builder = RecipeBuilder.newBuilder(machine_name+i+output.name, machine_name, time);
                for item in inputs{
                    builder.addItemInput(item);
                }
                builder.addItemOutput(output).addEnergyPerTickInput(energy).build();
                i+=1;
            }
        }
    }
    buildUltimateCircuitRecipe();
}