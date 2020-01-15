#priority -800
#loader contenttweaker
//导包
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.IItemRightClick;
	import mods.contenttweaker.Commands;
    import mods.contenttweaker.ActionResult;
	
function init(){
    val rekindledAsh = VanillaFactory.createItem("rekindled_ash");
    rekindledAsh.maxStackSize = 16;
    rekindledAsh.onItemUse = function(player, world, pos, hand, facing, blockHit) {
        //从wiki中部分截取
        var firePos = pos.getOffset(facing, 1);
        if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
            world.setBlockState(<block:minecraft:fire>, firePos);
            player.getHeldItem(hand).shrink(1);
            return ActionResult.success();
        }else{
            return ActionResult.pass();
        }
    };
    rekindledAsh.register();
}