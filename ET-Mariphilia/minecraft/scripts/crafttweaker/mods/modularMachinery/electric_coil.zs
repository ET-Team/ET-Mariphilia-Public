#priority -700

static machine_name as string = "electric_coil";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_data", machine_name, 100)
        .addEnergyPerTickInput(1000)
        .addItemInput(<ore:ingotCompressedAshenMetal>)
        .addItemInput(<item:contenttweaker:electricity_meter>)
        .addItemOutput(<item:contenttweaker:electricity_data>)
        .build();

    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_metal", machine_name, 100)
        .addEnergyPerTickInput(8000)
        .addItemInput(<ore:ingotPureNeptunium>)
        .addItemOutput(<ore:ingotSuperconductium>.firstItem)
        .build();
}