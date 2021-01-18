#priority -800
#loader contenttweaker
//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;

static advanceStages as string[] = [
    "进阶材料学",
    "物流信号学",
    "基础电学",
    "自动化",
    "进阶电学",
    "空间学",
    "分子材料学",
    "高能物理学",
    "原子材料学",
    "标准灰烬学",
    "标准怪物学",
    "哲学",
];

function init(){
    val drug = VanillaFactory.createItem("drug");
    drug.maxStackSize = 64;
    drug.itemRightClick = function(stack, world, player, hand) {
        Commands.call("gamestage clear @p[score_residue=0]", player, world, false, true);

        Commands.call("title @p[score_residue=0] subtitle {\"text\":\"你达成了灰烬之舟BE, 释放出的恶魔终噬其主\",\"color\":\"gray\",\"italic\":true}", player, world, false, true);

        Commands.call("title @p[score_residue=0] actionbar {\"text\":\"在游戏根目录backup文件夹内存有往期存档备份以供回档,感谢游玩\"}", player, world, false, true);

        Commands.call("title @p[score_residue=0] title {\"text\":\"游戏结束\",\"bold\":true}", player, world, false, true);

        Commands.call("gamestage silentadd @p[score_residue_min=1] 超频时间", player, world, false, true);

        Commands.call("tellraw @p[score_residue_min=1] {\"text\":\"超频时间已开启\",\"color\":\"aqua\"}", player, world, false, true);

        if(player.hasGameStage("超频时间")) return "PASS";

        for stage in advanceStages{
            if(player.hasGameStage(stage)){
                Commands.call("gamestage add @p "+stage+"-超频", player, world, false, true);
            }
        }

        Commands.call("scoreboard players remove @p[score_residue_min=1] residue 1", player, world, false, true);
        
        Commands.call("playsound minecraft:entity.player.hurt player "+player.name, player, world, false, true);
        player.attackEntityFrom(<damageSource:GENERIC>, 1.0f);
        return "SUCCESS";
    };
    drug.register();
}