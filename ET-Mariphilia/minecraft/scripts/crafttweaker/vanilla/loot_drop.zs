#priority -800
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntityDefinition;

function init(){
    <entity:minecraft:zombie>.addPlayerOnlyDrop(<minecraft:skull:2> % 5);
    <entity:minecraft:creeper>.addPlayerOnlyDrop(<minecraft:skull:4> % 5);
    <entity:minecraft:skeleton>.addPlayerOnlyDrop(<minecraft:skull:0> % 5);
    <entity:atum:pharaoh>.addPlayerOnlyDrop(<item:contenttweaker:heart_of_atum> % 30);
}