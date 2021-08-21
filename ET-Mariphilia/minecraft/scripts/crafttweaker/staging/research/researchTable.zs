#priority -700
import mods.ResearchTable;

static fireworks_big as string = "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:2,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;5320730,14188952,15435844,15790320]},{Type:2,Flicker:1,Trail:1,Colors:[I;6719955],FadeColors:[I;2651799]}]}}}}";
static sound as  string = "playsound minecraft:ui.toast.challenge_complete player @s";
static fireworks_small as string = "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;11743532,3887386,2437522,8073150,4408131,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;2437522,14188952,4312372,14602026]}]}}}}";

function title(stage as string){
    return "title @s title {\"text\":\"恭喜，您已解锁 "+stage+" ！\"}";
}
function init(){
    var c = ResearchTable.addCategory(<item:embers:dust_ash>);

    ResearchTable.builder("灰烬学", c).setIcons(<item:embers:dust_ember>)
        .setTitle("etm.research.ashenology.title")
        .setDescription("etm.research.ashenology.description")
        .addCondition(
            <item:embers:dust_ash>*64,
            <item:embers:crystal_ember>*4,
            <item:embers:ember_cluster>
            )
        .setRewardStages("灰烬学")
        .setRewardCommands(fireworks_big, title("灰烬学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础材料学", c)
        .setRequiredStages("超频时间","灰烬学").setIcons(<ore:ingotAshenMetal>.firstItem)
        .setTitle("etm.research.basic_materials_science.title")
        .setDescription("etm.research.basic_materials_science.description")
        .addCondition(
            <item:contenttweaker:ash_ingot>*16,
            <ore:ingotDawnstone>.firstItem*4,
            <ore:ingotBronze>.firstItem*4,
            <ore:ingotElectrum>.firstItem*4,
            <ore:ingotLead>.firstItem*8,
            <ore:ingotAluminum>.firstItem*8,
            <ore:ingotNickel>.firstItem*8,
            <ore:ingotIron>.firstItem*8,
            <contenttweaker:obsidian_ash>*32,
            <contenttweaker:pressure_data>*4
            )
        .setRewardStages("基础材料学")
        .setRewardCommands(fireworks_big, title("基础材料学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础信号学", c)
        .setRequiredStages("超频时间","基础材料学").setIcons(<item:minecraft:redstone_torch>)
        .setTitle("etm.research.basic_IT.title")
        .setDescription("etm.research.basic_IT.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*16,
            <ore:dustRedstone>.firstItem*32,
            <contenttweaker:basic_transmission>*8,
            <contenttweaker:obsolete_circuit>*16
            )
        .setRewardStages("基础信号学")
        .setRewardCommands(fireworks_big, title("基础信号学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶信号学", c)
        .setRequiredStages("超频时间","基础信号学").setIcons(<contenttweaker:basic_sensor>)
        .setTitle("etm.research.advanced_IT.title")
        .setDescription("etm.research.advanced_IT.description")
        .addCondition(
            <contenttweaker:ember_diode>*16,
            <item:contenttweaker:obsolete_circuit>*32,
            <ore:dustRedstone>*64,
            <item:minecraft:repeater>*16,
            <item:minecraft:comparator>*16
            )
        .setRewardStages("进阶信号学")
        .setRewardCommands(fireworks_big, title("进阶信号学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础物流学", c)
        .setRequiredStages("超频时间","基础材料学").setIcons(<wopper:wopper>)
        .setTitle("etm.research.basic_logistics.title")
        .setDescription("etm.research.basic_logistics.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*16,
            <wopper:wopper>*32,
            <embers:pump>*8,
            <embers:pipe>*16,
            <embers:blend_caminite>*16
            )
        .setRewardStages("基础物流学")
        .setRewardCommands(fireworks_big, title("基础物流学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶物流学", c)
        .setRequiredStages("超频时间","基础物流学","基础信号学").setIcons(<embers:item_transfer>)
        .setTitle("etm.research.advanced_logistics.title")
        .setDescription("etm.research.advanced_logistics.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*32,
            <minecraft:hopper>*16,
            <minecraft:rail>*64,
            <embers:blend_caminite>*32,
            <ore:dustRedstone>.firstItem*32,
            <ore:ingotElectrum>.firstItem*32
            )
        .setRewardStages("进阶物流学")
        .setRewardCommands(fireworks_big, title("进阶物流学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("生物学", c)
        .setRequiredStages("超频时间","基础材料学").setIcons(<ore:cropWheat>.firstItem)
        .setTitle("etm.research.biology.title")
        .setDescription("etm.research.biology.description")
        .addCondition(
            <ore:ingotAshenMetal>*16,
            <minecraft:spider_eye>*8,
            <minecraft:rotten_flesh>*64,
            <minecraft:bone>*64,
            <fluid:water>*20000,
            <fluid:aquae_cinere>*8000
            )
        .setRewardStages("生物学")
        .setRewardCommands(fireworks_big, title("生物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("植物学", c)
        .setRequiredStages("超频时间","生物学").setIcons(<ore:cropCarrot>.firstItem)
        .setTitle("etm.research.botany.title")
        .setDescription("etm.research.botany.description")
        .addCondition(
            <minecraft:wheat_seeds>*64,
            <ore:cropWheat>*128,
            <minecraft:cactus>*32,
            <ore:etmSeaweed>*64,
            <fluid:water>*48000
            )
        .setRewardStages("植物学")
        .setRewardCommands(fireworks_big, title("植物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础怪物学", c)
        .setRequiredStages("超频时间","生物学").setIcons(<item:minecraft:rotten_flesh>)
        .setTitle("etm.research.basic_mobiology.title")
        .setDescription("etm.research.basic_mobiology.description")
        .addCondition(
            <minecraft:rotten_flesh>*192,
            <minecraft:bone>*192,
            <ore:gunpowder>*64,
            <item:minecraft:string>*128,
            <fluid:corrosive_liquid>*20000
            )
        .setRewardStages("基础怪物学")
        .setRewardCommands(fireworks_big, title("基础怪物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("动物学", c)
        .setRequiredStages("超频时间","植物学").setIcons(<minecraft:beef>)
        .setTitle("etm.research.zoology.title")
        .setDescription("etm.research.zoology.description")
        .addCondition(
            <ore:cropCarrot>*64,
            <ore:cropPotato>*64,
            <ore:cropWheat>*64,
            <ore:cropBeetroot>*32,
            <ore:cropCactus>*32,
            <fluid:water>*16000
            )
        .setRewardStages("动物学")
        .setRewardCommands(fireworks_big, title("动物学"), sound, fireworks_small)
        .build();

    //第三章

    ResearchTable.builder("进阶材料学", c)
        .setRequiredStages("超频时间","进阶物流学","基础怪物学").setIcons(<ore:ingotCompressedAshMetal>.firstItem)
        .setTitle("etm.research.advanced_materials_science.title")
        .setDescription("etm.research.advanced_materials_science.description")
        .addCondition(
            <item:contenttweaker:pressure_data>*32,
            <ore:ingotDawnstone>*128,
            <ore:ingotLead>*128,
            <ore:ingotAshenMetal>*128,
            <item:minecraft:rotten_flesh>*196,
            <item:minecraft:bone>*196,
            <ore:cropCarrot>*196,
            <ore:cropPotato>*196,
            <ore:cropCactus>*196,
            <fluid:water>*32000
            )
        .setRewardStages("进阶材料学")
        .setRewardCommands(fireworks_big, title("进阶材料学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("机械-灰烬能量真空压缩机", c)
        .setRequiredStages("超频时间","进阶材料学").setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.compressor.title")
        .setDescription("etm.research.compressor.description")
        .addCondition(
            <item:contenttweaker:pressure_data>*64,
            <fluid:water>*50000,
            <fluid:lava>*16000
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:compressor"}))
        .build();

    ResearchTable.builder("机械-医药实验室", c)
        .setRequiredStages("超频时间","进阶材料学").setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.med_lab.title")
        .setDescription("etm.research.med_lab.description")
        .addCondition(
            <ore:cropBeetroot>*64,
            <minecraft:golden_carrot>*32,
            <minecraft:speckled_melon>*32,
            <minecraft:fermented_spider_eye>*64,
            <ore:cropWheat>*64,
            <minecraft:potion>.withTag({Potion: "minecraft:healing"}),
            <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
            <ore:plateBiopolymerMaterial>*8,
            <fluid:water>*32000
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:med_lab"}))
        .build();



    ResearchTable.builder("基础电学", c)
        .setRequiredStages("超频时间","进阶材料学")
        .setIcons(<ore:circuitBasic>.firstItem)
        .setTitle("etm.research.basic_electricity.title")
        .setDescription("etm.research.basic_electricity.description")
        .addCondition(
            <item:contenttweaker:ember_diode>*64,
            <item:contenttweaker:ember_triode>*32,
            <item:contenttweaker:obsolete_circuit>*128,
            <ore:ingotSilver>*128,
            <ore:ingotCopper>*128,
            <ore:ingotAshenMetal>*64
        )
        .setRewardStages("基础电学")
        .setRewardCommands(fireworks_big, title("基础电学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("机械-灰烬能量涡轮", c)
        .setRequiredStages("超频时间","基础电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.turbo.title")
        .setDescription("etm.research.turbo.description")
        .addCondition(
            <item:contenttweaker:pressure_data>*32,
            <ore:ingotAshenMetal>*32,
            <ore:ingotCompressedAshMetal>*8,
            <ore:plateBiopolymerMaterial>*8,
            <fluid:water>*32000,
            <fluid:lava>*8000,
            <fluid:steam>*32000,
            <fluid:alchemical_redstone>*4000
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:turbo"}))
        .build();

    ResearchTable.builder("机械-大型离心机", c)
        .setRequiredStages("超频时间","基础电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.centrifuge.title")
        .setDescription("etm.research.centrifuge.description")
        .addCondition(
            <minecraft:dye:15>*192,
            <item:minecraft:egg>*32,
            <ore:ingotCompressedAshMetal>*8,
            <ore:dustBiopolymerMaterial>*8,
            <fluid:dawnstone>*4000
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:centrifuge"}))
        .build();

    ResearchTable.builder("机械-装配机", c)
        .setRequiredStages("超频时间","基础电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.assembler.title")
        .setDescription("etm.research.assembler.description")
        .addCondition(
            <ore:itemEnrichedAlloy>*16,
            <item:contenttweaker:ember_diode>*32,
            <item:contenttweaker:basic_transmission>*32,
            <ore:ingotSteel>*32,
            <ore:ingotCopper>*64
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assembler"}))
        .build();

    ResearchTable.builder("物流信号学", c)
        .setRequiredStages("超频时间","基础电学")
        .setIcons(<item:appliedenergistics2:controller>)
        .setTitle("etm.research.logistic_IT.title")
        .setDescription("etm.research.logistic_IT.description")
        .addCondition(
            <item:contenttweaker:ember_diode>*64,
            <item:contenttweaker:ember_triode>*64,
            <item:contenttweaker:obsolete_circuit>*192,
            <ore:crystalCertusQuartz>*32,
            <ore:dustRedstone>*64,
            <ore:circuitBasic>*16
        )
        .setRewardStages("物流信号学")
        .setRewardCommands(fireworks_big, title("物流信号学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶电学", c)
        .setRequiredStages("超频时间","基础电学")
        .setIcons(<mekanism:machineblock3>)
        .setTitle("etm.research.advanced_electricity.title")
        .setDescription("etm.research.advanced_electricity.description")
        .addCondition(
            <ore:circuitAdvanced>*32,
            <ore:ingotCompressedAshMetal>*8,
            <ore:alloyElite>*16,
            <contenttweaker:ember_triode>*64,
            <ore:dustRedstone>*192
        )
        .addEnergyCondition(100000)
        .setRewardStages("进阶电学")
        .setRewardCommands(fireworks_big, title("空间学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("机械-深海物质聚集器", c)
        .setRequiredStages("超频时间","进阶电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.aggregator.title")
        .setDescription("etm.research.aggregator.description")
        .addCondition(
            <item:contenttweaker:ember_diode>*16,
            <item:contenttweaker:basic_transmission>*32,
            <item:embers:pipe>*32,
            <item:aquaculture:loot:1>*4
        )
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:deep_sea_mass_aggregator"}))
        .build();

    ResearchTable.builder("机械-电磁实验装置", c)
        .setRequiredStages("超频时间","进阶电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.electric_coil.title")
        .setDescription("etm.research.electric_coil.description")
        .addCondition(
            <item:contenttweaker:ember_diode>*64,
            <ore:ingotGold>*64,
            <ore:ingotCopper>*196
        )
        .addEnergyCondition(200000)
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:electric_coil"}))
        .build();

    ResearchTable.builder("空间学", c)
        .setRequiredStages("超频时间","进阶电学")
        .setIcons(<mekanism:machineblock3>)
        .setTitle("etm.research.spacialogy.title")
        .setDescription("etm.research.spacialogy.description")
        .addCondition(
            <ore:circuitUltimate>*8,
            <ore:ingotCompressedAshMetal>*8,
            <item:mekanism:teleportationcore>*16,
            <ore:ingotDimensionalMetal>*64
        )
        .setRewardStages("空间学")
        .addEnergyCondition(200000)
        .setRewardCommands(fireworks_big, title("空间学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("自动化", c)
        .setRequiredStages("超频时间","物流信号学")
        .setIcons(<appliedenergistics2:encoded_pattern>)
        .setTitle("etm.research.automation.title")
        .setDescription("etm.research.automation.description")
        .addCondition(
            <item:contenttweaker:ember_triode>*64,
            <ore:circuitAdvanced>*64,
            <ore:crystalFluix>*64,
            <appliedenergistics2:controller>*2,
            <appliedenergistics2:material:35>*16
        )
        .setRewardStages("自动化")
        .addEnergyCondition(200000)
        .setRewardCommands(fireworks_big, title("自动化"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶怪物学", c)
        .setRequiredStages("超频时间","空间学","自动化")
        .setIcons(<woot:layout>)
        .setTitle("etm.research.advanced_mobiology.title")
        .setDescription("etm.research.advanced_mobiology.description")
        .addCondition(
            <contenttweaker:biodata_creeper>*2,
            <contenttweaker:biodata_golem>*2,
            <contenttweaker:biodata_self>*2,
            <contenttweaker:biodata_skeleton>*2,
            <contenttweaker:biodata_zombie>*2,
            <contenttweaker:essencial_blood>*64,
            <embers:ashen_brick>*32,
            <appliedenergistics2:material:35>*8,
            <fluid:alchemical_redstone>*10000
        )
        .setRewardStages("进阶怪物学")
        .setRewardCommands(fireworks_big, title("进阶怪物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("分子材料学", c)
        .setRequiredStages("超频时间","空间学","进阶电学","进阶怪物学")
        .setIcons(<item:contenttweaker:material_part:101>)
        .setTitle("etm.research.atomic_materials_science.title")
        .setDescription("etm.research.atomic_materials_science.description")
        .addCondition(
            <ore:ingotCompressedAshMetal>*16,
            <item:contenttweaker:electricity_data>*32,
            <item:contenttweaker:pressure_data>*32,
            <ore:ingotCopper>*256,
            <ore:ingotSilver>*128,
            <ore:ingotGold>*128,
            <ore:ingotTin>*128,
            <ore:ingotSteel>*64
        )
        .setRewardStages("分子材料学")
        .addEnergyCondition(500000)
        .setRewardCommands(fireworks_big, title("分子材料学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("机械-亚次元钻井", c)
        .setRequiredStages("超频时间","进阶电学")
        .setIcons(<item:modularmachinery:itemblueprint>)
        .setTitle("etm.research.subdimensional_well.title")
        .setDescription("etm.research.subdimensional_well.description")
        .addCondition(
            <item:contenttweaker:ember_diode>*64,
            <ore:ingotGold>*64,
            <ore:gemDiamond>*32,
            <ore:gemQuartz>*16,
            <ore:ingotOsmium>*16
        )
        .addEnergyCondition(200000)
        .setNoMaxCount()
        .setRewardItems(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:subdimensional_well"}))
        .build();

    ResearchTable.builder("高能物理学", c)
        .setRequiredStages("超频时间","分子材料学")
        .setIcons(<item:bigreactors:ingotyellorium>)
        .setTitle("etm.research.high_energy_physics.title")
        .setDescription("etm.research.high_energy_physics.description")
        .addCondition(
            <ore:ingotYellorium>*32,
            <ore:ingotSuperconductium>*32,
            <ore:ingotZeroAshMetal>*64
        )
        .setRewardStages("高能物理学")
        .addEnergyCondition(1000000)
        .setRewardCommands(fireworks_big, title("高能物理学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("标准灰烬学", c)
        .setRequiredStages("超频时间","空间学","高能物理学")
        .setIcons(<item:embers:creative_ember_source>)
        .setTitle("etm.research.standard_ashenolgy.title")
        .setDescription("etm.research.standard_ashenolgy.description")
        .addCondition(
            <item:minecraft:dragon_egg>,
            <item:minecraft:chorus_fruit>*32,
            <item:contenttweaker:solidified_ash>*128,
            <item:embers:crystal_ember>*128,
            <item:embers:ember_cluster>*4
        )
        .setRewardStages("标准灰烬学")
        .addEnergyCondition(10000000)
        .setRewardCommands(fireworks_big, title("标准灰烬学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("标准怪物学", c)
        .setRequiredStages("超频时间","进阶怪物学","高能物理学")
        .setIcons(<item:minecraft:skull:5>)
        .setTitle("etm.research.standard_mobiology.title")
        .setDescription("etm.research.standard_mobiology.description")
        .addCondition(
            <item:minecraft:rotten_flesh>*128,
            <item:minecraft:ender_eye>*64,
            <item:minecraft:bone>*128,
            <item:minecraft:dragon_breath>*16,
            <ore:gemEmerald>*16
        )
        .setRewardStages("标准怪物学")
        .addEnergyCondition(100000000)
        .setRewardCommands(fireworks_big, title("标准怪物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("夸克材料学", c)
        .setRequiredStages("超频时间","高能物理学")
        .setIcons(<item:contenttweaker:material_part:105>)
        .setTitle("etm.research.quark_materials_science.title")
        .setDescription("etm.research.quark_materials_science.description")
        .addCondition(
            <item:contenttweaker:electricity_data>*64,
            <item:bigreactors:ingotblutonium>*64
        )
        .setRewardStages("夸克材料学")
        .addEnergyCondition(100000000)
        .setRewardCommands(fireworks_big, title("夸克材料学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("哲学", c)
        .setRequiredStages("超频时间","标准怪物学","标准灰烬学","高能物理学")
        .setIcons(<item:atum:eyes_of_atum>)
        .setTitle("etm.research.philosphy.title")
        .setDescription("etm.research.philosphy.description")
        .addCondition(
            <contenttweaker:heart_of_atum>,
            <ore:ingotNeutron>*32
        )
        .setRewardStages("哲学")
        .addEnergyCondition(300000000)
        .setRewardCommands(fireworks_big, title("哲学"), sound, fireworks_small)
        .build();

}