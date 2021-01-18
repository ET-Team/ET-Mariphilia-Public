#priority -800
import mods.ItemStages.addItemStage;
static stagedMods as string[][string] = {
    "灰烬学" : ["modularmachinery","modulardiversity"],
    "基础材料学" : ["openblocks"],
    "物流信号学" : ["appliedenergistics2","stevescarts"],
    "基础电学" : ["mekanism"],
    "进阶怪物学" : ["woot"],
    "空间学" : ["compactmachines3"],
    "分子材料学" : ["avaritia"],
    "高能物理学" : ["bigreactors"],
    "哲学" : ["fishaxe", "atum"]
};

function init(){
    for stage, items in stagedItemMap{
        for item in items{
            <ore:stagedItem>.add(item);
        }
    }

    for stage, mods in stagedMods{
        for mod in mods{
            for item in loadedMods[mod].items{
                if(!(<ore:stagedItem> has item)){
                    addItemStage(stage, item);
                }
            }
        }
    }
}