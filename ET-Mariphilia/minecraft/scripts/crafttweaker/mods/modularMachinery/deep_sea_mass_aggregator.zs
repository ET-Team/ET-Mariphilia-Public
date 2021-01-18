#priority -700

static machine_name as string = "deep_sea_mass_aggregator";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_neptunium", machine_name, 600)
        .addEmberInput(400)
        .addFluidInput(<fluid:ash>*1000)
        .addFluidOutput(<fluid:neptunium>*1000)
        .build();
}