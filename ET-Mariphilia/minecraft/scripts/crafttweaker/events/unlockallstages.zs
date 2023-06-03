#priority -800

import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

static allStages as string[] = [
	"one",
	"灰烬学",
	"基础材料学",
	"基础信号学",
	"进阶信号学",
	"基础物流学",
	"进阶物流学",
	"生物学",
	"植物学",
	"基础怪物学",
	"动物学",
	"进阶材料学",
	"基础电学",
	"物流信号学",
	"进阶电学",
	"空间学",
	"自动化",
	"进阶怪物学",
	"分子材料学",
	"高能物理学",
	"标准灰烬学",
	"标准怪物学",
	"夸克材料学",
	"哲学",
];

function init(){
	events.onCommand(function(event as CommandEvent){
		if (event.commandSender.world.remote && !event.commandSender instanceof IPlayer) {
			return;
		}
		var player as IPlayer = event.commandSender;
		if (event.command.name == "gamestage" && (event.parameters in "add") && (event.parameters in "allstages")) {
			if (!player.creative) {
			event.cancel();
			player.sendMessage("非创造模式无法使用此指令!");
			return;
			}
			event.cancel();
			for stage in allStages{
			player.addGameStage(stage);
			}
			player.executeCommand("title @s title {\"text\":\"已解锁全部阶段\",\"bold\":true}");
			player.executeCommand("playsound minecraft:ui.toast.challenge_complete player @s");
		}
	});

}

val stageNotes = {
	"灰烬学" : <contenttweaker:note_stage_1>,
	"基础材料学" : <contenttweaker:note_stage_2>,
	"基础信号学" : <contenttweaker:note_stage_3>,
	"进阶信号学" : <contenttweaker:note_stage_4>,
	"基础物流学" : <contenttweaker:note_stage_5>,
	"进阶物流学" : <contenttweaker:note_stage_6>,
	"生物学" : <contenttweaker:note_stage_7>,
	"植物学" : <contenttweaker:note_stage_8>,
	"基础怪物学" : <contenttweaker:note_stage_9>,
	"动物学" : <contenttweaker:note_stage_10>,
	"进阶材料学" : <contenttweaker:note_stage_11>,
	"基础电学" : <contenttweaker:note_stage_12>,
	"物流信号学" : <contenttweaker:note_stage_13>,
	"进阶电学" : <contenttweaker:note_stage_14>,
	"空间学" : <contenttweaker:note_stage_15>,
	"自动化" : <contenttweaker:note_stage_16>,
	"进阶怪物学" : <contenttweaker:note_stage_17>,
	"分子材料学" : <contenttweaker:note_stage_18>,
	"高能物理学" : <contenttweaker:note_stage_19>,
	"标准灰烬学" : <contenttweaker:note_stage_20>,
	"标准怪物学" : <contenttweaker:note_stage_21>,
	"夸克材料学" : <contenttweaker:note_stage_22>,
	"哲学" : <contenttweaker:note_stage_23>,
} as IItemStack[string]

