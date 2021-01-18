#priority -800
#loader contenttweaker
//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
function init(){
    val dagger = VanillaFactory.createItem("dagger");
    dagger.maxStackSize = 1;
    /*
    dagger.onItemUse = function(player, world, pos, hand, facing, blockHit) {
        if(world.isRemote()){
            Commands.call("playsound minecraft:entity.player.hurt player "+player.name, player, world);
        }else{
            world.spawnEntity(<item:contenttweaker:essencial_blood>.createEntityItem(world, player.x, player.y, player.z));
        }
        player.attackEntityFrom(<damageSource:GENERIC>, 4.0f);
        return ActionResult.pass();
    };
    */
    dagger.itemRightClick = function(stack, world, player, hand) {
        if(world.isRemote()){
            Commands.call("playsound minecraft:entity.player.hurt player " ~ player.name, player, world);
        } else {
            world.spawnEntity(<item:contenttweaker:essencial_blood>.createEntityItem(world, player.position3f.asBlockPos()));
        }
        player.attackEntityFrom(<damageSource:GENERIC>, 4.0f);
        return "Pass";
    };
    dagger.register();
}