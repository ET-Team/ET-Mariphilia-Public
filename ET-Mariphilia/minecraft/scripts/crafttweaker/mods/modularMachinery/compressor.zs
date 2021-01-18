#priority -700
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;

static machine_name as string = "compressor";

static recipes as IItemStack[][int][IItemStack] = {
    <ore:plateBiopolymerMaterial>.firstItem :{80 : [<item:minecraft:rotten_flesh>*64,<item:minecraft:bone>*64,<item:minecraft:carrot>*32,<item:minecraft:wheat>*32]},
    <ore:ingotCompressedAshMetal>.firstItem :{80 : [<item:minecraft:iron_ingot>*16,<ore:ingotAshenMetal>.firstItem*16,<ore:ingotDawnstone>.firstItem*16]},
    <ore:gemDiamond>.firstItem : {40 : [<item:contenttweaker:compact_ash>*16]},
    <minecraft:coal>*32 : {20 : [<item:embers:dust_ash>*64,<item:embers:dust_ash>*64]},
    <ore:ingotDimensionalMetal>.firstItem*2 : {80 : [<ore:ingotPureNeptunium>.firstItem*4,<ore:ingotAshenMetal>.firstItem*8]},
    <woot:stygianirondust>*3 : {80 : [<minecraft:netherrack>,<minecraft:soul_sand>,<mekanism:dirtydust>]}
};

function init(){
    var i as int = 0;
    for output, input in recipes{
        for time, material in input{
            print(i);
            print(output.name);
            var builder = RecipeBuilder.newBuilder(machine_name+i+output.name, machine_name, time);
            builder.addItemOutput(output).addEmberInput(3200);
            for item in material{
                builder.addItemInput(item);
            }
            builder.build();
            i += 1;
        }
    }
}