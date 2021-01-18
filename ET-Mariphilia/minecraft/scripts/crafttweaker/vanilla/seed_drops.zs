#priority -800
import crafttweaker.item.WeightedItemStack;

static addList as WeightedItemStack[] = [
    <item:minecraft:wheat_seeds> % 30
];

function removeAll(){
    for seed in vanilla.seeds.seeds{
        vanilla.seeds.removeSeed(seed.stack);
    }
}

function init(){
    removeAll();
    for seed in addList{
        vanilla.seeds.addSeed(seed);
    }
}