/*

 */
#priority -800
#loader contenttweaker
//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
function init(){
    val appleSeed = VanillaFactory.createItem("apple_seed");
    appleSeed.maxStackSize = 16;
    appleSeed.onItemUse = function(player, world, pos, hand, facing, blockHit) {
        var targetPos = pos.getOffset(facing, 1);
        if(world.getBlockState(pos) == <block:minecraft:dirt>){
            if (world.getBlockState(targetPos).isReplaceable(world, targetPos)) {
                world.setBlockState(<block:minecraft:sapling>, targetPos);
                player.getHeldItem(hand).shrink(1);
                return ActionResult.success();
            }else{
                return ActionResult.pass();
            }
        }else{
            return ActionResult.pass();
        }
    };
    appleSeed.register();
}