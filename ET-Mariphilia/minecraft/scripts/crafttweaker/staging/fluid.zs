#priority -800
import crafttweaker.liquid.ILiquidStack;
static fluidList as ILiquidStack[][string] = {
    "灰烬学" : [
        <liquid:ash>,
        <liquid:modularium>
    ],
    "基础材料学" : [
        <liquid:ashen_metal>,
        <liquid:obsidian>
    ],
    "原子材料学" : [
        <liquid:hyperfluid>
    ]
};

function init(){
    for stage, list in fluidList{
        for liquid in list{
            mods.ItemStages.stageLiquid(stage, liquid);
        }
    }
}