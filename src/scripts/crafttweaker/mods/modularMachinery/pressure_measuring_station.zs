#priority -700

static machine_name as string = "pressure_measuring_station";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_default", machine_name, 120)
        .addEmberInput(400)
        .addItemInput(<contenttweaker:pressure_meter>)
        .addItemOutput(<contenttweaker:pressure_data>*4)
        .addYRequirement(0, 10)
        .build();
}