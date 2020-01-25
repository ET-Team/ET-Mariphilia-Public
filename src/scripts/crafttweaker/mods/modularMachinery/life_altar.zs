#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static machine_name as string = "life_altar";

static recipes as IItemStack[string] = {
    "minecraft:chicken" : <item:minecraft:wheat_seeds>,
    "minecraft:cow" : <item:minecraft:wheat>,
    "minecraft:chicken" : <item:minecraft:wheat_seeds>,
    "minecraft:ocelot" : <item:minecraft:fish>,
    "minecraft:pig" : <item:minecraft:carrot>,
    "minecraft:sheep" : <item:minecraft:wool>,
    "minecraft:wolf" : <item:minecraft:bone>
};

function init(){
    for entity, input in recipes{
        mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_"+entity, machine_name, 100)
        .addEmberInput(400)
        .addItemInput(<contenttweaker:life_essence>)
        .addItemInput(input)
        .addItemOutput(<minecraft:spawn_egg>.withTag({EntityTag: {id: entity}}))
        .build();
    }
}