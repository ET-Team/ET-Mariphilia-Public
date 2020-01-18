#priority -700
import mods.ResearchTable;

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
        .setRewardCommands(
            "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:2,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;5320730,14188952,15435844,15790320]},{Type:2,Flicker:1,Trail:1,Colors:[I;6719955],FadeColors:[I;2651799]}]}}}}",
            "title @s title {\"text\":\"恭喜，您已解锁一项新科技！\"}",
            "playsound minecraft:ui.toast.challenge_complete player @s",
            "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;11743532,3887386,2437522,8073150,4408131,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;2437522,14188952,4312372,14602026]}]}}}}")
        .build();
}