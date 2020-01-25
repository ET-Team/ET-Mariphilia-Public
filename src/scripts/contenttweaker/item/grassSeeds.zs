#priority -800
#loader contenttweaker
//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
function init(){
    val grassSeed = VanillaFactory.createItem("grass_seeds");
    grassSeed.maxStackSize = 16;
    grassSeed.onItemUse = function(player, world, pos, hand, facing, blockHit) {
        if(world.getBlockState(pos) == <block:minecraft:dirt>){
            world.setBlockState(<block:minecraft:grass>, pos);
            player.getHeldItem(hand).shrink(1);
            return ActionResult.success();
        }else{
            return ActionResult.pass();
        }
    };
    grassSeed.register();
}