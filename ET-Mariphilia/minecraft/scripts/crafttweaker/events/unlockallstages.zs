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
			player.sendRichTextStatusMessage(format.red("非创造模式无法使用此指令!") , false);
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