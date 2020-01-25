/*
Partial codes by youyihj
Adapted by ET-Team
Following the license of CC BY-NC-SA 4.0
*/

#loader contenttweaker
#priority -900
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Material;

function buildFluid(
		name as string,
		color as string, 
		temperature as int, 
		viscosity as int, 
		density as int, 
		luminosity as int, 
		isLava as bool, 
		colorize as bool, 
		stillWater as bool, 
		flowWater as bool){

	var fluid = VanillaFactory.createFluid(name,Color.fromHex(color));

	fluid.temperature = temperature; //温度默认300 水为基准
	fluid.viscosity = viscosity; //粘度默认1000 水为基准
	fluid.density = density; //密度默认1000 水为基准
	fluid.luminosity = luminosity; //亮度默认0 水为基准
	fluid.material = isLava? <blockmaterial:lava> : <blockmaterial:water>;
	fluid.stillLocation = stillWater? "base:fluids/liquid":"base:fluids/molten";
	fluid.flowingLocation = flowWater? "base:fluids/liquid_flow" : "base:fluids/molten_flowing";
	fluid.register();
}
function init(){
	//腐蚀性液体
	buildFluid("corrosive_liquid", "ac1a6d", 150, 2000, 2000, 10, false, false, false, false); 
	//灰烬水
	buildFluid("aquae_cinere", "363131", 120, 1200, 1200, 0, false, false, true, true);
	//超流体
	buildFluid("hyperfluid", "8871bf", 1000, 1200, 1200, 0, false, false, true, true); 
	//熔融模块化合金
	buildFluid("modularium", "ff471a", 120, 1200, 1200, 0, false, false, false, false);
	//熔融灰烬
	buildFluid("ash", "333333", 120, 1200, 1200, 0, false, false, false, false);
	//熔融灰烬金属
	buildFluid("ashen_metal", "262626", 120, 1200, 1200, 0, false, false, false, false);
	//熔融黑曜石
	buildFluid("obsidian", "1f004d", 120, 1200, 1200, 0, false, false, false, false);
}