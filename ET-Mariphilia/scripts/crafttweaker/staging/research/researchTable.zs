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

    ResearchTable.builder("灰烬学", c)
        .setIcons(<item:embers:dust_ember>)
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
        .setRequiredResearches("灰烬学")
        .setIcons(<ore:ingotAshenMetal>.firstItem)
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
        .setRequiredResearches("基础材料学")
        .setIcons(<item:minecraft:redstone_torch>)
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
        .setRequiredResearches("基础信号学")
        .setIcons(<contenttweaker:basic_sensor>)
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
        .setRequiredResearches("基础材料学")
        .setIcons(<wopper:wopper>)
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
        .setRequiredResearches("基础物流学","基础信号学")
        .setIcons(<embers:item_transfer>)
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
        .setRequiredResearches("基础材料学")
        .setIcons(<ore:cropWheat>.firstItem)
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
        .setRequiredResearches("生物学")
        .setIcons(<ore:cropCarrot>.firstItem)
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
        .setRequiredResearches("生物学")
        .setIcons(<item:minecraft:rotten_flesh>)
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
        .setRequiredResearches("植物学")
        .setIcons(<minecraft:beef>)
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
}