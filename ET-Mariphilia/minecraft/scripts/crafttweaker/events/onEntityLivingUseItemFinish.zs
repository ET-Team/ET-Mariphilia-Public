#priority -800

function init(){
    events.onEntityLivingUseItem(function(event as crafttweaker.event.EntityLivingUseItemEvent.All){
        if(event.item has <minecraft:apple>&event instanceof crafttweaker.event.EntityLivingUseItemEvent.Finish){
            if(!event.player.world.isRemote()){
                event.player.give(<contenttweaker:apple_seed>);
            }
        }
    });
}