#priority -700

static machine_name as string = "turbo";

function init(){
    mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_default", machine_name, 1200)
        .addEmberInput(3200)
        .addFluidInput(<fluid:alchemical_redstone>*200)
        .addFluidInput(<fluid:water>*8000)
        .addEnergyPerTickOutput(128)
        .build();
}