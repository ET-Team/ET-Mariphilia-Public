#priority -800
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.MutableItemStack;

static stageItems as string[string] = {
    advanced_alchemy_knowledge : "two"
};

function createStageItem(name as string, stage as string){
    var item = VanillaFactory.createItem(name);
    item.maxStackSize = 1;
    item.rarity = "rare";
    item.itemRightClick = function(stack, world, player, hand) {
        print(stack.name);
        Commands.call("gamestage add "+player.name+" "+stageItems[stack.name.substring(20)], player, world);
        stack.shrink(1);
        return "Success";
    };
    item.register();
}

function init(){
    for key in stageItems{
        createStageItem(key, stageItems[key]);
    }
}