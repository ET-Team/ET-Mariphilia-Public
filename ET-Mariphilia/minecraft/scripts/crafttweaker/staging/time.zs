#priority -800
import mods.TimeStages;

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
    TimeStages.removalTimer("drug", "超频时间" ,paramOverclockTime ,"seconds");
    for stage in advanceStages{
        TimeStages.removalTimer(stage+"removal", stagingUtil.getOverclockStage(stage) ,paramOverclockTime ,"seconds");
    }
}