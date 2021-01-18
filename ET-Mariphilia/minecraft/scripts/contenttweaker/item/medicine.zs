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
    "夸克材料学",
    "标准灰烬学",
    "标准怪物学",
    "哲学",
];

function init(){
    val drug = VanillaFactory.createItem("medicine");
    drug.maxStackSize = 64;
    drug.itemRightClick = function(stack, world, player, hand) {

        if(player.hasGameStage("超频时间")) return "PASS";

        Commands.call("gamestage silentadd @p[score_residue_min=1] 超频时间", player, world, false, true);

        Commands.call("tellraw @p[score_residue_min=1] {\"text\":\"超频时间已开启\",\"color\":\"aqua\"}", player, world, false, true);

        for stage in advanceStages{
            if(player.hasGameStage(stage)){
                Commands.call("gamestage add @p "+stage+"-超频", player, world, false, true);
            }
        }

        return "SUCCESS";
    };
    drug.register();
}