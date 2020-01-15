#priority -800
import mods.ItemStages.addItemStage;
static stagedMods as string[][string] = {
    "one" : ["aquaculture","betterbuilderswands","fastfurnace","fastbench","inspirations","jaff","morecauldrons","waterstrainer","wopper"],
    "two" : ["chisel","mekanism","modularmachinery","modulardiversity","openblocks","stevescarts"],
    "three" : ["appliedenergistics2","bigreactors","woot"],
    "four" : ["avaritia","fishaxe"]
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