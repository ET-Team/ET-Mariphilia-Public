#packmode expert
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

global paramTNTAmountFromAsh as int = 2;
global paramStringAmountFromFiber as int = 1;
global paramStringAmountFromAsh as int = 1;

global recipeCompactAsh as IIngredient[][] = [
    [<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>],
    [<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>],
    [<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>,<contenttweaker:solidified_ash>]
];

global recipeBasicNet as IIngredient[][] = [
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [<ore:stickWood>,<waterstrainer:net>,<ore:stickWood>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
];

global recipeDawnstoneAnvil as IIngredient[][] = [
    [<ore:blockDawnstone>,<ore:blockDawnstone>,<ore:blockDawnstone>],
    [null,<ore:ingotDawnstone>,null],
    [<embers:block_caminite_brick_slab>,<ore:ingotDawnstone>,<embers:block_caminite_brick_slab>]
];

global paramPlankAmountFromLog as int = 4;
global paramFiberAmountFromSeaweedBadSword as int = 2;
global paramFiberAmountFromSeaweedGoodSword as int = 3;
global paramBlendedCaminiteAmountFromIWC as int = 2;
global paramMetalNuggetAmountFromMMMK1 as int = 4;
global paramFishingRod as IItemStack = <minecraft:fishing_rod>.withTag({ench: [{lvl: 1 as short, id: 62 as short}]});
global paramEnableRemedyRecipeForAsh as bool = false;
global paramAlchemyPestalAmount as int = 1;
global paramToolPartAmount as int = 1;
//超频时间/每次用药
global paramOverclockTime as int = 240;