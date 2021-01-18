#priority -700
import mods.embers.Mixer as this;
import crafttweaker.liquid.ILiquidStack;

static recipes as ILiquidStack[][][ILiquidStack] = {
    <fluid:modularium>*12 : [
        [<fluid:ash>*8, <fluid:dawnstone>*4]
    ],
    <fluid:ashen_metal>*24 : [
        [<fluid:ash>*12, <fluid:bronze>*6, <fluid:obsidian>*6]
    ]
};

static removes as ILiquidStack[] = [

];

function init(){
    for output, inputsArray in recipes{
        for inputs in inputsArray{
            this.add(output,inputs);
        }
    }
    for output in removes{
        this.remove(output);
    }
}