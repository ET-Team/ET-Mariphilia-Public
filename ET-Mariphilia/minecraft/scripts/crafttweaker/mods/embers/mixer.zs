#priority -700
import mods.embers.Mixer as this;
import crafttweaker.liquid.ILiquidStack;

static machine_name as string = "big_mixer";

static recipes as ILiquidStack[][][ILiquidStack] = {
    <fluid:modularium>*12 : [
        [<fluid:ash>*8, <fluid:dawnstone>*4]
    ],
    <fluid:ashen_metal>*8 : [
        [<fluid:ash>*4, <fluid:bronze>*2, <fluid:obsidian>*2]
    ],
    <fluid:dawnstone>*8 : [
        [<fluid:gold>*4,<fluid:copper>*4]
    ],
    <fluid:electrum>*8 : [
        [<fluid:gold>*4,<fluid:silver>*4]
    ],
    <fluid:bronze>*8 : [
        [<fluid:tin>*2,<fluid:copper>*6]
    ]
};

static removes as ILiquidStack[] = [
    <fluid:bronze>*8,
    <fluid:electrum>*8,
    <fluid:dawnstone>*8
];

function addMixerRecipe(output as ILiquidStack, input as ILiquidStack[]){
    this.add(output,input);
    var builder = mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+output.name, machine_name, 40)
        .addFluidOutput(output.definition * (output.amount*144))
        .addEmberInput(1600);
    for liquid in input{
        builder.addFluidInput(liquid.definition * (liquid.amount*144));
    }
    builder.build();
}

function init(){
    for output in removes{
        this.remove(output);
    }
    for output, inputsArray in recipes{
        for inputs in inputsArray{
            addMixerRecipe(output,inputs);
        }
    }
}