#priority 3000
import crafttweaker.item.IItemStack;

//垃圾
static trash as IItemStack[] = [
    <contenttweaker:obsolete_battery>,
    <contenttweaker:obsolete_can>,
    <contenttweaker:obsolete_circuit>,
    <contenttweaker:obsolete_iron>
];

//丝线
static strings as IItemStack[] = [
    <contenttweaker:ash_string>,
    <contenttweaker:fiber_string>,
    <minecraft:string>
];

//海藻
static seaweeds as IItemStack[] = [
    <item:aquaculture:food>,
    <item:aquaculture:food:1>
];

//原木
static logWoods as IItemStack[] = [
    <item:aquaculture:loot>
];

function unidict(){
    <ore:nuggetTin>.remove(<mekanism:nugget:6>);
    <ore:nuggetCopper>.remove(<mekanism:nugget:5>);
    <ore:nuggetBronze>.remove(<mekanism:nugget:2>);
    <ore:ingotTin>.remove(<mekanism:ingot:6>);
    <ore:ingotCopper>.remove(<mekanism:ingot:5>);
    <ore:ingotBronze>.remove(<mekanism:ingot:2>);
}

function init(){
    <ore:etmTrash>.addItems(trash);
    <ore:etmString>.addItems(strings);
    <ore:etmSeaweed>.addItems(seaweeds);
    <ore:logWood>.addItems(logWoods);
    unidict();
}