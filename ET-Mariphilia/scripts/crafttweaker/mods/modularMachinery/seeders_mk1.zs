#priority -700

static metals as string[] = [
    "Iron",
    "Copper",
    "Tin",
    "Lead",
    "Dawnstone",
    "Gold",
    "Aluminum",
    "Nickel",
    "Silver"
];

function init(){
    for metal in metals{
        var machine_name as string = "seeder_"+metal.toLowerCase();
        mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+"_default", machine_name, 20)
            .addEmberInput(100)
            .addItemOutput(oreDictUtil.getNuggetFromOre(metal, paramMetalNuggetAmountFromMMMK1))
            .build();
    }
}