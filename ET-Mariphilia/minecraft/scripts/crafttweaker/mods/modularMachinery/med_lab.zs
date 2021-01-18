#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;

static machine_name as string = "med_lab";

static recipes as IItemStack[][IItemStack] = {
    <item:contenttweaker:drug> : [
        <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
        <minecraft:potion>.withTag({Potion: "inspirations:strong_haste"}),
        <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
        (<ore:dustBiopolymerMaterial>.firstItem)*2
    ],
    <item:contenttweaker:medicine> : [
        <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
        <minecraft:potion>.withTag({Potion: "inspirations:strong_haste"}),
        (<ore:dustBiopolymerMaterial>.firstItem)*4,
        <minecraft:chorus_fruit>*4
    ]
};

function init(){
    for output, inputs in recipes{
        var builder = RecipeBuilder.newBuilder(machine_name+"_"+output.name, machine_name, 100);
        for input in inputs{
            builder.addItemInput(input);
        }
        builder.addItemOutput(output).build();
    }
}