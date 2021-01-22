#priority -700

static machine_name as string = "subdimensional_well";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_nugget", machine_name, 10)
        .addEmberInput(100)
        .addItemInput(<ore:nuggetDimensionalMetal>)
        .addItemOutput(<minecraft:quartz_ore>*2).setChance(0.4)
        .addItemOutput(<mekanism:oreblock>*2).setChance(0.4)
        .addItemOutput(<minecraft:diamond_ore>).setChance(0.4)
        .addItemOutput(<bigreactors:oreyellorite>*2).setChance(0.4)
        .addItemOutput(<minecraft:emerald_ore>).setChance(0.1)
        .build();

    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_ingot", machine_name, 80)
        .addEmberInput(900)
        .addItemInput(<ore:ingotDimensionalMetal>)
        .addItemOutput(<minecraft:quartz_ore>*18).setChance(0.4)
        .addItemOutput(<mekanism:oreblock>*18).setChance(0.4)
        .addItemOutput(<minecraft:diamond_ore>*9).setChance(0.4)
        .addItemOutput(<bigreactors:oreyellorite>*18).setChance(0.4)
        .addItemOutput(<minecraft:emerald_ore>)
        .build();

    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_block", machine_name, 200)
        .addEmberInput(8000)
        .addItemInput(<ore:blockDimensionalMetal>)
        .addItemOutput(<minecraft:quartz_ore>*64)
        .addItemOutput(<mekanism:oreblock>*64)
        .addItemOutput(<minecraft:diamond_ore>*64).setChance(0.6)
        .addItemOutput(<bigreactors:oreyellorite>*64)
        .addItemOutput(<minecraft:emerald_ore>*8)
        .build();
}